//Pie3D Chart = Charts
unit ChartsPie3DChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, unimChart, uniPanel, uniGUIBaseClasses,
  uniGUImJSForm, uniButton, unimButton;

type
  TUniChartsPie3DChart = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimChart1: TUnimChart;
    UnimPie3DSeries1: TUnimPie3DSeries;
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




procedure TUniChartsPie3DChart.ApplySeries;
var
  I:Integer;
begin
  UnimPie3DSeries1.Clear;
  SerriesArray[0] := 'AndroidOS';
  SerriesArray[1] := 'IOS';
  SerriesArray[2] := 'BlackberryOS';
  SerriesArray[3] := 'SymbianOS';
  SerriesArray[4] := 'OtherOS';
  for I := 0 to 4 do
  begin
    UnimPie3DSeries1.Add(IntToStr(Random(100)+20), SerriesArray[I]);
  end;
end;

procedure TUniChartsPie3DChart.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsPie3DChart.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsPie3DChart);
end.
