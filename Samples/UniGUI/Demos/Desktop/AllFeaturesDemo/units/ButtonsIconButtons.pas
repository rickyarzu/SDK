// Icon Buttons = Buttons
unit ButtonsIconButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel,
  uniImageList, uniSpeedButton, uniGroupBox;

type
  TUniButtonsIconButtons = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    UniBitBtn5: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    UniGroupBox1: TUniGroupBox;
    UniGroupBox2: TUniGroupBox;
    UniBitBtn7: TUniBitBtn;
    UniBitBtn8: TUniBitBtn;
    UniBitBtn9: TUniBitBtn;
    UniGroupBox3: TUniGroupBox;
    UniBitBtn10: TUniBitBtn;
    UniBitBtn11: TUniBitBtn;
    UniBitBtn12: TUniBitBtn;
    UniGroupBox4: TUniGroupBox;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniSpeedButton4: TUniSpeedButton;
    UniGroupBox5: TUniGroupBox;
    UniSpeedButton5: TUniSpeedButton;
    UniSpeedButton6: TUniSpeedButton;
    UniSpeedButton7: TUniSpeedButton;
    UniSpeedButton8: TUniSpeedButton;
    UniGroupBox6: TUniGroupBox;
    UniSpeedButton9: TUniSpeedButton;
    UniSpeedButton10: TUniSpeedButton;
    UniSpeedButton11: TUniSpeedButton;
    UniSpeedButton12: TUniSpeedButton;
    UniButton1: TUniButton;
    UniNativeImageList6: TUniNativeImageList;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniGroupBox7: TUniGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniButtonsIconButtons);

end.
