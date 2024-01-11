program sgcRTC_WebSocketServer;

uses
  Forms,
  FRTC_WebSocketServer in 'FRTC_WebSocketServer.pas' {frmServer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServer, frmServer);
  Application.Run;
end.
