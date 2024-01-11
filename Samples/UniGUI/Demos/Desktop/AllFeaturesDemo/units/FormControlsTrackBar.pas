// TrackBar = Form Controls
unit FormControlsTrackBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, jpeg, uniImage, uniPanel, uniTrackBar,
  uniGUIBaseClasses;

type
  TUniFormControlsTrackBar = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniTrackBar1: TUniTrackBar;
    UniPanel1: TUniPanel;
    UniImage1: TUniImage;
    UniTrackBar2: TUniTrackBar;
    procedure UniTrackBar1Change(Sender: TObject);
    procedure UniTrackBar2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsTrackBar.UniTrackBar1Change(Sender: TObject);
begin
  UniImage1.Width := 32 * UniTrackBar1.Position;
end;

procedure TUniFormControlsTrackBar.UniTrackBar2Change(Sender: TObject);
begin
  UniImage1.Height := 24 * (UniTrackBar2.Position-11)*-1;
end;

initialization
  RegisterClass(TUniFormControlsTrackBar);
end.
