unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUImForm, uniLabel, unimLabel,
  uniGUIBaseClasses, uniEdit, unimEdit, uniButton, unimButton, uniMemo, unimMemo,
  unimSpinner;

type
  TMainmForm = class(TUnimForm)
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimMemo1: TUnimMemo;
    UnimButton1: TUnimButton;
    UnimSpinner1: TUnimSpinner;
    procedure UnimButton1Click(Sender: TObject);
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
  ShowMessage(UnimEdit1.Text + ' - ' + UnimEdit2.Text + ' - ' +UnimMemo1.Text+
                UnimSpinner1.Text);
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
