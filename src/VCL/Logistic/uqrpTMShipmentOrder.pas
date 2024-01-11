unit uqrpTMShipmentOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QRQRBarcode, EanQR, QuickRpt, Vcl.ExtCtrls;

type
  TqrpTMShipmentOrder = class(TForm)
    qrpTMWarehouseReceipt: TQuickRep;
    bndPageHeaderBand1: TQRBand;
    img1: TQRImage;
    qrmemSede: TQRMemo;
    qrlblDocumentTitle: TQRLabel;
    qrEan2: TQrEan;
    qrBcdbarcode: TQRQRDBBarcode;
    bndIntestazioneFattura: TQRBand;
    qrlblAddress: TQRLabel;
    qrlblDocNumber: TQRLabel;
    qrlblDocDate: TQRLabel;
    qrdbtxtcalc_number: TQRDBText;
    qrdbtxtdoc_date: TQRDBText;
    qrlblPONumber: TQRLabel;
    qrdbtxtpurchase_order_number: TQRDBText;
    qrlblTrackingCode: TQRLabel;
    qrdbtxtcarrier_tracking_number: TQRDBText;
    qrdbtxtlocation_name: TQRDBText;
    qrshp1: TQRShape;
    qrshpShTopHeader: TQRShape;
    qrlblWarehouseLocation: TQRLabel;
    qrdbtxtcalc_holder_full_address: TQRDBText;
    qrmemNotes: TQRMemo;
    qrshp2: TQRShape;
    qrlblInvoiceDateNumber: TQRLabel;
    qrdbtxtcarrier_name: TQRDBText;
    qrlblExpenses: TQRLabel;
    qrshp3: TQRShape;
    qrlbl1: TQRLabel;
    qrdbtxtcarrier_invoice_number: TQRDBText;
    qrdbtxtcarrier_invoice_date: TQRDBText;
    qrlbl2: TQRLabel;
    qrlblNotes: TQRLabel;
    qrlblApplicableCharges1: TQRLabel;
    qrshp4: TQRShape;
    qrmemApplicableCharges: TQRMemo;
    qrmemExpenses: TQRMemo;
    bndDettaglioProdotti: TQRBand;
    qrshpsh1: TQRShape;
    qrshpsh2: TQRShape;
    qrdbtxtdelivered_qty: TQRDBText;
    qrdbtxtmodel: TQRDBText;
    qrdbtxtweight_on_delivery: TQRDBText;
    qrdbtxtvolume: TQRDBText;
    qrshpRow6: TQRShape;
    qrdbtxtdescription: TQRDBText;
    qrdbtxtpackage_type_id: TQRDBText;
    qrshp5: TQRShape;
    qrdbtxtcalc_size_description: TQRDBText;
    qrdbtxtpurchase_order: TQRDBText;
    bndFooter: TQRBand;
    qrlblPieces: TQRLabel;
    qrlbl3: TQRLabel;
    qrshpSH7: TQRShape;
    qrshp6: TQRShape;
    qrlbl4: TQRLabel;
    qrshp7: TQRShape;
    qrshp8: TQRShape;
    qrlblTotalPackages: TQRLabel;
    qrlblTotalWeight: TQRLabel;
    qrlblTotalVolume: TQRLabel;
    bndColumnHeaderBand1: TQRBand;
    qrlblPackages: TQRLabel;
    qrlblVolume: TQRLabel;
    qrlblProdottoCodice: TQRLabel;
    qrlblQuantita: TQRLabel;
    qrshpSh5: TQRShape;
    qrshp9: TQRShape;
    qrshp10: TQRShape;
    qrshp11: TQRShape;
    qrshp12: TQRShape;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrshp13: TQRShape;
    qrlblRowPONumber: TQRLabel;
    qrlblDescription: TQRLabel;
    qrlblRowNotes: TQRLabel;
    qrlblRowVolumeWeight: TQRLabel;
    qrshp14: TQRShape;
    qrshpHeaderLabels: TQRShape;
    qrdbtxtWorkNumber: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrpTMShipmentOrder: TqrpTMShipmentOrder;

implementation

uses
  Janua.Logistic.Shipments.Postgres;

{$R *.dfm}

end.
