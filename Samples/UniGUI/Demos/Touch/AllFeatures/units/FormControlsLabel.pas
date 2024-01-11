//Label  = Form Controls
unit FormControlsLabel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, unimLabel, uniGUIBaseClasses,
  uniGUImJSForm;

type
  TUniFormControlsLabel = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimLabel3: TUnimLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniFormControlsLabel);

end.
