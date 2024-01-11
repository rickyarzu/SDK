//AllFeatures: Chart,Chart - Tick Steps,icon-financial-candlestick
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
    UniBarSeries1: TUniBarSeries;
    UniLineSeries1: TUniLineSeries;
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
var
  I: Integer;
begin
  for I := 1 to 50 do
  begin
    UniLineSeries1.AddValue(20 + Random(80), I);
    UniBarSeries1.AddValue(30 + Random(70), I);
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
