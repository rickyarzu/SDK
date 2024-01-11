//Two Charts = Charts
unit ChartsTwoCharts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMultiItem, unimSelect, uniGUIBaseClasses,
  uniGUImJSForm, UniChart, unimChart, uniPanel, uniButton, unimButton;

type
  TUniChartsTwoCharts = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimChart1: TUnimChart;
    UnimLineSeries1: TUnimLineSeries;
    UnimLineSeries2: TUnimLineSeries;
    UnimChart2: TUnimChart;
    UnimPieSeries1: TUnimPieSeries;
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

procedure TUniChartsTwoCharts.ApplySeries;
var
  I:Integer;
begin
  UnimLineSeries1.Clear;
  UnimLineSeries2.Clear;
  UnimPieSeries1.Clear;

  for I := 0 to 6 do
  begin
    UnimLineSeries1.Add(Random(10)+5, IntToStr(2009+I));
    UnimLineSeries2.Add(Random(10)+5, IntToStr(2009+I));
  end;

  for I := 0 to 5 do
    UnimPieSeries1.Add(Random(10)+5, 'Company-'+Char(65+I));
end;

procedure TUniChartsTwoCharts.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsTwoCharts.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsTwoCharts);
end.
