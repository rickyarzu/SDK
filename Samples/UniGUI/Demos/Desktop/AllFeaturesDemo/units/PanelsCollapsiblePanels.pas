// Collapsible Panels = Panels
unit PanelsCollapsiblePanels;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniPanel,
  uniGUIBaseClasses, uniSplitter;

type
  TUniPanelsCollapsiblePanels = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniSplitter1: TUniSplitter;
    UniSplitter2: TUniSplitter;
    UniSplitter3: TUniSplitter;
    UniSplitter4: TUniSplitter;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniPanel5: TUniPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniPanel6: TUniPanel;
    UniPanel7: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



initialization
  RegisterClass(TUniPanelsCollapsiblePanels);

end.
