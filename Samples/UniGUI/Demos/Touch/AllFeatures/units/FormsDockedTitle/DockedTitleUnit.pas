unit DockedTitleUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  unimPanel, uniEdit, unimEdit, unimToggle, uniGUIBaseClasses, uniButton,
  unimButton;

type
  TUniDockedForm = class(TUnimForm)
    UnimButton1: TUnimButton;
    UnimToggle1: TUnimToggle;
    UnimNumberEdit1: TUnimNumberEdit;
    UnimPanel1: TUnimPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniDockedForm: TUniDockedForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniDockedForm: TUniDockedForm;
begin
  Result := TUniDockedForm(UniMainModule.GetFormInstance(TUniDockedForm));
end;

end.
