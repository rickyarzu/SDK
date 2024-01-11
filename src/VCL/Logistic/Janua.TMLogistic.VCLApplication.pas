unit Janua.TMLogistic.VCLApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl,
  Janua.VCL.Application;

type
  TJanuaTMLogisticVCLApplication = class(TJanuaVCLCustomApplication)
  private
    class var FTMLogisticRegistered: Boolean;
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
  end;

implementation

uses System.Types,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
  Janua.Orm.Intf,
  Janua.ViewModels.Framework, Janua.ViewModels.Application,
  JOrm.Anagraph.Group.Intf,
  // Janua TMS
  Janua.TMS.NavBar,
  // Janua VCL
  // Janua.VCL.Application,
  Janua.Documents.WarehouseReceipts.ViewModel.Intf,
  Janua.Documents.WarehouseReceipts.ViewModel.Impl,
  /// Settings
  ufrmVCLVMTestNavigator, ufrmTMMigrationMain,
  Janua.TMLogistic.frmVCLFileMigration,
  // Login
  Janua.System.ViewModel.Intf, Janua.TMLogistic.dlgVCLLogin,
  // System SettingsForm
  Janua.TMS.frmPgJormGenerator,
  // Planner
  ufrmVCLAnagraphPlanner,
  /// Directory
  ufrmVCLVMAnagraphNavigator,
  // Items
  Janua.Items.VCL.MVVMNavigator,
  // udmLogistic Shipment & AWB
  Janua.Logistic.frmVCLAWBNavigator, Janua.VCL.Logistic.frmShipmentNavigator,
  Janua.VCL.Logistic.dlgVCLShipments,
  Janua.Logistic.AWB.ViewModel.Intf, Janua.VCL.Logistic.dlgAirWayBill,
  uqrpAirWayBill,
  // WHReceipts  - Inventory
  Janua.VCL.Logistic.dlgWarehouseReceipt, ufrmVCLLogistiReceiptsNavigator,
  uqrpTMWarehouseReceipt,
  Janua.Logistic.VCL.frmInventoryNavigator,
  Janua.VCL.Logistic.dlgWarehouseReceiptRow,
  Janua.Logistic.VCL.frmWarehouseList,
  // Shipment Workflow
  Janua.Logistic.Shipments.ViewModel.Intf,
  // ufrmVCLLogisticReceipt,
  // Documents
  uqrpTMLabels, Janua.Documents.frmVCLInvoicesNavigator, uqrpInvoice,
  Janua.Documents.Invoices.ViewModel.Intf,
  // Test Prototypes
  Janua.Test.VCL.frmDatasetOrmSync, ufrmGridsTestings, Janua.Test.VCLTestFilters,
  ufrmVCLOutlookOLEAutomation;

{ TJanuaTMLogisticVCLApplication }
class procedure TJanuaTMLogisticVCLApplication.ApplicationSetup(const aAppname: string);
begin
{$IFDEF DEBUG}
  TJanuaApplication.AppName := ('test.tailormadelogistic.com');
{$ELSE}
  TJanuaApplication.AppName := ('app.tailormadelogistic.com');
{$ENDIF}
  inherited;
end;

class procedure TJanuaTMLogisticVCLApplication.ApplicationTearDown;
begin
  inherited;
end;

class procedure TJanuaTMLogisticVCLApplication.ConnectionSetup;
begin
  { TMLogisticDefaults }
{$IFDEF DEBUG}
  TJanuaApplication.ServerAddress := { 'localhost' } 'localhost';
  // 'testdb.januaservers.com';
  TJanuaApplication.ServerPort := 5444;
  TJanuaApplication.ServerDatabaseName := { 'ergoedb' } 'ergomercator';
  TJanuaApplication.DBSchemaID := 33;
{$ELSE}
  TJanuaApplication.ServerAddress := { 'localhost' } 'pg.januaservers.com';
  // 'testdb.januaservers.com';
  TJanuaApplication.ServerPort := 5432;
  TJanuaApplication.ServerDatabaseName := { 'ergoedb' } 'ergomercator';
  TJanuaApplication.DBSchemaID := 33;
{$ENDIF}
  inherited;
end;

class procedure TJanuaTMLogisticVCLApplication.LoadMenu;
var
  lAppWHouse: TJanuaApplicationRecord; // Warehouse Application Container
  lAppReceipts: TJanuaApplicationRecord;
  // Warehouse Receipts SubApplication of Warehouse Application
  lAppPlanner: TJanuaApplicationRecord;
  // Planner SubApplication of Warehouse Application
  lAppShipping: TJanuaApplicationRecord;
  // Shipping SubApplication of Warehouse Application
  // ------ Directory -----------------------------------------------------------------------------------
  lAppDirectory, lAppSettings, lAppSettingsDB, lAppTest, lAppAccounting
    : TJanuaApplicationRecord;
  // Anagraph Directory Application
  // lAppSettings: Settings Applications
  // lAppSettingsDB: Settings DB Migration Application
  // lAppTest: Settings DB Migration Application
  lIconID: Integer;
  lTitle: string;
  lGroupID: Integer;
  lAnagGroup: IJanuaRecord;
