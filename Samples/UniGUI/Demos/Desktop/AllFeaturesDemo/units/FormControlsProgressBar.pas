// ProgressBar = Form Controls
unit FormControlsProgressBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniLabel, uniProgressBar,
  uniGUIBaseClasses, uniPanel, uniTimer;

type
  TUniFormControlsProgressBar = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniProgressBar1: TUniProgressBar;
    UniButton1: TUniButton;
    UniTimer1: TUniTimer;
    UniLabel1: TUniLabel;
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsProgressBar.UniButton1Click(Sender: TObject);
begin
  UniTimer1.Enabled := True;
end;

procedure TUniFormControlsProgressBar.UniTimer1Timer(Sender: TObject);
begin
   UniProgressBar1.Position := UniProgressBar1.Position + Random(10);
   UniLabel1.Caption := '% '+IntToStr(UniProgressBar1.Position);
   if UniProgressBar1.Position = UniProgressBar1.Max then
      UniLabel1.Caption := 'Loading Complete'
end;

initialization
  RegisterClass(TUniFormControlsProgressBar);

end.
