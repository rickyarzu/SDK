unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  UniChart, unimChart, uniGUIBaseClasses, uniPanel, uniButton, unimButton;

type
  TMainmForm = class(TUnimForm)
    UnimChart1: TUnimChart;
    UnimLineSeries1: TUnimLineSeries;
    UnimBarSeries1: TUnimBarSeries;
    UnimButton1: TUnimButton;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
  private
    procedure ApplyChart;
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

procedure TMainmForm.ApplyChart;
var
  I:Integer;
begin
  UnimBarSeries1.Clear;
  UnimLineSeries1.Clear;
  for I := 0 to 6 do
  begin
    UnimBarSeries1.Add(Random(10)+5, IntToStr(2009+I));
    UnimLineSeries1.Add(Random(10)+5, IntToStr(2009+I));
  end;
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  ApplyChart;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  ApplyChart;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
