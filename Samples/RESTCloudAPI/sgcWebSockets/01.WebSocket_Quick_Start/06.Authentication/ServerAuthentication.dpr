program ServerAuthentication;

uses
  Forms,
  fServer in 'fServer.pas' {frmServer};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServer, frmServer);
  Application.Run;
end.
