program ServerSnapshots;

uses
  Forms,
  uServerSnapshots in 'uServerSnapshots.pas' {frmServerSnapshots};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServerSnapshots, frmServerSnapshots);
  Application.Run;
end.
