//Bar Chart = Charts
unit ChartsBarChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, unimChart, uniPanel, uniGUIBaseClasses,
  uniGUImJSForm, uniButton, unimButton;

type
  TUniChartsBarChart = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimChart1: TUnimChart;
    UnimBarSeries1: TUnimBarSeries;
    UnimBarSeries2: TUnimBarSeries;
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



procedure TUniChartsBarChart.ApplySeries;
var
  I: Integer;
begin
  UnimBarSeries1.Clear;
  UnimBarSeries2.Clear;
  for I := 0 to 5 do
  begin
    UnimBarSeries1.Add(IntToStr(Random(10000)+7000), IntToStr(I+1));
    UnimBarSeries2.Add(IntToStr(Random(10000)+7000), IntToStr(I+1));
  end;
end;

procedure TUniChartsBarChart.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsBarChart.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsBarChart);
end.
