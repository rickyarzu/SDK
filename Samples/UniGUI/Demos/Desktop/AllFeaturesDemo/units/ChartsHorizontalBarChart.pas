// Horizontal Bar Chart = Charts
unit ChartsHorizontalBarChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, uniPanel, uniGUIBaseClasses, uniButton;

type
  TUniChartsHorizontalBarChart = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniChart1: TUniChart;
    Series1: TUniHorizBarSeries;
    Series2: TUniHorizBarSeries;
    Series3: TUniHorizBarSeries;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    procedure ApplyChanges;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniChartsHorizontalBarChart.ApplyChanges;
var
  I : Integer;
  Val : Double;
  Head : string;
begin
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  for I := 0 to 9 do
  begin
    Head := IntToStr(2000 + I);

    Val := Random(100) + 50;
    Series1.Add(Val, Head);

    Val := Random(100) + 50;
    Series2.Add(Val, Head);

    Val := Random(100) + 50;
    Series3.Add(Val, Head);
  end;
end;


procedure TUniChartsHorizontalBarChart.UniButton1Click(Sender: TObject);
begin
  ApplyChanges;
end;

procedure TUniChartsHorizontalBarChart.UniButton2Click(Sender: TObject);
begin
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
end;

procedure TUniChartsHorizontalBarChart.UniFrameCreate(Sender: TObject);
begin
  ApplyChanges;
end;

initialization
  RegisterClass(TUniChartsHorizontalBarChart);
end.
