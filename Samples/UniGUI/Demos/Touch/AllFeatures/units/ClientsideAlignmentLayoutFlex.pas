//Layout & Flex = Clientside Alignment
unit ClientsideAlignmentLayoutFlex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniToolBar, unimToolbar, unimPanel,
  uniGUIBaseClasses, uniGUImJSForm;

type
  TUniClientsideAlignmentLayoutFlex = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimPanel1: TUnimPanel;
    UnimPanel2: TUnimPanel;
    UnimPanel3: TUnimPanel;
    UnimPanel4: TUnimPanel;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton3: TUnimToolButton;
    UnimToolButton4: TUnimToolButton;
    UnimToolButton5: TUnimToolButton;
    UnimToolButton1: TUnimToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniClientsideAlignmentLayoutFlex);

end.
