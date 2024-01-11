unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniTrackBar,
  unimSlider, uniMultiItem, unimSelect, uniRadioButton, unimRadio, uniLabel,
  unimLabel, uniCheckBox, unimCheckBox, unimToggle, uniDateTimePicker,
  unimDatePicker, uniEdit, unimEdit, uniGUIBaseClasses, uniGUImJSForm,
  unimFieldSet, uniImage, unimImage, jpeg, uniButton, unimButton,
  pngimage;

type
  TMainmForm = class(TUnimForm)
    UnimFieldSet1: TUnimFieldSet;
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimDatePicker1: TUnimDatePicker;
    UnimToggle1: TUnimToggle;
    UnimCheckBox1: TUnimCheckBox;
    UnimSelect1: TUnimSelect;
    UnimSlider1: TUnimSlider;
    UnimToggle2: TUnimToggle;
    UnimImage1: TUnimImage;
    UnimFieldSet2: TUnimFieldSet;
    UnimEdit3: TUnimEdit;
    UnimButton1: TUnimButton;
    UnimSelect2: TUnimSelect;
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
begin
  UnimEdit1.Text := '';
  UnimEdit2.Text := '';
  UnimEdit3.Text := '';
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
