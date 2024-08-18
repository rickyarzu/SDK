program PhoenixGoogleCalendarRegister;

uses
  VCL.Forms,
  Janua.Application.Framework,
  ufrmTMSAdvCalendarDemo in '..\..\..\Samples\Janua\Cloud\ufrmTMSAdvCalendarDemo.pas' {frmTMSAdvCalendarDemo},
  Janua.Phoenix.VCL.BackgroundApplication in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.BackgroundApplication.pas',
  Janua.VCL.Cloud.dlgGoogleConnect in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.dlgGoogleConnect.pas' {dlgVclCloudGoogleConnect},
  Janua.VCL.Planner.dmCustomController in '..\..\..\src\VCL\Planner\Janua.VCL.Planner.dmCustomController.pas' {dmVCLPlannerCustomController: TDataModule};

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
