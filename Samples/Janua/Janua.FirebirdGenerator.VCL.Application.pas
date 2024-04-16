unit Janua.FirebirdGenerator.VCL.Application;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TJanuaFirebirdVCLApplication = class(TJanuaVCLCustomApplication)
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
  Janua.Orm.Intf, Janua.ViewModels.Framework, Janua.ViewModels.Application, JOrm.Anagraph.Group.Intf,
  // Janua TMS
  Janua.TMS.NavBar,
  // Janua VCL
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
  Janua.Test.VCL.frmDatasetOrmSync, ufrmGridsTestings, Janua.Test.VCLTestFilters, ufrmVCLOutlookOLEAutomation;

{ TJanuaFirebirdVCLApplication }

class procedure TJanuaFirebirdVCLApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

end;

class procedure TJanuaFirebirdVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaFirebirdVCLApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TJanuaFirebirdVCLApplication.LoadMenu;
begin
  inherited;

end;

class procedure TJanuaFirebirdVCLApplication.RegisterForms;
begin
  inherited;

end;

end.
