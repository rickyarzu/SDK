// Speed Button = Buttons
unit ButtonsSpeedButton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, uniSpeedButton,
  uniGUIBaseClasses, uniPanel;

type
  TUniButtonsSpeedButton = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniButtonsSpeedButton);

end.
