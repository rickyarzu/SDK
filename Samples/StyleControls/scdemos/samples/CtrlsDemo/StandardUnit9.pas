unit StandardUnit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainUnit, scControls,
  scGrids, Vcl.StdCtrls;

type
  TStandardFrame9 = class(TFrame)
    scStringGrid1: TscStringGrid;
    scCheckBox2: TscCheckBox;
    scLabel1: TscLabel;
    scComboBox1: TscComboBox;
    scDrawGrid1: TscDrawGrid;
    scLabel3: TscLabel;
    scComboBox2: TscComboBox;
    scCheckBox1: TscCheckBox;
    procedure scCheckBox2Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scDrawGrid1DrawCell(Sender: TObject; ACanvas: TCanvas; ACol,
      ARow: Integer; Rect: TRect; State: TscGridDrawState);
    procedure scComboBox2Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitGrid;
  end;

implementation

{$R *.dfm}

procedure TStandardFrame9.InitGrid;
var
  i, j: Integer;
begin
  for i := 1 to scStringGrid1.RowCount - 1 do
    scStringGrid1.Cells[0, i] := InttoStr(i);
  for i := 1 to scStringGrid1.ColCount - 1 do
    scStringGrid1.Cells[i, 0] := 'fixed' + InttoStr(i);
  scStringGrid1.ColWidths[0] := 30;
  scStringGrid1.ColWidths[1] := 150;
  scStringGrid1.ColWidths[2] := 100;
  for i := 1 to scStringGrid1.ColCount - 1 do
   for j := 1 to scStringGrid1.RowCount - 1 do
     scStringGrid1.Cells[i, j] := 'Cells[' + IntToStr(i) + ',' +
       IntToStr(j) + ']';
end;

procedure TStandardFrame9.scCheckBox1Click(Sender: TObject);
begin
  scStringGrid1.ShowFocusRect := scCheckBox1.Checked;
  scDrawGrid1.ShowFocusRect := scCheckBox1.Checked;
end;

procedure TStandardFrame9.scCheckBox2Click(Sender: TObject);
begin
  scStringGrid1.TransparentEditor := scCheckBox2.Checked;
end;

procedure TStandardFrame9.scComboBox1Click(Sender: TObject);
begin
  scStringGrid1.BackgroundStyle := TscGridBackgroundStyle(scComboBox1.ItemIndex);
  scDrawGrid1.BackgroundStyle := TscGridBackgroundStyle(scComboBox1.ItemIndex);
end;

procedure TStandardFrame9.scComboBox2Click(Sender: TObject);
begin
  scStringGrid1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scDrawGrid1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
end;

procedure TStandardFrame9.scDrawGrid1DrawCell(Sender: TObject; ACanvas: TCanvas;
  ACol, ARow: Integer; Rect: TRect; State: TscGridDrawState);
var
  R: TRect;
begin
  R := Rect;
  InflateRect(R, -5, -5);
  ACanvas.Pen.Color := ACanvas.Font.Color;
  ACanvas.Brush.Style := bsClear;
  if (ARow <> 0) and (ACol <> 0)
  then
    ACanvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom)
  else
    ACanvas.Ellipse(R.Left, R.Top, R.Right, R.Bottom);
end;

end.
