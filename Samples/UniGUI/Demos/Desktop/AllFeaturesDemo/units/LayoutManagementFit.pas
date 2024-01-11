// Fit = Layout Management
unit LayoutManagementFit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniGUIBaseClasses;

type
  TUniLayoutManagementFit = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanelA: TUniPanel;
    UniPanel1: TUniPanel;
    UniPanelB: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanelParent: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniLayoutManagementFit);

end.
