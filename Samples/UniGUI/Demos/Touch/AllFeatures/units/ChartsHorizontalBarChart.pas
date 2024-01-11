//Horizontal Bar Chart = Charts
unit ChartsHorizontalBarChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, unimChart, uniPanel, uniGUIBaseClasses,
  uniGUImJSForm, uniButton, unimButton;

type
  TUniChartsHorizontalBarChart = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimChart1: TUnimChart;
    UnimHorizBarSeries1: TUnimHorizBarSeries;
    UnimHorizBarSeries2: TUnimHorizBarSeries;
    UnimButton1: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    SerriesArray: array[0..4] of string;
    procedure ApplySeries;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniChartsHorizontalBarChart.ApplySeries;
var
  I: Integer;
begin
  UnimHorizBarSeries1.Clear;
  UnimHorizBarSeries2.Clear;
  SerriesArray[0] := 'Pine';
  SerriesArray[1] := 'Oak';
  SerriesArray[2] := 'Chestnut';
  SerriesArray[3] := 'Olive';
  SerriesArray[4] := 'Lime';
  for I := 0 to 4 do
  begin
    UnimHorizBarSeries1.Add(IntToStr(Random(50)+50), SerriesArray[I]);
    UnimHorizBarSeries2.Add(IntToStr(Random(50)+50), SerriesArray[I]);
  end;
end;

procedure TUniChartsHorizontalBarChart.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsHorizontalBarChart.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsHorizontalBarChart);
end.
