// Accordion Charts = Layout Demos
unit chartdemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, uniButton, uniBasicGrid, uniStringGrid,
  uniPanel, uniGUIBaseClasses, uniLabel;

type
  TUniChartDemo = class(TUniFrame)
    UniLabel1: TUniLabel;
    UniChart1: TUniChart;
    Series1: TUniLineSeries;
    Series4: TUniLineSeries;
    Series5: TUniLineSeries;
    UniChart2: TUniChart;
    Series2: TUniPieSeries;
    UniStringGrid1: TUniStringGrid;
    UniButton1: TUniButton;
    UniChart3: TUniChart;
    Series3: TUniBarSeries;
    Series6: TUniBarSeries;
    UniSimplePanel1: TUniSimplePanel;
    UniSimplePanel2: TUniSimplePanel;
    UniSimplePanel3: TUniSimplePanel;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ApplyChanges;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniChartDemo.UniButton1Click(Sender: TObject);
begin
  ApplyChanges;
end;

procedure TUniChartDemo.UniFrameCreate(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to 11 do
  begin
    UniStringGrid1.Cells[0,I]:=IntToStr(2000+I);
    UniStringGrid1.Cells[1,I]:=IntToStr(Random(100)+50);
  end;
  ApplyChanges;
end;

procedure TUniChartDemo.ApplyChanges;
var
  I : Integer;
  Val : Double;
  Head : string;
begin
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;
  Series5.Clear;
  Series6.Clear;
  for I := 0 to UniStringGrid1.RowCount-1 do
  begin
    if UniStringGrid1.Cells[0,I]='' then Break;

    Val:=StrToFloatDef(UniStringGrid1.Cells[1,I], 0.0);
    Head:=UniStringGrid1.Cells[0,I];
    Series1.Add(Val, Head);
    Series2.Add(Val, Head);
    Series3.Add(Val, Head);
    Series4.Add(Val+Random(200), Head);
    Series5.Add(Val+Random(200), Head);
    Series6.Add(Val+Random(200), Head);
  end;
end;

initialization
  RegisterClass(TUniChartDemo);

end.
