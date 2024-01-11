unit FICE_WebSocketServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, DBClient, Math, Activex,
  StrUtils,
  // sgc
  sgcWebSocket_Server, sgcWebSocket,  sgcWebSocket_Classes, sgcBase_Classes,
  sgcTCP_Classes, sgcWebSocket_Classes_Indy, sgcSocket_Classes,
  sgcWebSocket_Types;

type
  TfrmServer = class(TForm)
    btnStart: TButton;
    btnStop: TButton;
    WSServer: TsgcWebSocketServer;
    pnlServer: TPanel;
    memoLog: TMemo;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure WSServerConnect(Connection: TsgcWSConnection);
    procedure WSServerDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure WSServerError(Connection: TsgcWSConnection; const Error: string);
    procedure WSServerMessage(Connection: TsgcWSConnection; const Text: string);
  private
    FCallee: TStringList;
    FCaller: TStringList;
    FFile: TFileStream;
    FFileName: String;
    procedure DoLog(const aText: String);
    function GetCallee: TStringList;
    function GetCaller: TStringList;
  protected
    property Callee: TStringList read GetCallee write FCallee;
    property Caller: TStringList read GetCaller write FCaller;
  end;

var
  frmServer: TfrmServer;

implementation


{$R *.dfm}

procedure TfrmServer.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCaller);
  FreeAndNil(FCallee);
end;

procedure TfrmServer.FormCreate(Sender: TObject);
begin
  btnStart.Click;
end;

procedure TfrmServer.btnStartClick(Sender: TObject);
begin
  if not WSServer.Active then
  begin
    WSServer.Active := True;
    DoLog('#started');
  end;
end;

procedure TfrmServer.btnStopClick(Sender: TObject);
begin
  if WSServer.Active then
  begin
    WSServer.Active := False;
    DoLog('#stopped');
  end;
end;

procedure TfrmServer.DoLog(const aText: String);
begin
  memoLog.Lines.Add(aText);
end;

function TfrmServer.GetCallee: TStringList;
begin
  if not Assigned(FCallee) then
    FCallee := TStringList.Create;
  Result := FCallee;
end;

function TfrmServer.GetCaller: TStringList;
begin
  if not Assigned(FCaller) then
    FCaller := TStringList.Create;
  Result := FCaller;
end;

procedure TfrmServer.WSServerConnect(Connection: TsgcWSConnection);
var
  i: Integer;
begin
  memoLog.Lines.Add('Connected: ' + Connection.Guid);

  if TsgcWSConnectionServer(Connection).URL = '/caller' then
  begin
    FreeAndNil(FCaller);
    if Assigned(FCallee) then
    begin
      for i := 0 to Callee.Count - 1 do
        Connection.WriteData(Callee[i]);
    end;
  end
  else if TsgcWSConnectionServer(Connection).URL = '/callee' then
  begin
    FreeAndNil(FCallee);
    if Assigned(FCaller) then
    begin
      for i := 0 to Caller.Count - 1 do
        Connection.WriteData(Caller[i]);
    end;
  end;
end;

procedure TfrmServer.WSServerDisconnect(Connection: TsgcWSConnection; Code:
    Integer);
begin
  memoLog.Lines.Add('Disconnected (' + IntToStr(Code) + '): ' + Connection.Guid);
end;

procedure TfrmServer.WSServerError(Connection: TsgcWSConnection; const Error:
    string);
begin
  memoLog.Lines.Add('Error: ' + Connection.Guid + ':' + Error);
end;

procedure TfrmServer.WSServerMessage(Connection: TsgcWSConnection; const Text:
    string);
begin
  if TsgcWSConnectionServer(Connection).URL = '/caller' then
    Caller.Add(Text)
  else if TsgcWSConnectionServer(Connection).URL = '/callee' then
    Callee.Add(Text);


  WSServer.Broadcast(Text, '', '', Connection.Guid);
end;

end.
