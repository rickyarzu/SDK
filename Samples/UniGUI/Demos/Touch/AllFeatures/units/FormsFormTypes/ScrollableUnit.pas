unit ScrollableUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniCheckBox, unimCheckBox, uniGUIBaseClasses, uniDateTimePicker,
  unimDatePicker;

type
  TUniScrollForm = class(TUnimForm)
    UnimDatePicker1: TUnimDatePicker;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimCheckBox1: TUnimCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniScrollForm: TUniScrollForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniScrollForm: TUniScrollForm;
begin
  Result := TUniScrollForm(UniMainModule.GetFormInstance(TUniScrollForm));
end;

end.
