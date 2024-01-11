//AllFeatures: FieldSet,Desktop FieldSet,icon-form-fieldtypes
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniEdit, uniGUIBaseClasses,
  uniFieldSet, uniCheckBox, uniLabel, uniDateTimePicker, uniMultiItem,
  uniComboBox, uniPanel;

type
  TMainForm = class(TUniForm)
    UniFieldSet1: TUniFieldSet;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniFieldSet2: TUniFieldSet;
    UniEdit3: TUniEdit;
    UniCheckBox1: TUniCheckBox;
    UniLabel1: TUniLabel;
    UniNumberEdit1: TUniNumberEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    UniComboBox1: TUniComboBox;
    UniContainerPanel1: TUniContainerPanel;
    UniDateTimePicker3: TUniDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
