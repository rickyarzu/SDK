unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniLabel;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniLabel1: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
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
  ModalResult:=mrOK; // Display Login Form Again
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  ModalResult:=mrCancel; // Exit Application
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  UniLabel1.Caption := UniMainModule.AUserName;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
