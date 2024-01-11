unit Janua.Html.Builder.Impl;

interface

uses
  Janua.Html.Intf, Janua.Orm.Intf, Spring.Collections, Janua.Html.Builder.Intf;

type
  THtmlBuilder = class(TInterfacedObject)
  private
    FRecordSet: IJanuaRecordSet;
  protected
    // Recordset For The Builder............................................
    // Master RecordSet
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(Value: IJanuaRecordSet);
  public
    Constructor Create(aRecordSet: IJanuaRecordSet); Virtual;
  public
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
  end;

type
  THtmlTableBuilder = class(THtmlBuilder, IHtmlBuilder, IHtmlTableBuilder)
  private
    FColumns: IList<THtmlTableTableColumn>;
    FID: string;
    FSortable: Boolean;
  protected
    function GetID: string;
    function GetSortable: Boolean;
    procedure SetID(const Value: string);
    procedure SetSortable(const Value: Boolean);
    function GetColumns: IList<THtmlTableTableColumn>;
    procedure SetColumns(Value: IList<THtmlTableTableColumn>);
  public
    Constructor Create(aRecordSet: IJanuaRecordSet); override;
    Destructor Destroy; override;
    function GetElement: IJanuaHtmlObject; Virtual;
    procedure AddColumin(aColumn: THtmlTableTableColumn);
  public
    property Columuns: IList<THtmlTableTableColumn> read GetColumns write SetColumns;
    property Sortable: Boolean read GetSortable write SetSortable;
    property ID: string read GetID write SetID;
  end;

var
  FHtmlHelper: IHtmlHelper;

implementation

uses
  Spring, Janua.Html.Impl, Janua.Orm.Types, Janua.Core.Functions;

{ THtmlBuilder }

constructor THtmlBuilder.Create(aRecordSet: IJanuaRecordSet);
begin
  Guard.CheckNotNull(aRecordSet, 'THtmlBuilder.Create aRecordSet = nil');
end;

function THtmlBuilder.GetRecordSet: IJanuaRecordSet;
begin
  Result := self.FRecordSet
end;

procedure THtmlBuilder.SetRecordSet(Value: IJanuaRecordSet);
begin
  self.FRecordSet := Value;
end;

{ THtmlTableBuilder }

procedure THtmlTableBuilder.AddColumin(aColumn: THtmlTableTableColumn);
begin
  self.FColumns.Add(aColumn);
end;

constructor THtmlTableBuilder.Create(aRecordSet: IJanuaRecordSet);
begin
  Guard.CheckNotNull(aRecordSet, 'THtmlTableBuilder.Create aRecordSet is nil');
  inherited;
  self.FRecordSet := aRecordSet;
  self.FColumns := TCollections.CreateList<THtmlTableTableColumn>;
end;

destructor THtmlTableBuilder.Destroy;
begin

  inherited;
end;

function THtmlTableBuilder.GetColumns: IList<THtmlTableTableColumn>;
begin
  Result := self.FColumns
end;

function THtmlTableBuilder.GetElement: IJanuaHtmlObject;
var
  i: integer;
  aTable: IHtmlTable;
  aRow: IHtmlTableRow;
  aCell: IHtmlTableCell;
  aGroups: IList<string>;
  tmp: string;
begin
  Guard.CheckNotNull(FRecordSet, 'THtmlTableBuilder.GetElement FRecordSet is nil');
  aTable := THtmlTable.Create(FHtmlHelper);
  aGroups := TCollections.CreateList<string>;

  // Simple Title .........................................................................................
  aRow := THtmlTableRow.Create(FHtmlHelper);
  for i := 0 to Pred(FColumns.Count) do
    // aHelper: IHtmlHelper; aValue: string; colspan, rowspan: Integer; Onclick: string; aIsHeader: boolean);
    aRow.AddCell(THtmlTableCell.Create(FHtmlHelper, FColumns[i].Title, 0, 0, '', True));
  aRow.IsHeader := True;
  aTable.Header.Add(aRow);

  // TBody ................................................................................................
  self.FRecordSet.First;
  while not self.FRecordSet.Eof do
  begin
    aRow := THtmlTableRow.Create(FHtmlHelper);
    for i := 0 to Pred(FColumns.Count) do
    begin
      // tmp := FRecordSet.CurrentRecord.FieldByName(FColumns[i].Field.DBField).AsString;
      tmp := FColumns[i].Field.AsString;
      aCell := THtmlTableCell.Create(FHtmlHelper, tmp, 0, 0, '', False);
      // aHelper: IHtmlHelper; aValue: string; colspan, rowspan: Integer; Onclick: string; aIsHeader: boolean);
      aRow.AddCell(aCell);
    end;
    aTable.AddRow(aRow);
    FRecordSet.Next;
  end;

  Result := aTable;
end;

function THtmlTableBuilder.GetID: string;
begin
  Result := self.FID
end;

function THtmlTableBuilder.GetSortable: Boolean;
begin
  Result := self.FSortable
end;

procedure THtmlTableBuilder.SetColumns(Value: IList<THtmlTableTableColumn>);
begin
  self.FColumns := Value;
end;

procedure THtmlTableBuilder.SetID(const Value: string);
begin
  FID := Value;
end;

procedure THtmlTableBuilder.SetSortable(const Value: Boolean);
begin
  FSortable := Value;
end;

initialization

Janua.Core.Functions.ExecProc(
  procedure
  begin
    { Insert Procedures ............................... }
    FHtmlHelper := THtmlHelper.Create;
  end, 'Janua.Html.Builder.initialization');

end.
