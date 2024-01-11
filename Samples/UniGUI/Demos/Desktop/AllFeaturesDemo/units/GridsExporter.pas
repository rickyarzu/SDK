// Exporter = Grids
unit GridsExporter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGridExporters, uniBasicGrid, DB,
  DBClient, uniCheckBox, uniRadioGroup, uniButton, uniDBGrid,
  uniGUIBaseClasses, uniPanel;

type
  TUniGridsExporter = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniButton1: TUniButton;
    UniRadioGroup1: TUniRadioGroup;
    UniCheckBox1: TUniCheckBox;
    UniCheckBox2: TUniCheckBox;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Col1: TStringField;
    ClientDataSet1UnitPrice: TFloatField;
    ClientDataSet1Quantity: TIntegerField;
    ClientDataSet1Category: TStringField;
    DataSource1: TDataSource;
    UniGridExcelExporter1: TUniGridExcelExporter;
    UniGridCSVExporter1: TUniGridCSVExporter;
    UniGridXMLExporter1: TUniGridXMLExporter;
    UniGridHTMLExporter1: TUniGridHTMLExporter;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
      Direction: Boolean);
    procedure UniDBGrid1ColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure UniDBGrid1ColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure UniDBGrid1ColumnSummaryTotal(Column: TUniDBGridColumn;
      Attribs: TUniCellAttribs; var Result: string);
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


uses
  uniGUIVars, MainModule, uniGUIApplication;

const
  Categories : array [1..3] of string = ('Raw Material', 'Product', 'Other');


procedure TUniGridsExporter.ClientDataSet1NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('unitprice').AsFloat:=5.0;
end;

procedure TUniGridsExporter.UniButton1Click(Sender: TObject);
begin
  case UniRadioGroup1.ItemIndex of
    0 :
      begin
        UniDBGrid1.Exporter.Exporter := UniGridExcelExporter1;
      end;
    1 :
      begin
        UniDBGrid1.Exporter.Exporter := UniGridCSVExporter1;
      end;
    2 :
      begin
        UniDBGrid1.Exporter.Exporter := UniGridHTMLExporter1;
      end;
    3 :
      begin
        UniDBGrid1.Exporter.Exporter := UniGridXMLExporter1;
      end;
  end;
  UniDBGrid1.Exporter.IncludeGroups := UniCheckBox1.Checked;
  UniDBGrid1.Exporter.IncludeSummary := UniCheckBox2.Checked;
  UniDBGrid1.Exporter.ExportGrid;
end;

procedure TUniGridsExporter.UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  if SameText(Column.FieldName, 'category') then
  begin
    ClientDataSet1.IndexName:='CategoryIx';
  end;
end;

procedure TUniGridsExporter.UniDBGrid1ColumnSummary(Column: TUniDBGridColumn;
  GroupFieldValue: Variant);
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

    F:=Column.Field.AsFloat * ClientDataSet1Quantity.AsInteger;

    Column.AuxValue:=Column.AuxValue + F;
    Column.AuxValues[1]:=Column.AuxValues[1] + F;
  end;
end;

procedure TUniGridsExporter.UniDBGrid1ColumnSummaryResult(
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
    Attribs.Color := $E0FFE0;
  end
  else if SameText(Column.FieldName, 'unitprice') then
  begin
    F:=Column.AuxValue;
    Result:='Total Cost: ' + FormatCurr('0,0.00 ', F) + FmtSettings.CurrencyString;
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end;
  Column.AuxValue:=NULL;
end;

procedure TUniGridsExporter.UniDBGrid1ColumnSummaryTotal(
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

procedure TUniGridsExporter.UniFrameCreate(Sender: TObject);
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
      FieldByName('Category').AsString:=Categories[Random(3)+1];
    end;
  end;

  ClientDataSet1.AddIndex('CategoryIx', 'Category', []);
end;

initialization
  RegisterClass(TUniGridsExporter);


end.
