// Select  = Form Controls
unit FormControlsSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMultiItem, unimSelect, uniGUIBaseClasses,
  uniGUImJSForm, unimPanel, uniLabel, unimLabel;

type
  TUniFormControlsSelect = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimSelect1: TUnimSelect;
    UnimSelect2: TUnimSelect;
    UnimSelect3: TUnimSelect;
    UnimPanel1: TUnimPanel;
    UnimPanel2: TUnimPanel;
    UnimLabel1: TUnimLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniFormControlsSelect);

end.
