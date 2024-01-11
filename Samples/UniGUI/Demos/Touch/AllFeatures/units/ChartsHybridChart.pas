//Hybrid Chart = Charts
unit ChartsHybridChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, unimChart, uniPanel, uniGUIBaseClasses,
  uniGUImJSForm, uniButton, unimButton;

type
  TUniChartsHybridChart = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimChart1: TUnimChart;
    UnimBarSeries1: TUnimBarSeries;
    UnimLineSeries1: TUnimLineSeries;
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



procedure TUniChartsHybridChart.ApplySeries;
var
  I: Integer;
begin
  UnimLineSeries1.Clear;
  UnimBarSeries1.Clear;
  for I := 0 to 4 do
  begin
    UnimLineSeries1.Add(IntToStr(Random(10)+5), IntToStr(2009+I));
    UnimBarSeries1.Add(IntToStr(Random(10)+5), IntToStr(2009+I));
  end;
end;

procedure TUniChartsHybridChart.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsHybridChart.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;


initialization
  RegisterClass(TUniChartsHybridChart);
end.
