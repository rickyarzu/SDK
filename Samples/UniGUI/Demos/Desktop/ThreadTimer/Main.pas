//AllFeatures: Thread Time,Thread Timer - 1,icon-panel-time
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniThreadTimer,
  uniGUIBaseClasses, uniButton;

type
  TMainForm = class(TUniForm)
    UniThreadTimer1: TUniThreadTimer;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniThreadTimer1Timer(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FCounter: Integer;
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
  UniThreadTimer1.Lock;
  try
    ShowMessage(IntToStr(FCounter));
  finally
    UniThreadTimer1.Release;
  end;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
// syntax by using InterlockedExchange
  if True then
    InterlockedExchange(FCounter, 0)
  else
// alternate syntax without using InterlockedExchange
  begin
    UniThreadTimer1.Lock;
    try
      FCounter := 0;
    finally
      UniThreadTimer1.Release;
    end;
  end;
end;

procedure TMainForm.UniThreadTimer1Timer(Sender: TObject);
begin
// *Important *//
// Thread Timer event should not call any GUI related code
// It runs in a separate thread, so it will fail if you interact with GUI components here

// syntax by using InterlockedIncrement
  if True then
    InterlockedIncrement(FCounter)
  else
// alternate syntax without using InterlockedIncrement
  begin
    UniThreadTimer1.Lock;
    try
      Inc(FCounter);
    finally
      UniThreadTimer1.Release;
    end;
  end;


// *Important *//
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
