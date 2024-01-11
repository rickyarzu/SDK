unit uqrpTMWarehouseReceipt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QRQRBarcode, EanQR, QuickRpt, Vcl.ExtCtrls, Data.DB,
  Janua.Documents.WarehouseReceipts.ViewModel.Intf, Janua.Documents.WarehouseReceipts.ViewModel.Impl,
  Janua.Reporting.Intf;

type
  TqrpTMWarehouseReceipt = class(TForm)
    rpTMWarehouseReceipt: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    qrtSede: TQRMemo;
    lbDocumentTitle: TQRLabel;
    QRImage2: TQRImage;
    QrEan1: TQrEan;
    QRQRDBBarcode1: TQRQRDBBarcode;
    bndIntestazioneFattura: TQRBand;
    lbAddress: TQRLabel;
    lbDocNumber: TQRLabel;
    lbDocDate: TQRLabel;
    dbtCalcNumber: TQRDBText;
    dbtDocDate: TQRDBText;
    lbPONumber: TQRLabel;
    edPONumber: TQRDBText;
    lbTrackingCode: TQRLabel;
    dbtDocRefCode: TQRDBText;
    dbtPaymentTerms: TQRDBText;
    QRShape1: TQRShape;
    qrShTopHeader: TQRShape;
    lbWarehouseLocation: TQRLabel;
    dbtHolderFullAddress: TQRDBText;
    bndDettaglioProdotti: TQRBand;
    sh1: TQRShape;
    sh2: TQRShape;
    dbtDeliveredQty: TQRDBText;
    dbtModel: TQRDBText;
    dbtWeight: TQRDBText;
    dbtRowAmount: TQRDBText;
    shRow6: TQRShape;
    dbtDescription: TQRDBText;
    bndFooter: TQRBand;
    lbPieces: TQRLabel;
    QRLabel20: TQRLabel;
    SH7: TQRShape;
    QRShape13: TQRShape;
    ColumnHeaderBand1: TQRBand;
    lbPackages: TQRLabel;
    lbVolume: TQRLabel;
    lbProdottoCodice: TQRLabel;
    lbQuantita: TQRLabel;
    rowSh5: TQRShape;
    QRShape8: TQRShape;
    qrmNotes: TQRMemo;
    QRShape2: TQRShape;
    lbInvoiceDateNumber: TQRLabel;
    dbtTRackingNumber: TQRDBText;
    lbExpenses: TQRLabel;
    QRShape15: TQRShape;
    QRLabel4: TQRLabel;
    dbtCarrierInvoiceNumber: TQRDBText;
    dbtCarrierInvoiceDate: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape19: TQRShape;
    lbRowPONumber: TQRLabel;
    dbtPackages: TQRDBText;
    lbDescription: TQRLabel;
    lbRowNotes: TQRLabel;
    lbNotes: TQRLabel;
    lbApplicableCharges1: TQRLabel;
    QRShape4: TQRShape;
    lbRowVolumeWeight: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    dbtCalcSizeDescription: TQRDBText;
    dbtRowPurchaseOrder: TQRDBText;
    qrmApplicableCharges: TQRMemo;
    qrmExpenses: TQRMemo;
    QRLabel1: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    lbTotalPackages: TQRLabel;
    lbTotalWeight: TQRLabel;
    lbTotalVolume: TQRLabel;
    dbtWareHouse: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure bndDettaglioProdottiBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure bndFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure bndIntestazioneFatturaBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure rpTMWarehouseReceiptBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    FHeigth, FVolume: Float32;
    FPieces: Integer;
    FHead: TDataset;
    FRows: TDataset;
    FInternalPrint: Boolean;
    procedure SetHead(const Value: TDataset);
    procedure SetRows(const Value: TDataset);
    procedure SetInternalPrint(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    property Head: TDataset read FHead write SetHead;
    property Rows: TDataset read FRows write SetRows;
    property InternalPrint: Boolean read FInternalPrint write SetInternalPrint;
  end;

type
  TJanuaWHRQrpReceiptReporter = Class(TJanuaWHRReporter, IJanuaWHRReceiptsReporter, IJanuaWHRReporter,
    IJanuaReporter)
  public
    procedure Execute(const aPreview: Boolean = False); override;
  End;

var
  qrpTMWarehouseReceipt: TqrpTMWarehouseReceipt;

implementation

{$R *.dfm}

procedure TqrpTMWarehouseReceipt.FormCreate(Sender: TObject);
begin
  Self.InternalPrint := False;
end;

procedure TqrpTMWarehouseReceipt.bndDettaglioProdottiBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  FHeigth := FHeigth + FRows.FieldByName('weight_on_delivery').AsSingle;
  FVolume := FVolume + FRows.FieldByName('volume').AsSingle;
  FPieces := FPieces + FRows.FieldByName('delivered_qty').AsInteger;
end;

procedure TqrpTMWarehouseReceipt.bndFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  // FHeigth, FVolume: Float32;
  lbTotalWeight.Caption := FormatFloat('#,##0.00', FHeigth);
  lbTotalVolume.Caption := FormatFloat('#,##0.00', FVolume);
  lbTotalPackages.Caption := FPieces.ToString;
end;

procedure TqrpTMWarehouseReceipt.bndIntestazioneFatturaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  aLines: TStringList;
begin
  aLines := TStringList.Create;
  try
    if FHead.FieldByName('notes1').AsWideString > '' then
      aLines.Add(FHead.FieldByName('notes1').AsWideString);
    if FHead.FieldByName('notes2').AsWideString > '' then
      aLines.Add(FHead.FieldByName('notes2').AsWideString);
    if FHead.FieldByName('notes3').AsWideString > '' then
      aLines.Add(FHead.FieldByName('notes3').AsWideString);

    qrmNotes.Lines.Text := aLines.Text;
  finally
    aLines.Free;
  end;
  // qryDocHeadscarrier_expenses
  if InternalPrint then
  begin

    if FHead.FieldByName('carrier_expenses').AsFloat > 0.0 then
    begin
      qrmApplicableCharges.Lines.Add('Carrier Expenses');
      qrmExpenses.Lines.Add(FormatFloat('#,##0.00', FHead.FieldByName('carrier_expenses').AsFloat));
    end;
  end
  else
  begin
    lbApplicableCharges1.Enabled := False;
    lbExpenses.Enabled := False;
  end;
end;

procedure TqrpTMWarehouseReceipt.PageHeaderBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if FInternalPrint then
  begin
    lbDocumentTitle.Caption := lbDocumentTitle.Caption + ' Internal Copy';
  end
end;

procedure TqrpTMWarehouseReceipt.rpTMWarehouseReceiptBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  FHeigth := 0;
  FVolume := 0;

end;

{ TqrpTMWarehouseReceipt }

procedure TqrpTMWarehouseReceipt.SetHead(const Value: TDataset);
begin
  FHead := Value;
  dbtCalcNumber.DataSet := FHead;
  dbtHolderFullAddress.DataSet := FHead;
  dbtCalcNumber.DataSet := FHead;
  dbtDocDate.DataSet := FHead;
  dbtDocRefCode.DataSet := FHead;
  dbtPaymentTerms.DataSet := FHead;
  edPONumber.DataSet := FHead;
  dbtTRackingNumber.DataSet := FHead;
  dbtCarrierInvoiceDate.DataSet := FHead;
  dbtCarrierInvoiceNumber.DataSet := FHead;
  dbtWareHouse.DataSet := FHead;
end;

procedure TqrpTMWarehouseReceipt.SetInternalPrint(const Value: Boolean);
begin
  FInternalPrint := Value;
end;

procedure TqrpTMWarehouseReceipt.SetRows(const Value: TDataset);
begin
  FRows := Value;
  dbtCalcSizeDescription.DataSet := FRows;
  dbtDeliveredQty.DataSet := FRows;
  dbtPackages.DataSet := FRows;
  dbtRowPurchaseOrder.DataSet := FRows;
  dbtModel.DataSet := FRows;
  dbtDescription.DataSet := FRows;
  dbtWeight.DataSet := FRows;
  dbtRowAmount.DataSet := FRows;
  rpTMWarehouseReceipt.DataSet := FRows;
end;

{ TJanuaWHRQrpReceiptReporter }

procedure TJanuaWHRQrpReceiptReporter.Execute(const aPreview: Boolean);
var
  qr: TqrpTMWarehouseReceipt;
begin
  qr := TqrpTMWarehouseReceipt.Create(nil);
  try
    qr.Head := WHRViewModel.jdsDocHeads.DataSet;
    qr.Rows := WHRViewModel.jdsDocRows.DataSet;
    if aPreview then
      qr.rpTMWarehouseReceipt.Preview
    else
      qr.rpTMWarehouseReceipt.Print;
  finally
    qr.Free;
  end;
end;

end.
