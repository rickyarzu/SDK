// Lookup Field = Grids
unit GridsLookupField;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBasicGrid, uniDBGrid, uniLabel, uniDBNavigator,
  uniGUIBaseClasses, uniPanel, MainModule, DB, ServerModule,
  DBClient;

type
  TUniGridsLookupField = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniLabel1: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2Name: TStringField;
    ClientDataSet2Capital: TStringField;
    ClientDataSet2Continent: TStringField;
    ClientDataSet2Area: TFloatField;
    ClientDataSet2Population: TFloatField;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1OrderNo: TFloatField;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1SaleDate: TDateTimeField;
    ClientDataSet1ShipDate: TDateTimeField;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1ShipToContact: TStringField;
    ClientDataSet1ShipToAddr1: TStringField;
    ClientDataSet1ShipToAddr2: TStringField;
    ClientDataSet1ShipToCity: TStringField;
    ClientDataSet1ShipToState: TStringField;
    ClientDataSet1ShipToZip: TStringField;
    ClientDataSet1ShipToCountry: TStringField;
    ClientDataSet1ShipToPhone: TStringField;
    ClientDataSet1ShipVIA: TStringField;
    ClientDataSet1PO: TStringField;
    ClientDataSet1Terms: TStringField;
    ClientDataSet1PaymentMethod: TStringField;
    ClientDataSet1ItemsTotal: TCurrencyField;
    ClientDataSet1TaxRate: TFloatField;
    ClientDataSet1Freight: TCurrencyField;
    ClientDataSet1AmountPaid: TCurrencyField;
    ClientDataSet1Lookup: TStringField;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniGridsLookupField.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet2, 'LookUp.cds');
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Order.cds');
end;

initialization
  RegisterClass(TUniGridsLookupField);

end.
