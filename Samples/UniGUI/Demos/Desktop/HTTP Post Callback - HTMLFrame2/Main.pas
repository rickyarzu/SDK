//AllFeatures: HTTP,Post Callback - HTML Frame2,icon-basic-dialog
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, uniEdit, uniSyntaxEditor, uniButton, uniMemo;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CB(Sender: TComponent; AResult:Integer);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniForm1.ShowModal(CB);
end;

procedure TMainForm.CB(Sender: TComponent; AResult:Integer);
begin
  if AResult = mrOk then
  begin
    ShowMessage('Operation Succeeded: '+UniMainModule.FirstName+' '+UniMainModule.LastName);
  end
  else if AResult = mrCancel then
  begin
    ShowMessage('Operation Cancelled.');
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
