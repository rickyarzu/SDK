program JanuaVCLUITestIDEXE15;

uses
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
  uframeTest in '..\..\..\Testing\src\uframeTest.pas' {frameTest: TFrame},
  uApplicationSetup in '..\..\..\Testing\src\uApplicationSetup.pas',
  Janua.Anagraph.VCL.frameCompanyInformations in '..\..\..\src\VCL\Anagraph\Janua.Anagraph.VCL.frameCompanyInformations.pas' {FrameVCLCompanyAnagraph: TFrame},
  ufrmUnitTestJanuaVCLComponents in '..\..\..\Testing\src\ufrmUnitTestJanuaVCLComponents.pas' {Form15},
  uTestORM in '..\..\..\Testing\src\uTestORM.pas',
  ServerConstDatsnapRESTServer in '..\..\..\Testing\prj\TestJormDatasnapREST\ServerConstDatsnapRESTServer.pas',
  Janua.AnagraphPlanner.VCLApplication in '..\..\..\src\VCL\Anagraph\Janua.AnagraphPlanner.VCLApplication.pas',
  ServerMethodsJormCms in '..\..\..\Testing\prj\TestJormDatasnapREST\ServerMethodsJormCms.pas' {ServerMethods1: TDataModule},
  ufrmGridsTestings in '..\..\..\Samples\VCL\GridsTesting\ufrmGridsTestings.pas' {frmVCLTestGrids},
  Janua.Test.VCL.frmTestFilters in '..\..\..\Samples\VCL\ViewModel\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters},
  udlgTestPgTablesList in '..\..\..\Testing\src\udlgTestPgTablesList.pas' {dlgVCLTestPgTablesList},
  Janua.Test.dlgVCLLogin in '..\..\..\src\VCL\Test\Janua.Test.dlgVCLLogin.pas' {dlgVCLCarServiceLogin},
  Janua.Test.PhoenixCore in '..\..\..\src\VCL\Test\Janua.Test.PhoenixCore.pas',
  Janua.Test.VCL.framePrintAWBs in '..\..\..\src\VCL\Test\Janua.Test.VCL.framePrintAWBs.pas',
  Janua.Test.VCL.framePrintInvoice in '..\..\..\src\VCL\Test\Janua.Test.VCL.framePrintInvoice.pas',
  Janua.Test.VCL.framePrintWarehouseReceipts in '..\..\..\src\VCL\Test\Janua.Test.VCL.framePrintWarehouseReceipts.pas',
  Janua.Test.VCL.frameRecordSetOrmSyncNavigator in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameRecordSetOrmSyncNavigator.pas' {frameTestRecordSetOrmSyncNavigator: TFrame},
  Janua.Test.VCL.frameVclOrmDatasetSync in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameVclOrmDatasetSync.pas' {frameVclTestOrmDatasetSync: TFrame},
  Janua.Test.VCL.frameViewModelLocationSearch in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameViewModelLocationSearch.pas',
  Janua.Test.VCL.frmDatasetOrmSync in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmDatasetOrmSync.pas' {frmTestVCLDatasetOrmSync},
  Janua.Test.VCL.frmDMVCRestClientServer in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmDMVCRestClientServer.pas' {frmTestRestClientServer},
  Janua.Test.VCL.frmRESTAuthorization in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmRESTAuthorization.pas' {frmVCLTestRESTAuthorization},
  Janua.Test.VCL.frmTest in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmTest.pas' {frmTest},
  Janua.Test.VCL.frmTest2 in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmTest2.pas' {frmTest2},
  Janua.Test.VCL.frmTest3 in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmTest3.pas' {frmTest3},
  Janua.Test.VCL.frameViewModelAnagraphSearch in '..\..\..\src\VCL\Test\Janua.Test.VCL.frameViewModelAnagraphSearch.pas' {frameTestViewModelAnagraphSearch: TFrame},
  Janua.DMVC.Test.PrivateController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PrivateController.pas',
  Janua.DMVC.Test.PublicController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PublicController.pas';

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;

begin
  Application.Initialize;
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TJanuaTMLogisticVCLApplication.ApplicationSetup;
  TJanuaApplication.Title := 'VCL Test Main Application';
  Application.Title := 'VCL Test Main Application';
  Application.MainFormOnTaskbar := True;
{$IFDEF DEBUG}
  System.ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  uApplicationSetup.ApplicationSetup;
  Application.CreateForm(TfrmUnitTestJanuaVCLComponents, frmUnitTestJanuaVCLComponents);
  Application.CreateForm(TdlgVCLCarServiceLogin, dlgVCLCarServiceLogin);
  Application.CreateForm(TfrmTestVCLDatasetOrmSync, frmTestVCLDatasetOrmSync);
  Application.CreateForm(TfrmTestRestClientServer, frmTestRestClientServer);
  Application.CreateForm(TfrmVCLTestRESTAuthorization, frmVCLTestRESTAuthorization);
  Application.CreateForm(TfrmTest, frmTest);
  Application.CreateForm(TfrmTest2, frmTest2);
  Application.CreateForm(TfrmTest3, frmTest3);
  errorManager.Free;
end.
