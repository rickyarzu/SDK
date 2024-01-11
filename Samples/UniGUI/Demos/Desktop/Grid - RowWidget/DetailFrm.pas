unit DetailFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, uniChart, uniPanel;

type
  TDetailFrame = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    UniChart1: TUniChart;
    UniBarSeries1: TUniBarSeries;
    ClientDataSet2OrderNo: TFloatField;
    ClientDataSet2CustNo: TFloatField;
    ClientDataSet2SaleDate: TDateTimeField;
    ClientDataSet2ShipDate: TDateTimeField;
    ClientDataSet2EmpNo: TIntegerField;
    ClientDataSet2ShipToContact: TStringField;
    ClientDataSet2ShipToAddr1: TStringField;
    ClientDataSet2ShipToAddr2: TStringField;
    ClientDataSet2ShipToCity: TStringField;
    ClientDataSet2ShipToState: TStringField;
    ClientDataSet2ShipToZip: TStringField;
    ClientDataSet2ShipToCountry: TStringField;
    ClientDataSet2ShipToPhone: TStringField;
    ClientDataSet2ShipVIA: TStringField;
    ClientDataSet2PO: TStringField;
    ClientDataSet2Terms: TStringField;
    ClientDataSet2PaymentMethod: TStringField;
    ClientDataSet2ItemsTotal: TCurrencyField;
    ClientDataSet2TaxRate: TFloatField;
    ClientDataSet2Freight: TCurrencyField;
    ClientDataSet2AmountPaid: TCurrencyField;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  MainModule;

{$R *.dfm}

procedure TDetailFrame.UniFrameCreate(Sender: TObject);
begin
  ClientDataSet2.SetRangeStart;
  ClientDataSet2.FieldByName('custno').AsInteger := UniMainModule.ClientDataSet1CustNo.AsInteger;
  ClientDataSet2.FieldByName('SaleDate').AsDateTime := 0;
  ClientDataSet2.SetRangeEnd;
  ClientDataSet2.FieldByName('custno').AsInteger := UniMainModule.ClientDataSet1CustNo.AsInteger;
  ClientDataSet2.FieldByName('SaleDate').AsDateTime := MaxDateTime;
  ClientDataSet2.ApplyRange;

  ClientDataSet2.First;
  while not ClientDataSet2.Eof  do
  begin
    UniBarSeries1.Add(ClientDataSet2.FieldByName('ItemsTotal').AsFloat, ClientDataSet2.FieldByName('SaleDate').DisplayText);
    ClientDataSet2.Next;
  end;
  ClientDataSet2.First;
end;

end.
