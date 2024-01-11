program ServerPROTOCOL;

uses
  Forms,
  uServerPROTOCOL in 'uServerPROTOCOL.pas' {frmServerPROTOCOL};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmServerPROTOCOL, frmServerPROTOCOL);
  Application.Run;
end.
