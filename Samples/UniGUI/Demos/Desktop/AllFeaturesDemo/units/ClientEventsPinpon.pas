// Pinpon! = Client Events
unit ClientEventsPinpon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniTimer, uniLabel,
  uniBitBtn, uniSpeedButton, uniButton;

type
  TUniClientEventsPinpon = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    UniSpeedButton1: TUniSpeedButton;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniTimer1: TUniTimer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


initialization
  RegisterClass(TUniClientEventsPinpon);

end.
