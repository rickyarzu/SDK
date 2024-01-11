//Mobile Panel = Panels
unit PanelsMobilePanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, unimPanel, uniGUIBaseClasses, uniGUImJSForm,
  uniCheckBox, unimCheckBox;

type
  TUniPanelsMobilePanel = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimPanel1: TUnimPanel;
    UnimPanel3: TUnimPanel;
    UnimCheckBox1: TUnimCheckBox;
    UnimCheckBox2: TUnimCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniPanelsMobilePanel);

end.
