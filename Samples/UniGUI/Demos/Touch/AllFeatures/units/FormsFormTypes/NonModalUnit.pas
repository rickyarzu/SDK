unit NonModalUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm;

type
  TUnimFormnonModal = class(TUnimForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimFormnonModal: TUnimFormnonModal;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimFormnonModal: TUnimFormnonModal;
begin
  Result := TUnimFormnonModal(UniMainModule.GetFormInstance(TUnimFormnonModal));
end;

end.
