// HTML Frame 2= HTTP Callback
unit HTTPCallbackHTMLFrame2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, uniButton, uniSyntaxEditor, uniEdit,
  uniPanel, uniHTMLFrame, uniGUIBaseClasses, MainModule;

type
  TUniHTTPCallbackHTMLFrame2 = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniHTMLFrame1: TUniHTMLFrame;
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
     procedure ReplaceTags;
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniHTTPCallbackHTMLFrame2.ReplaceTags;
var
  S, Sc : string;
begin
  S := UniSyntaxEdit1.Text;
  Sc := UniSession.CallbackUrl('mycallback', UniMainModule.Main, []);
  S := StringReplace(S, '{URL_CALLBACK}', Sc, []);

  Sc := UniSession.CallbackTarget;
  S := StringReplace(S, '{CALLBACK_TARGET}', Sc, []);

  UniHTMLFrame1.HTML.Text:=S;
end;

procedure TUniHTTPCallbackHTMLFrame2.UniButton1Click(Sender: TObject);
begin
  ReplaceTags;
end;

procedure TUniHTTPCallbackHTMLFrame2.UniFrameCreate(Sender: TObject);
begin
  UniSyntaxEdit1.Text:=UniHTMLFrame1.HTML.Text;

  ReplaceTags;
end;

initialization
  RegisterClass(TUniHTTPCallbackHTMLFrame2);
end.
