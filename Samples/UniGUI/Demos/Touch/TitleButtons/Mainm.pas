unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, uniGUIBaseClasses,
  unimMenu;

type
  TMainmForm = class(TUnimForm)
    UnimMenu1: TUnimMenu;
    procedure UnimMenu1Click(Sender: TUnimMenuItem);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1, Unit2;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  case Sender.ButtonId of
    0 : UnimMenu1.Visible := True;
    2 : UnimForm1.ShowModal();
  end;
end;

procedure TMainmForm.UnimMenu1Click(Sender: TUnimMenuItem);
begin
  Sender.Parent.Visible := False;
  case Sender.MenuId of
    0 : UnimForm2.ShowModal();
    3 : Close;
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
