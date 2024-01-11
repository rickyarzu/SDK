//AllFeatures: Client Events,Client Events - HTML to Ajax,icon-ajax-tabs
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniMemo, uniGUIBaseClasses,
  uniPanel, uniHTMLFrame, uniButton;

type
  TMainForm = class(TUniForm)
    HTMLFrame: TUniHTMLFrame;
    Memo: TUniMemo;
    btnMemo: TUniButton;
    procedure HTMLFrameAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnMemoClick(Sender: TObject);
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

procedure TMainForm.btnMemoClick(Sender: TObject);
begin
  Memo.Lines.Clear;
end;

procedure TMainForm.HTMLFrameAjaxEvent(Sender: TComponent; EventName: string; Params: TUniStrings);
begin
  if EventName = 'callserver' then
  begin
    Memo.Lines.Add('<====================>');
    Memo.Lines.Add(Params.Text);
    Memo.Lines.Add('>====================<');
  end;

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
