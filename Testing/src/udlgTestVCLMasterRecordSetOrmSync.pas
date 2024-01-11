unit udlgTestVCLMasterRecordSetOrmSync;

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
  Janua.ViewModels.Intf,  Janua.Orm.Test.Intf,  Janua.Test.ViewModel.Intf, Janua.Core.Commons;

type
  TdlgTestVCLMasterRecordSetOrmSync = class(TJanuaVCLFormModel, IJanuaTestDialogForm, IJanuaRecordEditDialog)
    pgTestMasterDetail: TPageControl;
    tlbDocument: TToolBar;
    JanuaActionViewController1: TJanuaActionViewController;
  private
    FDBViewModel: IJanuaDBTestModel;
  protected
    function GetDBViewModel: IJanuaDBTestModel;
    procedure SetDBViewModel(const Value: IJanuaDBTestModel);
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
  public
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    property DBViewModel: IJanuaDBTestModel read GetDBViewModel write SetDBViewModel;
  end;

var
  dlgTestVCLMasterRecordSetOrmSync: TdlgTestVCLMasterRecordSetOrmSync;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TdlgTestVCLMasterRecordSetOrmSync }

function TdlgTestVCLMasterRecordSetOrmSync.GetDBViewModel: IJanuaDBTestModel;
begin
  Result := FDBViewModel
end;

function TdlgTestVCLMasterRecordSetOrmSync.GetViewModel: IJanuaViewModel;
begin
  Result := FDBViewModel as IJanuaViewModel
end;

procedure TdlgTestVCLMasterRecordSetOrmSync.SetDBViewModel(const Value: IJanuaDBTestModel);
begin
  FDBViewModel := Value;

end;

procedure TdlgTestVCLMasterRecordSetOrmSync.SetViewModel(const Value: IJanuaViewModel);
begin
  if Assigned(Value) then
    if not Supports(Value, IJanuaDBTestModel, FDBViewModel) then
      raise Exception.Create(ClassName + '.SetViewModel FDBViewModel not supported');
end;

initialization

TJanuaApplicationFactory.RegisterComponent(IJanuaTestDialogForm, TdlgTestVCLMasterRecordSetOrmSync);

end.
