unit LoginFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniLabel, uniEdit,
  uniGUIBaseClasses, uniCheckBox, uniButton;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniCheckBox1: TUniCheckBox;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniLoginFormShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

procedure TUniLoginForm1.UniButton1Click(Sender: TObject);
begin
  if sameText(UniEdit1.Text, 'demo') and sameText(UniEdit1.Text, 'demo') then
  begin
    UniMainModule.LoggedUser := UniEdit1.Text;
    if UniCheckBox1.Checked then
    begin
      UniApplication.Cookies.SetCookie('_loginname', UniEdit1.Text, Date + 7.0); // Expires 7 days from now
      UniApplication.Cookies.SetCookie('_pwd', UniEdit2.Text, Date + 7.0);
    end;

    ModalResult := mrOK;
  end;
end;

procedure TUniLoginForm1.UniLoginFormShow(Sender: TObject);
begin
  UniEdit1.Text := '';
  UniEdit2.Text := '';
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
