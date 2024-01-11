unit Loginfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniEdit,
  uniGUIBaseClasses, uniFieldSet;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniFieldSet1: TUniFieldSet;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniLoginFormCreate(Sender: TObject);
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
  ModalResult := mrOK;
end;

procedure TUniLoginForm1.UniButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TUniLoginForm1.UniLoginFormCreate(Sender: TObject);
begin
  UniEdit1.Text := 'uname';
  UniEdit2.Text := 'pwd';
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
