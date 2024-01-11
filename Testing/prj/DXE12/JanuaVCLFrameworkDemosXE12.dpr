program JanuaVCLFrameworkDemosXE12;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  Janua.Vcl.Framework,
  Janua.Application.Framework,
  ufrmTest in '..\..\src\ufrmTest.pas' {frmTest},
  ufrmTest2 in '..\..\src\ufrmTest2.pas' {frmTest2},
  ufrmTest3 in '..\..\src\ufrmTest3.pas' {frmTest3},
  uframeTest in '..\..\src\uframeTest.pas' {frameTest: TFrame},
  Janua.VCL.ApplicationSetup.Test in '..\..\..\src\VCL\Test\Janua.VCL.ApplicationSetup.Test.pas',
  uframeAnagraphCompanyAddress in '..\..\..\src\VCL\Anagraph\uframeAnagraphCompanyAddress.pas' {FrameVCLCompanyAddress: TFrame},
  ufrmUnitTestJanuaVCLComponents in '..\..\src\ufrmUnitTestJanuaVCLComponents.pas' {Form15},
  uTestORM in '..\..\src\uTestORM.pas',
  Janua.Mock.Container in '..\..\..\src\januacore\Test\Janua.Mock.Container.pas',
  Janua.Test.ServerVirtual.Impl in '..\..\src\Janua.Test.ServerVirtual.Impl.pas',
  uServerMethodsJOrmModel in '..\..\..\src\Datasnap\uServerMethodsJOrmModel.pas' {ServerMethodsJOrmModel: TDataModule},
  WebModuleJormModel in '..\..\..\src\Datasnap\WebModuleJormModel.pas' {WebModule1: TWebModule},
  JOrm.Items.ItemDef.Intf in '..\..\..\src\januacore\orm\JOrm.Items.ItemDef.Intf.pas',
  uframePrintWarehouseReceipts in '..\..\src\uframePrintWarehouseReceipts.pas' {framePrintWarehouseReceipts: TFrame},
  uframeTestViewModelAnagraphSearch in '..\..\src\uframeTestViewModelAnagraphSearch.pas' {frameTestViewModelAnagraphSearch: TFrame},
  uframeTestViewModelLocationSearch in '..\..\src\uframeTestViewModelLocationSearch.pas' {frameTestViewModelLocationSearch: TFrame},
  uframeTestPrintAWBs in '..\..\src\uframeTestPrintAWBs.pas' {frameTestPrintAWBs: TFrame},
  uframeTestPrintInvoice in '..\..\src\uframeTestPrintInvoice.pas' {frameTestPrintInvoice: TFrame},
  udmTestGeoCoding in '..\..\src\udmTestGeoCoding.pas' {dmTestGeoCoding: TDataModule},
  uframeTestOrmDB in '..\..\src\uframeTestOrmDB.pas' {frameTestOrmDB: TFrame},
  Janua.Test.VCL.frameBindTestOrm in '..\..\src\Janua.Test.VCL.frameBindTestOrm.pas' {frameBindTestOrm: TFrame},
  uframeVclTestOrmDatasetSync in '..\..\src\uframeVclTestOrmDatasetSync.pas' {frameVclTestOrmDatasetSync: TFrame};

{$R *.res}

begin
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  TJanuaApplication.ServerPort := 5432;
  TJanuaApplication.ServerDirect := True;
  TJanuaApplication.ServerUserName := 'ergo';
  TJanuaApplication.ServerPassword := '3rg0m3rc4t0r';
  TJanuaApplication.ServerSchema := 'public';

  Application.Initialize;
  TJanuaVCLApplication.Initialize;
  Application.MainFormOnTaskbar := True;
  uApplicationSetup.ApplicationSetup;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  AApplication.CreateForm(TfrmUnitTestJanuaVCLComponents, frmUnitTestJanuaVCLComponents);
  pplication.Run;

end.
