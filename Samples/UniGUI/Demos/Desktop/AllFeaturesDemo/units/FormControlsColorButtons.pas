// Color Buttons = Form Controls
unit FormControlsColorButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniButton, uniBitBtn, UniColorButton,
  uniGUIBaseClasses, uniStatusBar;

type
  TUniFormControlsColorButtons = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    uniColorButton1: TUniColorButton;
    uniColorButton2: TUniColorButton;
    UniStatusBar1: TUniStatusBar;
    procedure UniColorPalette1Select(Sender: TObject; Color: TColor);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsColorButtons.UniColorPalette1Select(Sender: TObject; Color: TColor);
begin
  UniPanel1.Color := Color;
  UniStatusBar1.Panels.Items[0].Text := ColorToString(Color);
end;


procedure TUniFormControlsColorButtons.UniFrameCreate(Sender: TObject);
begin
  UniPanel1.Color := uniColorButton1.Color;
end;

initialization
  RegisterClass(TUniFormControlsColorButtons);
end.
