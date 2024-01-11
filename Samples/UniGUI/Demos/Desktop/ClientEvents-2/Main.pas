//AllFeatures: Client Events,Client Events - 2,icon-touch-events
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniPanel, uniGUIBaseClasses, uniMemo;

type
  TMainForm = class(TUniForm)
    UniMemo1: TUniMemo;
    UniPanel1: TUniPanel;
    procedure UniPanel1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniPanel1AjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName='myAjaxEvent' then
  begin
    UniMemo1.Lines.Add('Server Response:');
    UniMemo1.Lines.Add('===============');
    UniMemo1.Lines.Add(Params.Values['param0']);
    UniMemo1.Lines.Add(Params.Values['X']);
    UniMemo1.Lines.Add(Params['Y'].AsString);  // alternate syntax
    UniMemo1.Lines.Add('');
  end;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
