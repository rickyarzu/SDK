program CarServiceAdminXE15;

uses
  System.SysUtils,
  Vcl.Forms,
  Vcl.Graphics,
  Janua.TMS.Error,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Janua.Vcl.MVVM.Framework,
  Vcl.Themes,
  Vcl.Styles,
  Spring,
  ufrmMDIRibbonToolbar in '..\..\..\src\TMS\ufrmMDIRibbonToolbar.pas' {frmMDIRibbonToolbar},
  udmVCLMainApplication in '..\..\..\src\VCL\Commons\udmVCLMainApplication.pas' {dmVCLMainApplication: TDataModule},
  udmTmsMainApplication in '..\..\..\src\TMS\udmTmsMainApplication.pas' {dmTmsMainApplication: TDataModule},
  uJanuaVCLForm in '..\..\..\src\VCL\Forms\uJanuaVCLForm.pas' {JanuaVCLFormModel},
  uJanuaVCLFrame in '..\..\..\src\VCL\Forms\uJanuaVCLFrame.pas' {JanuaVCLFrameModel: TFrame},
  uJanuaVCLMainForm in '..\..\..\src\VCL\Commons\uJanuaVCLMainForm.pas' {JanuaVCLMainForm},
  uframeVCLItem in '..\..\..\src\VCL\Items\uframeVCLItem.pas' {frameVCLItem: TFrame},
  Janua.VCL.frmOutlookOLEAutomation in '..\..\..\src\VCL\Commons\Janua.VCL.frmOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation},
  Janua.CarService.VCLMainForm in '..\..\..\src\VCL\CarService\Janua.CarService.VCLMainForm.pas' {frmCarserviceMain},
  Janua.VCL.Controls.BoolSelect in '..\..\..\src\VCL\Controls\Janua.VCL.Controls.BoolSelect.pas' {frameSelectBool: TFrame},
  Janua.CarService.VCL.frmCarBooking in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCarBooking.pas' {frmVCLCarServiceBooking},
  Janua.CarService.dlgVCLLogin in '..\..\..\src\VCL\CarService\Janua.CarService.dlgVCLLogin.pas' {dlgVCLCarServiceLogin},
  Janua.VCL.MVVM.frameNavigator in '..\..\..\src\VCL\Forms\Janua.VCL.MVVM.frameNavigator.pas' {frameVCLMVVMNavigator: TFrame},
  Janua.CarService.VCL.frmSettings in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmSettings.pas' {frmVCLCarServiceSettings},
  Janua.TMS.frmPgJormGenerator in '..\..\..\src\TMS\Janua.TMS.frmPgJormGenerator.pas' {frmVCLPgJormGenerator},
  Janua.VCL.Cloud.frameSMSMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameSMSMessageConfig.pas' {frameVCLSMSMessageConfig: TFrame},
  Janua.VCL.Cloud.FrameLandingMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.FrameLandingMessageConfig.pas' {FrameVCLLandingMessageConfig: TFrame},
  Janua.VCL.Cloud.frameMailMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameMailMessageConfig.pas' {frameVCLMailMessageConfig: TFrame},
  Janua.VCL.Cloud.frameSMSSenderConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameSMSSenderConfig.pas' {frameVCLMailSmsSenderConfig: TFrame},
  Janua.VCL.dlgWaitSpin in '..\..\..\src\VCL\Commons\Janua.VCL.dlgWaitSpin.pas' {dlgVCLWaitSpin},
  Janua.Carservice.PgSettings in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgSettings.pas' {dmCarserviceUniPgSettings: TDataModule},
  udmSVGImageList in '..\..\..\src\VCL\Commons\udmSVGImageList.pas' {dmSVGImageList: TDataModule},
  Janua.VCL.Cloud.frmMailMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frmMailMessageConfig.pas' {frmVCLMailMessageConfig},
  Janua.CarService.VCL.frmDriverLandingMsgBuilderpas in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmDriverLandingMsgBuilderpas.pas' {frmVCLCSDriverLandingMsgBuilder},
  Janua.CarService.VCL.frmBookingNRLandingMsgBuilder in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmBookingNRLandingMsgBuilder.pas' {frmVCLCSBookingNRLandingMsgBuilder},
  Janua.VCL.Cloud.frmLandingMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frmLandingMessageConfig.pas' {frmVCLLandingMessageConfig},
  Janua.VCL.Cloud.frmSMSMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frmSMSMessageConfig.pas' {frmVCLSMSMessageConfig},
  Janua.CarService.VCL.frmCustomerLandingMessageNR in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCustomerLandingMessageNR.pas' {frmVCLCSCustomerLandingMessageNR},
  Janua.CarService.VCL.frmDriverMailBuilder2 in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmDriverMailBuilder2.pas' {frmVCLFCSDriverMailBuilder2},
  Janua.CarService.VCL.frmDriverMailBuilder1 in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmDriverMailBuilder1.pas' {frmVCLFCSDriverMailBuilder1},
  Janua.CarService.VCL.frmBookingLandingMessage in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmBookingLandingMessage.pas' {frmVCLCSBookingLandingMessage},
  Janua.CarService.VCL.frmCustConfirmationNRMsgBuilderlder in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCustConfirmationNRMsgBuilderlder.pas' {frmVCLCSCustConfirmationNRMsgBuilder},
  Janua.CarService.VCL.frmDriver2SMSBuilder in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmDriver2SMSBuilder.pas' {frmVCLCSDriver2SMSBuilder},
  Janua.CarService.VCL.frmDriver1SMSBuilder in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmDriver1SMSBuilder.pas' {frmVCLCSDriver1SMSBuilder},
  Janua.CarService.VCL.frmCustomerMailBuilderNR in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCustomerMailBuilderNR.pas' {frmVCLFCSCustomerMailBuilderNR},
  Janua.CarService.VCL.frmCustomerMailBuilder in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCustomerMailBuilder.pas' {frmVCLFCSCustomerMailBuilder},
  Janua.CarService.VCL.frmCustomerSMSBuilder in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCustomerSMSBuilder.pas' {frmVCLCSCustomerSMSBuilder},
  Janua.CarService.VCL.frmCustomerNRSMSBuilder in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCustomerNRSMSBuilder.pas' {frmVCLCSCustomerNRSMSBuilder},
  Janua.VCL.dlgMobilePreview in '..\..\..\src\VCL\Forms\Janua.VCL.dlgMobilePreview.pas' {dlgVCLMobilePreview},
  Janua.CarService.VCL.frmCustConfirmationMsgBuilder in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCustConfirmationMsgBuilder.pas' {frmVCLCSCustConfirmationMsgBuilder},
  Janua.CarService.VCL.frmPageNotFound in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmPageNotFound.pas' {frmVCLCSPageNotFound},
  Janua.VCL.dlgPgTablesList in '..\..\..\src\VCL\Commons\Janua.VCL.dlgPgTablesList.pas' {dlgVCLPgTablesList},
  Janua.CarService.VCL.frmServiceContract in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmServiceContract.pas' {frmVCLCSServiceContract},
  Janua.CarService.VCL.frmDriverContract in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmDriverContract.pas' {frmVCLCSDriverContract},
  Janua.CarService.VCL.frmCustomerLandingMessage in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCustomerLandingMessage.pas' {frmVCLCSCustomerLandingMessage},
  Janua.CarService.VCL.frmCustomerContract in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCustomerContract.pas' {frmVCLCCustomerContract},
  Janua.VCL.Cloud.frmAmazonAWSTestSettings in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frmAmazonAWSTestSettings.pas' {frmVCLAmazonAWSTestSettings},
  Janua.Framework.JormGenerator.Postgres in '..\..\..\src\januaunidac\datamodules\Janua.Framework.JormGenerator.Postgres.pas' {dmPgFrameworkJormGenerator: TDataModule},
  Janua.Anagraph.Postgres.Storage in '..\..\..\src\januaunidac\datamodules\Janua.Anagraph.Postgres.Storage.pas' {dmJanuaPgAnagraphStorage: TDataModule},
  Janua.VCL.dlgHtmlEditorAddImage in '..\..\..\src\VCL\Commons\Janua.VCL.dlgHtmlEditorAddImage.pas' {dlgVCLHtmlEditorAddImage},
  Janua.VCL.frameHtmlEditor in '..\..\..\src\VCL\Commons\Janua.VCL.frameHtmlEditor.pas' {frameHTMLEditor: TFrame},
  Planner in '..\..\..\..\tmssoftware\TMS VCL UI Pack\Planner.pas',
  uCarServiceAdmin in 'uCarServiceAdmin.pas';

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;

begin
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  TJanuaApplication.AppName := ('desktop.carservice.com');
  Application.Initialize;
  TStyleManager.TrySetStyle('Iceberg Classico');
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TCarServiceProjectApplication.ApplicationSetup('desktop.carservice.com');
  TJanuaApplication.Title := 'Car Service Main Application';
  Application.Title := 'Car Service Main Application';

{$IFDEF DEBUG}
  var
  sConfFile := TJanuacoreOS.ConfigFileName;
  // Verifico quale sia la location del Config File per aggiustarlo eventualmente
  var
  sServer := TJanuaApplication.ServerAddress;

  Guard.CheckFalse(sConfFile = '', 'sConfFile not set');
  Guard.CheckFalse(sServer = '', 'sServer not set');
{$ENDIF}

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
    TCarServiceProjectApplication.LoadMenu;
    Application.CreateForm(TfrmCarserviceMain, frmCarserviceMain);
  Application.Run;
  end
  else
    Application.Terminate;

  TCarServiceProjectApplication.ApplicationTearDown;
  FreeAndNil(errorManager);

end.

