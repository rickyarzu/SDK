//Radar Chart = Charts
unit ChartsRadarChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniGUImJSForm, UniChart,
  unimChart, uniPanel, uniButton, unimButton;

type
  TUniChartsRadarChart = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimChart1: TUnimChart;
    UnimRadarSeries1: TUnimRadarSeries;
    UnimRadarSeries2: TUnimRadarSeries;
    UnimButton1: TUnimButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
  private
    procedure ApplySeries;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}




procedure TUniChartsRadarChart.ApplySeries;
var
  I: Integer;
begin
  UnimRadarSeries1.Clear;
  UnimRadarSeries2.Clear;
  for I := 0 to 6 do
  begin
    UnimRadarSeries1.Add(IntToStr(Random(10)+5), IntToStr(2009+I));
    UnimRadarSeries2.Add(IntToStr(Random(10)+5), IntToStr(2009+I));
  end;
end;

procedure TUniChartsRadarChart.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsRadarChart.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsRadarChart);
end.
