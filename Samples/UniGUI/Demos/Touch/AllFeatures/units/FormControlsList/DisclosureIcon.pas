unit DisclosureIcon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniMultiItem, unimList;

type
  TDisclosureIconForm = class(TUnimForm)
    UnimList1: TUnimList;
    procedure UnimList1Disclose(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function DisclosureIconForm: TDisclosureIconForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function DisclosureIconForm: TDisclosureIconForm;
begin
  Result := TDisclosureIconForm(UniMainModule.GetFormInstance(TDisclosureIconForm));
end;

procedure TDisclosureIconForm.UnimList1Disclose(Sender: TObject);
begin
  ShowMessage(UnimList1.Text);
end;

end.
