//Line Chart = Charts
unit ChartsLineChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, uniGUImJSForm, uniGUIBaseClasses,
  uniPanel, unimChart, uniButton, unimButton;

type
  TUniChartsLineChart = class(TUniFrame)
    UnimChart1: TUnimChart;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimLineSeries1: TunimLineSeries;
    UnimLineSeries2: TUnimLineSeries;
    UnimButton1: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    procedure ApplySeries;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}




procedure TUniChartsLineChart.ApplySeries;
var
  I: Integer;
begin
  UnimLineSeries1.Clear;
  UnimLineSeries2.Clear;
  for I := 0 to 4 do
  begin
    UnimLineSeries1.Add(IntToStr(Random(10)+5), IntToStr(2000+I));
    UnimLineSeries2.Add(IntToStr(Random(10)+5), IntToStr(2000+I));
  end;
end;

procedure TUniChartsLineChart.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsLineChart.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsLineChart);
end.
