unit uqrpAirWayBill;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, QRCtrls, Vcl.ExtCtrls, JOrm.Logistic.AWBs.Intf, QRPDFFilt,
  Janua.Logistic.AWB.ViewModel.Intf, Janua.Logistic.AWB.ViewModel.Impl, Janua.Reporting.Intf;

type
  TqrpAirWayBill = class(TForm)
    rpAWB: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    lbField1a: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    lbField1b: TQRLabel;
    lbField1cPartial: TQRLabel;
    lbField1c: TQRLabel;
    QRShape14: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    lbField2: TQRLabel;
    lbField21: TQRLabel;
    lbField22: TQRLabel;
    lbField23: TQRLabel;
    lbField3: TQRLabel;
    lbField31: TQRLabel;
    lbField32: TQRLabel;
    lbField33: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape15: TQRShape;
    lbIssuingCarrier: TQRLabel;
    lbField4a: TQRLabel;
    lbField4b: TQRLabel;
    QRShape16: TQRShape;
    QRLabel1: TQRLabel;
    QRShape17: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel24: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    lbIssuerName: TQRLabel;
    lbIssuerAddress: TQRLabel;
    lbIssuerCodeTown: TQRLabel;
    lbIssuerVATCode: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape18: TQRShape;
    lbField18: TQRLabel;
    QRLabel6: TQRLabel;
    lbField11a: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape19: TQRShape;
    lbField11b: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape20: TQRShape;
    QRLabel8: TQRLabel;
    QRShape21: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape22: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape23: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape24: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape25: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    lbField19a: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape33: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel40: TQRLabel;
    QRShape34: TQRShape;
    QRMemo2: TQRMemo;
    QRLabel43: TQRLabel;
    lbH1_H3: TQRMemo;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel48: TQRLabel;
    QRShape39: TQRShape;
    QRLabel49: TQRLabel;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRLabel50: TQRLabel;
    lbField33b: TQRLabel;
    lbField33a: TQRLabel;
    lbField4c2: TQRLabel;
    lbField7: TQRMemo;
    Field32a: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape42: TQRShape;
    Field31a: TQRLabel;
    QRShape43: TQRShape;
    Field32b: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRLabel17: TQRLabel;
    QRShape46: TQRShape;
    QRLabel53: TQRLabel;
    Field31b: TQRLabel;
    Field30a: TQRLabel;
    Field30b: TQRLabel;
    QRShape47: TQRShape;
    Field29a: TQRLabel;
    Field29b: TQRLabel;
    labelField: TQRLabel;
    QRShape48: TQRShape;
    labelPrepaid: TQRLabel;
    QRShape49: TQRShape;
    Collect: TQRLabel;
    Field28a: TQRLabel;
    Field28b: TQRLabel;
    QRLabel61: TQRLabel;
    MemOtherCharges: TQRMemo;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRMemo3: TQRMemo;
    QRShape52: TQRShape;
    QRMemo4: TQRMemo;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel62: TQRLabel;
    QRShape56: TQRShape;
    field19a: TQRMemo;
    Field20a: TQRMemo;
    lbKg: TQRLabel;
    QRLabel63: TQRLabel;
    Field21: TQRMemo;
    Field22: TQRMemo;
    Field24: TQRMemo;
    lbRate: TQRLabel;
    QRLabel64: TQRLabel;
    Field25: TQRMemo;
    QRShape57: TQRShape;
    QRLabel65: TQRLabel;
    QRShape58: TQRShape;
    Field26a: TQRMemo;
    lbNature: TQRLabel;
    QRLabel66: TQRLabel;
    Field27: TQRMemo;
    sumField19a: TQRLabel;
    sumField20a: TQRLabel;
    sumField26a: TQRLabel;
    QRMemo5: TQRMemo;
    QRShape59: TQRShape;
    lbSignature: TQRLabel;
    QRShape60: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel68: TQRLabel;
    lbInsuranceAmount: TQRLabel;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    FAWB: ILogisticAWB;
    procedure SetAWB(const Value: ILogisticAWB); { Private declarations }
  public
    { Public declarations }
    property AWB: ILogisticAWB read FAWB write SetAWB;
  end;

type
  TJanuaLogisticQRAWBReporter = Class(TJanuaLogisticAWBReporter, IJanuaLogisticAWBReporter, IJanuaReporter)
  public
    procedure Execute(const aPreview: Boolean = False); override;
  End;

var
  qrpAirWayBill: TqrpAirWayBill;

implementation

{$R *.dfm}

procedure TqrpAirWayBill.DetailBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin

end;

{ TqrpAirWayBill }

procedure TqrpAirWayBill.SetAWB(const Value: ILogisticAWB);
begin
  FAWB := Value;
  lbField1b.Caption := FAWB.Field1b.AsString;
  lbField1a.Caption := FAWB.Field1a.AsString;
  // 82011521
  // 12345678
  lbField1cPartial.Caption := Copy(FAWB.Field1c.AsString, Length(FAWB.Field1c.AsString) - 8, 8);
  lbField1c.Caption := FAWB.Field1c.AsString;
  lbField2.Caption := FAWB.Field2.AsString;
  lbField21.Caption := FAWB.Field21.AsString;
  lbField22.Caption := FAWB.Field22.AsString;
  lbField23.Caption := FAWB.Field23.AsString;
  lbField3.Caption := FAWB.field3.AsString;
  lbField31.Caption := FAWB.Field31.AsString;
  lbField32.Caption := FAWB.field32.AsString;
  lbField33.Caption := FAWB.field33.AsString;

  // note Field11a and 11b of IATA are mapped to 8 and 8a on older Application ....

  // note MemOthers = concatenazione con , di CodOtherX + AmountOtherX + ',' se CodOther ed Amount other > ''

end;

{ TJanuaWHRQrpReceiptReporter }

procedure TJanuaLogisticQRAWBReporter.Execute(const aPreview: Boolean);
var
  qr: TqrpAirWayBill;
begin
  qr := TqrpAirWayBill.Create(nil);
  try
    qr.AWB := GetLogisticAWBViewModel.AWBRecord;
    { TODO: qr.Rows := WHRViewModel.jdsDocRows.DataSet; }
    if aPreview then
      qr.rpAWB.Preview
    else
      qr.rpAWB.Print;
  finally
    qr.Free;
  end;

end;

end.
