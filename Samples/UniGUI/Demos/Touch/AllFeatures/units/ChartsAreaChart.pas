//Area Chart = Charts
unit ChartsAreaChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, unimChart, uniPanel, uniGUIBaseClasses,
  uniGUImJSForm, uniButton, unimButton;

type
  TUniChartsAreaChart = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimChart1: TUnimChart;
    UnimAreaSeries1: TUnimAreaSeries;
    UnimAreaSeries2: TUnimAreaSeries;
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



procedure TUniChartsAreaChart.ApplySeries;
var
  I: Integer;
begin
  UnimAreaSeries1.Clear;
  UnimAreaSeries2.Clear;
  for I := 0 to 5 do
  begin
    UnimAreaSeries1.Add(IntToStr(Random(100)+70), IntToStr(I+2009));
    UnimAreaSeries2.Add(IntToStr(Random(100)+70), IntToStr(I+2009));
  end;
end;

procedure TUniChartsAreaChart.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsAreaChart.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsAreaChart);
end.
