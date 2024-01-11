// Area Chart Form = Layout Demos
unit chartarea;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniChart, uniPanel, uniGUIBaseClasses, uniButton,
  uniBasicGrid, uniStringGrid;

type
  TUniChartArea = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniChart1: TUniChart;
    Series1: TUniAreaSeries;
    Series2: TUniAreaSeries;
    Series3: TUniAreaSeries;
    UniButton1: TUniButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    procedure ApplyChanges;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniChartArea.ApplyChanges;
var
  I,J, AreaOrder : Integer;
  Val : Double;
  Head : string;
begin
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  for I := 0 to 2 do
  begin
    AreaOrder := I;
    for J := 0 to 11 do
    begin
      Val:=StrToFloatDef(IntToStr(Random(100)+50), 0.0);
      Head:=IntToStr(2000+J);
      if AreaOrder = 0 then
        Series1.Add(Val, Head)
      else if AreaOrder = 1 then
        Series2.Add(Val, Head)
      else if AreaOrder = 2 then
        Series3.Add(Val, Head);
    end;
  end;
end;

procedure TUniChartArea.UniButton1Click(Sender: TObject);
begin
  ApplyChanges;
end;

procedure TUniChartArea.UniFrameCreate(Sender: TObject);
begin
  ApplyChanges;
end;

initialization
  RegisterClass(TUniChartArea);
end.
