unit Janua.Test.VCLApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.VCL.Application;

type
  TJanuaTestVCLApplication = class(TJanuaVCLCustomApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
  end;

implementation

uses System.Types,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
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
  uqrpTMLabels,
  // Master Detail Recordset
  Janua.Test.ViewModel.Intf, udlgTestVCLMasterRecordSetOrmSync, Janua.Test.VCL.dlgViewModelDetail,
  udlgTestVCLMasterDetailTestDBOrmSync,
  // Other uApplicationSetup
  Janua.TMLogistic.VCLApplication;

{ TJanuaTestVCLApplication }

class procedure TJanuaTestVCLApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;
  Janua.Mock.Firedac.Framework.TJanuaMockFiredacApplication.RegisterClasses;
end;

class procedure TJanuaTestVCLApplication.ApplicationTearDown;
begin
  TJanuaMockFiredacApplication.Terminate;
  inherited
end;

class procedure TJanuaTestVCLApplication.ConnectionSetup;
begin
  inherited;
end;

class procedure TJanuaTestVCLApplication.RegisterForms;
begin
  TJanuaTMLogisticVCLApplication.RegisterForms;
  // TDocWHReceiptsViewModel = class(IJanuaWHReceiptsViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaWHReceiptsViewModel, TDocWHReceiptsViewModel);
  // TJanuaApplicationFactory.RegisterComponent(IJanuaWHReceiptForm, TfrmVCLLogisticReceipt);
  // TdlgVCLLogisticWarehouseReceipt
  TJanuaApplicationFactory.RegisterComponent(IJanuaWHReceiptForm, TdlgVCLLogisticWarehouseReceipt);
  // TJanuaWHRQrpLabelReporter = Class(IJanuaWHRLabelsReporter)
  TJanuaApplicationFactory.RegisterClass(IJanuaWHRLabelsReporter, TJanuaWHRQrpLabelReporter);
  // TJanuaWHRQrpReceiptReporter = Class(TJanuaWHRReporter, IJanuaWHRReceiptsReporter
  TJanuaApplicationFactory.RegisterClass(IJanuaWHRReceiptsReporter, TJanuaWHRQrpReceiptReporter);

  // **** Test Dialogs MVVM Framework *************************************************************
  // DB: TdlgTestVCLMasterRecordSetOrmSync =  IJanuaTestDialogForm,
  TJanuaApplicationFactory.RegisterComponent(IJanuaTestDialogForm, TdlgTestVCLMasterRecordSetOrmSync);
  // Detail: TdlgTestViewModelDetail = IJanuaTestDetailDialog,
  TJanuaApplicationFactory.RegisterComponent(IJanuaTestDetailDialog, TdlgTestViewModelDetail);
  // Master: TdlgVclMasterDetailTestDBOrmSync = IJanuaMasterDetailTestDialogForm
  TJanuaApplicationFactory.RegisterComponent(IJanuaMasterDetailTestDialogForm, TdlgVclMasterDetailTestDBOrmSync);
end;

end.
