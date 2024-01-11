unit Janua.VCL.Logistic.dlgWarehouseReceiptRow;

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
  // Warehouse Receipts View Model
  Janua.ViewModels.Intf, Janua.Documents.WarehouseReceipts.ViewModel.Intf, uJanuaVCLFrame,
  Janua.VCL.Logistic.frameWarehouseReceiptRow;

type
  TdlgVCLWarehouseReceiptRow = class(TJanuaVCLFormModel, IJanuaWHRRowsDialog, IJanuaRecordEditDialog, IJanuaBindable)
    edButtonSave: TButton;
    btnUndo: TButton;
    frameVCLLogisticWarehouseReceiptRow: TFrameVCLLogisticWarehouseReceiptRow;
    lbGUID: TLabel;
  private
    FWHRRowsDetailViewModel: IJanuaWHRRowsViewModel;
  protected
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
    function GetWHRRowsTestDetailViewModel: IJanuaWHRRowsViewModel;
    procedure SetWHRRowsViewModel(const Value: IJanuaWHRRowsViewModel);
  public
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    property WHRRowsViewModel: IJanuaWHRRowsViewModel read GetWHRRowsTestDetailViewModel write SetWHRRowsViewModel;
  end;

var
  dlgVCLWarehouseReceiptRow: TdlgVCLWarehouseReceiptRow;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}
{ TdlgVCLWarehouseReceiptRow }

function TdlgVCLWarehouseReceiptRow.GetViewModel: IJanuaViewModel;
begin
  Result := FWHRRowsDetailViewModel as IJanuaViewModel
end;

function TdlgVCLWarehouseReceiptRow.GetWHRRowsTestDetailViewModel: IJanuaWHRRowsViewModel;
begin
  Result := FWHRRowsDetailViewModel;
end;

procedure TdlgVCLWarehouseReceiptRow.SetViewModel(const Value: IJanuaViewModel);
var
  lTemp: IJanuaWHRRowsViewModel;
begin
  try
    if Assigned(Value) then
    begin
      if not Supports(Value, IJanuaWHRRowsViewModel, lTemp) then
        raise Exception.Create('IJanuaWHReceiptsViewModel interface not supported')
      else
        SetWHRRowsViewModel(lTemp);
    end
    else
      SetWHRRowsViewModel(nil);
  except
    on e: Exception do
      RaiseException('SetViewModel', e, self);
  end;
end;

procedure TdlgVCLWarehouseReceiptRow.SetWHRRowsViewModel(const Value: IJanuaWHRRowsViewModel);
begin
  try
    FWHRRowsDetailViewModel := Value;
    lbGUID.Caption := FWHRRowsDetailViewModel.RsDocRows.Row.GUID.ToString;
    frameVCLLogisticWarehouseReceiptRow.WHReceiptsRowsVM := FWHRRowsDetailViewModel;
  except
    on e: Exception do
      RaiseException('SetWHRRowsViewModel', e, self);
  end;
end;

end.
