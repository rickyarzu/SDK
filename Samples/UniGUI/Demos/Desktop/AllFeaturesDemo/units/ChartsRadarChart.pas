// Radar Chart = Charts
unit ChartsRadarChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, uniPanel, uniGUIBaseClasses, uniButton;

type
  TUniChartsRadarChart = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniChart1: TUniChart;
    Series1: TUniRadarSeries;
    Series2: TUniRadarSeries;
    Series3: TUniRadarSeries;
    UniButton1: TUniButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    procedure ApplyChanges;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniChartsRadarChart.ApplyChanges;
var
  I : Integer;
  Val : Double;
  Head : string;
begin
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  for I := 0 to 11 do
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


procedure TUniChartsRadarChart.UniButton1Click(Sender: TObject);
begin
  ApplyChanges;
end;

procedure TUniChartsRadarChart.UniFrameCreate(Sender: TObject);
begin
  ApplyChanges;
end;

initialization
  RegisterClass(TUniChartsRadarChart);

end.
