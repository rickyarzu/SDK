// Accordion Layout = Layout Management
unit LayoutManagementAccordionLayout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTreeView, uniRadioGroup, uniPageControl,
  uniGUIBaseClasses, uniPanel;

type
  TUniLayoutManagementAccordionLayout = class(TUniFrame)
    UniPanelA: TUniPanel;
    UniPanel1: TUniPanel;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniPanel2: TUniPanel;
    UniRadioGroup1: TUniRadioGroup;
    UniPanel3: TUniPanel;
    UniTreeView1: TUniTreeView;
    UniContainerPanel1: TUniContainerPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniLayoutManagementAccordionLayout);

end.
