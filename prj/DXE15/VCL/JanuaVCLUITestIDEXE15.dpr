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
  ufrmTest in '..\..\..\Testing\src\ufrmTest.pas' {frmTest},
  ufrmTest2 in '..\..\..\Testing\src\ufrmTest2.pas' {frmTest2},
  ufrmTest3 in '..\..\..\Testing\src\ufrmTest3.pas' {frmTest3},
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
  udlgTestPgTablesList in '..\..\..\Testing\src\udlgTestPgTablesList.pas' {dlgVCLTestPgTablesList};

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
  // frmUnitTestJanuaVCLComponents: TfrmUnitTestJanuaVCLComponents
  Application.CreateForm(TfrmUnitTestJanuaVCLComponents, frmUnitTestJanuaVCLComponents);
  { Application.CreateForm(TfrmTestVCLDatasetOrmSync, frmTestVCLDatasetOrmSync);
 Application.CreateForm(TfrmVCLTestGrids, frmVCLTestGrids);
    Application.CreateForm(TfrmVCLTestFilters, frmVCLTestFilters);
    Application.CreateForm(TdlgVCLTestPgTablesList, dlgVCLTestPgTablesList); }
  errorManager.Free;
end.
