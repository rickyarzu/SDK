// UI Confirmation Buttons = Buttons
unit ButtonsUIConfirmationButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniLabel, unimLabel,
  unimPanel, uniGUIBaseClasses, uniGUImJSForm;

type
  TUniButtonsUIConfirmationButtons = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimPanel3: TUnimPanel;
    UnimLabel2: TUnimLabel;
    UnimButton4: TUnimButton;
    UnimPanel4: TUnimContainerPanel;
    UnimButton6: TUnimButton;
    UnimPanel5: TUnimContainerPanel;
    UnimButton7: TUnimButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniButtonsUIConfirmationButtons);

end.
