unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses,
  uniMultiItem, unimSelect, uniMemo, unimMemo, uniEdit, unimEdit, uniLabel,
  unimLabel, uniButton, uniBitBtn, unimBitBtn, unimToolbar, uniToolBar,
  uniImageList;

type
  TMainmForm = class(TUnimForm)
    UnimSelect1: TUnimSelect;
    UnimBitBtn1: TUnimBitBtn;
    UnimLabel1: TUnimLabel;
    UnimEdit1: TUnimEdit;
    UnimMemo1: TUnimMemo;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton3: TUnimToolButton;
    UnimToolButton4: TUnimToolButton;
    UnimToolButton5: TUnimToolButton;
    UnimToolButton6: TUnimToolButton;
    UnimToolButton7: TUnimToolButton;
    UnimToolButton8: TUnimToolButton;
    UniImageList1: TUniImageList;
    UnimToolButton9: TUnimToolButton;
    UnimToolButton10: TUnimToolButton;
    UnimToolButton11: TUnimToolButton;
    UnimToolButton12: TUnimToolButton;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimSelect1Change(Sender: TObject);
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
  uniGUIVars, MainModule, uniGUIApplication, Unit1;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
begin
  UnimForm1.ShowModal();
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  UnimSelect1.Text := UniMainModule.TouchTheme;
end;

procedure TMainmForm.UnimSelect1Change(Sender: TObject);
begin
  UniMainModule.SetNewTheme(UnimSelect1.Text);
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
