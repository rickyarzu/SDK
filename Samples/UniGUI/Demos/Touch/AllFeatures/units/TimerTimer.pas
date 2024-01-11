//Timer = Timer
unit TimerTimer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniLabel, unimLabel,
  uniGUIBaseClasses, uniTimer, unimTimer, uniGUImJSForm;

type
  TUniTimerTimer = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimTimer1: TUnimTimer;
    UnimLabel1: TUnimLabel;
    UnimButton1: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimTimer1Timer(Sender: TObject);
  private
    II: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  StrUtils;

{$R *.dfm}



procedure TUniTimerTimer.UnimButton1Click(Sender: TObject);
begin
  UnimTimer1.Enabled := not UnimTimer1.Enabled;
  if UnimTimer1.Enabled then
    UnimButton1.Caption := 'Stop'
  else
    UnimButton1.Caption := 'Start';
end;

procedure TUniTimerTimer.UnimTimer1Timer(Sender: TObject);
begin
  UnimLabel1.Caption := IntToStr(II);
  Inc(II);
end;

initialization
  RegisterClass(TUniTimerTimer);
end.
