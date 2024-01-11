unit Janua.Documents.frameVCLDocRows;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit,
  JvExControls, JvDBLookup, MoneyEdit,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLFrame, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  // Interposers
  Janua.Vcl.EnhCRDBGrid, Janua.Vcl.EnhDBGrid, Janua.Vcl.Interposers, Janua.TMS.Interposers,
  Janua.Vcl.FormController,
  Janua.Components.Grids, Janua.Vcl.ViewModel, Janua.Core.Classes, Janua.Vcl.Actions,
  // Inherites from Documents View Model ................................................................
  Janua.Documents.ViewModel.Intf, Jorm.Documents.Intf,
  Janua.Documents.WarehouseReceipts.ViewModel.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TframeVCLDocRow = class(TFrame)
    edQuantity: TJvValidateEdit;
    lbQtyUnits: TLabel;
    cboCurrency: TJvDBLookupCombo;
    lbCurrency: TLabel;
    edItemsModel: TEdit;
    lbItemsDescription: TLabel;
    cboVatCode: TJvDBLookupCombo;
    lbPrice: TLabel;
    lbVatCode: TLabel;
    memItemDescription: TMemo;
    edValidateAmount: TJvValidateEdit;
    edPrice: TJvValidateEdit;
    lbAmount: TLabel;
    edVat: TJvValidateEdit;
    lbVatPurcent: TLabel;
    edVatAmount: TJvValidateEdit;
    lbVatAmount: TLabel;
    edNetAmount: TJvValidateEdit;
    lbNetAmount: TLabel;
    edDiscRate: TJvValidateEdit;
    lbDiscRate: TLabel;
    edDiscAmount: TJvValidateEdit;
    lbDiscAmount: TLabel;
    fdmCurrencies: TFDMemTable;
    fdmCurrenciescurrency_id: TSmallintField;
    fdmCurrenciescurrency_code: TWideStringField;
    fdmCurrenciescurrency_name: TWideStringField;
    dsCurrencies: TDataSource;
    fdmVatRates: TFDMemTable;
    fdmVatRatesid: TSmallintField;
    fdmVatRatesjguid: TGuidField;
    fdmVatRatesdb_schema_id: TIntegerField;
    fdmVatRatescode: TWideStringField;
    fdmVatRatesdescription: TWideStringField;
    fdmVatRatesvat_rate: TFloatField;
    fdmVatRatesnon_deductible_rate: TFloatField;
    fdmVatRatesvat_group_id: TSmallintField;
    fdmVatRatesvat_separation: TBooleanField;
    fdmVatRatesvat_separtion_rate: TFloatField;
    fdmVatRatesvat_translation_id: TSmallintField;
    fdmVatRatesvat_enabled: TBooleanField;
    dsVatRates: TDataSource;
    procedure cboVatCodeCloseUp(Sender: TObject);
  private
    FDocRow: IDocRowView;
    procedure SetDocRow(const Value: IDocRowView);
    { Private declarations }
  public
    { Public declarations }
    property DocRow: IDocRowView read FDocRow write SetDocRow;
  end;

implementation

{$R *.dfm}
{ TframeVCLDocRow }

procedure TframeVCLDocRow.cboVatCodeCloseUp(Sender: TObject);
begin
  FDocRow.VatRate.AsFloat := fdmVatRatesvat_rate.AsFloat;
end;

procedure TframeVCLDocRow.SetDocRow(const Value: IDocRowView);
begin
  FDocRow := Value;
  if Assigned(FDocRow) then
  begin
    edItemsModel.BindToField(FDocRow.Model);
    edQuantity.BindToField(FDocRow.Quantity);
    edPrice.BindToField(FDocRow.Price);
    cboCurrency.BindToField(FDocRow.CurrencyId);
    cboVatCode.BindToField(FDocRow.VatId);
    edVat.BindToField(FDocRow.VatRate);
    // edNetAmount
    edNetAmount.BindToField(FDocRow.NetAmount);
    // edVatAmount
    edVatAmount.BindToField(FDocRow.VatAmount);
    // edValidatePrice
    edPrice.BindToField(FDocRow.Price);
    edValidateAmount.BindToField(FDocRow.TotalAmount);
    memItemDescription.Text := FDocRow.Description.AsString;
    FDocRow.Description.Bind('AsString', memItemDescription, 'Text');
  end;
end;

end.
