unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  UniChart, uniGUIBaseClasses, uniPanel, unimChart;

type
  TMainmForm = class(TUnimForm)
    UnimChart1: TUnimChart;
    UnimLineSeries1: TUnimLineSeries;
    procedure UnimFormCreate(Sender: TObject);
  private
    SerieArray: array[0..1,0..11] of string;
    procedure ApplyChanges;
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

procedure TMainmForm.ApplyChanges;
var
  I : Integer;
  Val : Double;
  Head : string;
begin
  UnimLineSeries1.Clear;

  for I := 0 to 11 do
  begin
    if SerieArray[0,I]='' then Break;

    Val:=StrToFloatDef(SerieArray[1,I], 0.0);
    Head:=SerieArray[0,I];
    UnimLineSeries1.Add(Val, Head);

  end;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to 11 do
  begin
    SerieArray[0,I]:=IntToStr(2000+I);
    SerieArray[1,I]:=IntToStr(Random(100)+50);
  end;
  ApplyChanges;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
