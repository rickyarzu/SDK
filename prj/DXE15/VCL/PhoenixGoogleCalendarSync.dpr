program PhoenixGoogleCalendarSync;

uses
  VCL.Forms,
  Janua.Application.Framework,
  ufrmTMSAdvCalendarDemo in '..\..\..\Samples\Janua\Cloud\ufrmTMSAdvCalendarDemo.pas' {frmTMSAdvCalendarDemo},
  Janua.Phoenix.VCL.BackgroundApplication in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.BackgroundApplication.pas',
  Janua.VCL.Cloud.dlgGoogleConnect in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.dlgGoogleConnect.pas' {dlgVclCloudGoogleConnect},
  Janua.Phoenix.VCL.dmGCalendarController in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.dmGCalendarController.pas' {dmPhoenixVCLGCalendarController: TDataModule},
  Janua.VCL.Planner.dmCustomController in '..\..\..\src\VCL\Planner\Janua.VCL.Planner.dmCustomController.pas' {dmVCLPlannerCustomController: TDataModule};

{$R *.res}

var
  dlgVclCloudGoogleConnect: TdlgVclCloudGoogleConnect;

begin
  TPhoenixVCLBackgroundApplication.ApplicationSetup('demo.tmssoftware.com');
  Application.Initialize;
  Application.ShowMainForm := False;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdlgVclCloudGoogleConnect, dlgVclCloudGoogleConnect);
  dlgVclCloudGoogleConnect.UpdateGoogle;
  Application.Terminate;

end.
