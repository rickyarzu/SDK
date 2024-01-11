unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, UniHTMLFrame,
  StdCtrls, Buttons, UniBitBtn, uniButton, uniGUIClasses,
  uniPanel, uniGUIBaseClasses, uniSyntaxEditor;

type
  TMainForm = class(TUniForm)
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniHTMLFrame1: TUniHTMLFrame;
    UniBitBtn1: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIApplication, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  UniHTMLFrame1.HTML.Text:=UniSyntaxEdit1.Text;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
