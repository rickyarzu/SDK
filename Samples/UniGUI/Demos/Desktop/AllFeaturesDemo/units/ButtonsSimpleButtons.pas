// Simple Buttons = Buttons
unit ButtonsSimpleButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel;

type
  TUniButtonsSimpleButtons = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


initialization
  RegisterClass(TUniButtonsSimpleButtons);
end.
