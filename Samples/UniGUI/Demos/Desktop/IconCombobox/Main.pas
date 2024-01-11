//AllFeatures: Combobox,Icon Combobox,icon-custom-template-combo
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniImageList,
  uniMultiItem, uniComboBox;

type
  TMainForm = class(TUniForm)
    UniNativeImageList1: TUniNativeImageList;
    UniComboBox1: TUniComboBox;
    UniComboBox2: TUniComboBox;
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
