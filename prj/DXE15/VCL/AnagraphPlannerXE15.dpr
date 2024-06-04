program AnagraphPlannerXE15;

uses
  {$IFDEF EurekaLog}
  EMemLeaks,
  {$ENDIF EurekaLog}
  System.SysUtils,
  System.Threading,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Dialogs,
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
  Janua.Items.VCL.MVVMNavigator in '..\..\..\src\VCL\Items\Janua.Items.VCL.MVVMNavigator.pas' {frmVCLItemsVMNavigator},
  uframeVCLItem in '..\..\..\src\VCL\Items\uframeVCLItem.pas' {frameVCLItem: TFrame},
  ufrmVCLOutlookOLEAutomation in '..\..\..\Samples\Office OLE\Outlook\ufrmVCLOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation},
  Janua.AnagraphPlanner.VCLApplication in '..\..\..\src\VCL\Anagraph\Janua.AnagraphPlanner.VCLApplication.pas',
  Janua.AnagraphPlanner.frmMain in '..\..\..\src\VCL\Anagraph\Janua.AnagraphPlanner.frmMain.pas' {frmLogisticMain},
  UTMSTetMenuFrame in '..\..\..\src\TMS\UTMSTetMenuFrame.pas' {TMSTestMenuFrame: TFrame},
  Janua.VCL.Controls.BoolSelect in '..\..\..\src\VCL\Controls\Janua.VCL.Controls.BoolSelect.pas' {frameSelectBool: TFrame},
  uframeTestOrmDB in '..\..\..\Testing\src\uframeTestOrmDB.pas' {frameTestOrmDB: TFrame},
  uframeTestPrintInvoice in '..\..\..\Testing\src\uframeTestPrintInvoice.pas' {frameTestPrintInvoice: TFrame},
  uframeVclTestOrmDatasetSync in '..\..\..\Testing\src\uframeVclTestOrmDatasetSync.pas' {frameVclTestOrmDatasetSync: TFrame},
  uframeTestRecordSetOrmSyncNavigator in '..\..\..\Testing\src\uframeTestRecordSetOrmSyncNavigator.pas' {frameVCLRecordSetOrmSyncNavigator: TFrame},
  ufrmVCLViewModelNavigator in '..\..\..\src\VCL\Forms\ufrmVCLViewModelNavigator.pas' {TfrmVCLViewModelNavigator},
  udlgTestVCLMasterDetailTestDBOrmSync in '..\..\..\Testing\src\udlgTestVCLMasterDetailTestDBOrmSync.pas' {dlgVclMasterDetailTestDBOrmSync},
  udlgTestVCLMasterRecordSetOrmSync in '..\..\..\Testing\src\udlgTestVCLMasterRecordSetOrmSync.pas' {dlgTestVCLMasterRecordSetOrmSync},
  Janua.VCL.MVVM.frameNavigator in '..\..\..\src\VCL\Forms\Janua.VCL.MVVM.frameNavigator.pas' {frameVCLMVVMNavigator: TFrame},
  Janua.Logistic.PgWarehouseList in '..\..\..\src\januaunidac\datamodules\Janua.Logistic.PgWarehouseList.pas' {dmPgWarehouseList: TDataModule},
  Janua.Anagraph.VCL.frameAddress in '..\..\..\src\VCL\Anagraph\Janua.Anagraph.VCL.frameAddress.pas' {Frame1: TFrame},
  uframeVCLShippingAddress in '..\..\..\src\VCL\Anagraph\uframeVCLShippingAddress.pas' {frameVCLShippingAddress: TFrame},
  Janua.AnagraphPlanner.dlgVCLLogin in '..\..\..\src\VCL\Anagraph\Janua.AnagraphPlanner.dlgVCLLogin.pas' {dlgVCLAnagraphPlannerLogin},
  Janua.Test.VCL.frameBindTestOrm in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameBindTestOrm.pas' {frameBindTestOrm: TFrame},
  Janua.Core.Anagraph.Cache in '..\..\..\src\januacore\Janua.Core.Anagraph.Cache.pas',
  Janua.Anagraph.ViewModel.Intf in '..\..\..\src\januacore\ViewModels\Janua.Anagraph.ViewModel.Intf.pas',
  Janua.TMS.frmMDIContainer in '..\..\..\src\TMS\Janua.TMS.frmMDIContainer.pas' {frmVCLJanuaMDIContainer},
  Janua.VCL.dlgWaitSpin in '..\..\..\src\VCL\Commons\Janua.VCL.dlgWaitSpin.pas' {dlgVCLWaitSpin},
  Janua.VCL.Planner.frmCustomPlanner in '..\..\..\src\VCL\Planner\Janua.VCL.Planner.frmCustomPlanner.pas' {frmVCLAnagraphPlanner},
  Janua.VCL.Planner.dmCustomController in '..\..\..\src\VCL\Planner\Janua.VCL.Planner.dmCustomController.pas' {dmVCLPlannerCustomController: TDataModule},
  udlgVCLPlannerActivities in '..\..\..\src\VCL\Planner\udlgVCLPlannerActivities.pas' {dlgVCLPlannerActivities},
  udlgVCLPlannerAnagraph in '..\..\..\src\VCL\Planner\udlgVCLPlannerAnagraph.pas' {dlgVCLPlannerAnagraph},
  Janua.VCL.Planner.dlgCustomEvent in '..\..\..\src\VCL\Planner\Janua.VCL.Planner.dlgCustomEvent.pas' {dlgVCLCustomPlannerEvent},
  udmWinMainApplication in '..\..\..\src\Win\udmWinMainApplication.pas' {dmWinMainApplication: TDataModule};

{$R *.res}
{$IFNDEF EurekaLog}

var
  errorManager: TJanuaTmsExceptionHandler;
{$ENDIF}

begin

{$IFDEF DEBUG}
  TJanuaApplication.AppName := ('test.anagraphplanner.com');
{$ELSE}
  TJanuaApplication.AppName := ('destkop.anagraphplanner.com');
{$ENDIF}
  TJanuaApplication.Initialize;
  TJanuaApplication.StyleManager.Activate;
  Application.Initialize;
  if TJanuaApplication.ErrorLog.count > 0 then
    ShowMessage(TJanuaApplication.ErrorLog.Text);
{$IFNDEF EurekaLog}
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  Application.OnException := errorManager.OnDo;
{$ENDIF}
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
{$IFDEF DEBUG}
  TJanuaAnagraphPlannerVCLApplication.ApplicationSetup('test.anagraphplanner.com');
{$ELSE}
  TJanuaAnagraphPlannerVCLApplication.ApplicationSetup('desktop.anagraphplanner.com');
{$ENDIF}

  // Attivo przialmente ambiente di test
  { TJanuaTestVCLApplication.RegisterForms; }

  TJanuaApplication.Title := 'CAF Patronato Enasc Unsic';
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := 'CAF Patronato Enasc Unsic';
  Application.MainFormOnTaskbar := True;

{$IFDEF DEBUG}
  System.ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
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
    Application.CreateForm(TfrmAnagraphPlannerMain, frmAnagraphPlannerMain);
  Application.CreateForm(TdmWinMainApplication, dmWinMainApplication);
  Application.Run;
  end
  else
    Application.Terminate;

  TJanuaAnagraphPlannerVCLApplication.ApplicationTearDown;

  if TJanuaApplication.ErrorLog.count > 0 then
    ShowMessage(TJanuaApplication.ErrorLog.Text);
{$IFNDEF EurekaLog}
  FreeAndNil(errorManager);
{$ENDIF}

end.
