unit ModalUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm;

type
  TUniModalForm = class(TUnimForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniModalForm: TUniModalForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniModalForm: TUniModalForm;
begin
  Result := TUniModalForm(UniMainModule.GetFormInstance(TUniModalForm));
end;

end.
