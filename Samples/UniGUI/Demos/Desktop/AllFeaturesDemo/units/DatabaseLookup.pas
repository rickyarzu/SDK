// Lookup = Database
unit DatabaseLookup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniStatusBar, uniBasicGrid, uniDBGrid,
  uniDBNavigator, uniListBox, uniDBListBox, uniDBLookupListBox, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniLabel, uniGUIBaseClasses,
  uniPanel, MainModule, ServerModule, DB, DBClient;

type
  TUniDatabaseLookup = class(TUniFrame)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupListBox1: TUniDBLookupListBox;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid1: TUniDBGrid;
    ClientDataSet2: TClientDataSet;
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
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniDatabaseLookup.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet2, 'Customer.cds');
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Order.cds');
end;

initialization
  RegisterClass(TUniDatabaseLookup);

end.
