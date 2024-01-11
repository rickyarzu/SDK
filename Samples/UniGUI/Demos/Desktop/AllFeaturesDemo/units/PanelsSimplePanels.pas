// Simple Panels = Panels
unit PanelsSimplePanels;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniButton;

type
  TUniPanelsSimplePanels = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel4: TUniPanel;
    UniPanel6: TUniPanel;
    UniPanel5: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


initialization
  RegisterClass(TUniPanelsSimplePanels);

end.
