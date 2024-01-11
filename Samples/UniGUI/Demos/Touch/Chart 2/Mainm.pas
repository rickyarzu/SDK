unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  UniChart, unimChart, uniGUIBaseClasses, uniPanel;

type
  TMainmForm = class(TUnimForm)
    UnimChart1: TUnimChart;
    UnimChart2: TUnimChart;
    UnimBarSeries1: TUnimBarSeries;
    UnimBarSeries2: TUnimBarSeries;
    UnimRadarSeries1: TUnimRadarSeries;
    UnimRadarSeries2: TUnimRadarSeries;
    procedure UnimFormCreate(Sender: TObject);
  private
  

    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;



procedure TMainmForm.UnimFormCreate(Sender: TObject);
var
  I:Integer;
begin

  for I := 0 to 5 do
  begin
    UnimBarSeries1.Add(IntToStr(Random(10)+5), IntToStr(2009+I));
    UnimBarSeries2.Add(IntToStr(Random(10)+5), IntToStr(2009+I));
  end;

  for I := 0 to 6 do
  begin
    UnimRadarSeries1.Add(IntToStr(Random(10)+5), IntToStr(2009+I));
    UnimRadarSeries2.Add(IntToStr(Random(10)+5), IntToStr(2009+I));
  end;

end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
