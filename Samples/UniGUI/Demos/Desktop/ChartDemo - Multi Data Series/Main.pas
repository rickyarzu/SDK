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
    UniChart2: TUniChart;
    UniCandleStickSeries1: TUniCandleStickSeries;
    UniBoxPlotSeries1: TUniBoxPlotSeries;
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  with UniBoxPlotSeries1 do
  begin
            // low, q1, median, q3, high
    AddValues([25, 45, 54, 64, 88], 'physics');
    AddValues([32, 49, 56, 64, 85], 'medicine');
    AddValues([35, 49.25, 57, 64.75, 85], 'chemistry');
    AddValues([32, 54, 62, 71, 87], 'peace');
    AddValues([42, 56, 64, 73, 88], 'literature');
    AddValues([51, 61, 67, 73, 90], 'economics');
  end;

  with UniCandleStickSeries1 do
  begin
            // open, high, low, close
    AddValues([52.40, 52.74, 52.18, 52.29], 'Nov 17 2016');
    AddValues([51.87, 52.22, 51.51, 52.04], 'Nov 18 2016');
    AddValues([53.02, 53.40, 53.02, 53.33], 'Nov 21 2016');
    AddValues([53.48, 53.80, 53.13, 53.70], 'Nov 22 2016');
    AddValues([52.85, 53.39, 52.76, 53.28], 'Nov 23 2016');
    AddValues([53.28, 53.45, 53.20, 53.40], 'Nov 25 2016');
    AddValues([52.51, 52.58, 51.96, 52.00], 'Nov 28 2016');
    AddValues([51.25, 51.98, 51.10, 51.79], 'Nov 29 2016');
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