begin
  inherited;
  // -------------- WareHouse ------------------------------------------------------------------------------------------
  lAppWHouse := TJanuaApplicationRecord.Create('Warehousing',
    'WareHouse Mgmt', 41, nil);

  lAppReceipts := TJanuaApplicationRecord.Create('Inventory',
    'Inventory Mgmt', 60, nil);
  // TJanuaVCLFormAnagraph
  lAppReceipts.AddForm(TJanuaFormRecord.Create('Receipts', lAppWHouse.Name, 107,
    TfrmVCLLogistiReceiptsNavigator, GUID_NULL, [20]));

  lAppReceipts.AddForm(TJanuaFormRecord.Create('Commodities', lAppWHouse.Name,
    20, TfrmVCLItemsVMNavigator, GUID_NULL, [20]));

  lAppReceipts.AddForm(TJanuaFormRecord.Create('Inventory', lAppWHouse.Name,
    106, TfrmVCLLogisticWarehouseList { TfrmVCLInventoryNavigator } ,
    GUID_NULL, [20]));

  lAppReceipts.AddForm(TJanuaFormRecord.Create('Items', lAppWHouse.Name, 108,
    TfrmVCLItemsVMNavigator, GUID_NULL, [20]));

  lAppWHouse.AddApplication(lAppReceipts);

  lAppShipping := TJanuaApplicationRecord.Create('Shipping',
    'Shipping Workflow', 91, nil);
  // TfrmVCLLogisticShipmentNavigator
  lAppShipping.AddForm(TJanuaFormRecord.Create('Shipment Tasks',
    lAppShipping.Name, 62, TfrmVCLLogisticShipmentNavigator, GUID_NULL, []));
  // TfrmVCLAWBNavigator
  lAppShipping.AddForm(TJanuaFormRecord.Create('Air Waybill', lAppShipping.Name,
    18, TfrmVCLAWBNavigator, GUID_NULL, []));
  lAppWHouse.AddApplication(lAppShipping);

  lAppAccounting := TJanuaApplicationRecord.Create('Accounting',
    'Accounting', 91, nil);

  lAppAccounting.AddForm(TJanuaFormRecord.Create('Pro Forma Inv.',
    lAppWHouse.Name, 4, TfrmVCLInvoicesNavigator, GUID_NULL, [18]));

  lAppAccounting.AddForm(TJanuaFormRecord.Create('Invoices', lAppWHouse.Name, 6,
    TfrmVCLInvoicesNavigator, GUID_NULL, [16]));

  lAppWHouse.AddApplication(lAppAccounting);

  // --------------------------------------------------------------------------------------------------------------------

  lAppPlanner := TJanuaApplicationRecord.Create('Planner',
    'Calendar Planner', 61, nil);
  // TJanuaVCLFormAnagraph
  lAppPlanner.AddForm(TJanuaFormRecord.Create('Planner', lAppWHouse.Name, 61,
    TfrmVCLAnagraphPlanner, GUID_NULL, [20]));
  lAppWHouse.AddApplication(lAppPlanner);

  // Final REgistration App Warehouse
  TJanuaFormsApplication.RegisterApplication(lAppWHouse);

  // -------- Directory --------------------------------------------------------------------------------
  lAppDirectory := TJanuaApplicationRecord.Create('Directory',
    'Directory', 29, nil);
  if TJanuaViewModelApplication.Settings.Activate then
    for lAnagGroup in TJanuaViewModelApplication.Settings.AnagGroups do
    begin
      lGroupID := (lAnagGroup as IAnagGroup).AnGroupId.AsInteger;
      lTitle := (lAnagGroup as IAnagGroup).GroupDes.AsString;
      lIconID := (lAnagGroup as IAnagGroup).IconId.AsInteger;
      lAppDirectory.AddForm(TJanuaFormRecord.Create(lTitle, lAppDirectory.Name,
        lIconID, TfrmVCLVMAnagraphNavigator { aClass: TJanuaFormClass } ,
        GUID_NULL { aInterface } , [lGroupID] { aParams } ));
    end;
  TJanuaFormsApplication.RegisterApplication(lAppDirectory);

  // -------------- Settings ---------------------------------------------------------------------------
  lAppSettings := TJanuaApplicationRecord.Create('Settings', 'Settings',
    210, nil);
  lAppSettingsDB := TJanuaApplicationRecord.Create('Database',
    'Database', 1, nil);
  lAppSettingsDB.AddForm(TJanuaFormRecord.Create('Data Sync',
    lAppSettingsDB.Name, 15, TfrmTMMigrationMain, GUID_NULL));
  // TfrmTMLogisticVCLFileMigration
  lAppSettingsDB.AddForm(TJanuaFormRecord.Create('Files', lAppWHouse.Name, 94,
    TfrmTMLogisticVCLFileMigration, GUID_NULL));
  // ConfirmPreInvoice
  lAppSettingsDB.AddForm(TJanuaFormRecord.Create('ORM Generator',
    lAppWHouse.Name, 103, TfrmVCLPgJormGenerator, GUID_NULL));

  lAppSettings.AddApplication(lAppSettingsDB);
  // -------------- Test ---------------------------------------------------------------------------
  lAppTest := TJanuaApplicationRecord.Create('Test',
    'Test Applications', 74, nil);
  // ufrmVCLVMTestNavigator.pas
  lAppTest.AddForm(TJanuaFormRecord.Create('MVVM', lAppSettingsDB.Name, 33,
    TfrmTMMigrationMain, GUID_NULL));
  lAppTest.AddForm(TJanuaFormRecord.Create('Outlook', lAppSettingsDB.Name, 75,
    TfrmVCLOutlookOLEAutomation, GUID_NULL));
  lAppTest.AddForm(TJanuaFormRecord.Create('Filters', lAppSettingsDB.Name, 95,
    TfrmVCLTestFilters, GUID_NULL));
  // TfrmVCLTestGrids
  lAppTest.AddForm(TJanuaFormRecord.Create('Grids', lAppSettingsDB.Name, 101,
    TfrmVCLTestGrids, GUID_NULL));
  // TfrmTestVCLDatasetOrmSync = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
  lAppTest.AddForm(TJanuaFormRecord.Create('Orm Dataset', lAppSettingsDB.Name,
    102, TfrmTestVCLDatasetOrmSync, GUID_NULL));

  lAppSettings.AddApplication(lAppTest);
  TJanuaFormsApplication.RegisterApplication(lAppSettings);

