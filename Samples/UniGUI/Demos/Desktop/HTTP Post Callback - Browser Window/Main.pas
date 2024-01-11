//AllFeatures: HTTP,Post Callback - Browser Window,icon-basic-dialog
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
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
    FirstName, LastName : string;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniStrUtils, ServerModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
var
  AUrl: string;
  SubmitUrl, CancelUrl : string;
begin
  SubmitUrl:=UniSession.CallbackUrlEx('mycallback', Self, ['RES', 'OK'], True, True);
  CancelUrl:=UniSession.CallbackUrlEx('mycallback', Self, ['RES', 'CANCEL'], True, True);

  AUrl:=UniServerModule.FilesFolderURL+'sim.html';
  AUrl:=AUrl + '?submitUrl='+SubmitUrl+'&cancelUrl='+CancelUrl;
  UniSession.BrowserWindow(AUrl, 400, 300, '_blank');
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName = 'mycallback' then
  begin
    FirstName := Params.Values['firstname'];
    LastName := Params.Values['lastname'];
    if Params.Values['RES']='OK' then
      ShowMessage('Operation Succeeded: '+FirstName+' '+LastName)
    else if Params.Values['RES']='CANCEL' then
      ShowMessage('Operation Cancelled.');
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
