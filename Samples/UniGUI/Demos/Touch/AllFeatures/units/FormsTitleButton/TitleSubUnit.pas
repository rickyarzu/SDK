unit TitleSubUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm;

type
  TSubForm = class(TUnimForm)
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function SubForm: TSubForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function SubForm: TSubForm;
begin
  Result := TSubForm(UniMainModule.GetFormInstance(TSubForm));
end;

procedure TSubForm.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
    ShowMessage('Button Id: '+IntToStr(Sender.ButtonId)+' '+Sender.IconCls)

end;

end.
