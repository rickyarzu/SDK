// Anchor = Layout Management
unit LayoutManagementAnchor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniGUIBaseClasses;

type
  TUniLayoutManagementAnchor = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel2: TUniPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniPanelA: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

 initialization
  RegisterClass(TUniLayoutManagementAnchor);

end.
