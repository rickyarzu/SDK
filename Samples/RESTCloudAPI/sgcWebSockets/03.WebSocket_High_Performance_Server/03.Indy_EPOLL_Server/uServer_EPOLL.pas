unit uServer_EPOLL;

interface

uses
  System.SysUtils, System.Classes, sgcBase_Classes, sgcSocket_Classes,
  sgcTCP_Classes, sgcWebSocket_Classes, sgcWebSocket_Server, sgcWebSocket,
  sgcWebSocket_Types;

type
  TDMServer_EPOLL = class(TDataModule)
    server: TsgcWebSocketHTTPServer;
    procedure serverConnect(Connection: TsgcWSConnection);
    procedure serverDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure serverError(Connection: TsgcWSConnection; const Error: string);
    procedure serverException(Connection: TsgcWSConnection; E: Exception);
    procedure serverMessage(Connection: TsgcWSConnection; const Text: string);
    procedure serverShutdown(Sender: TObject);
    procedure serverStartup(Sender: TObject);
  private
    procedure DoWriteLn(const aText: string);
  public
    procedure Start(aPort: Integer);
    procedure Stop;
  end;

  function GetDMServer_EPOLL: TDMServer_EPOLL;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

var
  oDMServer_EPOLL: TDMServer_EPOLL = nil;

function GetDMServer_EPOLL: TDMServer_EPOLL;
begin
  if not Assigned(oDMServer_EPOLL) then
    oDMServer_EPOLL := TDMServer_EPOLL.Create(nil);
  result := oDMServer_EPOLL;
end;

procedure TDMServer_EPOLL.DoWriteLn(const aText: string);
begin
  WriteLn(aText);
end;

procedure TDMServer_EPOLL.serverConnect(Connection: TsgcWSConnection);
begin
  DoWriteLn('#connected: ' + Connection.Guid);
end;

procedure TDMServer_EPOLL.serverDisconnect(Connection: TsgcWSConnection; Code:
    Integer);
begin
  DoWriteLn('#disconnected: ' + Connection.Guid);
end;

procedure TDMServer_EPOLL.serverError(Connection: TsgcWSConnection; const
    Error: string);
begin
  DoWriteLn('#error: ' + Error);
end;

procedure TDMServer_EPOLL.serverException(Connection: TsgcWSConnection; E:
    Exception);
begin
  DoWriteLn('#exception: ' + E.Message);
end;

procedure TDMServer_EPOLL.serverMessage(Connection: TsgcWSConnection; const
    Text: string);
begin
  DoWriteLn(Text);

  Connection.WriteData(Text);
end;

procedure TDMServer_EPOLL.serverShutdown(Sender: TObject);
begin
  DoWriteLn('#Server Shutdown');
end;

procedure TDMServer_EPOLL.serverStartup(Sender: TObject);
begin
  DoWriteLn('#Server Start on Port: ' + IntToStr(server.Port));
end;

procedure TDMServer_EPOLL.Start(aPort: Integer);
begin
  if Server.Active then
    Server.Active := False;
  server.Port := aPort;

  server.IOHandlerOptions.IOHandlerType := iohEPOLL;
  server.IOHandlerOptions.EPOLL.EPOLLThreads := 0;
  server.IOHandlerOptions.EPOLL.WorkOpThreads := 0;

  server.NotifyEvents := neNoSync;

  server.Active := True;
  while server.Active do
    sleep(1);
end;

procedure TDMServer_EPOLL.Stop;
begin
  server.Active := False;
end;

initialization

finalization
  FreeAndNil(oDMServer_EPOLL);

end.
