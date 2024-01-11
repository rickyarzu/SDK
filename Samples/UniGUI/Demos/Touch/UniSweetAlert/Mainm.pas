unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, unimButton, uniSweetAlert;

type
  TMainmForm = class(TUnimForm)
    UniSweetAlert1: TUniSweetAlert;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
    procedure UniSweetAlert1Confirm(Sender: TObject);
    procedure UniSweetAlert1Dismiss(Sender: TObject;
      const Reason: TDismissType);
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

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  UniSweetAlert1.InputType := ItText;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.Show('Please enter your user name:');
end;

procedure TMainmForm.UnimButton2Click(Sender: TObject);
begin
  UniSweetAlert1.InputType := ItNone;
  UniSweetAlert1.AlertType := atWarning;
  UniSweetAlert1.ShowCancelButton := False;
  UniSweetAlert1.Show('Warning!');
end;

procedure TMainmForm.UniSweetAlert1Confirm(Sender: TObject);
begin
  ShowMessageN('Confirm ' + UniSweetAlert1.InputResult);
end;

procedure TMainmForm.UniSweetAlert1Dismiss(Sender: TObject;
  const Reason: TDismissType);
begin
  ShowMessageN('Dismiss');
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
