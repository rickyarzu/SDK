// StringGrid = Grids
unit GridsStringGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBasicGrid, uniStringGrid, uniGUIBaseClasses,
  uniPanel, uniButton, uniMemo;

type
  TUniGridsStringGrid = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniStringGrid1: TUniStringGrid;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    procedure UniStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniGridsStringGrid.UniButton1Click(Sender: TObject);
var
  I,J: Integer;
  Col,Row,Value: string;
begin
  Col := '';
  Row := '';
  Value := '';
  UniMemo1.Lines.Clear;
  UniMemo1.Lines.Add('Columns:');
  for I := 1 to UniStringGrid1.ColCount-1 do
    Col := Col+ UniStringGrid1.Cells[I, 0] + ', ';
  UniMemo1.Lines.Add(Col);
  UniMemo1.Lines.Add('Rows:');
  for I := 1 to UniStringGrid1.RowCount-1 do
     Row := Row+ UniStringGrid1.Cells[0, I] + ', ';
  UniMemo1.Lines.Add(Row);
  UniMemo1.Lines.Add('Values:');
  for I := 1 to UniStringGrid1.ColCount - 1 do
    for J := 1 to UniStringGrid1.RowCount - 1 do
      Value := Value+ UniStringGrid1.Cells[I, J] + ', ';
  UniMemo1.Lines.Add(Value);
end;

procedure TUniGridsStringGrid.UniFrameCreate(Sender: TObject);
var
  I,J: Integer;
begin
  UniStringGrid1.Cells[0, 0] := 'Row \ Col';
  for I := 1 to UniStringGrid1.ColCount - 1 do
    UniStringGrid1.Cells[I, 0] := 'Col'+IntToStr(I);
  for I := 1 to UniStringGrid1.RowCount - 1 do
    UniStringGrid1.Cells[0, I] := 'Row'+IntToStr(I);
  for I := 1 to UniStringGrid1.ColCount - 1 do
    for J := 1 to UniStringGrid1.RowCount - 1 do
      UniStringGrid1.Cells[I, J]:=IntToStr(Random(3000));
end;

procedure TUniGridsStringGrid.UniStringGrid1DrawCell(Sender: TObject; ACol,
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
  RegisterClass(TUniGridsStringGrid);
end.
