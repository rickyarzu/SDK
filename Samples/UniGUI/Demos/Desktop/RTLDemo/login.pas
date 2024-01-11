unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniPanel, uniLabel, uniEdit;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniPanel1: TUniPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
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
  UniEdit1.Text := '';
  UniEdit2.Text := '';

end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
