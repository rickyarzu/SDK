program VCLOutlookOLEAutomation;

uses
  Vcl.Forms,
  ufrmVCLOutlookOLEAutomation in 'ufrmVCLOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TfrmVCLOutlookOLEAutomation, frmVCLOutlookOLEAutomation);
  Application.Run;
end.
