unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniButton,
  uniBitBtn, unimBitBtn, uniGUIBaseClasses, uniGUImJSForm, unimScrollBox,
  uniEdit, unimEdit;

type
  TMainmForm = class(TUnimForm)
    UnimScrollBox1: TUnimScrollBox;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    UnimBitBtn3: TUnimBitBtn;
    UnimBitBtn4: TUnimBitBtn;
    UnimBitBtn5: TUnimBitBtn;
    UnimBitBtn6: TUnimBitBtn;
    UnimBitBtn7: TUnimBitBtn;
    UnimBitBtn8: TUnimBitBtn;
    UnimBitBtn9: TUnimBitBtn;
    UnimScrollBox2: TUnimScrollBox;
    UnimBitBtn10: TUnimBitBtn;
    UnimBitBtn11: TUnimBitBtn;
    UnimBitBtn12: TUnimBitBtn;
    UnimBitBtn13: TUnimBitBtn;
    UnimBitBtn14: TUnimBitBtn;
    UnimBitBtn15: TUnimBitBtn;
    UnimBitBtn16: TUnimBitBtn;
    UnimBitBtn17: TUnimBitBtn;
    UnimBitBtn18: TUnimBitBtn;
    UnimScrollBox3: TUnimScrollBox;
    UnimBitBtn19: TUnimBitBtn;
    UnimBitBtn20: TUnimBitBtn;
    UnimBitBtn21: TUnimBitBtn;
    UnimBitBtn22: TUnimBitBtn;
    UnimBitBtn23: TUnimBitBtn;
    UnimBitBtn24: TUnimBitBtn;
    UnimBitBtn25: TUnimBitBtn;
    UnimBitBtn26: TUnimBitBtn;
    UnimBitBtn27: TUnimBitBtn;
    UnimBitBtn28: TUnimBitBtn;
    UnimEdit1: TUnimEdit;
    procedure UnimBitBtn2Click(Sender: TObject);
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

procedure TMainmForm.UnimBitBtn2Click(Sender: TObject);
begin
  (Sender as TUnimBitBtn).BadgeText := '1';
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
