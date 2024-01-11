// UI Shape Buttons = Buttons
unit ButtonsUIShapeButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniGUIBaseClasses,
  uniGUImJSForm, unimPanel, uniLabel, unimLabel, unimScrollBox;

type
  TUniButtonsUIShapeButtons = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton3: TUnimButton;
    UnimButton8: TUnimButton;
    UnimButton9: TUnimButton;
    UnimPanel6: TUnimPanel;
    UnimLabel3: TUnimLabel;
    UnimPanel7: TUnimContainerPanel;
    UnimPanel8: TUnimContainerPanel;
    UnimPanel9: TUnimContainerPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


initialization
  RegisterClass(TUniButtonsUIShapeButtons);

end.
