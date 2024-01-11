// StringGrid Fixed Col & Header = Grids
unit GridsStringGridFixedColAndHeader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, uniButton, uniBasicGrid, uniStringGrid,
  uniGUIBaseClasses, uniPanel, uniSplitter;

type
  TUniGridsStringGridFixedColAndHeader = class(TUniFrame)
    UniStringGrid1: TUniStringGrid;
    UniSplitter1: TUniSplitter;
    UniMemo1: TUniMemo;
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
  private
   procedure valuechange(Ix,Jx:Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


{ TUniStringgridColumnTitleAndfix }

procedure TUniGridsStringGridFixedColAndHeader.UniButton1Click(Sender: TObject);
var
  I,J : Integer;
  val : array[0..20] of string;
  year : array[0..20] of string;
begin
  UniMemo1.Clear;

  for I := 0 to 20 do
  begin
    val[I] := '';
    year[I] := UniStringGrid1.Cells[0, I];
    for J := 1 to 12 do
      val[I] := val[I]+', '+ UniStringGrid1.Cells[J, I];
  end;

  for I := 0 to 20 do
  begin
    UniMemo1.Lines.Add('------');
    UniMemo1.Lines.Add(year[I]);
    UniMemo1.Lines.Add(val[I]);
  end;
end;

procedure TUniGridsStringGridFixedColAndHeader.UniButton2Click(Sender: TObject);
begin
  UniStringGrid1.BeginUpdate;
  try
    valuechange(12, 21);
  finally
    UniStringGrid1.EndUpdate;
  end;
end;

procedure TUniGridsStringGridFixedColAndHeader.UniFrameCreate(Sender: TObject);
var
  I: Integer;
begin
  valuechange(12,20);

  for I := 0 to 20 do
    UniStringGrid1.Cells[0,I] := IntToStr(1995+I);
end;

procedure TUniGridsStringGridFixedColAndHeader.UniStringGrid1DrawCell(
  Sender: TObject; ACol, ARow: Integer; var Value: string;
  Attribs: TUniCellAttribs);
begin
  if (ACol>5) and (ARow>4) then
    Attribs.Font.Color := Random($FFFFFF);
end;

procedure TUniGridsStringGridFixedColAndHeader.valuechange(Ix, Jx: Integer);
var
  I, J: Integer;
begin
    for I := 1  to Ix do
    for J := 0 to Jx do
      UniStringGrid1.Cells[I,J] := IntToStr(Random(10000)+1000);
end;

initialization
  RegisterClass(TUniGridsStringGridFixedColAndHeader);
end.
