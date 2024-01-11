unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, Datasnap.DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1Company: TStringField;
    ClientDataSet1Addr1: TStringField;
    ClientDataSet1Addr2: TStringField;
    ClientDataSet1City: TStringField;
    ClientDataSet1State: TStringField;
    ClientDataSet1Zip: TStringField;
    ClientDataSet1Country: TStringField;
    ClientDataSet1Phone: TStringField;
    ClientDataSet1FAX: TStringField;
    ClientDataSet1TaxRate: TFloatField;
    ClientDataSet1Contact: TStringField;
    ClientDataSet1LastInvoiceDate: TDateTimeField;
    DataSource1: TDataSource;
    ClientDataSet2: TClientDataSet;
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
    DataSource2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
