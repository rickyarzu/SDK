program ServerWAMP;

uses
  Forms,
  uServerWAMP in 'uServerWAMP.pas' {frmServerWAMP};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServerWAMP, frmServerWAMP);
  Application.Run;
end.
