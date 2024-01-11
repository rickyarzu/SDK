unit Janua.VCL.Logistic.dlgVCLShipments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, System.Actions, VCL.ActnList,
  VCL.ImgList, VCL.Buttons, VCL.StdCtrls, Janua.Core.Classes, Janua.VCL.Actions, VCL.DBCtrls, VCL.Menus,
  VCL.ToolWin, VCL.ComCtrls, Janua.VCL.ViewModel, VCL.Mask, JvExMask, JvToolEdit, VCL.Themes,

  System.ImageList, SVGIconImageListBase, SVGIconImageList,
  // TMS
  Lucombo,
  // DB Controls
  Data.DB, VCL.Grids, VCL.DBGrids, CRGrid, Janua.VCL.EnhCRDBGrid,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // Shipments View Model
  Janua.Logistic.Shipments.ViewModel.Intf,
  // Frames
  uJanuaVCLFrame, {Janua.VCL.Logistic.frameWarehouseReceipt,}
  // Interposers
  Janua.Bindings.Intf, Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.VCL.Logistic.frameShipmentHead;

type
  TdlgVCLLogisticShipments = class(TJanuaVCLFormModel, IJanuaShipmentEditDialog, IJanuaRecordEditDialog,
    IJanuaBindable)
    JanuaActionViewControllerShipment: TJanuaActionViewController;
    tlbShipmentFormActions: TToolBar;
    FrameVCLLogisticShipmentHead: TFrameVCLLogisticShipmentHead;
    btnUndo: TButton;
    edButtonSave: TButton;
  private
    { Private declarations }
    [weak]
    FShipmentsViewModel: IJanuaDBShipmentsViewModel;
  protected
    function GetShipmentsViewModel: IJanuaDBShipmentsViewModel;
    procedure SetShipmentsViewModel(const Value: IJanuaDBShipmentsViewModel);
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
  public
    { Public declarations }
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    property ShipmentsViewModel: IJanuaDBShipmentsViewModel read GetShipmentsViewModel
      write SetShipmentsViewModel;
  end;

var
  dlgVCLLogisticShipments: TdlgVCLLogisticShipments;

implementation

{$R *.dfm}
{ TdlgVCLLogisticShipments }

function TdlgVCLLogisticShipments.GetShipmentsViewModel: IJanuaDBShipmentsViewModel;
begin
  Result := FShipmentsViewModel
end;

function TdlgVCLLogisticShipments.GetViewModel: IJanuaViewModel;
begin
  Result := nil;
  if Assigned(FShipmentsViewModel) then
    Result := FShipmentsViewModel as IJanuaViewModel
end;

procedure TdlgVCLLogisticShipments.SetShipmentsViewModel(const Value: IJanuaDBShipmentsViewModel);
begin
  if FShipmentsViewModel <> Value then
  begin
    FShipmentsViewModel := Value

  end;
end;

procedure TdlgVCLLogisticShipments.SetViewModel(const Value: IJanuaViewModel);
var
  tmp: IJanuaDBShipmentsViewModel;
begin
  if Assigned(Value) and supports(Value, IJanuaDBShipmentsViewModel, tmp) then
    SetShipmentsViewModel(tmp);
end;

end.
