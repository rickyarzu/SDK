//Pie Chart (Default Color) = Charts
unit ChartsPieChartDefaultColor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, unimChart, uniPanel, uniGUIBaseClasses,
  uniGUImJSForm, uniButton, unimButton;

type
  TUniChartsPieChartDefaultColor = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimChart1: TUnimChart;
    UnimPieSeries1: TUnimPieSeries;
    UnimButton1: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    SerriesArray: array[0..5] of string;
    procedure ApplySeries;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}




procedure TUniChartsPieChartDefaultColor.ApplySeries;
var
  I:Integer;
begin
  UnimPieSeries1.Clear;
  SerriesArray[0] := 'Wheat';
  SerriesArray[1] := 'Corn';
  SerriesArray[2] := 'Potato';
  SerriesArray[3] := 'Tomato';
  SerriesArray[4] := 'Beet';
  SerriesArray[5] := 'Nuts';

  for I := 0 to 5 do
  begin
  UnimPieSeries1.Add(IntToStr(Random(20)+5), SerriesArray[I]);
  end;
end;

procedure TUniChartsPieChartDefaultColor.UniFrameCreate(Sender: TObject);
begin
  ApplySeries;
end;

procedure TUniChartsPieChartDefaultColor.UnimButton1Click(Sender: TObject);
begin
  ApplySeries;
end;

initialization
  RegisterClass(TUniChartsPieChartDefaultColor);

end.
