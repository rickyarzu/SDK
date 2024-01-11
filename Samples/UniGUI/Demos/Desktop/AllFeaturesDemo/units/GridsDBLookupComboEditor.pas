// DBLookup Combo Editor = Grids
unit GridsDBLookupComboEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniPanel, uniBasicGrid, uniDBGrid, uniLabel,
  uniDBNavigator, uniGUIBaseClasses, MainModule, ServerModule,
  DB, DBClient;

type
  TUniGridsDBLookupComboEditor = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniLabel1: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
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
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}



procedure TUniGridsDBLookupComboEditor.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet2, 'LookUp.cds');
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Order.cds');

  (OwnerForm as TUniForm).ActiveControl := uniDBLookupComboBox1;
end;

initialization
  RegisterClass(TUniGridsDBLookupComboEditor);

end.
