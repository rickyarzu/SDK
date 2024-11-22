program CarServiceXE14;

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
  ufrmMDIRibbonToolbar in '..\..\..\src\TMS\ufrmMDIRibbonToolbar.pas' {frmMDIRibbonToolbar} ,
  udmVCLMainApplication
    in '..\..\..\src\VCL\Commons\udmVCLMainApplication.pas' {dmVCLMainApplication: TDataModule} ,
  udmTmsMainApplication in '..\..\..\src\TMS\udmTmsMainApplication.pas' {dmTmsMainApplication: TDataModule} ,
  uJanuaVCLForm in '..\..\..\src\VCL\Forms\uJanuaVCLForm.pas' {JanuaVCLFormModel} ,
  uJanuaVCLFrame in '..\..\..\src\VCL\Forms\uJanuaVCLFrame.pas' {JanuaVCLFrameModel: TFrame} ,
  uJanuaVCLMainForm in '..\..\..\src\VCL\Commons\uJanuaVCLMainForm.pas' {JanuaVCLMainForm} ,
  ufrmVCLVMTestNavigator in '..\..\..\src\VCL\Test\ufrmVCLVMTestNavigator.pas' {TfrmVCLVMTestNavigator} ,
  uframeVCLItem in '..\..\..\src\VCL\Items\uframeVCLItem.pas' {frameVCLItem: TFrame} ,
  Janua.Vcl.frmOutlookOLEAutomation
    in '..\..\..\src\VCL\Commons\Janua.VCL.frmOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation} ,
  Janua.CarService.VCLMainForm
    in '..\..\..\src\VCL\CarService\Janua.CarService.VCLMainForm.pas' {frmCarserviceMain} ,
  UTMSTetMenuFrame in '..\..\..\src\VCL\Forms\UTMSTetMenuFrame.pas' {TMSTestMenuFrame: TFrame} ,
  Janua.Vcl.Controls.BoolSelect
    in '..\..\..\src\VCL\Controls\Janua.VCL.Controls.BoolSelect.pas' {frameSelectBool: TFrame} ,
  Janua.CarService.VCLApplication in '..\..\..\src\VCL\CarService\Janua.CarService.VCLApplication.pas',
  Janua.CarService.Vcl.frmCarBooking
    in '..\..\..\src\VCL\CarService\Janua.CarService.VCL.frmCarBooking.pas' {frmVCLCarServiceBooking} ,
  Janua.CarService.dlgVCLLogin
    in '..\..\..\src\VCL\CarService\Janua.CarService.dlgVCLLogin.pas' {dlgVCLCarServiceLogin} ,
  uCarServiceProject_x86_64 in 'uCarServiceProject_x86_64.pas',
  Janua.Test.Vcl.frmTestFilters
    in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters} ,
  Janua.Test.Vcl.frmViewModel
    in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmViewModel.pas' {frmVCLTestViewModel} ,
  Janua.Test.Vcl.frmDatasetOrmSync
    in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmDatasetOrmSync.pas' {frmTestVCLDatasetOrmSync} ,
  Janua.Test.Vcl.frameVclOrmDatasetSync
    in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameVclOrmDatasetSync.pas' {frameVclTestOrmDatasetSync: TFrame} ,
  Janua.Test.Vcl.frameOrmDB
    in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameOrmDB.pas' {frameTestOrmDB: TFrame} ,
  Janua.Test.Vcl.frameBindTestOrm
    in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameBindTestOrm.pas' {frameBindTestOrm: TFrame} ,
  Janua.Test.Vcl.frameRecordSetOrmSyncNavigator
    in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameRecordSetOrmSyncNavigator.pas' {frameTestRecordSetOrmSyncNavigator: TFrame} ,
  Janua.Vcl.MVVM.frameNavigator
    in '..\..\..\src\VCL\Forms\Janua.VCL.MVVM.frameNavigator.pas' {frameVCLMVVMNavigator: TFrame} ,
  Janua.TMS.frmPgJormGenerator
    in '..\..\..\src\TMS\Janua.TMS.frmPgJormGenerator.pas' {frmVCLPgJormGenerator} ,
  Janua.Vcl.Cloud.frameSMSMessageConfig
    in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameSMSMessageConfig.pas' {frameVCLSMSMessageConfig: TFrame} ,
  Janua.Vcl.Cloud.frameSMSSenderConfig
    in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frameSMSSenderConfig.pas' {frameVCLMailSmsSenderConfig: TFrame} ,
  Janua.Test.Vcl.dlgPgTablesList
    in '..\..\..\src\VCL\Test\Janua.Test.VCL.dlgPgTablesList.pas' {dlgVCLTestPgTablesList} ,
  Janua.Vcl.dlgWaitSpin in '..\..\..\src\VCL\Commons\Janua.VCL.dlgWaitSpin.pas' {dlgVCLWaitSpin} ,
  Janua.CarService.PgSettings
    in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgSettings.pas' {dmCarserviceUniPgSettings: TDataModule} ,
  udmSVGImageList in '..\..\..\src\VCL\Commons\udmSVGImageList.pas' {dmSVGImageList: TDataModule};

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;

begin
  TJanuaApplication.AppName := ('desktop.carservice.com');
  Application.Initialize;
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  TStyleManager.TrySetStyle('Win10IDE_Light');
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TCarServiceProjectApplication.ApplicationSetup('desktop.carservice.com');
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
    TJanuaCarServiceVCLApplication.LoadMenu;
    Application.CreateForm(TfrmCarserviceMain, frmCarserviceMain);
    Application.Run;
  end
  else
    Application.Terminate;

  TJanuaCarServiceVCLApplication.ApplicationTearDown;
  FreeAndNil(errorManager);

end.
