unit udlgTestViewModel;

interface

uses
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ComCtrls, VCL.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, VCL.ToolWin,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.Controls.Forms.Intf,
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Core.Classes, Janua.VCL.Actions, Janua.ViewModels.Intf,
  uJanuaVCLForm,
  // Test Framework.........................................................................................
  Janua.Test.ViewModel.Intf, Janua.Orm.Test.Intf, uframeTestViewModelDetail, uframeVCLTest;

type
  TdlgTestViewModel = class(TJanuaVCLFormModel, IJanuaTestDialogForm, IJanuaForm, IJanuaBindable)
    tbDocument: TToolBar;
    JanuaActionViewController1: TJanuaActionViewController;
    frameVCLTest1: TframeVCLTest;
    PageControl1: TPageControl;
    tabDetailTest1: TTabSheet;
    DetailTest1: TTabSheet;
    btnUndo: TButton;
    edButtonSave: TButton;
  private
    { Private declarations }
    FCurrentRecord: IJanuaTestNestedRecord;
    FDBTestViewModel: IJanuaDBTestModel;
  protected
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
    function GetDBViewModel: IJanuaDBTestModel;
    procedure SetDBViewModel(const Value: IJanuaDBTestModel);
  public
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    property DBViewModel: IJanuaDBTestModel read GetDBViewModel write SetDBViewModel;
  end;

var
  dlgTestViewModel: TdlgTestViewModel;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TdlgTestViewModel }

function TdlgTestViewModel.GetDBViewModel: IJanuaDBTestModel;
begin
  Result := FDBTestViewModel
end;

function TdlgTestViewModel.GetViewModel: IJanuaViewModel;
begin
  Result := FDBTestViewModel as IJanuaViewModel
end;

procedure TdlgTestViewModel.SetDBViewModel(const Value: IJanuaDBTestModel);
begin
  try
    if Assigned(Value) then
    begin
      FDBTestViewModel := Value;
      FCurrentRecord := FDBTestViewModel.NestedRecord;
    end
    else
    begin
      FDBTestViewModel := nil;
      FCurrentRecord := nil;
    end;
  except
    on e: Exception do
      RaiseException('SetViewModel', e, Self);
  end;
end;

procedure TdlgTestViewModel.SetViewModel(const Value: IJanuaViewModel);
begin
  try
    if Assigned(Value) then
    begin
      if not Supports(Value, IJanuaDBTestModel, FDBTestViewModel) then
        raise Exception.Create('Value does not support IJanuaDBTestModel');
      FCurrentRecord := FDBTestViewModel.NestedRecord;
    end
    else
    begin
      FDBTestViewModel := nil;
      FCurrentRecord := nil;
    end;
  except
    on e: Exception do
      RaiseException('SetViewModel', e, Self);
  end;

end;

initialization

TJanuaApplicationFactory.RegisterComponent(IJanuaTestDialogForm, TdlgTestViewModel);

end.