end;

class procedure TJanuaTMLogisticVCLApplication.RegisterForms;
begin
  if not FTMLogisticRegistered then
  begin
    inherited;
    // TDocWHReceiptsViewModel = class(IJanuaWHReceiptsViewModel)
    TJanuaApplicationFactory.RegisterClass(IJanuaWHReceiptsViewModel,
      TDocWHReceiptsViewModel);
    // TJanuaApplicationFactory.RegisterComponent(IJanuaWHReceiptForm, TfrmVCLLogisticReceipt);
    // TdlgVCLLogisticWarehouseReceipt
    TJanuaApplicationFactory.RegisterComponent(IJanuaWHReceiptForm,
      TdlgVCLLogisticWarehouseReceipt);
    // TJanuaWHRQrpLabelReporter = Class(IJanuaWHRLabelsReporter)
    TJanuaApplicationFactory.RegisterClass(IJanuaWHRLabelsReporter,
      TJanuaWHRQrpLabelReporter);
    // TJanuaWHRQrpReceiptReporter = Class(TJanuaWHRReporter, IJanuaWHRReceiptsReporter
    TJanuaApplicationFactory.RegisterClass(IJanuaWHRReceiptsReporter,
      TJanuaWHRQrpReceiptReporter);
    // TdlgVCLTMLogisticLogin = class(TdlgVCLCustomLogin, IJanuaLoginForm)
    TJanuaApplicationFactory.RegisterComponent(IJanuaLoginForm,
      TdlgVCLTMLogisticLogin);
    // TdlgVCLLogisticAirWayBill = class(IJanuaLogisticAWBDialog)
    TJanuaApplicationFactory.RegisterComponent(IJanuaLogisticAWBDialog,
      TdlgVCLLogisticAirWayBill);
    // TJanuaWHRQrpReceiptReporter = Class(TJanuaLogisticAWBReporter, IJanuaLogisticAWBReporter)
    TJanuaApplicationFactory.RegisterClass(IJanuaLogisticAWBReporter,
      TJanuaLogisticQRAWBReporter);
    // TdlgVCLLogisticShipments = class(TJanuaVCLFormModel, IJanuaShipmentEditDialog)
    TJanuaApplicationFactory.RegisterComponent(IJanuaShipmentEditDialog,
      TdlgVCLLogisticShipments);
    // TJanuaInvoicesQRReporter = Class( IJanuaInvoicesReporter, IJanuaReporter)
    TJanuaApplicationFactory.RegisterClass(IJanuaInvoicesSingleReporter,
      TJanuaInvoicesQRReporter);
    // Detail Receipt Rows : TdlgVCLWarehouseReceiptRow = class( IJanuaWHRRowsDialog)
    TJanuaApplicationFactory.RegisterComponent(IJanuaWHRRowsDialog,
      TdlgVCLWarehouseReceiptRow);

  end;
  FTMLogisticRegistered := True;
end;

initialization

TJanuaTMLogisticVCLApplication.FTMLogisticRegistered := False;

end.
