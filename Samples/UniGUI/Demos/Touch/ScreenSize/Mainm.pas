unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniLabel, unimLabel;

type
  TMainmForm = class(TUnimForm)
    UnimLabel1: TUnimLabel;
    procedure UnimFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
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

procedure TMainmForm.UnimFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin
  UnimLabel1.Caption := Format('%d X %d', [AWidth, AHeight]);
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
