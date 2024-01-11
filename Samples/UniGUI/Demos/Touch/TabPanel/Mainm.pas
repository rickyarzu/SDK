unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniToolBar,
  unimToolbar, jpeg, uniImage, unimImage, uniButton, unimButton,
  uniCheckBox, unimCheckBox, uniDateTimePicker, unimDatePicker, uniEdit,
  unimEdit, uniGUImJSForm, unimFieldSet, uniPanel, uniPageControl, unimTabPanel,
  uniGUIBaseClasses;

type
  TMainmForm = class(TUnimForm)
    UnimTabPanel1: TUnimTabPanel;
    UnimTabSheet1: TUnimTabSheet;
    UnimTabSheet2: TUnimTabSheet;
    UnimTabSheet3: TUnimTabSheet;
    UnimTabSheet4: TUnimTabSheet;
    UnimFieldSet1: TUnimFieldSet;
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimDatePicker1: TUnimDatePicker;
    UnimCheckBox1: TUnimCheckBox;
    UnimButton1: TUnimButton;
    UnimImage1: TUnimImage;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton3: TUnimToolButton;
    UnimToolButton4: TUnimToolButton;
    UnimToolButton5: TUnimToolButton;
    UnimToolButton6: TUnimToolButton;
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
