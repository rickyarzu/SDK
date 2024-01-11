program TMLogisticsXE13;

uses
  {$IFDEF EurekaLog}
  EMemLeaks,
  EResLeaks,
  EDebugExports,
  EDebugJCL,
  EFixSafeCallException,
  EMapWin32,
  EAppVCL,
  EDialogWinAPIMSClassic,
  EDialogWinAPIEurekaLogDetailed,
  EDialogWinAPIStepsToReproduce,
  ExceptionLog7,
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
  Janua.Test.VCLApplication,
  Janua.Core.TMLogistic.Cache,
  Vcl.Themes,
  Vcl.Styles,
  ufrmMDIRibbonToolbar in '..\..\..\src\TMS\ufrmMDIRibbonToolbar.pas' {frmMDIRibbonToolbar},
  udmVCLMainApplication in '..\..\..\src\VCL\Commons\
udmVCLMainApplication.pas' {dmVCLMainApplication: TDataModule},
  udmTmsMainApplication in '..\..\..\src\TMS\udmTmsMainApplication.pas' {dmTmsMainApplication: TDataModule},
  udmLogisticMain in '..\..\..\..\Projects\VCL\src\logistic\udmLogisticMain.pas' {dmLogisticMain: TDataModule},
  uJanuaVCLForm in '..\..\..\src\VCL\Forms\uJanuaVCLForm.pas' {JanuaVCLFormModel},
  uJanuaVCLFrame in '..\..\..\src\VCL\Forms\uJanuaVCLFrame.pas' {JanuaVCLFrameModel: TFrame},
  uJanuaVCLMainForm in '..\..\..\src\VCL\Commons\
uJanuaVCLMainForm.pas' {JanuaVCLMainForm},
  ufrmVCLVMTestNavigator in '..\..\..\src\VCL\Test\ufrmVCLVMTestNavigator.pas' {TfrmVCLVMTestNavigator},
  uframeVCLDBReceiptRows in '..\..\..\src\VCL\Logistic\uframeVCLDBReceiptRows.pas' {frameVCLDBReceiptRows: TFrame},
  uframeVCLLOgisticReceiptSingleRow in '..\..\..\src\VCL\Logistic\uframeVCLLOgisticReceiptSingleRow.pas' {frameVCLLogisticReceiptSingleRow: TFrame},
  Janua.Items.VCL.MVVMNavigator in '..\..\..\src\VCL\Items\Janua.Items.VCL.MVVMNavigator.pas' {frmVCLItemsVMNavigator},
  uframeVCLItem in '..\..\..\src\VCL\Items\uframeVCLItem.pas' {frameVCLItem: TFrame},
  ufrmVCLOutlookOLEAutomation in '..\..\..\Samples\Office OLE\Outlook\ufrmVCLOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation},
  Janua.TMLogistic.VCLApplication in '..\..\..\src\VCL\Logistic\Janua.TMLogistic.VCLApplication.pas',
  ufrmLogisticMain in '..\..\..\..\Projects\VCL\src\logistic\ufrmLogisticMain.pas' {frmLogisticMain},
  UTMSTetMenuFrame in '..\..\..\..\Projects\VCL\Logistics\src\UTMSTetMenuFrame.pas' {TMSTestMenuFrame: TFrame},
  Janua.Test.VCL.frmTestFilters in '..\..\..\Samples\VCL\ViewModel\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters},
  Janua.VCL.Controls.BoolSelect in '..\..\..\src\VCL\Controls\Janua.VCL.Controls.BoolSelect.pas' {frameSelectBool: TFrame},
  ufrmGridsTestings in '..\..\..\Samples\VCL\GridsTesting\ufrmGridsTestings.pas' {frmVCLTestGrids},
  uframeTestOrmDB in '..\..\..\Testing\src\uframeTestOrmDB.pas' {frameTestOrmDB: TFrame},
  uframeTestPrintAWBs in '..\..\..\Testing\src\uframeTestPrintAWBs.pas' {frameTestPrintAWBs},
  uframeTestPrintInvoice in '..\..\..\Testing\src\uframeTestPrintInvoice.pas' {frameTestPrintInvoice: TFrame},
  uframeVclTestOrmDatasetSync in '..\..\..\Testing\src\uframeVclTestOrmDatasetSync.pas' {frameVclTestOrmDatasetSync: TFrame},
  Janua.Test.VCL.frmDatasetOrmSync in '..\..\..\Testing\src\Janua.Test.VCL.frmDatasetOrmSync.pas' {frmTestVCLDatasetOrmSync},
  Janua.VCL.Logistic.frameShipmentHead in '..\..\..\src\VCL\Logistic\Janua.VCL.Logistic.frameShipmentHead.pas' {FrameVCLLogisticShipmentHead: TFrame},
  uframeTestRecordSetOrmSyncNavigator in '..\..\..\Testing\src\uframeTestRecordSetOrmSyncNavigator.pas' {frameVCLRecordSetOrmSyncNavigator: TFrame},
  Janua.VCL.Logistic.frmShipmentNavigator in '..\..\..\src\VCL\Logistic\Janua.VCL.Logistic.frmShipmentNavigator.pas' {TframeTestRecordSetOrmSyncNavigator: TFrame},
  ufrmVCLViewModelNavigator in '..\..\..\src\VCL\Forms\ufrmVCLViewModelNavigator.pas' {TfrmVCLViewModelNavigator},
  udlgTestVCLMasterDetailTestDBOrmSync in '..\..\..\Testing\src\udlgTestVCLMasterDetailTestDBOrmSync.pas' {dlgVclMasterDetailTestDBOrmSync},
  udlgTestVCLMasterRecordSetOrmSync in '..\..\..\Testing\src\udlgTestVCLMasterRecordSetOrmSync.pas' {dlgTestVCLMasterRecordSetOrmSync};

{$R *.res}
{$IFNDEF EurekaLog}

var
  errorManager: TJanuaTmsExceptionHandler;
{$ENDIF}

begin

  TJanuaApplication.Initialize;
  Application.Initialize;
  if TJanuaApplication.ErrorLog.count > 0 then
    ShowMessage(TJanuaApplication.ErrorLog.Text);
{$IFNDEF EurekaLog}
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  Application.OnException := errorManager.OnDo;
{$ENDIF}
  TStyleManager.TrySetStyle('Win10IDE_Light');
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TJanuaTMLogisticVCLApplication.ApplicationSetup;
  // Attivo przialmente ambiente di test
  TJanuaTestVCLApplication.RegisterForms;

  TJanuaApplication.Title := 'TM Logistic Main Application';
  Application.Title := 'TM Logistic Main Application';
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
    Application.CreateForm(TfrmLogisticMain, frmLogisticMain);
    Application.Run;
  end
  else
    Application.Terminate;

  TJanuaTMLogisticVCLApplication.ApplicationTearDown;

  if TJanuaApplication.ErrorLog.count > 0 then
    ShowMessage(TJanuaApplication.ErrorLog.Text);
{$IFNDEF EurekaLog}
  FreeAndNil(errorManager);
{$ENDIF}
end.
