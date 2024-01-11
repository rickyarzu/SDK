// Icon Buttons = Buttons
unit ButtonsIconButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniGUIBaseClasses,
  uniGUImJSForm, uniToolBar, unimToolbar, unimSegmentedButton, uniSegmentedButton;

type
  TUniButtonsIconButtons = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton27: TUnimButton;
    UnimButton28: TUnimButton;
    UnimSegmentedButton1: TUnimSegmentedButton;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton3: TUnimToolButton;
    UnimToolButton4: TUnimToolButton;
    UnimToolButton5: TUnimToolButton;
    UnimToolButton6: TUnimToolButton;
    procedure UnimButton28Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniButtonsIconButtons.UnimButton28Click(Sender: TObject);
var
  sTel: string;
begin
  /// UniSession.AddJS(window.open("tel://' + sTel + '"', '_blank');
  // window.open('https://support.wwf.org.uk', "_blank")

  sTel := 'www.ergomercator.com';

  //UniSession.AddJS('window.open("tel://' + sTel + '", "_blank")');
  UniSession.AddJS('window.open("https://' + sTel + '", "_blank")');

end;

initialization

RegisterClass(TUniButtonsIconButtons);

end.
