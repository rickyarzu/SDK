// Dock and Align = Layout Management
unit LayoutManagementDockAndAlign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniToolBar,
  uniStatusBar, uniImageList;

type
  TUniLayoutManagementDockAndAlign = class(TUniFrame)
    UniNativeImageList1: TUniNativeImageList;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniStatusBar1: TUniStatusBar;
    UniToolBar2: TUniToolBar;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniToolButton5: TUniToolButton;
    UniSimplePanel1: TUniSimplePanel;
    UniPanelParent: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

 initialization
  RegisterClass(TUniLayoutManagementDockAndAlign);

end.
