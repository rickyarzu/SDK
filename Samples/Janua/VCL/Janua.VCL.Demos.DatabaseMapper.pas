unit Janua.VCL.Demos.DatabaseMapper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Data.DB, MemDS, VirtualTable, DBAccess, Uni,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.Grids, VCL.DBGrids, CRGrid, VCL.ComCtrls,
  scControls, VCL.StdCtrls, VCL.ExtCtrls, AdvMemo, advmjson,
  // Januaproject
  Janua.Core.DatabaseMapper, Janua.Core.DatabaseMapper.TestClasses, Janua.Core.Json;

type
  TfrmVCLDemosDatabaseMapper = class(TForm)
    FDMemTable1: TFDMemTable;
    FDMemTable1customer_id: TIntegerField;
    FDMemTable1customer_name: TStringField;
    FDMemTable1email_address: TStringField;
    FDMemTable1birt_date: TDateField;
    FDMemTable1is_active: TBooleanField;
    FDMemTable1jguid: TGuidField;
    FDMemTable1balance: TCurrencyField;
    vtCustomers: TVirtualTable;
    vtCustomerscustomer_id: TIntegerField;
    vtCustomerscustomer_name: TStringField;
    vtCustomersemail_address: TStringField;
    vtCustomersbirt_date: TDateField;
    vtCustomersis_active: TBooleanField;
    vtCustomersjguid: TGuidField;
    vtCustomersbalance: TCurrencyField;
    scPageControl1: TscPageControl;
    scTabSheet1: TscTabSheet;
    scTabSheet2: TscTabSheet;
    CRDBGrid1: TCRDBGrid;
    UniDataSource1: TUniDataSource;
    Panel1: TPanel;
    btnCache: TButton;
    btnTest: TButton;
    AdvMemo1: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    btnTestJson: TButton;
    btnSerializeJson: TButton;
    scTabSheet3: TscTabSheet;
    AdvMemo2: TAdvMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure btnTestJsonClick(Sender: TObject);
    procedure btnSerializeJsonClick(Sender: TObject);
  private
    FCustomers: TJanuaCustomers;
    procedure SetCustomers(const Value: TJanuaCustomers);
    { Private declarations }
  public
    { Public declarations }
    procedure InitializeApplication;
    procedure LoadCustomers;
    property Customers: TJanuaCustomers read FCustomers write SetCustomers;
  end;

var
  frmVCLDemosDatabaseMapper: TfrmVCLDemosDatabaseMapper;

implementation

{$R *.dfm}
{ TfrmVCLDemosDatabaseMapper }

procedure TfrmVCLDemosDatabaseMapper.btnSerializeJsonClick(Sender: TObject);
begin
  var
  lJson := Customers.AsJson;
  var
  lStatino := TRoot.Create;
  try
    lStatino.AsJson := lJson;
    lJson := lStatino.AsJson;
    AdvMemo2.Lines.Text := JsonPretty(lJson);
  finally
    lStatino.Free;
  end;
end;

procedure TfrmVCLDemosDatabaseMapper.btnTestClick(Sender: TObject);
begin
  LoadCustomers
end;

procedure TfrmVCLDemosDatabaseMapper.btnTestJsonClick(Sender: TObject);
begin
  AdvMemo1.Lines.Text := JsonPretty(FCustomers.AsJson);
end;

procedure TfrmVCLDemosDatabaseMapper.FormCreate(Sender: TObject);
begin
  FCustomers := TJanuaCustomers.Create;
end;

procedure TfrmVCLDemosDatabaseMapper.FormDestroy(Sender: TObject);
begin
  FCustomers.Free;
end;

procedure TfrmVCLDemosDatabaseMapper.InitializeApplication;
begin
  // Warm up cache at application startup for better performance
  TDatabaseMapper.WarmUpCache([TCustomer]);
  ShowMessage(TDatabaseMapper.GetCacheStatistics);
end;

procedure TfrmVCLDemosDatabaseMapper.LoadCustomers;
var
  DataSet: TDataSet;
  Customer: TCustomer;
  StartTime: TDateTime;
begin
  StartTime := Now;
  DataSet := vtCustomers;

  DataSet.Open;
  DataSet.First;
  while not DataSet.Eof do
  begin
    // RTTI information is now cached - much faster on subsequent calls
    Customer := TDatabaseMapper.CreateObjectFromQuery<TCustomer>(DataSet);
    FCustomers.AddCustomer(Customer);
    DataSet.Next;
  end;

end;

procedure TfrmVCLDemosDatabaseMapper.SetCustomers(const Value: TJanuaCustomers);
begin
  FCustomers := Value;
end;

end.
