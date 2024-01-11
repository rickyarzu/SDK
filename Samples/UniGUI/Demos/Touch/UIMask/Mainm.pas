unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  unimPanel, uniGUIBaseClasses, uniButton, unimButton;

type
  TMainmForm = class(TUnimForm)
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimPanel1: TUnimPanel;
    procedure UnimButton2Click(Sender: TObject);
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

procedure TMainmForm.UnimButton2Click(Sender: TObject);
begin
  Sleep(3000);
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
