unit TitleFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, unimMenu, TitleSubUnit;

type
  TTitleForm = class(TUnimForm)
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function TitleForm: TTitleForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function TitleForm: TTitleForm;
begin
  Result := TTitleForm(UniMainModule.GetFormInstance(TTitleForm));
end;

procedure TTitleForm.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  case Sender.ButtonId of
    0 : SubForm.Show();
  end;
end;

end.
