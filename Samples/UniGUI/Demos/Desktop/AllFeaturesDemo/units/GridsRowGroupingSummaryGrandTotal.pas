// Row Grouping & Summary + Grand Total = Grids
unit GridsRowGroupingSummaryGrandTotal;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, uniBasicGrid, uniDBGrid, uniDBNavigator,
  uniGUIBaseClasses, uniPanel, MainModule, DBClient, ServerModule;

type
  TUniGridsRowGroupingSummaryGrandTotal = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Col1: TStringField;
    ClientDataSet1UnitPrice: TFloatField;
    ClientDataSet1Quantity: TIntegerField;
    ClientDataSet1Category: TStringField;
    procedure UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
      Direction: Boolean);
    procedure UniDBGrid1ColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure UniDBGrid1ColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure UniDBGrid1ColumnSummaryTotal(Column: TUniDBGridColumn;
      Attribs: TUniCellAttribs; var Result: string);
    procedure UniFrameCreate(Sender: TObject);
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}

const
  Categories : array [1..3] of string = ('Raw Material', 'Product', 'Other');

procedure TUniGridsRowGroupingSummaryGrandTotal.ClientDataSet1NewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('unitprice').AsFloat:=5.0;
end;

procedure TUniGridsRowGroupingSummaryGrandTotal.UniDBGrid1ColumnSort(
  Column: TUniDBGridColumn; Direction: Boolean);
begin
  if SameText(Column.FieldName, 'category') then
  begin
    ClientDataSet1.IndexName:='CategoryIx';
  end;
end;

procedure TUniGridsRowGroupingSummaryGrandTotal.UniDBGrid1ColumnSummary(
  Column: TUniDBGridColumn; GroupFieldValue: Variant);
var
  F : Real;
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0;
    if Column.AuxValues[1]=NULL then Column.AuxValues[1]:=0;

    Column.AuxValue:=Column.AuxValue + Column.Field.AsInteger;
    Column.AuxValues[1]:=Column.AuxValues[1] + Column.Field.AsInteger;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0.0;
    if Column.AuxValues[1]=NULL then Column.AuxValues[1]:=0;

    F:=Column.Field.AsFloat *  ClientDataSet1.FieldByName('quantity').AsInteger;

    Column.AuxValue:=Column.AuxValue + F;
    Column.AuxValues[1]:=Column.AuxValues[1] + F;
  end;
end;

procedure TUniGridsRowGroupingSummaryGrandTotal.UniDBGrid1ColumnSummaryResult(
  Column: TUniDBGridColumn; GroupFieldValue: Variant; Attribs: TUniCellAttribs;
  var Result: string);
var
  I : Integer;
  F : Real;
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    I:=Column.AuxValue;
    Result:=Format('Total Units: %d', [I]);
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clGreen;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    F:=Column.AuxValue;
    Result:='Total Cost: '+FormatCurr('0,0.00 ', F, FmtSettings) + FmtSettings.CurrencyString;
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end;
  Column.AuxValue:=NULL;
end;

procedure TUniGridsRowGroupingSummaryGrandTotal.UniDBGrid1ColumnSummaryTotal(
  Column: TUniDBGridColumn; Attribs: TUniCellAttribs; var Result: string);
var
  I : Integer;
  F : Real;
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    I:=Column.AuxValues[1];
    Result:=Format('Grand Total: %d', [I]);
    Attribs.Font.Style:=[fsBold, fsItalic];
    Attribs.Font.Color:=clGray;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    F:=Column.AuxValues[1];
    Result:='Grand Total: '+FormatCurr('0,0.00 ', F) + FmtSettings.CurrencyString;
    Attribs.Font.Style:=[fsBold, fsItalic];
    Attribs.Font.Color:=clGray;
  end;
end;

procedure TUniGridsRowGroupingSummaryGrandTotal.UniFrameCreate(Sender: TObject);
var
  I : Integer;
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Item.cds');

  for I := 1 to 15 do
  begin
    with ClientDataSet1 do
    begin
      Append;
      FieldByName('Item').AsString:='AG-'+Format('%0.5d', [I]);
      FieldByName('UnitPrice').AsFloat:=Random(20000)/100;
      FieldByName('Quantity').AsInteger:=Random(500);
      FieldByName('Category').AsString:=Categories[Random(3)+1];
    end;
  end;

   ClientDataSet1.AddIndex('CategoryIx', 'Category', []);
end;

initialization
   RegisterClass(TUniGridsRowGroupingSummaryGrandTotal);

end.
