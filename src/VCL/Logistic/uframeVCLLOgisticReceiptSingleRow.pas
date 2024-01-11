unit uframeVCLLogisticReceiptSingleRow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  JvExControls, JvLinkLabel, JvDBLookup, Vcl.Samples.Spin, MoneyEdit,
  // Janua VCL
  Janua.Vcl.ViewModel.Search, Janua.Vcl.Actions, Janua.Vcl.Interposers, uJanuaVCLFrame,
  // Januaproject
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf, JOrm.Documents.Intf,
  Janua.Core.Classes, Janua.Bindings.Intf, Janua.Documents.WarehouseReceipts.ViewModel.Intf, Janua.Core.Commons;

type
  TframeVCLLogisticReceiptSingleRow = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    grpItemRow: TGroupBox;
    ToolBar1: TToolBar;
    JanuaVCLSearchItemController: TJanuaVCLSearchController;
    JanuaActionViewRowsDetailController: TJanuaActionViewController;
    edItemsModel: TEdit;
    lbItemsDescription: TLabel;
    btnItemSearch: TButton;
    cboTypeOfGoods: TJvDBLookupCombo;
    lblinkItemPackage: TLabel;
    sedPallets: TSpinEdit;
    JvLinkLabel1: TLabel;
    sedQuantyEntrance: TSpinEdit;
    lbQtyUnits: TLabel;
    JvLinkLabel2: TLabel;
    lbConfirmedWeight: TLabel;
    GroupBox1: TGroupBox;
    SpinEdit5: TSpinEdit;
    JvLinkLabel4: TLabel;
    SpinEdit6: TSpinEdit;
    JvLinkLabel5: TLabel;
    GroupBox2: TGroupBox;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    SpinEdit9: TSpinEdit;
    JvLinkLabel6: TLabel;
    JvLinkLabel7: TLabel;
    JvLinkLabel8: TLabel;
    Edit1: TEdit;
    JvLinkLabel9: TLabel;
    Label1: TLabel;
    lbPriceValue: TLabel;
    MoneyEdit1: TMoneyEdit;
    MoneyEdit2: TMoneyEdit;
    JvLinkLabel11: TLabel;
    JvLinkLabel12: TLabel;
    MoneyEdit3: TMoneyEdit;
    Edit2: TEdit;
    Button2: TButton;
    JvLinkLabel13: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    lbCurrency: TLabel;
    MoneyEdit4: TMoneyEdit;
    JvLinkLabel10: TLabel;
    MoneyEdit5: TMoneyEdit;
    JvLinkLabel14: TLabel;
    grpCustomsReference: TGroupBox;
    cboCustomsDocumentType: TJvDBLookupCombo;
    JvLinkLabel15: TLabel;
    Edit3: TEdit;
    edCustomsNumber: TLabel;
    Edit4: TEdit;
    edCustomsCin: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    edCustomsDocDate: TLabel;
    lbCustomsExpirationDate: TLabel;
    Edit5: TEdit;
    edCustomsMRN: TLabel;
    grpWarehouseCoordinates: TGroupBox;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    lbItemID: TLabel;
    lbPosition: TLabel;
    sedQtyInventory: TSpinEdit;
    lbInvUnits: TLabel;
    sedCalcVolume: TMoneyEdit;
    edCalcVolume: TLabel;
    edConfirmedWeight: TMoneyEdit;
    sedWeightOnDelivery: TMoneyEdit;
    sedVolume: TMoneyEdit;
  private
    [weak]
    FDocHead: IDocHeadView;
    [weak]
    FWHReceiptsViewModel: IJanuaWHReceiptsViewModel;
    procedure SetWHReceiptsViewModel(const Value: IJanuaWHReceiptsViewModel);
  protected
    { Private declarations }
  public
    property WHReceiptsViewModel: IJanuaWHReceiptsViewModel read FWHReceiptsViewModel write SetWHReceiptsViewModel;
    { Public declarations }
  public
    procedure Initialize; override;
    procedure ActivateSearch;
  end;

implementation

uses Janua.Application.Framework, Janua.Core.Functions;
{$R *.dfm}
{ TframeVCLLogisticReceiptSingleRow }

procedure TframeVCLLogisticReceiptSingleRow.ActivateSearch;
begin
  if Assigned(FWHReceiptsViewModel) then
  begin
    // JanuaActionViewRowsDetailController.JanuaActionList := FWHReceiptsViewModel.DetailActionList;
    JanuaActionViewRowsDetailController.Activate;
  end;
end;

procedure TframeVCLLogisticReceiptSingleRow.Initialize;
var
  lRows: IDocRowsView;
begin
  inherited;
  if Assigned(FWHReceiptsViewModel) then
  begin
    lRows := FWHReceiptsViewModel.DocHeadRecord.Rows;
    lbPosition.Caption := lRows.Position.AsString;
    lRows.Position.Bind('AsString', lbPosition, 'Caption');

    edItemsModel.Text := lRows.Model.AsString;
    lRows.Model.Bind('AsString', edItemsModel, 'Text');

    edItemsModel.Text := lRows.Model.AsString;
    lRows.Model.Bind('AsString', edItemsModel, 'Text');

    lbItemID.Caption := lRows.ItemId.AsString;
    lRows.ItemId.Bind('AsString', lbItemID, 'Caption');

    sedPallets.Value := lRows.Pallets.AsInteger;
    lRows.Pallets.Bind('AsInteger', sedPallets, 'Value');

    sedQuantyEntrance.Value := lRows.DeliveredQty.AsInteger;
    lRows.DeliveredQty.Bind('AsInteger', sedQuantyEntrance, 'Value');

    sedQtyInventory.Value := lRows.InventoryQty.AsInteger;
    lRows.DeliveredQty.Bind('AsInteger', sedQtyInventory, 'Value');

    // sedWeightOnDelivery
    sedWeightOnDelivery.Value := lRows.WeightOnDelivery.AsInteger;
    lRows.WeightOnDelivery.Bind('AsInteger', sedWeightOnDelivery, 'Value');

    sedVolume.Value := lRows.Volume.AsFloat;
    lRows.Volume.Bind('AsFloat', sedVolume, 'Value');

    ActivateSearch;
  end;
end;

procedure TframeVCLLogisticReceiptSingleRow.SetWHReceiptsViewModel(const Value: IJanuaWHReceiptsViewModel);
begin
  FWHReceiptsViewModel := Value;
end;

end.
