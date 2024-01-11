program JanuaVCLFrameworkDemosDXE13;

uses
  Vcl.Forms,
  Vcl.Graphics,
  Janua.Vcl.Application,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.Mock.Firedac.Framework,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Janua.TMLogistic.VCLApplication,
  Janua.Vcl.MVVM.Framework,
  Janua.TMS.Error,
  Vcl.Themes,
  Vcl.Styles,
  Vcl.Styles.Utils.SysControls,
  ufrmUnitTestJanuaVCLComponents in '..\..\src\ufrmUnitTestJanuaVCLComponents.pas' {frmUnitTestJanuaVCLComponents},
  uTestORM in '..\..\src\uTestORM.pas',
  Janua.Anagraph.Server.Intf in '..\..\..\src\januacore\Janua.Anagraph.Server.Intf.pas',
  Janua.Anagraph.Server.Impl in '..\..\..\src\januacore\Janua.Anagraph.Server.Impl.pas',
  uTestVCLConf in '..\..\src\uTestVCLConf.pas',
  WebModuleJormModel in '..\TestJormDatasnapREST\WebModuleJormModel.pas' {WebModule1: TWebModule},
  ServerMethodsJormCms in '..\TestJormDatasnapREST\ServerMethodsJormCms.pas' {ServerMethods1: TDataModule},
  ufrmVCLVMTestNavigator in '..\..\..\src\VCL\Test\ufrmVCLVMTestNavigator.pas' {frmVCLVMTestNavigator},
  uframeTestViewModelAnagraphSearch in '..\..\src\uframeTestViewModelAnagraphSearch.pas' {frameTestViewModelAnagraphSearch: TFrame},
  uframeTestViewModelLocationSearch in '..\..\src\uframeTestViewModelLocationSearch.pas' {frameTestViewModelLocationSearch: TFrame},
  uframePrintWarehouseReceipts in '..\..\src\uframePrintWarehouseReceipts.pas' {framePrintWarehouseReceipts: TFrame},
  uqrpInvoice in '..\..\..\src\VCL\Documents\uqrpInvoice.pas' {qrpInvoice},
  udmJanuaPgDocumentsStorage in '..\..\..\src\januaunidac\datamodules\udmJanuaPgDocumentsStorage.pas' {dmJanuaPgDocumentsStorage: TDataModule},
  uqrpTMWarehouseReceipt in '..\..\..\src\VCL\Logistic\uqrpTMWarehouseReceipt.pas' {qrpTMWarehouseReceipt},
  Janua.Logistic.PgAWBStorage in '..\..\..\src\januaunidac\datamodules\Janua.Logistic.PgAWBStorage.pas' {dmPgAWBsStorage: TDataModule},
  uframeTestPrintAWBs in '..\..\src\uframeTestPrintAWBs.pas' {frameTestPrintAWBs: TFrame},
  uframeTestPrintInvoice in '..\..\src\uframeTestPrintInvoice.pas' {frameTestPrintInvoice: TFrame},
  uframeVclTestOrmDatasetSync in '..\..\src\uframeVclTestOrmDatasetSync.pas' {frameVclTestOrmDatasetSync: TFrame},
  uframeTestOrmDB in '..\..\src\uframeTestOrmDB.pas' {frameTestOrmDB: TFrame},
  Janua.Test.VCL.frameBindTestOrm in '..\..\src\Janua.Test.VCL.frameBindTestOrm.pas' {frameBindTestOrm: TFrame},
  uframeTestViewModelDetail in '..\..\src\uframeTestViewModelDetail.pas' {frameTestViewModelDetail: TFrame},
  Janua.Test.VCL.dlgViewModelDetail in '..\..\src\Janua.Test.VCL.dlgViewModelDetail.pas' {dlgTestViewModelDetail},
  udlgTestViewModel in '..\..\src\udlgTestViewModel.pas' {dlgTestViewModel},
  Janua.Test.VCLApplication in '..\..\..\src\VCL\Test\Janua.Test.VCLApplication.pas',
  JOrm.Documents.Rows.Custom.Impl in '..\..\..\src\januacore\orm\JOrm.Documents.Rows.Custom.Impl.pas',
  ufrmVCLOutlookOLEAutomation in '..\..\..\Samples\Office OLE\Outlook\ufrmVCLOutlookOLEAutomation.pas' {frmVCLOutlookOLEAutomation},
  Janua.Test.VCL.frmTestFilters in '..\..\..\Samples\VCL\ViewModel\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters},
  ufrmGridsTestings in '..\..\..\Samples\VCL\GridsTesting\ufrmGridsTestings.pas' {frmVCLTestGrids},
  Janua.VCL.OrmGenerator in '..\..\..\src\VCL\System\Janua.VCL.OrmGenerator.pas' {Form8};

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;

begin
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  Janua.Mock.Firedac.Framework.TJanuaMockFiredacApplication.RegisterClasses;
  // Uso il Framework VCL il Framework TMS per la comunicazioni non lo uso ancora
  TJanuaTestVCLApplication.ApplicationSetup;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Janua VCL Test';
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TfrmUnitTestJanuaVCLComponents, frmUnitTestJanuaVCLComponents);
  Application.CreateForm(TfrmVCLTestGrids, frmVCLTestGrids);
  Application.CreateForm(TForm8, Form8);
  Application.Run;

end.
