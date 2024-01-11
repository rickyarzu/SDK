// Segmented Button  = Buttons
unit ButtonsSegmentedButton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniGUImJSForm,
  unimSegmentedButton, unimPanel;

type
  TUniButtonsSegmentedButton = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimSegmentedButton1: TUnimSegmentedButton;
    UnimPanel1: TUnimContainerPanel;
    UnimSegmentedButton2: TUnimSegmentedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniButtonsSegmentedButton);

end.
