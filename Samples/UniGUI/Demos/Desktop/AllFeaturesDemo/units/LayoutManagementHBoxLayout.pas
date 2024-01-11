// HBox Layout = Layout Management
unit LayoutManagementHBoxLayout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniGUIBaseClasses;

type
  TUniLayoutManagementHBoxLayout = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanelParent: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


   initialization
  RegisterClass(TUniLayoutManagementHBoxLayout);
end.
