// Summary = Grids
unit GridsSummary;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator, uniBasicGrid, uniDBGrid, 
  uniGUIBaseClasses, uniPanel, MainModule, ServerModule, DB,
  DBClient;

type
  TUniGridsSummary = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    DataSource1: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Col1: TStringField;
    ClientDataSet1UnitPrice: TFloatField;
    ClientDataSet1Quantity: TIntegerField;
    ClientDataSet1Category: TStringField;
    procedure UniDBGrid1ColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure UniDBGrid1ColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
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



procedure TUniGridsSummary.ClientDataSet1NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('unitprice').AsFloat:=5.0;
end;

procedure TUniGridsSummary.UniDBGrid1ColumnSummary(Column: TUniDBGridColumn;
  GroupFieldValue: Variant);
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0;
    Column.AuxValue:=Column.AuxValue + Column.Field.AsInteger;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0.0;
    Column.AuxValue:=Column.AuxValue + (Column.Field.AsFloat * ClientDataSet1.FieldByName('quantity').AsInteger);
  end;
end;

procedure TUniGridsSummary.UniDBGrid1ColumnSummaryResult(Column: TUniDBGridColumn;
  GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
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

procedure TUniGridsSummary.UniFrameCreate(Sender: TObject);
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
    end;
  end;
end;


 initialization
  RegisterClass(TUniGridsSummary);
end.
