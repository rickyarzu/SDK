program CarServiceConfigMsgTester;

uses
  System.SysUtils,
  Vcl.Themes,
  Vcl.Styles,
  Vcl.Forms,
  Vcl.Graphics,
  Janua.TMS.SMS,
  Janua.Carservice.impl,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Vcl.MVVM.Framework,
  Janua.Carservice.VCLApplication,
  Janua.CarService.VCL.frmSettings in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmSettings.pas' {frmVCLCarServiceSettings},
  uCarServiceProject_x86_64 in '..\..\..\prj\DXE14\VCL\uCarServiceProject_x86_64.pas',
  Janua.Test.VCL.frmTestFilters in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters},
  Janua.Test.VCL.frmViewModel in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmViewModel.pas' {frmVCLTestViewModel},
  Janua.VCL.Cloud.frameMailMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameMailMessageConfig.pas' {frameVCLMailMessageConfig: TFrame},
  Janua.VCL.Cloud.FrameLandingMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.FrameLandingMessageConfig.pas' {FrameVCLLandingMessageConfig: TFrame},
  Janua.VCL.Cloud.frameSMSMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameSMSMessageConfig.pas' {frameVCLSMSMessageConfig: TFrame},
  Janua.VCL.Cloud.frameSMSSenderConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameSMSSenderConfig.pas' {frameVCLMailSmsSenderConfig: TFrame};

{$R *.res}
// var
// errorManager: TJanuaTmsExceptionHandler;

begin
  TJanuaApplication.AppName := ('app.carservice.com');
  Application.Initialize;
  // errorManager := TJanuaTmsExceptionHandler.Create(Application);
  // errorManager.Activate;
  TStyleManager.TrySetStyle('Win10IDE_Light');
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  { TCarServiceProjectApplication }
  TCarServiceProjectApplication.ApplicationSetup('app.carservice.com');
  TJanuaApplication.Title := 'Car Service Main Application';
  Application.Title := 'Car Service Main Application';
  Application.MainFormOnTaskbar := True;
{$IFDEF DEBUG}
  System.ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  // sStyle := 'Windows10 SlateGray';
  // sStyle := 'Windows';
  // 2020-10-14 Replaced monochrome buttons with color ones
  {
    if (sStyle = 'Windows10 SlateGray') then
    TJanuaVCLApplication.IconFontColor := clSilver
    else
    TJanuaVCLApplication.IconFontColor := StyleServices.GetStyleColor(TStyleColor.scButtonHot); // clSilver;
  }
  // 2020-10-14 Replaced monochrome buttons with color ones
  // Alla fien Creo il Form principale
  if TJanuaApplication.UserSessionVM.LoginWithDialog then
  begin
    Application.CreateForm(TfrmVCLCarServiceSettings, frmVCLCarServiceSettings);
  Application.Run;
  end
  else
    Application.Terminate;
  TJanuaCarServiceVCLApplication.ApplicationTearDown;
  // FreeAndNil(errorManager);

end.
