unit Janua.Logistic.qrpWarehouseList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, QRCtrls, qrpctrls;

type
  TqrpWarehouseList = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    qrtSede: TQRMemo;
    lbDocumentTitle: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    lbItemDescription: TQRPLabel;
    QRDBText1: TQRDBText;
    lbDelivered: TQRPLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    lbInventoryQty: TQRPLabel;
    lbLocationVessel: TQRPLabel;
    QRDBText4: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrpWarehouseList: TqrpWarehouseList;

implementation

{$R *.dfm}

uses Janua.Logistic.PgWarehouseList;

end.
