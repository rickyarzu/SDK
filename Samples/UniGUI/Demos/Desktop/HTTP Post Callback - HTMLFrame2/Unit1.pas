unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniHTMLFrame;

type
  TUniForm1 = class(TUniForm)
    UniHTMLFrame1: TUniHTMLFrame;
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ReplaceTags;
  public
    { Public declarations }
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

procedure TUniForm1.ReplaceTags;
var
  S, Sc : string;
begin
  S:=UniHTMLFrame1.HTML.Text;

  Sc:=UniSession.CallbackUrl('mycallback', Self, ['RES', 'OK']);
  S:=StringReplace(S, '{URL_CALLBACK}', Sc, []);

  Sc:=UniSession.CallbackUrl('mycallback', Self, ['RES', 'CANCEL']);
  S:=StringReplace(S, '{CANCEL_URL}', Sc, []);

  Sc:=UniSession.CallbackTarget;
  S:=StringReplace(S, '{CALLBACK_TARGET}', Sc, [rfReplaceAll]);

  UniHTMLFrame1.HTML.Text:=S;
end;

procedure TUniForm1.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName = 'mycallback' then
  begin
    UniMainModule.FirstName := Params.Values['firstname'];
    UniMainModule.LastName := Params.Values['lastname'];
    if Params.Values['RES']='OK' then
      ModalResult:=mrOK
    else if Params.Values['RES']='CANCEL' then
      ModalResult:=mrCancel
  end;
end;

procedure TUniForm1.UniFormCreate(Sender: TObject);
begin
  ReplaceTags;
end;

end.
