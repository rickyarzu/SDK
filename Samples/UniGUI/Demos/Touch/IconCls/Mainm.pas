unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses,
  uniGUImJSForm, unimSegmentedButton, uniButton, unimButton, uniToolBar,
  unimToolbar;

type
  TMainmForm = class(TUnimForm)
    UnimSegmentedButton1: TUnimSegmentedButton;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton3: TUnimToolButton;
    UnimToolButton4: TUnimToolButton;
    UnimToolButton5: TUnimToolButton;
    UnimToolButton6: TUnimToolButton;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
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
