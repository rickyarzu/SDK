// UI Back & Forward Buttons = Buttons
unit ButtonsUIBackForwardButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniLabel, unimLabel,
  unimPanel, uniGUIBaseClasses, uniGUImJSForm;

type
  TUniButtonsUIBackForwardButtons = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimPanel1: TUnimPanel;
    UnimLabel1: TUnimLabel;
    UnimButton2: TUnimButton;
    UnimPanel2: TUnimContainerPanel;
    UnimButton5: TUnimButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniButtonsUIBackForwardButtons);

end.
