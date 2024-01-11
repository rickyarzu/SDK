//Container Panel = Panels
unit PanelsContainerPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniMemo, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses;

type
  TUniPanelsContainerPanel = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniMemo1: TUniMemo;
    UniContainerPanel3: TUniContainerPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniPanel2: TUniPanel;
    UniPanel1: TUniPanel;
    UniContainerPanel6: TUniContainerPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniMemo2: TUniMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniPanelsContainerPanel);

end.
