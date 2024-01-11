//Line Fill Chart = Charts
unit ChartsLineFillChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, unimChart, uniPanel, uniGUIBaseClasses,
  uniGUImJSForm, uniButton, unimButton;

type
  TUniChartsLineFillChart = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimChart1: TUnimChart;
    UnimLineSeries1: TUnimLineSeries;
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





procedure TUniChartsLineFillChart.ApplySeries;
var
  I: Integer;
begin
  UnimLineSeries1.Clear;
  UnimLineSeries2.Clear;
  for I := 0 to 6 do
  begin
    UnimLineSeries1.Add(IntToStr(Random(10)+5), IntToStr(2009+I));
    UnimLineSeries2.Add(IntToStr(Random(10)+5), IntToStr(2009+I));
  end;
end;

procedure TUniChartsLineFillChart.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsLineFillChart.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsLineFillChart);
end.
