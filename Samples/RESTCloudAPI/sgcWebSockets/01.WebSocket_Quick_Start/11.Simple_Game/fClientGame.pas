unit fClientGame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  sgcBase_Classes, sgcSocket_Classes, sgcTCP_Classes, sgcWebSocket_Classes,
  sgcWebSocket_Classes_Indy, sgcWebSocket_Client, sgcWebSocket,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, Math, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo;

type
  TFRMClientGame = class(TForm)
    Button1: TButton;
    client: TsgcWebSocketClient;
    lblStatus: TLabel;
    Button2: TButton;
    txtPlayer: TEdit;
    txtRoom: TEdit;
    Memo1: TMemo;
    btnPlay: TButton;
    lblPlay: TLabel;
    procedure btnPlayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure clientConnect(Connection: TsgcWSConnection);
    procedure clientDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure clientMessage(Connection: TsgcWSConnection; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMClientGame: TFRMClientGame;

implementation

uses
  sgcJSON;

{$R *.fmx}

procedure TFRMClientGame.btnPlayClick(Sender: TObject);
var
  oJSON: TsgcJSON;
begin
  oJSON := TsgcJSON.Create(nil);
  Try
    oJSON.AddPair('method', 'play');
    oJSON.AddPair('room', txtRoom.Text);
    oJSON.AddPair('name', txtPlayer.Text);

    Client.WriteData(oJSON.Text);
  Finally
    FreeAndNil(oJSON);
  End;
end;

procedure TFRMClientGame.FormCreate(Sender: TObject);
begin
  Randomize;

  txtPlayer.Text := 'Player ' + IntToStr(RandomRange(1, 1000));
end;

procedure TFRMClientGame.Button1Click(Sender: TObject);
begin
  client.Host := '127.0.0.1';
  client.Port := 5555;
  client.Active := True;
end;

procedure TFRMClientGame.Button2Click(Sender: TObject);
begin
  client.Active := False;
end;

procedure TFRMClientGame.clientConnect(Connection: TsgcWSConnection);
var
  oJSON: TsgcJSON;
begin
  lblStatus.Text := 'Connected';

  oJSON := TsgcJSON.Create(nil);
  Try
    oJSON.AddPair('method', 'new_player');
    oJSON.AddPair('room', txtRoom.Text);
    oJSON.AddPair('name', txtPlayer.Text);

    Connection.WriteData(oJSON.Text);
  Finally
    FreeAndNil(oJSON);
  End;
end;

procedure TFRMClientGame.clientDisconnect(Connection: TsgcWSConnection; Code: Integer);
begin
  btnPlay.Enabled := False;
  lblStatus.Text := 'Disconnected';
end;

procedure TFRMClientGame.clientMessage(Connection: TsgcWSConnection; const Text:
    string);
var
  oJSON: TsgcJSON;
  vMethod: string;
begin
  Memo1.Lines.Add(Text);

  oJSON := TsgcJSON.Create(nil);
  Try
    oJSON.Read(Text);

    vMethod := oJSON.Node['method'].Value;
    if vMethod = 'game_waiting' then
      lblStatus.Text := 'Waiting Player...'
    else if vMethod = 'game_start' then
    begin
      lblStatus.Text := 'GAME START';
      btnPlay.enabled := True;
    end
    else if vMethod = 'game_closed' then
    begin
      lblStatus.Text := 'GAME CLOSED';
      btnPlay.Enabled := False;
    end
    else if vMethod = 'play' then
      lblPlay.Text := oJSON.Node['message'].Value;

  Finally
    FreeAndNil(oJSON);
  End;
end;

end.
