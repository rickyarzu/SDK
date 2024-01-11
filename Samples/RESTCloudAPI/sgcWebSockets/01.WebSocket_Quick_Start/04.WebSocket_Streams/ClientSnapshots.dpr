program ClientSnapshots;

uses
  Forms,
  uClientSnapshots in 'uClientSnapshots.pas' {frmClientSnapshots};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmClientSnapshots, frmClientSnapshots);
  Application.Run;
end.
