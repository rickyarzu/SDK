//AllFeatures: Chart,Chart - Series Events,icon-combination-charts
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniChart, uniGUIBaseClasses,
  uniPanel;

type
  TMainForm = class(TUniForm)
    UniChart1: TUniChart;
    UniLineSeries1: TUniLineSeries;
    procedure UniFormCreate(Sender: TObject);
    procedure UniChart1SeriesClick(Sender: TUniCustomChart;
      Series: TUniChartSeries; Index: Integer; Value: Variant; X, Y, PageX,
      PageY: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniChart1SeriesClick(Sender: TUniCustomChart;
  Series: TUniChartSeries; Index: Integer; Value: Variant; X, Y, PageX,
  PageY: Integer);
begin
  UniForm1.Left := PageX;
  UniForm1.Top := PageY;
  UniForm1.ShowChart(Value);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 25 do
    UniLineSeries1.Add(Random(1000), IntToStr(I));
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
