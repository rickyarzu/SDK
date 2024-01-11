unit SortedList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniMultiItem, unimList;

type
  TSortedForm = class(TUnimForm)
    UnimList1: TUnimList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function SortedForm: TSortedForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function SortedForm: TSortedForm;
begin
  Result := TSortedForm(UniMainModule.GetFormInstance(TSortedForm));
end;

end.
