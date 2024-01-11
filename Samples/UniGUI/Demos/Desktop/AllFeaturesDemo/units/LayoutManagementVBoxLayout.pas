// VBox Layout = Layout Management
unit LayoutManagementVBoxLayout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniPanel, uniGUIBaseClasses;

type
  TUniLayoutManagementVBoxLayout = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel2: TUniPanel;
    UniButton1: TUniButton;
    UniPanel1: TUniPanel;
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
  RegisterClass(TUniLayoutManagementVBoxLayout);

end.
