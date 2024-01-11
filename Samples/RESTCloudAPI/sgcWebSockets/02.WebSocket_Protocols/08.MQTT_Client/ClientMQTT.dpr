program ClientMQTT;

uses
  Forms,
  uClientMQTT in 'uClientMQTT.pas' {frmClientPROTOCOL};

{$R *.res}

begin
  Application.Initialize;
  {$IFNDEF VER150}Application.MainFormOnTaskbar := True;{$ENDIF}
  Application.CreateForm(TfrmClientPROTOCOL, frmClientPROTOCOL);
  Application.Run;
end.
