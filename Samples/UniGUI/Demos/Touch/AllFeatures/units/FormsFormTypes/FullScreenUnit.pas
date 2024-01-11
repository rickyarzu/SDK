unit FullScreenUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniLabel, unimLabel;

type
  TUniFullScreenForm = class(TUnimForm)
    UnimLabel1: TUnimLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniFullScreenForm: TUniFullScreenForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniFullScreenForm: TUniFullScreenForm;
begin
  Result := TUniFullScreenForm(UniMainModule.GetFormInstance(TUniFullScreenForm));
end;

end.
