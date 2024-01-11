program ServerProxy;

uses
  Forms,
  fServerProxy in 'fServerProxy.pas' {frmServerProxy};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServerProxy, frmServerProxy);
  Application.Run;
end.
