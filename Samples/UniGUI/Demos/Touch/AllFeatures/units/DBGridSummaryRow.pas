//Summary Row = DBGrid
unit DBGridSummaryRow;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  unimDBListGrid, unimDBGrid, DB, DBClient;

type
  TUniDBGridSummaryRow = class(TUniFrame)
    UnimDBGrid1: TUnimDBGrid;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Col1: TStringField;
    ClientDataSet1UnitPrice: TFloatField;
    ClientDataSet1Quantity: TIntegerField;
    DataSource1: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure UnimDBGrid1ColumnSummary(Column: TunimDBGridColumn);
    procedure UnimDBGrid1ColumnSummaryResult(Column: TunimDBGridColumn;
      var Result: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniDBGridSummaryRow.UniFrameCreate(Sender: TObject);
var
  I : Integer;
begin
  for I := 1 to 15 do
  begin
    with ClientDataSet1 do
    begin
      Append;
      FieldByName('Item').AsString:='AG-'+Format('%0.5d', [I]);
      FieldByName('UnitPrice').AsFloat:=Random(20000)/100;
      FieldByName('Quantity').AsInteger:=Random(500);
    end;
  end;
end;

procedure TUniDBGridSummaryRow.UnimDBGrid1ColumnSummary(Column: TunimDBGridColumn);
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0;
    Column.AuxValue:=Column.AuxValue + Column.Field.AsInteger;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0.0;
    Column.AuxValue:=Column.AuxValue + (Column.Field.AsFloat * ClientDataSet1Quantity.AsInteger);
  end;
end;

procedure TUniDBGridSummaryRow.UnimDBGrid1ColumnSummaryResult(
  Column: TunimDBGridColumn; var Result: string);
var
  I : Integer;
  F : Real;
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    I:=Column.AuxValue;
    Result:=Format('Total Units: %d', [I]);
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    F:=Column.AuxValue;
    Result:='Total Cost: '+FormatCurr('0,0.00 ', F) + {$ifdef COMPILER_15_UP}FormatSettings.{$endif}CurrencyString;
  end;
  Column.AuxValue:=NULL;
end;

initialization
  RegisterClass(TUniDBGridSummaryRow);

end.
