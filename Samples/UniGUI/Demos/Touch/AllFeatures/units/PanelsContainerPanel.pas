//Container Panel = Panels
unit PanelsContainerPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniEdit, unimEdit,
  uniGUIBaseClasses, uniGUImJSForm;

type
  TUniPanelsContainerPanel = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimEdit1: TUnimEdit;
    UnimButton1: TUnimButton;
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
