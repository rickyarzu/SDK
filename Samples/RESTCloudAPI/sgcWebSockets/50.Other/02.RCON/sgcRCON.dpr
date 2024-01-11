program sgcRCON;

uses
  Forms,
  FRCON in 'FRCON.pas' {FRMRCON};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TFRMRCON, FRMRCON);
  Application.Run;
end.
