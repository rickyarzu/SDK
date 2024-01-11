//TabPanel = TabPanel
unit TabPanelTabPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, unimLabel, uniPanel, uniPageControl,
  unimTabPanel, uniGUIBaseClasses, uniGUImJSForm, unimToggle, uniDateTimePicker,
  unimDatePicker, unimPanel;

type
  TUniTabPanelTabPanel = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimTabPanel1: TUnimTabPanel;
    UnimTabSheet1: TUnimTabSheet;
    UnimTabSheet2: TUnimTabSheet;
    UnimTabSheet3: TUnimTabSheet;
    UnimLabel1: TUnimLabel;
    UnimDatePicker1: TUnimDatePicker;
    UnimToggle1: TUnimToggle;
    UnimPanel1: TUnimPanel;
    UnimPanel2: TUnimPanel;
    UnimPanel3: TUnimPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



initialization
  RegisterClass(TUniTabPanelTabPanel);

end.
