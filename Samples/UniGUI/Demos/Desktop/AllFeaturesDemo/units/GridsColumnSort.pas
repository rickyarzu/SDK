//  Column Sort = Grids
unit GridsColumnSort;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, MainModule, uniPanel, ServerModule, DBClient;

type
  TUniGridsColumnSort = class(TUniFrame)
    DataSource1: TDataSource;
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
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
    ClientDataSet1IsUs: TBooleanField;
    procedure UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
      Direction: Boolean);
    procedure UniFrameCreate(Sender: TObject);
  private

    { Private declarations }
  public
       procedure SortColumn(const FieldName: string; Dir: Boolean);
    { Public declarations }
  end;

implementation

{$R *.dfm}

 procedure TUniGridsColumnSort.SortColumn(const FieldName: string; Dir: Boolean);
begin
  if Dir then
    ClientDataSet1.IndexName := FieldName+'_index_asc'
  else
    ClientDataSet1.IndexName := FieldName+'_index_des';
end;

procedure TUniGridsColumnSort.UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  SortColumn(Column.FieldName, Direction);
end;

procedure TUniGridsColumnSort.UniFrameCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customer.cds');
  with ClientDataSet1 do
  begin
    for I := 0 to ClientDataSet1.FieldCount-1 do
    begin
      IndexnameAsc := ClientDataSet1.Fields[I].FieldName+'_index_asc';
      IndexnameDes := ClientDataSet1.Fields[I].FieldName+'_index_des';
      IndexDefs.Add(IndexnameAsc, ClientDataSet1.Fields[I].FieldName, []);
      IndexDefs.Add(IndexnameDes, ClientDataSet1.Fields[I].FieldName, [ixDescending]);
    end;

  end;

end;

initialization
  RegisterClass(TUniGridsColumnSort);

end.
