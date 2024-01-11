program ClientWAMP;

uses
  Forms,
  uClientWAMP in 'uClientWAMP.pas' {frmClientWAMP};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmClientWAMP, frmClientWAMP);
  Application.Run;
end.
