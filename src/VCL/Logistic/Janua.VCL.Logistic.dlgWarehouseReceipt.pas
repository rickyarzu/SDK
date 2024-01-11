  unit Janua.VCL.Logistic.dlgWarehouseReceipt;

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
  // Documents View Model
  Janua.Documents.WarehouseReceipts.ViewModel.Intf,
  // Frames
  uJanuaVCLFrame, Janua.VCL.Logistic.frameWarehouseReceipt,
  // Interposers
  Janua.Bindings.Intf, Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.Core.Commons;

type
  TdlgVCLLogisticWarehouseReceipt = class(TJanuaVCLFormModel, IJanuaWHReceiptForm, IJanuaRecordEditDialog,
    IJanuaBindable)
    FrameVCLLogisticWarehouseReceipt1: TFrameVCLLogisticWarehouseReceipt;
    tbDocument: TToolBar;
    JanuaActionViewController1: TJanuaActionViewController;
    edButtonSave: TButton;
    btnUndo: TButton;
    procedure FormShow(Sender: TObject);
  private
    [weak]
    FWHRViewModel: IJanuaWHReceiptsViewModel;
    { Private declarations }
  protected
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
    function GetWHRViewModel: IJanuaWHReceiptsViewModel;
    procedure SetWHRViewModel(const Value: IJanuaWHReceiptsViewModel);
  public
    property WHRViewModel: IJanuaWHReceiptsViewModel read GetWHRViewModel write SetWHRViewModel;
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
  public
    Destructor Destroy; override;

    { Public declarations }
  end;

var
  dlgVCLLogisticWarehouseReceipt: TdlgVCLLogisticWarehouseReceipt;

implementation

{$R *.dfm}

destructor TdlgVCLLogisticWarehouseReceipt.Destroy;
begin
  FWHRViewModel := nil;
  inherited;
end;

procedure TdlgVCLLogisticWarehouseReceipt.FormShow(Sender: TObject);
begin
  FrameVCLLogisticWarehouseReceipt1.ActivateSearch;
  FrameVCLLogisticWarehouseReceipt1.pgWarehouseReceipt.ActivePageIndex := 0;
  FrameVCLLogisticWarehouseReceipt1.edDocDate.Date := FWHRViewModel.DocHeadRecord.DocDate.AsDateTime;
end;

{ TdlgVCLLogisticWarehouseReceipt }

function TdlgVCLLogisticWarehouseReceipt.GetViewModel: IJanuaViewModel;
begin
  Result := Self.FWHRViewModel as IJanuaViewModel
end;

function TdlgVCLLogisticWarehouseReceipt.GetWHRViewModel: IJanuaWHReceiptsViewModel;
begin
  Result := FWHRViewModel;
end;

procedure TdlgVCLLogisticWarehouseReceipt.SetViewModel(const Value: IJanuaViewModel);
var
  lTemp: IJanuaWHReceiptsViewModel;
begin
  if Assigned(Value) then
  begin
    if not Supports(Value, IJanuaWHReceiptsViewModel, lTemp) then
      raise Exception.Create('IJanuaWHReceiptsViewModel interface not supported')
    else
      Self.SetWHRViewModel(lTemp);
  end
  else
    SetWHRViewModel(nil);

end;

procedure TdlgVCLLogisticWarehouseReceipt.SetWHRViewModel(const Value: IJanuaWHReceiptsViewModel);
begin
  if FWHRViewModel <> Value then
  begin
    if (FWHRViewModel = nil) then
    begin
      FWHRViewModel := Value;
      JanuaActionViewController1.JanuaActionList := FWHRViewModel.FormActionList;
      JanuaActionViewController1.Activate;
      FrameVCLLogisticWarehouseReceipt1.WHReceiptsViewModel := FWHRViewModel;
      (*
        frameVCLLogisticReceiptSingleRow1.WHReceiptsViewModel := FWHRViewModel;
        frameVCLLogisticReceiptSingleRow1.Initialize;
      *)
    end
    else
      FWHRViewModel := Value
  end;
end;

end.
