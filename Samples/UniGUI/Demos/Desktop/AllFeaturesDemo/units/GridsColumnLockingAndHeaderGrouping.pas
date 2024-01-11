// Column Locking & Header Grouping = Grids
unit GridsColumnLockingAndHeaderGrouping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, MainModule, DB, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, uniDBNavigator, uniPanel, DBClient, ServerModule;

type
  TUniGridsColumnLockingAndHeaderGrouping = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
    UniContainerPanel1: TUniContainerPanel;
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
    ClientDataSet1IsUS: TBooleanField;
    procedure UniFrameCreate(Sender: TObject);
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniGridsColumnLockingAndHeaderGrouping.ClientDataSet1CalcFields(
  DataSet: TDataSet);
begin
 ClientDataSet1IsUS.AsBoolean := ClientDataSet1Country.Text = 'US';
end;

procedure TUniGridsColumnLockingAndHeaderGrouping.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customer.cds');
end;

initialization
  RegisterClass(TUniGridsColumnLockingAndHeaderGrouping);

end.
