// Pie Chart = Charts
unit ChartsPieChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, uniPanel, uniGUIBaseClasses, uniButton;

type
  TUniChartsPieChart = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniChart1: TUniChart;
    Series1: TUniPieSeries;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    procedure ApplyChanges;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniChartsPieChart.ApplyChanges;
var
  I : Integer;
  Val : Double;
  Head : string;
begin
  Series1.Clear;
  for I := 0 to 11 do
  begin
    Val := Random(100) + 50;
    Head := IntToStr(2000 + I);
    Series1.Add(Val, Head)
  end;
end;


procedure TUniChartsPieChart.UniButton1Click(Sender: TObject);
begin
  ApplyChanges;
end;

procedure TUniChartsPieChart.UniButton2Click(Sender: TObject);
begin
  Series1.Clear;
end;

procedure TUniChartsPieChart.UniFrameCreate(Sender: TObject);
begin
  ApplyChanges;
end;

initialization
  RegisterClass(TUniChartsPieChart);

end.
