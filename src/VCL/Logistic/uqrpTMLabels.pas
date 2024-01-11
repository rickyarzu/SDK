unit uqrpTMLabels;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, Janua.Core.Classes, QRQRBarcode, EanQR,
  QRCtrls, Janua.Legacy.QuickReport, SVGIconImage, Janua.Documents.WarehouseReceipts.ViewModel.Intf,
  Janua.Reporting.Impl, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Janua.Documents.WarehouseReceipts.ViewModel.Impl, Janua.Core.Components;

type
  TqrpTMLabels = class(TForm)
    QuickRep1: TQuickRep;
    JanuaBarcode1: TJanuaBarcode;
    QrEan1: TQrEan;
    DetailBand1: TQRBand;
    QRQRDBBarcode1: TQRQRDBBarcode;
    lbBarcode: TQRLabel;
    GtQRShape1: TGtQRShape;
    QRLabel2: TQRLabel;
    lbDocumentDate: TQRLabel;
    GtQRShape3: TGtQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    GtQRShape4: TGtQRShape;
    QRLabel6: TQRLabel;
    lbLocationVesselName: TQRLabel;
    GtQRShape5: TGtQRShape;
    QRLabel7: TQRLabel;
    lbHolder: TQRLabel;
    GtQRShape6: TGtQRShape;
    QRLabel8: TQRLabel;
    lbPONumber: TQRLabel;
    GtQRShape7: TGtQRShape;
    GtQRShape2: TGtQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    GtQRShape8: TGtQRShape;
    lbCarrierName: TQRLabel;
    lbCarrierTracking: TQRLabel;
    lbWeight: TQRLabel;
    lbWeigth: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    lbPackages: TQRLabel;
    fdDocumentRotw: TFDMemTable;
    fdDocumentRotwpos: TSmallintField;
    fdDocumentRotwid: TIntegerField;
    fdDocumentRotwbarcode: TStringField;
    fdDocumentRotwheight: TIntegerField;
    fdDocumentRotwwidth: TIntegerField;
    fdDocumentRotwlength: TIntegerField;
    fdDocumentRotwweight: TIntegerField;
    fdDocumentRotwmodel: TStringField;
    lbDocInfo: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    FViewModel: IJanuaWHReceiptsViewModel;
    procedure SetViewModel(const Value: IJanuaWHReceiptsViewModel);
    { Private declarations }
  public
    { Public declarations }
    property ViewModel: IJanuaWHReceiptsViewModel read FViewModel write SetViewModel;
  end;

type
  TJanuaWHRQrpLabelReporter = Class(TJanuaWHRReporter, IJanuaWHRLabelsReporter, IJanuaWHRReporter)
  public
    procedure Execute(const aPreview: Boolean = False); override;
  End;

var
  qrpTMLabels: TqrpTMLabels;

implementation

uses Janua.Core.Functions, System.Math;

{$R *.dfm}

procedure TqrpTMLabels.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  lTmp: string;
begin
  lbDocumentDate.Caption := '';
  lTmp := FViewModel.DocHeadRecord.DocDate.AsString;
  lbPONumber.Caption := ViewModel.DocHeadRecord.PoNumber.AsString;
  lbHolder.Caption := ViewModel.DocHeadRecord.HolderName.AsString;
  lbLocationVesselName.Caption := ViewModel.DocHeadRecord.LocationName.AsString;
  lbDocumentDate.Caption := FormatDateTime('dd/mm/yyyy', ViewModel.DocHeadRecord.DocDate.AsDateTime);
  // lbDocInfo.Caption := Copy(ViewModel.DocHeadRecord.DestName.AsString, 1, 2) + '-' +
  // ViewModel.DocHeadRecord.DocYear.AsString + '-' + ViewModel.DocHeadRecord.DocNumber.AsString;
  lbCarrierName.Caption := ViewModel.DocHeadRecord.CarrierName.AsString;
  lbCarrierTracking.Caption := ViewModel.DocHeadRecord.CarrierTrackingNumber.AsString;
  lbDocInfo.Caption := 'IT-GOA-' + ViewModel.DocHeadRecord.DocNumber.AsString;
  lbPackages.Caption := fdDocumentRotwpos.AsString + ' / ' + '1'; // sarebbe il totale cioè I
  lbBarcode.Caption := fdDocumentRotwbarcode.AsString;
  QrEan1.BarCode := fdDocumentRotwbarcode.AsString;
  QRQRDBBarcode1.DataSet := fdDocumentRotw;
  // lbWeight.Caption :=
end;

{ TqrpTMLabels }

procedure TqrpTMLabels.SetViewModel(const Value: IJanuaWHReceiptsViewModel);
var
  I, J, Id: Integer;
begin
  Id := 0;
  FViewModel := Value;
  fdDocumentRotw.Open;
  if Assigned(FViewModel) then
  begin
    I := FViewModel.jdsDocRows.FieldByName('quantity').AsInteger;
    for J := 1 to IfThen(I = 0, 1, I) do
    begin
      fdDocumentRotw.Append;
      fdDocumentRotwpos.AsInteger := J;
      { fdDocumentRotwpos: TSmallintField;
        fdDocumentRotwid: TIntegerField;
        fdDocumentRotwbarcode: TStringField; }
      Id := FViewModel.jdsDocRows.FieldByName('id').AsInteger;
      fdDocumentRotwid.AsInteger := Id;
      fdDocumentRotwbarcode.AsWideString := Janua.Core.Functions.GenerateInternalBarcode(Id, J, I);
      fdDocumentRotwmodel.AsString := FViewModel.jdsDocRows.FieldByName('model').AsWideString;
      fdDocumentRotw.Post;
    end;
  end;
end;

{ TJanuaWHRQrpLabelReporter }

procedure TJanuaWHRQrpLabelReporter.Execute(const aPreview: Boolean);
var
  lqrpLabels: TqrpTMLabels;
begin
  inherited;
  lqrpLabels := TqrpTMLabels.Create(nil);
  try
    lqrpLabels.ViewModel := WHRViewModel;
    lqrpLabels.QuickRep1.Preview;
  finally
    lqrpLabels.Free;
  end;
end;

end.
