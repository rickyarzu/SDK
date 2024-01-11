unit Janua.VCL.Logistic.frameWarehouseReceiptRow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ToolWin, VCL.ComCtrls,
  JvExControls, JvLinkLabel, JvDBLookup, VCL.Samples.Spin, VCL.ExtCtrls, JvExStdCtrls, MoneyEdit, JvEdit,
  JvValidateEdit,
  // Janua VCL
  Janua.VCL.ViewModel.Search, Janua.VCL.Actions,
  // Januaproject
  Janua.VCL.Interposers, Janua.tms.Interposers, Janua.Controls.Intf, Janua.Core.Types,
  Janua.Core.Classes.Intf, JOrm.Documents.Intf, Janua.Core.Classes, uJanuaVCLFrame, Janua.Controls.Forms.Intf,
  Janua.Bindings.Intf, Janua.Documents.ViewModel.Intf, Janua.Documents.WarehouseReceipts.ViewModel.Intf,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrameVCLLogisticWarehouseReceiptRow = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    lbPosition: TLabel;
    edItemsModel: TEdit;
    lbItemsDescription: TLabel;
    lbItemID: TLabel;
    btnItemSearch: TButton;
    memItemDescription: TMemo;
    sedPallets: TJvValidateEdit;
    JvLinkLabel1: TLabel;
    lblinkItemPackage: TLabel;
    cboPackageType: TJvDBLookupCombo;
    sedQuantyEntrance: TJvValidateEdit;
    lbQtyUnits: TLabel;
    sedQtyInventory: TJvValidateEdit;
    lbInvUnits: TLabel;
    JvLinkLabel2: TLabel;
    lbConfirmedWeight: TLabel;
    JvLinkLabel13: TLabel;
    edSupplierName: TEdit;
    btnSearchSupplier: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    grpWarehouseReminders: TGroupBox;
    JvLinkLabel4: TLabel;
    JvLinkLabel5: TLabel;
    edQtyWharehouseReminder: TJvValidateEdit;
    SpinEdit6: TJvValidateEdit;
    grpDimensions: TGroupBox;
    JvLinkLabel6: TLabel;
    SpinEdit7: TJvValidateEdit;
    JvLinkLabel7: TLabel;
    SpinEdit8: TJvValidateEdit;
    JvLinkLabel8: TLabel;
    SpinEdit9: TJvValidateEdit;
    sedCalcVolume: TMoneyEdit;
    edCalcVolume: TLabel;
    grpMeasurementUnit: TRadioGroup;
    JanuaVCLSearchItemController: TJanuaVCLSearchController;
    JanuaVCLSearchSupplierController1: TJanuaVCLSearchController;
    edWeightOnDelivery: TJvValidateEdit;
    edConfirmedWeight: TJvValidateEdit;
    grpCustomsInformations: TGroupBox;
    JvDBLookupCombo1: TJvDBLookupCombo;
    SpinEdit1: TJvValidateEdit;
    MoneyEdit5: TMoneyEdit;
    MoneyEdit4: TMoneyEdit;
    MoneyEdit3: TMoneyEdit;
    MoneyEdit2: TMoneyEdit;
    MoneyEdit1: TMoneyEdit;
    sedVolume: TMoneyEdit;
    Label2: TLabel;
    JvLinkLabel14: TLabel;
    JvLinkLabel10: TLabel;
    lbCurrency: TLabel;
    JvLinkLabel12: TLabel;
    JvLinkLabel11: TLabel;
    lbPriceValue: TLabel;
    JvLinkLabel9: TLabel;
    fdmPackages: TFDMemTable;
    fdmPackagesid: TSmallintField;
    fdmPackagescode: TWideStringField;
    fdmPackagesdescription: TWideStringField;
    fdmPackagesjguid: TGuidField;
    dsPackages: TDataSource;
    dsCurrencies: TDataSource;
    fdmCurrencies: TFDMemTable;
    fdmCurrenciescurrency_id: TSmallintField;
    fdmCurrenciescurrency_code: TWideStringField;
    fdmCurrenciescurrency_name: TWideStringField;
    lbSupplierID: TLabel;
    lbPos: TLabel;
    cboHazMatCode: TJvDBLookupCombo;
    lbHazmatCode: TLabel;
    fdmHazmatD: TFDMemTable;
    fdmHazmatDcode: TWideStringField;
    dsHazmat: TDataSource;
  private
    FWHReceiptsRows: IJanuaRSRows;
    FWHReceiptsRowsVM: IJanuaDocRowsViewModel;
    procedure SetWHReceiptsRows(const Value: IJanuaRSRows);
    procedure SetWHReceiptsRowsVM(const Value: IJanuaDocRowsViewModel);
  protected
    { Private declarations }
  public
    property WHReceiptsRows: IJanuaRSRows read FWHReceiptsRows write SetWHReceiptsRows;
    property WHReceiptsRowsVM: IJanuaDocRowsViewModel read FWHReceiptsRowsVM write SetWHReceiptsRowsVM;
    { Public declarations }
  public
    procedure Initialize; override;
    procedure ActivateSearch;
  end;

