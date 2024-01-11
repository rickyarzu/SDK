unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses,
  uniGUImJSForm, jpeg, uniImage, unimImage, unimPanel, uniBitBtn,
  unimBitBtn, uniButton, unimButton;

type
  TMainmForm = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    UnimPanel1: TUnimPanel;
    UnimImage1: TUnimImage;
    UnimButton3: TUnimButton;
    UnimButton4: TUnimButton;
    UnimContainerPanel4: TUnimContainerPanel;
    UnimContainerPanel5: TUnimContainerPanel;
    UnimImage2: TUnimImage;
    UnimContainerPanel6: TUnimContainerPanel;
    UnimContainerPanel7: TUnimContainerPanel;
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
