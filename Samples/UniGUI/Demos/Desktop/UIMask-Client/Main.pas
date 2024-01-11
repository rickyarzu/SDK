//AllFeatures: Ui Mask,Ui Mask - Client,icon-history
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniPanel;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    procedure UniButton1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
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

procedure TMainForm.UniButton1AjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  Sleep(1000);
end;

procedure TMainForm.UniPanel1AjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName='panel_click' then
  begin
    Sleep(1000);
  end;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
