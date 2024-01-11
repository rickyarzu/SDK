unit StripedList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniMultiItem, unimList;

type
  TStripedForm = class(TUnimForm)
    UnimList1: TUnimList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function StripedForm: TStripedForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function StripedForm: TStripedForm;
begin
  Result := TStripedForm(UniMainModule.GetFormInstance(TStripedForm));
end;

end.
