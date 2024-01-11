unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUImClasses, uniGUImForm, uniGUImJSForm, uniGUIBaseClasses,
  uniMultiItem, unimList;

type
  TUnimForm1 = class(TUnimForm)
    UnimList1: TUnimList;
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimForm1: TUnimForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimForm1: TUnimForm1;
begin
  Result := TUnimForm1(UniMainModule.GetFormInstance(TUnimForm1));
end;

procedure TUnimForm1.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  case Sender.ButtonId of
    0 : Close;
  end;
end;

end.
