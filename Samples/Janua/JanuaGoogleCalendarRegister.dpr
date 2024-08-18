program JanuaGoogleCalendarRegister;

uses
  VCL.Forms,
  Janua.Application.Framework,
  ufrmTMSAdvCalendarDemo in 'Cloud\ufrmTMSAdvCalendarDemo.pas' {frmTMSAdvCalendarDemo},
  Janua.TMSVCLDemos.VCLApplication in 'Janua.TMSVCLDemos.VCLApplication.pas',
  Janua.VCL.Cloud.dlgGoogleConnect in '..\..\src\VCL\Cloud\Janua.VCL.Cloud.dlgGoogleConnect.pas' {dlgVclCloudGoogleConnect},
  Janua.VCL.Planner.dmCustomController in '..\..\src\VCL\Planner\Janua.VCL.Planner.dmCustomController.pas' {dmVCLPlannerCustomController: TDataModule};

{$R *.res}

var
dlgVclCloudGoogleConnect:TdlgVclCloudGoogleConnect;

begin
  TJanuaTmsDemosVCLApplication.ApplicationSetup('demo.tmssoftware.com');
  TJanuaApplication.StyleManager.Activate;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdlgVclCloudGoogleConnect, dlgVclCloudGoogleConnect);
  Application.Run;
end.
