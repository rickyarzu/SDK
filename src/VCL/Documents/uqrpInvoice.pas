unit uqrpInvoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, QRCtrls,  QRQRBarcode,
  // Januaproject
  Janua.Reporting.intf, Janua.Reporting.Impl,
  Janua.Documents.Invoices.ViewModel.Impl, Janua.Documents.Invoices.ViewModel.intf,
  EanQR;

type
  TqrpInvoice = class(TForm)
    rpInvoice: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    qrtSede: TQRMemo;
    qrtBanca: TQRMemo;
    bndIntestazioneFattura: TQRBand;
    lbAddress: TQRLabel;
    lbDocNumber: TQRLabel;
    lbDocDate: TQRLabel;
    dbtCalcNumber: TQRDBText;
    dbtDocDate: TQRDBText;
    lbWorkCode: TQRLabel;
    dbtWorkCode: TQRDBText;
    lbDocRefCode: TQRLabel;
    dbtDocRefCode: TQRDBText;
    dbtPaymentTerms: TQRDBText;
    dbtNotes1: TQRDBText;
    bndDettaglioProdotti: TQRBand;
    sh10: TQRShape;
    dbtPrice: TQRDBText;
    sh1: TQRShape;
    sh2: TQRShape;
    dbtPosition: TQRDBText;
    dbtModel: TQRDBText;
    dbtQty: TQRDBText;
    sh5: TQRShape;
    dbtRowAmount: TQRDBText;
    shRow6: TQRShape;
    sh6: TQRShape;
    dbtVatDescription: TQRDBText;
    bndFooter: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    qrmVatRate: TQRMemo;
    qrmTaxableAmount: TQRMemo;
    qrmTaxes: TQRMemo;
    qrmAmount: TQRMemo;
    SH7: TQRShape;
    gtQRLabel1: TQRLabel;
    qrmVatDescription: TQRMemo;
    lbDocumentTitle: TQRLabel;
    QRShape1: TQRShape;
    qrShTopHeader: TQRShape;
    ColumnHeaderBand1: TQRBand;
    lbDescrizioneArticoli: TQRLabel;
    lbPrezzo: TQRLabel;
    lbProdottiImponibile: TQRLabel;
    lbProdottoCodice: TQRLabel;
    lbQuantita: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape10: TQRShape;
    rowSh5: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    lbPaymentTerms: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel2: TQRLabel;
    dbtStampDuty: TQRDBText;
    lbAmount: TQRLabel;
    dbtDocAmount: TQRDBText;
    qrLbCurreny: TQRLabel;
    dbtDocCurrency: TQRDBText;
    QrEan1: TQrEan;
    QRQRDBBarcode1: TQRQRDBBarcode;
    dbtDestFullAddress: TQRDBText;
    QRLabel7: TQRLabel;
    dbtDiscount: TQRDBText;
    lndDescription: TQRShape;
    dbtDescription: TQRDBText;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel1: TQRLabel;
    dbtTaxableAmount: TQRDBText;
    dbtVatTaxes: TQRDBText;
    procedure bndDettaglioProdottiBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure bndIntestazioneFatturaBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure qrMemCompanyAddressPrint(Sender: TObject; var Value: string);
  private
    FHead: TDataset;
    FPayments: TDataset;
    FRows: TDataset;
    FVatRows: TDataset;
    FDocAttachments: TDataset;
    procedure SetHead(const Value: TDataset);
    procedure SetDocAttachments(const Value: TDataset);
    procedure SetPayments(const Value: TDataset);
    procedure SetRows(const Value: TDataset);
    procedure SetVatRows(const Value: TDataset);
    { Private declarations }
  public
    { Public declarations }
    property Head: TDataset read FHead write SetHead;
    property Rows: TDataset read FRows write SetRows;
    property VatRows: TDataset read FVatRows write SetVatRows;
    property Payments: TDataset read FPayments write SetPayments;
    property DocAttachments: TDataset read FDocAttachments write SetDocAttachments;
  end;

type
  TJanuaInvoicesQRReporter = Class(TJanuaInvoicesReporter, IJanuaInvoicesSingleReporter, IJanuaReporter)
  public
    procedure Execute(const aPreview: Boolean = False); override;
  End;

var
  qrpInvoice: TqrpInvoice;

implementation

{$R *.dfm}

uses {udmJanuaPgDocumentsStorage} System.Math;

procedure TqrpInvoice.bndDettaglioProdottiBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  lLen: Boolean;
  lRows: Integer;
  lStrings: TStringList;
begin
  lLen := FRows.FieldByName(dbtDescription.DataField).AsWideString.Length > 0;
  lRows := 1;
  lndDescription.Enabled := lLen;
  dbtDescription.Enabled := lLen;
  if lLen then
  begin
    lStrings := TStringList.Create;
    try
      lStrings.Text := FRows.FieldByName(dbtDescription.DataField).AsWideString;
      lRows := lStrings.Count;
    finally
      lStrings.Free;
    end;
    bndDettaglioProdotti.Height := 30 * lRows + 30;
  end
  else
    bndDettaglioProdotti.Height := 30;
end;

procedure TqrpInvoice.bndIntestazioneFatturaBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  lHasRows: Boolean;
  lRows: Integer;
  lStrings: TStringList;
