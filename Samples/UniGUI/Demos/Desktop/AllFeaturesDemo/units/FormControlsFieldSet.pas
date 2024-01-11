//FieldSet = Form Controls
unit FormControlsFieldSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDateTimePicker, uniEdit, uniLabel, uniCheckBox,
  uniMultiItem, uniComboBox, uniFieldSet, uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsFieldSet = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniFieldSet1: TUniFieldSet;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniComboBox1: TUniComboBox;
    UniFieldSet2: TUniFieldSet;
    UniEdit3: TUniEdit;
    UniCheckBox1: TUniCheckBox;
    UniLabel1: TUniLabel;
    UniNumberEdit1: TUniNumberEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    UniContainerPanel2: TUniContainerPanel;
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
