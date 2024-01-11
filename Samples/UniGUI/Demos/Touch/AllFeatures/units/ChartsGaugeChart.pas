//Gauge Chart = Charts
unit ChartsGaugeChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, unimChart, uniGUImJSForm,
  uniGUIBaseClasses, uniPanel, uniButton, unimButton;

type
  TUniChartsGaugeChart = class(TUniFrame)
    UnimChart1: TUnimChart;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimGaugeSeries1: TUnimGaugeSeries;
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



procedure TUniChartsGaugeChart.ApplySeries;
begin
  UnimGaugeSeries1.Clear;
  UnimGaugeSeries1.Add(IntToStr(Random(100)), 'Value');
end;

procedure TUniChartsGaugeChart.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsGaugeChart.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsGaugeChart);
end.
