unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniEdit,
  uniMemo, unimMemo, uniCheckBox, unimCheckBox, uniGUImJSForm,
  unimPanel, uniLabel, unimLabel, pngimage, uniImage, unimImage,
  unimEdit, uniBitBtn, unimBitBtn, uniGUIBaseClasses, uniButton, unimButton,
  jpeg;

type
  TMainmForm = class(TUnimForm)
    UnimButton1: TUnimButton;
    UnimBitBtn1: TUnimBitBtn;
    UnimEdit1: TUnimEdit;
    UnimImage1: TUnimImage;
    UnimButton2: TUnimButton;
    UnimLabel1: TUnimLabel;
    UnimPanel1: TUnimPanel;
    UnimPanel2: TUnimPanel;
    UnimCheckBox1: TUnimCheckBox;
    UnimMemo1: TUnimMemo;
    UnimNumberEdit1: TUnimNumberEdit;
    UnimBitBtn2: TUnimBitBtn;
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

initialization
  RegisterAppFormClass(TMainmForm);

end.
