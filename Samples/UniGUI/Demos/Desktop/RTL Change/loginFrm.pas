unit loginFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniGUIBaseClasses,
  uniEdit;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniButton1: TUniButton;
    procedure UniLoginFormCreate(Sender: TObject);
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
  ModalResult := mrOK;
end;

procedure TUniLoginForm1.UniLoginFormCreate(Sender: TObject);
begin
  RTL := UniMainModule.RTL;
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
