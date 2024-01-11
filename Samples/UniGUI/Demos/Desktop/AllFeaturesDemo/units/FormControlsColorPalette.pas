// Color Palette = Form Controls
unit FormControlsColorPalette;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniStatusBar, uniPanel, UniColorPalette,
  uniGUIBaseClasses;

type
  TUniFormControlsColorPalette = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniColorPalette1: TUniColorPalette;
    UniPanel1: TUniPanel;
    UniStatusBar1: TUniStatusBar;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniColorPalette1Select(Sender: TObject; Color: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsColorPalette.UniColorPalette1Select(Sender: TObject; Color: TColor);
begin
  UniPanel1.Color := Color;
  UniStatusBar1.Panels.Items[0].Text := ColorToString(Color);
end;

procedure TUniFormControlsColorPalette.UniFrameCreate(Sender: TObject);
begin
  UniPanel1.Color := UniColorPalette1.Color;
end;

initialization
  RegisterClass(TUniFormControlsColorPalette);
end.
