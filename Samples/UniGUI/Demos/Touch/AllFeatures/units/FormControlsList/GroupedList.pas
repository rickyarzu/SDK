unit GroupedList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniMultiItem, unimList;

type
  TGroupedForm = class(TUnimForm)
    UnimList1: TUnimList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function GroupedForm: TGroupedForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function GroupedForm: TGroupedForm;
begin
  Result := TGroupedForm(UniMainModule.GetFormInstance(TGroupedForm));
end;

end.
