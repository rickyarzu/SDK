unit Janua.Phoenix.VCLApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TJanuaAnagraphPlannerVCLApplication = class(TJanuaVCLCustomApplication)
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
  Janua.ViewModels.Framework, Janua.ViewModels.Application, JOrm.Anagraph.Group.Intf,
  // Janua TMS
  Janua.TMS.NavBar,
  // Janua VCL
  // Janua.VCL.Application,
  Janua.AnagraphPlanner.dlgVCLLogin,
  /// Settings
  ufrmVCLVMTestNavigator,
  // Login
  Janua.System.ViewModel.Intf,
  // System SettingsForm
  Janua.TMS.frmPgJormGenerator,
  // Planner
  ufrmVCLAnagraphPlanner,
  /// Directory
  ufrmVCLVMAnagraphNavigator,
  // Items
  Janua.Items.VCL.MVVMNavigator,
  // ufrmVCLLogisticReceipt,
  // Documents
  Janua.Documents.frmVCLInvoicesNavigator, uqrpInvoice,
  Janua.Documents.Invoices.ViewModel.Intf,
  // Test Prototypes
  Janua.Test.VCL.frmDatasetOrmSync, ufrmGridsTestings, Janua.Test.VCLTestFilters,
  ufrmVCLOutlookOLEAutomation;

{ TJanuaAnagraphPlannerVCLApplication }
class procedure TJanuaAnagraphPlannerVCLApplication.ApplicationSetup(const aAppname: string);
begin
{$IFDEF DEBUG}
  TJanuaApplication.AppName := ('test.anagraphplanner.com');
{$ELSE}
  TJanuaApplication.AppName := ('app.anagraphplanner.com');
{$ENDIF}
  inherited;
end;

class procedure TJanuaAnagraphPlannerVCLApplication.ApplicationTearDown;
begin
  inherited;
end;

class procedure TJanuaAnagraphPlannerVCLApplication.ConnectionSetup;
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

class procedure TJanuaAnagraphPlannerVCLApplication.LoadMenu;
var
  lAppAnagraph: TJanuaApplicationRecord; // Warehouse Application Container
  lAppReceipts: TJanuaApplicationRecord;
  // Warehouse Receipts SubApplication of Warehouse Application
  lAppPlanner: TJanuaApplicationRecord;
  // Planner SubApplication of Warehouse Application
  lAppShipping: TJanuaApplicationRecord;
  // Shipping SubApplication of Warehouse Application
  // ------ Directory -----------------------------------------------------------------------------------
  lAppDirectory, lAppSettings, lAppSettingsDB, lAppTest, lAppAccounting: TJanuaApplicationRecord;
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
  // -------------- WareHouse -------------------------------------------------------------------------------
  lAppAnagraph := TJanuaApplicationRecord.Create('Anagraph', 'Anagraph Mgmt', 41, nil);

  lAppPlanner := TJanuaApplicationRecord.Create('Planner', 'Calendar Planner', 61, nil);
  // TJanuaVCLFormAnagraph
  lAppPlanner.AddForm(TJanuaFormRecord.Create('Planner', lAppAnagraph.Name, 61, TfrmVCLAnagraphPlanner,
    GUID_NULL, [20]));
  lAppAnagraph.AddApplication(lAppPlanner);

  // Final REgistration App Warehouse
  TJanuaFormsApplication.RegisterApplication(lAppAnagraph);

  // -------- Directory --------------------------------------------------------------------------------
  lAppDirectory := TJanuaApplicationRecord.Create('Anagrafiche', 'Archivi Anagrafici', 29, nil);
  if TJanuaViewModelApplication.Settings.Activate then
    for lAnagGroup in TJanuaViewModelApplication.Settings.AnagGroups do
    begin
      lGroupID := (lAnagGroup as IAnagGroup).AnGroupId.AsInteger;
      lTitle := (lAnagGroup as IAnagGroup).GroupDes.AsString;
      lIconID := (lAnagGroup as IAnagGroup).IconId.AsInteger;
      lAppDirectory.AddForm(TJanuaFormRecord.Create(lTitle, lAppDirectory.Name, lIconID,
        TfrmVCLVMAnagraphNavigator { aClass: TJanuaFormClass } , GUID_NULL { aInterface } ,
        [lGroupID] { aParams } ));
    end;
  TJanuaFormsApplication.RegisterApplication(lAppDirectory);

  // -------------- Settings ---------------------------------------------------------------------------
  lAppSettings := TJanuaApplicationRecord.Create('Settings', 'Settings', 210, nil);
  lAppSettingsDB := TJanuaApplicationRecord.Create('Database', 'Database', 1, nil);
  // ConfirmPreInvoice
  lAppSettingsDB.AddForm(TJanuaFormRecord.Create('ORM Generator', lAppSettings.Name, 103,
    TfrmVCLPgJormGenerator, GUID_NULL));

  lAppSettings.AddApplication(lAppSettingsDB);
  // -------------- Test ---------------------------------------------------------------------------
  lAppTest := TJanuaApplicationRecord.Create('Test', 'Test Applications', 74, nil);
  // ufrmVCLVMTestNavigator.pas
  lAppTest.AddForm(TJanuaFormRecord.Create('Outlook', lAppSettingsDB.Name, 75, TfrmVCLOutlookOLEAutomation,
    GUID_NULL));
  lAppTest.AddForm(TJanuaFormRecord.Create('Filters', lAppSettingsDB.Name, 95, TfrmVCLTestFilters,
    GUID_NULL));
  // TfrmVCLTestGrids
  lAppTest.AddForm(TJanuaFormRecord.Create('Grids', lAppSettingsDB.Name, 101, TfrmVCLTestGrids, GUID_NULL));
  // TfrmTestVCLDatasetOrmSync = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
  lAppTest.AddForm(TJanuaFormRecord.Create('Orm Dataset', lAppSettingsDB.Name, 102, TfrmTestVCLDatasetOrmSync,
    GUID_NULL));
  lAppSettings.AddApplication(lAppTest);
  TJanuaFormsApplication.RegisterApplication(lAppSettings);

end;

class procedure TJanuaAnagraphPlannerVCLApplication.RegisterForms;
begin
  if not FTMLogisticRegistered then
  begin
    inherited;
    TJanuaApplicationFactory.RegisterComponent(IJanuaLoginForm, TdlgVCLAnagraphPlannerLogin);
  end;
  FTMLogisticRegistered := True;
end;

initialization

TJanuaAnagraphPlannerVCLApplication.FTMLogisticRegistered := False;

end.
