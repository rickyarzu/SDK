//FieldSet = Form Controls
unit FormControlsFieldSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, pngimage, uniImage, unimImage,
  uniTrackBar, unimSlider, uniMultiItem, unimSelect, unimToggle,
  uniDateTimePicker, unimDatePicker, uniCheckBox, unimCheckBox, uniEdit,
  unimEdit, unimFieldSet, uniButton, unimButton, uniGUIBaseClasses,
  uniGUImJSForm;

type
  TUniFormControlsFieldSet = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimFieldSet1: TUnimFieldSet;
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimCheckBox1: TUnimCheckBox;
    UnimDatePicker1: TUnimDatePicker;
    UnimToggle1: TUnimToggle;
    UnimSelect1: TUnimSelect;
    UnimSlider1: TUnimSlider;
    UnimFieldSet2: TUnimFieldSet;
    UnimEdit3: TUnimEdit;
    UnimSelect2: TUnimSelect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniFormControlsFieldSet);

end.
