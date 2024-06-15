program JanuaDevIDEXE15;

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
  ufrmMDIRibbonToolbar in '..\..\..\src\TMS\ufrmMDIRibbonToolbar.pas' {frmMDIRibbonToolbar},
  udmVCLMainApplication in '..\..\..\src\VCL\Commons\udmVCLMainApplication.pas' {dmVCLMainApplication: TDataModule},
  udmTmsMainApplication in '..\..\..\src\TMS\udmTmsMainApplication.pas' {dmTmsMainApplication: TDataModule},
  uJanuaVCLForm in '..\..\..\src\VCL\Forms\uJanuaVCLForm.pas' {JanuaVCLFormModel},
  uJanuaVCLFrame in '..\..\..\src\VCL\Forms\uJanuaVCLFrame.pas' {JanuaVCLFrameModel: TFrame},
  uJanuaVCLMainForm in '..\..\..\src\VCL\Commons\uJanuaVCLMainForm.pas' {JanuaVCLMainForm},
  ufrmVCLVMTestNavigator in '..\..\..\src\VCL\Test\ufrmVCLVMTestNavigator.pas' {TfrmVCLVMTestNavigator},
  uframeVCLItem in '..\..\..\src\VCL\Items\uframeVCLItem.pas' {frameVCLItem: TFrame},
  Janua.VCL.frmOutlookOLEAutomation in '..\..\..\src\VCL\Commons\Janua.VCL.frmOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation},
  Janua.CarService.VCLMainForm in '..\..\..\src\VCL\CarService\Janua.CarService.VCLMainForm.pas' {frmCarserviceMain},
  UTMSTetMenuFrame in '..\..\..\src\VCL\Forms\UTMSTetMenuFrame.pas' {TMSTestMenuFrame: TFrame},
  Janua.VCL.Controls.BoolSelect in '..\..\..\src\VCL\Controls\Janua.VCL.Controls.BoolSelect.pas' {frameSelectBool: TFrame},
  Janua.CarService.VCLApplication in '..\..\..\src\VCL\CarService\Janua.CarService.VCLApplication.pas',
  Janua.CarService.VCL.frmCarBooking in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCarBooking.pas' {frmVCLCarServiceBooking},
  Janua.CarService.dlgVCLLogin in '..\..\..\src\VCL\CarService\Janua.CarService.dlgVCLLogin.pas' {dlgVCLCarServiceLogin},
  Janua.Test.VCL.frmTestFilters in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters},
  Janua.Test.VCL.frmViewModel in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmViewModel.pas' {frmVCLTestViewModel},
  Janua.Test.VCL.frmDatasetOrmSync in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmDatasetOrmSync.pas' {frmTestVCLDatasetOrmSync},
  Janua.Test.VCL.frameVclOrmDatasetSync in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameVclOrmDatasetSync.pas' {frameVclTestOrmDatasetSync: TFrame},
  Janua.Test.VCL.frameOrmDB in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameOrmDB.pas' {frameTestOrmDB: TFrame},
  Janua.Test.VCL.frameBindTestOrm in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameBindTestOrm.pas' {frameBindTestOrm: TFrame},
  Janua.Test.VCL.frameRecordSetOrmSyncNavigator in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameRecordSetOrmSyncNavigator.pas' {frameTestRecordSetOrmSyncNavigator: TFrame},
  Janua.VCL.MVVM.frameNavigator in '..\..\..\src\VCL\Forms\Janua.VCL.MVVM.frameNavigator.pas' {frameVCLMVVMNavigator: TFrame},
  Janua.CarService.VCL.frmSettings in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmSettings.pas' {frmVCLCarServiceSettings},
  Janua.TMS.frmPgJormGenerator in '..\..\..\src\TMS\Janua.TMS.frmPgJormGenerator.pas' {frmVCLPgJormGenerator},
  Janua.VCL.Cloud.frameSMSMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameSMSMessageConfig.pas' {frameVCLSMSMessageConfig: TFrame},
  Janua.VCL.Cloud.FrameLandingMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.FrameLandingMessageConfig.pas' {FrameVCLLandingMessageConfig: TFrame},
  Janua.VCL.Cloud.frameMailMessageConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameMailMessageConfig.pas' {frameVCLMailMessageConfig: TFrame},
  Janua.VCL.Cloud.frameSMSSenderConfig in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameSMSSenderConfig.pas' {frameVCLMailSmsSenderConfig: TFrame},
  Janua.Test.VCL.dlgPgTablesList in '..\..\..\src\VCL\Test\Janua.Test.VCL.dlgPgTablesList.pas' {dlgVCLTestPgTablesList},
  Janua.VCL.dlgWaitSpin in '..\..\..\src\VCL\Commons\Janua.VCL.dlgWaitSpin.pas' {dlgVCLWaitSpin},
  Janua.Carservice.PgSettings in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgSettings.pas' {dmCarserviceUniPgSettings: TDataModule},
  Janua.VCL.frameHtmlEditor in '..\..\..\src\VCL\Commons\Janua.VCL.frameHtmlEditor.pas' {frameHTMLEditor: TFrame},
  udmSVGImageList in '..\..\..\src\VCL\Commons\udmSVGImageList.pas' {dmSVGImageList: TDataModule},
  Janua.Framework.JormGenerator.Postgres in '..\..\..\src\januaunidac\datamodules\Janua.Framework.JormGenerator.Postgres.pas' {dmPgFrameworkJormGenerator: TDataModule},
  Janua.Framework.JormGenerator.Firebird in '..\..\..\src\januaunidac\datamodules\Janua.Framework.JormGenerator.Firebird.pas' {dmPgFrameworkJormGenerator1: TDataModule},
  uJanuaDevIDEProject in 'uJanuaDevIDEProject.pas',
  uCarServiceProject_x86_64 in 'uCarServiceProject_x86_64.pas',
  Janua.VCL.Cloud.frmImportOSMaps in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frmImportOSMaps.pas' {frmVCLImportOSMaps};

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;

begin
  TJanuaApplication.AppName := ('desktop.januaproject.it');
  Application.Initialize;
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TCarServiceProjectApplication.ApplicationSetup('desktop.januaproject.it');
  TJanuaApplication.Title := 'Janua Dev IDE';
  TStyleManager.TrySetStyle('Sky');
  Application.Title := TJanuaApplication.Title;
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
  Application.CreateForm(TfrmVCLImportOSMaps, frmVCLImportOSMaps);
  Application.Run;
  end
  else
    Application.Terminate;

  TJanuaCarServiceVCLApplication.ApplicationTearDown;
  FreeAndNil(errorManager);

end.
