unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, unimButton, UniFSToast, UniFSConfirm, uniEdit,
  unimEdit;

type
  TMainmForm = class(TUnimForm)
    btnAlert: TUnimButton;
    btnInfo: TUnimButton;
    btnQuestion: TUnimButton;
    btnCustom: TUnimButton;
    Confirm: TUniFSConfirm;
    btnMask: TUnimButton;
    edtScreenMask: TUnimEdit;
    procedure btnAlertClick(Sender: TObject);
    procedure btnQuestionClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnCustomClick(Sender: TObject);
    procedure btnMaskClick(Sender: TObject);
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

procedure TMainmForm.btnAlertClick(Sender: TObject);
begin
  Confirm.TypeColor := TTypeColor.orange;
  Confirm.Theme := TTheme.modern;
  Confirm.Icon := 'fa fa-exclamation-circle';
  Confirm.Alert('Alert','Alert powerd by Falcon');
end;

procedure TMainmForm.btnCustomClick(Sender: TObject);
var
  Confirm: TUniFSConfirm;
begin
  Confirm := TUniFSConfirm.Create(Self);
  try
    Confirm.Theme := TTheme.dark;
    Confirm.TypeColor := TTypeColor.orange;
    Confirm.boxWidth := '80%';
    Confirm.Alert('My Custom Dialog','Custom');
  finally
    FreeAndNil(Confirm);
  end;
end;

procedure TMainmForm.btnInfoClick(Sender: TObject);
begin
  Confirm.TypeColor := TTypeColor.blue;
  Confirm.Theme := TTheme.supervan;
  Confirm.Alert('Alert','Alert powerd by Falcon');
end;

procedure TMainmForm.btnMaskClick(Sender: TObject);
begin
  {Attention -> Habiliting -> UniMainModule.EnableSynchronousOperations = True}
  try
    Confirm.ShowMask(edtScreenMask.Text);

    Sleep(5000); {My long task}
  finally
    Confirm.RemoveMask;
  end;
end;

procedure TMainmForm.btnQuestionClick(Sender: TObject);
begin
  Confirm.Question('Hello','Are you sure to continue?','fa fa-smile-o', TTypeColor.blue, TTheme.modern,
    procedure(Button: TConfirmButton)
    begin
      if Button = Yes then
        Confirm.Alert('Success', ' ', 'fa fa-check-circle-o', TTypeColor.green, TTheme.modern);
      if Button = No then
        Confirm.Alert('Canceled', ' ', 'fa fa-exclamation-circle', TTypeColor.blue, TTheme.modern);
    end
    );
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
