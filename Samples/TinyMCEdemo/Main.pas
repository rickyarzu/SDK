unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, Uni, Janua.Unidac.Connection, GUITypes, Uni, Janua.Unidac.Connection, GUIAbstractClasses,
  uniGUIClasses, Uni, Janua.Unidac.Connection, GUIForm, Uni, Janua.Unidac.Connection, GUIBaseClasses, Uni, Janua.Unidac.Connection, Button, Uni, Janua.Unidac.Connection, Panel,
  uniHTMLFrame, Uni, Janua.Unidac.Connection, Memo;

type
  TMainForm = class(TUniForm)
    btnSetText: TUniButton;
    UniHTMLFrame1: TUniHTMLFrame;
    btnGetText: TUniButton;
    UniMemo1: TUniMemo;
    procedure btnSetTextClick(Sender: TObject);
    procedure btnGetTextClick(Sender: TObject);
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, Uni, Janua.Unidac.Connection, GUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btnGetTextClick(Sender: TObject);
begin
  UniSession.AddJS('ajaxRequest(MainForm.form, "mce", ["text="+tinyMCE.get("ed1").getContent()])');
end;

procedure TMainForm.btnSetTextClick(Sender: TObject);
begin
  UniSession.AddJS('tinyMCE.get("ed1").setContent("Hello from <b>UniGUI</b>!")');
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TStrings);
begin
  if EventName = 'mce' then UniMemo1.Text := Params.Values['text'];
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
