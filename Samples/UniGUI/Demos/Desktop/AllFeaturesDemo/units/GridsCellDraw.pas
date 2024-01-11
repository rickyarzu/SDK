// Cell Draw = Grids
unit GridsCellDraw;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator,
  uniDBGrid, uniBasicGrid, uniStringGrid, uniLabel, uniGUIBaseClasses, uniPanel, ServerModule,
  DB, DBClient, MainModule;

type
  TUniGridsCellDraw = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniStringGrid1: TUniStringGrid;
    UniDBGrid1: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Col1: TStringField;
    ClientDataSet1UnitPrice: TFloatField;
    ClientDataSet1Quantity: TIntegerField;
    DataSource1: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure UniStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniGridsCellDraw.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  if ACol=0 then
  begin
    Attribs.Color:=$E0E0C0;
    Attribs.Font.Style:=[fsBold];
  end;

  if Column.FieldName='UnitPrice' then
  begin
    if Column.Field.AsFloat>100 then
    begin
      Attribs.Font.Color:=clMaroon;
      Attribs.Font.Style:=[fsBold, fsItalic];
    end;
  end
  else if Column.FieldName='Quantity' then
  begin
    if Column.Field.AsInteger<200 then
    begin
      Attribs.Font.Color:=clRed;
      Attribs.Font.Style:=[fsBold];
      Attribs.Color:=clLtGray;
    end;
  end;
end;

procedure TUniGridsCellDraw.UniFrameCreate(Sender: TObject);
var
  I, J : Integer;
begin

  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Item.cds');
  for I := 0 to UniStringGrid1.ColCount - 1 do
    for J := 0 to UniStringGrid1.RowCount - 1 do
      UniStringGrid1.Cells[I, J]:=IntToStr(Random(3000));

  for I := 1 to 10 do
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

procedure TUniGridsCellDraw.UniStringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; var Value: string; Attribs: TUniCellAttribs);
var
  S : string;
  Val : Integer;
begin
  S:=TUniStringGrid(Sender).Cells[ACol, ARow];
  Val:=StrToIntDef(S, -1);
  case val of
    0..1000 :
      Attribs.Font.Color:=clNavy;

    1001..2000 :
      begin
        Attribs.Font.Color:=clRed;
        Attribs.Font.Style:=[fsBold];
      end;

    2001..3000 :
      begin
        Attribs.Font.Color:=clBlue;
        Attribs.Font.Style:=[fsBold, fsItalic];
        Attribs.Color:=clLtGray;
      end;
  end;
end;

initialization
  RegisterClass(TUniGridsCellDraw);

end.
