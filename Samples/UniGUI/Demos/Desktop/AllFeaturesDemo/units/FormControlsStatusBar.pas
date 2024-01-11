// StatusBar = Form Controls
unit FormControlsStatusBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniStatusBar, uniGUIBaseClasses, uniPanel,
  uniTimer;

type
  TUniFormControlsStatusBar = class(TUniFrame)
    UniTimer1: TUniTimer;
    UniPanel1: TUniPanel;
    UniStatusBar1: TUniStatusBar;
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniFormControlsStatusBar.UniFrameCreate(Sender: TObject);
begin
  UniTimer1Timer(nil);
end;

procedure TUniFormControlsStatusBar.UniTimer1Timer(Sender: TObject);
begin
  UniStatusBar1.Panels[0].Text := TimeToStr(Now);
  UniStatusBar1.Panels[1].Text := DateToStr(Now);
end;

initialization
  RegisterClass(TUniFormControlsStatusBar);
end.
