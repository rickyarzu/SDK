program ClientAMQP;

uses
  Forms,
  uClientAMQP in 'uClientAMQP.pas' {frmClientPROTOCOL};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmClientPROTOCOL, frmClientPROTOCOL);
  Application.Run;
end.
