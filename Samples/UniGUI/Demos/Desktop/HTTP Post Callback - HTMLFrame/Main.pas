//AllFeatures: HTTP,Post Callback - HTML Frame,icon-basic-dialog
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, uniEdit, uniSyntaxEditor, uniButton, uniMemo;

type
  TMainForm = class(TUniForm)
    UniHTMLFrame1: TUniHTMLFrame;
    UniEdit1: TUniEdit;
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniButton1: TUniButton;
    UniMemo1: TUniMemo;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReplaceTags;
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
  ReplaceTags;
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName = 'mycallback' then
  begin
    UniEdit1.Text := Params.Values['user'];
    UniMemo1.Text := Params.Text;
  end;
end;

procedure TMainForm.ReplaceTags;
var
  S, Sc : string;
begin
  S := UniSyntaxEdit1.Text;

  Sc := UniSession.CallbackUrl('mycallback', Self, []);
  S := StringReplace(S, '{URL_CALLBACK}', Sc, []);

  Sc := UniSession.CallbackTarget;
  S := StringReplace(S, '{CALLBACK_TARGET}', Sc, []);

  UniHTMLFrame1.HTML.Text := S;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniSyntaxEdit1.Text:=UniHTMLFrame1.HTML.Text;
  ReplaceTags;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
