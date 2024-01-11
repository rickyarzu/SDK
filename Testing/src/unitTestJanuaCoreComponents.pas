unit unitTestJanuaCoreComponents;

interface

uses
  DUnitX.TestFramework,
  Janua.VCL.MVVM.Framework,
  Janua.Orm.Register,
  Janua.Uni.Framework,
  Janua.Vcl.Framework,
  Janua.Application.Framework,
  Janua.Test.VCLApplication;

type

  [TestFixture]
  TTestJanuaCoreComponents = class(TObject)
    [Test]
    procedure SetupOrm;
    [Test]
    procedure SetupFramework;
    [Test]
    procedure SetupVCL;
    [Test]
    procedure RegisterFormsVCL;
    [Test]
    procedure VCLInitialization;
    [Test]
    procedure MVVMInitialization;
    [Test]
    procedure VModelFrameworkInitialize;
    [Test]
    procedure TestCloneDataModule;
  end;

implementation

uses System.Types,
  // Janua Core & DB
  Janua.Controls.Forms.Impl,
  Janua.ViewModels.Framework, Janua.ViewModels.Application,
  // Janua VCL
  // Janua.VCL.Application,
  Janua.Documents.WarehouseReceipts.ViewModel.intf, Janua.Documents.WarehouseReceipts.ViewModel.Impl,
  // Janua FireDac
  Janua.Mock.Firedac.Framework,
  // Janua TMS
  Janua.TMS.NavBar,
  /// Settings
  ufrmVCLVMTestNavigator, ufrmTMMigrationMain,
  // Planner
  ufrmVCLAnagraphPlanner,
  /// Directory
  ufrmVCLVMAnagraphNavigator,
  // WR
  Janua.VCL.Logistic.dlgWarehouseReceipt, ufrmVCLLogistiReceiptsNavigator, uqrpTMWarehouseReceipt,
  // ufrmVCLLogisticReceipt,
  // Documents
  uqrpTMLabels;

{ TTestJanuaCoreComponents }

procedure TTestJanuaCoreComponents.MVVMInitialization;
begin
  // Per ultimo viene inizializzato il Model View View Model Framework che si 'appoggia' agli altri.
  TJanuaVCLMVVMFramework.Initialize;
  Assert.Pass('Test MVVMInitialization');
end;

procedure TTestJanuaCoreComponents.RegisterFormsVCL;
begin
  // TDocWHReceiptsViewModel = class(IJanuaWHReceiptsViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaWHReceiptsViewModel, TDocWHReceiptsViewModel);
  // TJanuaApplicationFactory.RegisterComponent(IJanuaWHReceiptForm, TfrmVCLLogisticReceipt);
  // TdlgVCLLogisticWarehouseReceipt
  TJanuaApplicationFactory.RegisterComponent(IJanuaWHReceiptForm, TdlgVCLLogisticWarehouseReceipt);
  // TJanuaWHRQrpLabelReporter = Class(IJanuaWHRLabelsReporter)
  TJanuaApplicationFactory.RegisterClass(IJanuaWHRLabelsReporter, TJanuaWHRQrpLabelReporter);
  // TJanuaWHRQrpReceiptReporter = Class(TJanuaWHRReporter, IJanuaWHRReceiptsReporter
  TJanuaApplicationFactory.RegisterClass(IJanuaWHRReceiptsReporter, TJanuaWHRQrpReceiptReporter);
  // TJanuaTestVCLApplication.ApplicationSetup;
  Assert.Pass('Test RegisterFormsVCL');
end;

procedure TTestJanuaCoreComponents.SetupFramework;
begin
  // inizializzo Firedac (temporaneamente per l'avvio di Testing)
  Janua.Uni.Framework.TJanuaUniPgApplication.RegisterDataModules;
  Assert.Pass('Test Firedac');
end;

procedure TTestJanuaCoreComponents.SetupOrm;
begin
  // Inizializzo la Registrazione del Framework Orm
  Janua.Orm.Register.TJanuaOrmFramework.Initialize;
  Assert.Pass('Test SetupOrm');
end;

procedure TTestJanuaCoreComponents.SetupVCL;
begin
  // Registra Applicazione
  Janua.Mock.Firedac.Framework.TJanuaMockFiredacApplication.RegisterClasses;
  Janua.Uni.Framework.TJanuaUniPgApplication.RegisterDataModules;
  // Uso il Framework VCL il Framework TMS per la comunicazioni non lo uso ancora
  TJanuaTestVCLApplication.ConnectionSetup;
  Assert.Pass('Test SetupVCL');

end;

procedure TTestJanuaCoreComponents.TestCloneDataModule;
begin

end;

procedure TTestJanuaCoreComponents.VCLInitialization;
begin
  Janua.Vcl.Framework.TJanuaVCLApplication.Initialize;
  Assert.Pass('Test VCLInitialization');
end;

procedure TTestJanuaCoreComponents.VModelFrameworkInitialize;
begin
  // Inizializzo il Core View Model
  TJanuaCoreViewModelFramework.Initialize;
  // This must come after Forms and After Connection Setup
  TJanuaCoreViewModelFramework.RegisterInterfaces;
  Assert.Pass('Test VModelFrameworkInitialize');
end;

end.
