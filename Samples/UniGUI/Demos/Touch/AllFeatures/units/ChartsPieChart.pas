//Pie Chart = Charts
unit ChartsPieChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, unimChart, uniPanel, uniGUIBaseClasses,
  uniGUImJSForm, uniButton, unimButton;

type
  TUniChartsPieChart = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimChart1: TUnimChart;
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


procedure TUniChartsPieChart.ApplySeries;
var
  I: Integer;
begin
  UnimPieSeries1.Clear;
  for I := 0 to 5 do
  begin
    UnimPieSeries1.Add(IntToStr(Random(10)+5),  'Company-'+Char(65+I));
  end;
end;

procedure TUniChartsPieChart.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsPieChart.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsPieChart);
end.
