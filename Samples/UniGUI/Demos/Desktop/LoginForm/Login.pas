unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
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
  UniMainModule.AUserName := 'This User';
  ModalResult:=mrOK;  // Login is valid so proceed to MainForm
end;

procedure TUniLoginForm1.UniButton2Click(Sender: TObject);
begin
  ModalResult:=mrCancel; // Invalid Login exit from app
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
