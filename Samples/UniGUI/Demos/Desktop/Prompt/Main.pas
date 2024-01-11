//AllFeatures: Prompt,Basic Demo,icon-message-box
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniMemo;

type
  TMainForm = class(TUniForm)
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
    { Private declarations }
    procedure PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
    procedure PromptCallBackDelay(Sender: TComponent; AResult:Integer; AText: string);
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
  Prompt('Please enter a text', '', mtInformation, mbOKCancel, PromptCallBack);
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  Prompt('Please enter a text', '', mtInformation, mbOKCancel, PromptCallBack, True);
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  Prompt('@*Please enter password', '', mtInformation, mbOKCancel, PromptCallBack, False);
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  Prompt('@@Please enter a text', '', mtInformation, mbOKCancel, PromptCallBackDelay, False);
end;

procedure TMainForm.PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
begin
  if AResult = mrOK then
  begin
    UniMemo1.Lines.Add(AText);
  end;
end;

procedure TMainForm.PromptCallBackDelay(Sender: TComponent; AResult:Integer; AText: string);
begin
  if AResult = mrOK then
  begin
    Sleep(3000);
    UniMemo1.Lines.Add(AText);
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
