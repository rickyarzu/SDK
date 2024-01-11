//AllFeatures: Miscellaneous,Generic Control,icon-form-fieldcontainer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniGenericControl, uniMemo;

type
  TMainForm = class(TUniForm)
    UniGenericControl1: TUniGenericControl;
    UniMemo1: TUniMemo;
    UniGenericControl2: TUniGenericControl;
    UniGenericControl3: TUniGenericControl;
    procedure UniGenericControl1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniGenericControl2Click(Sender: TObject);
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

procedure TMainForm.UniGenericControl1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = 'btnclick' then
  begin
    UniMemo1.Lines.Add('Button Clicked!');
  end;

end;

procedure TMainForm.UniGenericControl2Click(Sender: TObject);
begin
  UniMemo1.Lines.Add('Clicked!');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
