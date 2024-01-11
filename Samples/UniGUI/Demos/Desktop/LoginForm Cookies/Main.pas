unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniEdit,
  uniButton, uniLabel;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniApplication.Cookies.SetCookie('_loginname','',Date-1);
  UniApplication.Cookies.SetCookie('_pwd','',Date-1);
  UniApplication.Restart;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  UniLabel1.Caption := 'Logged: '+UniMainModule.LoggedUser;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