begin
  lHasRows := FHead.FieldByName(dbtNotes1.DataField).AsWideString.Length > 0;
  if lHasRows then
  begin
    lStrings := TStringList.Create;
    try
      lStrings.Text := FHead.FieldByName(dbtNotes1.DataField).AsWideString;
      lRows := lStrings.Count;
    finally
      lStrings.Free;
    end;
    dbtNotes1.Height := 26 * lRows;
    bndIntestazioneFattura.Height := qrShTopHeader.Top + dbtNotes1.Height + 4;
  end
  else
  begin
    bndIntestazioneFattura.Height := qrShTopHeader.Top;
    qrShTopHeader.Enabled := False;
  end;
end;

procedure TqrpInvoice.PageHeaderBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  {
    18	"PF"	"Pro Forma Invoice"
    20	"WR"	"Warehouse Receipt"
    19	"PC"	"Pro forma Credit Note"
    17	"NC"	"CREDIT NOTE"
    16	"FT"	"Invoice"
  }
  if FHead.FieldByName('type_id').AsInteger = 18 then
    lbDocumentTitle.Caption := 'Pro Forma Invoice/Fattura Pro Forma'
  else if FHead.FieldByName('type_id').AsInteger = 16 then
    lbDocumentTitle.Caption := 'Invoice / Fattura'
  else if FHead.FieldByName('type_id').AsInteger = 19 then
    lbDocumentTitle.Caption := 'Pro Forma Credit Note / N.C. Pro Forma'
  else if FHead.FieldByName('type_id').AsInteger = 17 then
    lbDocumentTitle.Caption := 'Credit Note / Nota di Credito';

  if Assigned(FVatRows) and (FVatRows.RecordCount > 0) then
  begin
    FVatRows.First;
    while not FVatRows.Eof do
    begin
      qrmVatDescription.Lines.Add(FVatRows.FieldByName('vat_description').AsString);
      qrmVatRate.Lines.Add(FormatFloat('#0.00 %', FVatRows.FieldByName('vat_rate').AsFloat));
      qrmTaxableAmount.Lines.Add(FormatFloat('#,##0.00', FVatRows.FieldByName('taxable_amount').AsFloat));
      qrmTaxes.Lines.Add(FormatFloat('#,##0.00', FVatRows.FieldByName('taxes').AsFloat));
      qrmAmount.Lines.Add(FormatFloat('#,##0.00', FVatRows.FieldByName('amount').AsFloat));
      FVatRows.Next;
    end;
  end;
end;

procedure TqrpInvoice.qrMemCompanyAddressPrint(Sender: TObject; var Value: string);
begin

end;

{ TqrpInvoice }

procedure TqrpInvoice.SetDocAttachments(const Value: TDataset);
begin
  FDocAttachments := Value;

end;

procedure TqrpInvoice.SetHead(const Value: TDataset);
begin
  FHead := Value;
  dbtCalcNumber.DataSet := FHead;
  dbtDestFullAddress.DataSet := FHead;
  dbtCalcNumber.DataSet := FHead;
  dbtDocDate.DataSet := FHead;
  dbtDocRefCode.DataSet := FHead;
  dbtPaymentTerms.DataSet := FHead;
  dbtWorkCode.DataSet := FHead;
  dbtDocAmount.DataSet := FHead;
  dbtStampDuty.DataSet := FHead;
  dbtDocCurrency.DataSet := FHead;
  dbtNotes1.DataSet := FHead;
  dbtVatTaxes.DataSet := FHead;
  dbtTaxableAmount.DataSet := FHead;
end;

procedure TqrpInvoice.SetPayments(const Value: TDataset);
begin
  FPayments := Value;
end;

procedure TqrpInvoice.SetRows(const Value: TDataset);
begin
  FRows := Value;
  rpInvoice.DataSet := FRows;
  dbtPosition.DataSet := FRows;
  dbtModel.DataSet := FRows;
  dbtDiscount.DataSet := FRows;
  dbtDescription.DataSet := FRows;
  dbtDiscount.DataSet := FRows;
  dbtPrice.DataSet := FRows;
  dbtQty.DataSet := FRows;
  dbtVatDescription.DataSet := FRows;
  dbtRowAmount.DataSet := FRows;
end;

procedure TqrpInvoice.SetVatRows(const Value: TDataset);
begin
  FVatRows := Value;
end;

{ TJanuaInvoicesQRReporter }

procedure TJanuaInvoicesQRReporter.Execute(const aPreview: Boolean);
var
  qr: TqrpInvoice;
begin
  { TqrpInvoice = rpInvoice: TQuickRep; }
  qr := TqrpInvoice.Create(nil);
  try
    { jdsDocHeads: IJanuaDBDataset read GetjdsDocHeads;
      jdsDocAttachments: IJanuaDBDataset read GetjdsDocAttachments;
      jdsDocRows: IJanuaDBDataset read GetjdsDocRows;
      jdsVatAmounts: IJanuaDBDataset read GetjdsVatAmounts; }

    // Head: TDataset
    qr.Head := InvoicesViewModel.jdsDocHeads.DataSet;
    // Rows: TDataset
    qr.Rows := InvoicesViewModel.jdsDocRows.DataSet;
    // VatRows: TDataset
    qr.VatRows := InvoicesViewModel.jdsVatAmounts.DataSet;
    // Payments: TDataset
    if aPreview then
      qr.rpInvoice.Preview
    else
      qr.rpInvoice.Print;
  finally
    qr.Free;
  end;

end;

end.
