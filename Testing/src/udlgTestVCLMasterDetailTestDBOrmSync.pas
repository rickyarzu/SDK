unit udlgTestVCLMasterDetailTestDBOrmSync;

interface

uses
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ComCtrls, VCL.Mask, JvExMask, VCL.ToolWin,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.VCL.Interposers,
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Core.Classes, Janua.VCL.Actions,
  uJanuaVCLForm,
  // Test Model
  Janua.ViewModels.Intf, Janua.Test.ViewModel.Intf, Janua.Orm.Test.Intf, uframeTestRecordSetOrmSyncNavigator;

type
  TdlgVclMasterDetailTestDBOrmSync = class(TJanuaVCLFormModel, IJanuaMasterDetailTestDialogForm, IJanuaRecordEditDialog)
    pgTestMasterDetail: TPageControl;
    tlbDocument: TToolBar;
    JanuaActionViewController1: TJanuaActionViewController;
    tsMaster: TTabSheet;
    tsDetail: TTabSheet;
  private
    FTestViewModel: IJanuaTestViewModel;
    frameTestRecordSetOrmSyncNavigator: TframeTestRecordSetOrmSyncNavigator;
  protected
    function GetTestViewModel: IJanuaTestViewModel;
    procedure SetTestViewModel(const Value: IJanuaTestViewModel);
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
  public
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    property TestViewModel: IJanuaTestViewModel read GetTestViewModel write SetTestViewModel;
  end;

var
  dlgVclMasterDetailTestDBOrmSync: TdlgVclMasterDetailTestDBOrmSync;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TdlgTestVCLMasterRecordSetOrmSync }

function TdlgVclMasterDetailTestDBOrmSync.GetTestViewModel: IJanuaTestViewModel;
begin

end;

function TdlgVclMasterDetailTestDBOrmSync.GetViewModel: IJanuaViewModel;
begin
  Result := FTestViewModel as IJanuaViewModel
end;

procedure TdlgVclMasterDetailTestDBOrmSync.SetTestViewModel(const Value: IJanuaTestViewModel);
begin
  FTestViewModel := Value;
  if Assigned(FTestViewModel) then
  begin
    FTestViewModel.DetailViewModel1.Activate;
    frameTestRecordSetOrmSyncNavigator := TframeTestRecordSetOrmSyncNavigator.Create(self);
    frameTestRecordSetOrmSyncNavigator.Parent := tsDetail;
    frameTestRecordSetOrmSyncNavigator.Align := alClient;
    frameTestRecordSetOrmSyncNavigator.Visible := True;
    frameTestRecordSetOrmSyncNavigator.TestRSDetailViewModel := FTestViewModel.DetailViewModel1;
  end;
end;

procedure TdlgVclMasterDetailTestDBOrmSync.SetViewModel(const Value: IJanuaViewModel);
var
  lTemp: IJanuaTestViewModel;
begin
  if Assigned(Value) and not Supports(Value, IJanuaTestViewModel, lTemp) then
    raise Exception.Create(ClassName + '.SetViewModel FDBViewModel not supported');
  SetTestViewModel(lTemp);
end;

initialization

TJanuaApplicationFactory.RegisterComponent(IJanuaMasterDetailTestDialogForm, TdlgVclMasterDetailTestDBOrmSync);

end.
