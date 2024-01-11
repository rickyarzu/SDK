// Bar3D Chart = Charts
unit ChartsBar3DChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, uniPanel, uniGUIBaseClasses, uniButton;

type
  TUniChartsBar3DChart = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniChart1: TUniChart;
    Series1: TUniBar3DSeries;
    Series2: TUniBar3DSeries;
    Series3: TUniBar3DSeries;
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

procedure TUniChartsBar3DChart.ApplyChanges;
var
  I :  Integer;
  Val : Double;
  Head : string;
begin
  Randomize;
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  for I := 0 to 9 do
  begin
    Head := IntToStr(2000 + I);

    Val := Random(100) + 50;
    Series1.Add(Val, Head);

    Val := Random(100) + 50;
    Series2.Add(Val, Head);

    Val := Random(100) + 50;
    Series3.Add(Val, Head);
  end;
end;


procedure TUniChartsBar3DChart.UniButton1Click(Sender: TObject);
begin
  ApplyChanges;
end;

procedure TUniChartsBar3DChart.UniButton2Click(Sender: TObject);
begin
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
end;

procedure TUniChartsBar3DChart.UniFrameCreate(Sender: TObject);
begin
  ApplyChanges;
end;

initialization
  RegisterClass(TUniChartsBar3DChart);
end.
