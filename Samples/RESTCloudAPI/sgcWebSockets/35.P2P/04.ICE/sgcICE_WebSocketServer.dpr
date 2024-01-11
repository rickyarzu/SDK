program sgcICE_WebSocketServer;

uses
  Forms,
  FICE_WebSocketServer in 'FICE_WebSocketServer.pas' {frmServer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServer, frmServer);
  Application.Run;
end.
