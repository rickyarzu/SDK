//Column Sorting = DBGrid
unit DBGridColumnSorting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  unimDBListGrid, unimDBGrid, DB, DBClient, MainModule;

type
  TUniDBGridColumnSorting = class(TUniFrame)
    UnimDBGrid1: TUnimDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure UnimDBGrid1ColumnSort(Column: TunimDBGridColumn;
      Direction: Boolean);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ServerModule;

procedure TUniDBGridColumnSorting.UniFrameCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customers.cds');

  with ClientDataSet1 do
  begin
    for I := 0 to FieldCount-1 do
    begin
      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';
      IndexDefs.Add(IndexnameAsc, Fields[I].FieldName, []);
      IndexDefs.Add(IndexnameDes, Fields[I].FieldName, [ixDescending]);
    end;

  end;
end;

procedure TUniDBGridColumnSorting.UnimDBGrid1ColumnSort(Column: TunimDBGridColumn;
  Direction: Boolean);
begin
  if Direction then
    ClientDataSet1.IndexName := Column.FieldName+'_index_asc'
  else
    ClientDataSet1.IndexName := Column.FieldName+'_index_des';
end;

initialization
  RegisterClass(TUniDBGridColumnSorting);


end.