implementation

uses Spring, Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}
{ TFrameVCLLogisticWarehouseReceiptRow }

procedure TFrameVCLLogisticWarehouseReceiptRow.ActivateSearch;
begin
  if Assigned(FWHReceiptsRows) then
  begin
    // JanuaActionViewRowsDetailController.JanuaActionList := FWHReceiptsRows.DetailActionList;
    if Assigned(JanuaVCLSearchItemController.SearchViewModel) then
      JanuaVCLSearchItemController.Activate;
    if Assigned(JanuaVCLSearchSupplierController1.SearchViewModel) then
      JanuaVCLSearchSupplierController1.Activate;
  end;
end;

procedure TFrameVCLLogisticWarehouseReceiptRow.Initialize;
var
  lRow: IDocRowView;
begin
  try
    inherited;
    if Assigned(FWHReceiptsRows) then
    begin
      lRow := FWHReceiptsRows.Row;
      if lRow.RowDate.IsNull then
        lRow.RowDate.AsDateTime := Date();

      edSupplierName.Text := lRow.SupplierName.AsString;
      lRow.SupplierName.Bind('AsString', edSupplierName, 'Text');

      lbSupplierID.BindToField(lRow.SupplierId);

      lbPosition.Caption := lRow.Position.AsString;
      lRow.Position.Bind('AsString', lbPosition, 'Caption');

      edItemsModel.Text := lRow.Model.AsString;
      lRow.Model.Bind('AsString', edItemsModel, 'Text');

      memItemDescription.Text := lRow.Description.AsString;
      lRow.Description.Bind('AsString', memItemDescription, 'Text');

      lbItemID.Caption := lRow.ItemId.AsString;
      lRow.ItemId.Bind('AsString', lbItemID, 'Caption');

      sedPallets.Value := lRow.Pallets.AsVariant;
      lRow.Pallets.Bind('AsInteger', sedPallets, 'Value');

      sedQuantyEntrance.Value := lRow.DeliveredQty.AsVariant;
      lRow.DeliveredQty.Bind('AsInteger', sedQuantyEntrance, 'Value');

      sedQtyInventory.Value := lRow.InventoryQty.AsVariant;
      lRow.InventoryQty.Bind('AsInteger', sedQtyInventory, 'Value');

      // edQtyWharehouseReminder
      edQtyWharehouseReminder.Value := lRow.InventoryQty.AsVariant;
      lRow.InventoryQty.Bind('AsInteger', edQtyWharehouseReminder, 'Value');

      // sedWeightOnDelivery
      edWeightOnDelivery.Value := lRow.WeightOnDelivery.AsFloat;
      lRow.WeightOnDelivery.Bind('AsFloat', edWeightOnDelivery, 'Value');

      sedVolume.Value := lRow.Volume.AsFloat;
      lRow.Volume.Bind('AsFloat', sedVolume, 'Value');

      cboPackageType.BindToField(lRow.PackageTypeId);
      cboHazMatCode.BindToField(lRow.HazClass);

      ActivateSearch;
    end;
  except
    on e: exception do
      RaiseException('Initialize', e, self);
  end;

end;

procedure TFrameVCLLogisticWarehouseReceiptRow.SetWHReceiptsRows(const Value: IJanuaRSRows);
begin
  FWHReceiptsRows := Value;
  if Assigned(FWHReceiptsRows) then
    Initialize
end;

procedure TFrameVCLLogisticWarehouseReceiptRow.SetWHReceiptsRowsVM(const Value: IJanuaDocRowsViewModel);
begin
  FWHReceiptsRowsVM := Value;

  if Assigned(FWHReceiptsRowsVM) {$IFNDEF DEBUG} and Assigned(FWHReceiptsRowsVM.SVMSupplier){$ENDIF} then
  begin
{$IFDEF DEBUG}
    Guard.CheckNotNull(FWHReceiptsRowsVM.SVMSupplier, 'FWHReceiptsRowsVM.SVMSupplier');
{$ENDIF}
    JanuaVCLSearchSupplierController1.SearchViewModel := FWHReceiptsRowsVM.SVMSupplier;
    if not Assigned(FWHReceiptsRows) then
      SetWHReceiptsRows(FWHReceiptsRowsVM.RsDocRows);
    JanuaVCLSearchSupplierController1.Activate;
  end;
end;

end.
