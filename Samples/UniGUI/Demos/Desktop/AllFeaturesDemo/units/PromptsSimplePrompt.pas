// Simple Prompt = Prompts
unit PromptsSimplePrompt;

interface

uses


  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, uniButton, uniGUIBaseClasses, uniPanel,
  uniGUIRegClasses, uniGUIForm;

type
  TUniPromptsSimplePrompt = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniMemo1: TUniMemo;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
  private
    procedure PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
    procedure PromptCallBackDelay(Sender: TComponent; AResult:Integer; AText: string);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
   uniGUIVars, MainModule, uniGUIApplication, uniGUIDialogs;

{$R *.dfm}



procedure TUniPromptsSimplePrompt.UniButton1Click(Sender: TObject);
begin
  Prompt('Please enter a text', '', mtInformation, mbOKCancel, PromptCallBack);
end;

procedure TUniPromptsSimplePrompt.UniButton2Click(Sender: TObject);
begin
  Prompt('Please enter a text', '', mtInformation, mbOKCancel, PromptCallBack, True);
end;

procedure TUniPromptsSimplePrompt.UniButton3Click(Sender: TObject);
begin
  Prompt('@*Please enter password', '', mtInformation, mbOKCancel, PromptCallBack, False);
end;

procedure TUniPromptsSimplePrompt.UniButton4Click(Sender: TObject);
begin
  Prompt('@@Please enter a text', '', mtInformation, mbOKCancel, PromptCallBackDelay, False);
end;

procedure TUniPromptsSimplePrompt.PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
begin
  if AResult = mrOK then
  begin
    UniMemo1.Lines.Add(AText);
  end;
end;

procedure TUniPromptsSimplePrompt.PromptCallBackDelay(Sender: TComponent; AResult:Integer; AText: string);
begin
  if AResult = mrOK then
  begin
    Sleep(3000);
    UniMemo1.Lines.Add(AText);
  end;
end;

initialization
  RegisterClass(TUniPromptsSimplePrompt);
end.
