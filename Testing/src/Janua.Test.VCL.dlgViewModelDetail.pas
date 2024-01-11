unit Janua.Test.VCL.dlgViewModelDetail;

interface

uses
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ComCtrls, VCL.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, VCL.ToolWin,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types,
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Core.Classes, Janua.VCL.Actions,
  uJanuaVCLForm,
  // Janua.Interposers
  Janua.VCL.Interposers, Janua.TMS.Interposers,
  // Test Model
  Janua.ViewModels.Intf, uframeTestViewModelDetail, Janua.Test.ViewModel.Intf, Janua.Orm.Test.Intf, uJanuaVCLFrame;

type
  TdlgTestViewModelDetail = class(TJanuaVCLFormModel, IJanuaTestDetailDialog, IJanuaRecordEditDialog, IJanuaBindable)
    frameTestViewModelDetail1: TframeTestViewModelDetail;
    edButtonSave: TButton;
    btnUndo: TButton;
  private
    FTestDetailViewModel: IJanuaTestDetailViewModel;
    { Private declarations }
  protected
    function GetTestDetailViewModel: IJanuaTestDetailViewModel;
    procedure SetTestDetailViewModel(const Value: IJanuaTestDetailViewModel);
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
  public
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    property TestDetailViewModel: IJanuaTestDetailViewModel read GetTestDetailViewModel write SetTestDetailViewModel;
  end;

var
  dlgTestDetailViewModelDetail: TdlgTestViewModelDetail;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TForm2 }

function TdlgTestViewModelDetail.GetTestDetailViewModel: IJanuaTestDetailViewModel;
begin
  Result := FTestDetailViewModel
end;

function TdlgTestViewModelDetail.GetViewModel: IJanuaViewModel;
begin
  Result := FTestDetailViewModel as IJanuaViewModel
end;

procedure TdlgTestViewModelDetail.SetTestDetailViewModel(const Value: IJanuaTestDetailViewModel);
begin
  FTestDetailViewModel := Value;
  frameTestViewModelDetail1.ViewModel := FTestDetailViewModel;
end;

procedure TdlgTestViewModelDetail.SetViewModel(const Value: IJanuaViewModel);
var
  lTempViewModel: IJanuaTestDetailViewModel;
begin
  if Assigned(Value) then
    if not Supports(Value, IJanuaTestDetailViewModel, lTempViewModel) then
      raise Exception.Create(ClassName + '.SetTestDetailViewModel IJanuaTestDetailViewModel not supported')
    else
    begin
      SetTestDetailViewModel(lTempViewModel);
    end;
end;

initialization

TJanuaApplicationFactory.RegisterComponent(IJanuaTestDetailDialog, TdlgTestViewModelDetail);

end.
