unit Janua.Test.VCLApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TJanuaTestVCLApplication = class(TJanuaVCLCustomApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup; override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
  end;

implementation

uses System.Types,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application,
  // Janua TMS
  Janua.TMS.NavBar,
  // Janua VCL
  // Janua.VCL.Application,
  Janua.Documents.WarehouseReceipts.ViewModel.intf, Janua.Documents.WarehouseReceipts.ViewModel.Impl,
  /// Settings
  ufrmVCLVMTestNavigator, ufrmTMMigrationMain, Janua.TMLogistic.frmVCLFileMigration,
  // Login
  Janua.System.ViewModel.intf, Janua.TMLogistic.dlgVCLLogin,
  // Planner
  ufrmVCLAnagraphPlanner,
  /// Directory
  ufrmVCLVMAnagraphNavigator,
  // WR
  Janua.VCL.Logistic.dlgWarehouseReceipt, ufrmVCLLogistiReceiptsNavigator, uqrpTMWarehouseReceipt,
  // ufrmVCLLogisticReceipt,
  // Documents
  uqrpTMLabels,
  // Test Prototypes
  ufrmVCLOutlookOLEAutomation;

{ TJanuaTMLogisticVCLApplication }

class procedure TJanuaTestVCLApplication.ApplicationSetup;
begin
  inherited;

end;

class procedure TJanuaTestVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaTestVCLApplication.ConnectionSetup;
begin
  inherited;
  TJanuaApplication.ServerAddress := 'localhost';
  TJanuaApplication.ServerPort := 5444;
  TJanuaApplication.ServerDatabaseName := 'ergoedb';
  TJanuaApplication.DBSchemaID := 33;
end;

class procedure TJanuaTestVCLApplication.LoadMenu;
begin
  inherited;

end;

class procedure TJanuaTestVCLApplication.RegisterForms;
begin
  inherited;

end;

end.
