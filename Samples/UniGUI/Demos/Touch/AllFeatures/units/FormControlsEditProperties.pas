// Edit Properties   = Form Controls
unit FormControlsEditProperties;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, unimEdit, uniGUIBaseClasses,
  uniGUImJSForm, unimPanel;

type
  TUniFormControlsEditProperties = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimEdit3: TUnimEdit;
    UnimEdit4: TUnimEdit;
    UnimEdit5: TUnimEdit;
    UnimPanel1: TUnimContainerPanel;
    UnimPanel2: TUnimContainerPanel;
    UnimPanel3: TUnimContainerPanel;
    UnimPanel4: TUnimContainerPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniFormControlsEditProperties);

end.
