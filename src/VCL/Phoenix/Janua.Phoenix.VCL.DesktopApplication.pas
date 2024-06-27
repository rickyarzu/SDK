unit Janua.Phoenix.VCL.DesktopApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TJanuaPhoenixVCLApplication = class(TJanuaVCLCustomApplication)
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

{ TJanuaPhoenixVCLApplication }

class procedure TJanuaPhoenixVCLApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;
  TJanuaApplication.CloudConf.GoogleAppKey :=
    '236693880296-rm39939mbtpabvkfdiqsolvkdogn334a.apps.googleusercontent.com';
  TJanuaApplication.CloudConf.GoogleAppSecret := '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';
end;

class procedure TJanuaPhoenixVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaPhoenixVCLApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TJanuaPhoenixVCLApplication.LoadMenu;
begin
  inherited;

end;

class procedure TJanuaPhoenixVCLApplication.RegisterForms;
begin
  inherited;

end;

end.
