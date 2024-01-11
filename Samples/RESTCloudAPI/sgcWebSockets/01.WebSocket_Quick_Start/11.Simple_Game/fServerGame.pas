unit fServerGame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sgcBase_Classes,
  sgcSocket_Classes, sgcTCP_Classes, sgcWebSocket_Classes, sgcWebSocket_Server,
  sgcWebSocket, sgcWebSocket_Types, sgcWebSocket_Classes_Queues, sgcWebSocket_Classes_SyncObjs;

type

  TGameStates = (gsWaiting, gsStarted, gsClosed);

  TGame = class(TsgcQueueItemBase)
  private
    FPlayer1: string;
    FPlayer1_ID: string;
    FPlayer2: string;
    FPlayer2_ID: string;
    FState: TGameStates;
  public
    property Player1: string read FPlayer1 write FPlayer1;
    property Player1_ID: string read FPlayer1_ID write FPlayer1_ID;
    property Player2: string read FPlayer2 write FPlayer2;
    property Player2_ID: string read FPlayer2_ID write FPlayer2_ID;
    property State: TGameStates read FState write FState;
  end;

  TGames = class(TsgcQueue)
  private
    procedure DeletePlayer(const aGuid: string; var Room, aMessage: string);
    function GetGame(aID: string): TGame;
    procedure NewGame(const aGuid, aRoom, aName: string);
  end;

  TFRMServerGame = class(TForm)
    server: TsgcWebSocketServer;
    btnStart: TButton;
    btnStop: TButton;
    memoLog: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure serverDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure serverMessage(Connection: TsgcWSConnection; const Text: string);
    procedure serverShutdown(Sender: TObject);
    procedure serverStartup(Sender: TObject);
  private
    procedure DoLog(const aText: string);
  private
    FGames: TGames;
    function GetGames: TGames;
  public
    property Games: TGames read GetGames write FGames;
  private
    procedure DoNewPlayer(Connection: TsgcWSConnection;
      const aRoom, aName: string);
    procedure DoPlay(Connection: TsgcWSConnection; const aRoom, aName: string);
  end;

var
  FRMServerGame: TFRMServerGame;

implementation

uses
  sgcJSON;

{$R *.dfm}

procedure TFRMServerGame.FormCreate(Sender: TObject);
begin
  btnStart.Click;
end;

procedure TFRMServerGame.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FGames);
end;

procedure TFRMServerGame.btnStartClick(Sender: TObject);
begin
  server.NotifyEvents := neNoSync;
  server.Port := 5555;
  server.Active := True;
end;

procedure TFRMServerGame.btnStopClick(Sender: TObject);
begin
  server.Active := False;
end;

procedure TFRMServerGame.DoLog(const aText: string);
begin
  TThread.Queue(nil,
    procedure
    begin
      if Assigned(memoLog) then
        memoLog.Lines.Add(aText);
    end);
end;

procedure TFRMServerGame.DoNewPlayer(Connection: TsgcWSConnection;
const aRoom, aName: string);
var
  oGame: TGame;
begin
  oGame := Games.GetGame(aRoom);
  if oGame <> nil then
  begin
    if oGame.State <> gsWaiting then
      Connection.WriteData('{"method":"error", "message","Game not available"}')
    else
    begin
      if oGame.Player2 = '' then
      begin
        oGame.Player2 := aName;
        oGame.Player2_ID := Connection.Guid;
        oGame.State := gsStarted;
      end
      else if oGame.Player1 = '' then
      begin
        oGame.Player1 := aName;
        oGame.Player1_ID := Connection.Guid;
        oGame.State := gsStarted;
      end;
      Connection.DoSubscribe(aRoom);
      server.Broadcast
        (Format('{"method":"new_player", "message","New player %s"}',
        [aName]), aRoom);
      server.Broadcast('{"method":"game_start"}', aRoom);
    end;
  end
  else
  begin
    Connection.DoSubscribe(aRoom);
    Games.NewGame(Connection.Guid, aRoom, aName);
    server.Broadcast
      (Format('{"method":"new_player", "message","New player %s"}',
      [aName]), aRoom);
    Connection.WriteData('{"method":"game_waiting"}');
  end;
end;

procedure TFRMServerGame.DoPlay(Connection: TsgcWSConnection;
const aRoom, aName: string);
var
  oGame: TGame;
begin
  oGame := Games.GetGame(aRoom);
  if Assigned(oGame) then
  begin
    if oGame.State = gsStarted then
      server.Broadcast
        (Format('{"method":"play", "message":"Player: %s is playing."}',
        [aName]), aRoom);
  end;
end;

function TFRMServerGame.GetGames: TGames;
begin
  if not Assigned(FGames) then
  begin
    FGames := TGames.Create;
    FGames.OwnObjects := True;
  end;
  Result := FGames;
end;

procedure TFRMServerGame.serverDisconnect(Connection: TsgcWSConnection; Code: Integer);
var
  vRoom, vMessage: string;
begin
  Games.DeletePlayer(Connection.Guid, vRoom, vMessage);

  if vRoom <> '' then
    server.Broadcast(vMessage, vRoom);
end;

procedure TFRMServerGame.serverMessage(Connection: TsgcWSConnection;
const Text: string);
var
  oJSON: TsgcJSON;
  vMethod: string;
begin
  DoLog(Text);

  oJSON := TsgcJSON.Create(nil);
  Try
    oJSON.Read(Text);

    vMethod := oJSON.Node['method'].Value;
    if vMethod = 'new_player' then
      DoNewPlayer(Connection, oJSON.Node['room'].Value,
        oJSON.Node['name'].Value)
    else if vMethod = 'play' then
      DoPlay(Connection, oJSON.Node['room'].Value, oJSON.Node['name'].Value)

  Finally
    FreeAndNil(oJSON);
  End;
end;

procedure TFRMServerGame.serverShutdown(Sender: TObject);
begin
  DoLog('#server stop');
end;

procedure TFRMServerGame.serverStartup(Sender: TObject);
begin
  DoLog('#server start');
end;

procedure TGames.DeletePlayer(const aGuid: string; var Room, aMessage: string);
var
  i: Integer;
  oList: TList;
begin
  Room := '';
  aMessage := '';

  oList := LockList;
  Try
    for i := 0 to oList.Count - 1 do
    begin
      if TGame(oList[i]).Player1_ID = aGuid then
      begin
        TGame(oList[i]).Player1 := '';
        TGame(oList[i]).Player1_ID := '';
        TGame(oList[i]).State := gsWaiting;
        if TGame(oList[i]).Player2 = '' then
          DeleteItem(i)
        else
        begin
          Room := TGame(oList[i]).ID;
          aMessage := '{"method":"game_waiting"}';
        end;
        break;
      end
      else if TGame(oList[i]).Player2_ID = aGuid then
      begin
        TGame(oList[i]).Player2 := '';
        TGame(oList[i]).Player2_ID := '';
        TGame(oList[i]).State := gsWaiting;
        if TGame(oList[i]).Player1 = '' then
          DeleteItem(i)
        else
        begin
          Room := TGame(oList[i]).ID;
          aMessage := '{"method":"game_waiting"}';
        end;
        break;
      end;
    end;

  Finally
    UnLockList;
  End;

end;

function TGames.GetGame(aID: string): TGame;
begin
  Result := TGame(GetItem(aID));
end;

procedure TGames.NewGame(const aGuid, aRoom, aName: string);
var
  oGame: TGame;
begin
  oGame := TGame.Create;
  oGame.ID := aRoom;
  oGame.Player1 := aName;
  oGame.Player1_ID := aGuid;

  AddItem(oGame);
end;

end.
