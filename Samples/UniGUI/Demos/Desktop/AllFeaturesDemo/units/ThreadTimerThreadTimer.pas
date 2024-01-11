// Thread Timer = Thread Timer
unit ThreadTimerThreadTimer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniThreadTimer, uniButton, uniGUIBaseClasses,
  uniPanel;

type
  TUniThreadTimerThreadTimer = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniThreadTimer1: TUniThreadTimer;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniThreadTimer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    FCounter: Integer;
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniThreadTimerThreadTimer.UniButton1Click(Sender: TObject);
begin
 UniThreadTimer1.Lock;
  try
    ShowMessage(IntToStr(FCounter));
  finally
    UniThreadTimer1.Release;
  end;
end;

procedure TUniThreadTimerThreadTimer.UniButton2Click(Sender: TObject);
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

procedure TUniThreadTimerThreadTimer.UniThreadTimer1Timer(Sender: TObject);
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
  RegisterClass(TUniThreadTimerThreadTimer);
end.
