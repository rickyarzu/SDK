unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImJSForm, uniGUImClasses, uniGUIForm, uniGUImForm, pngimage,
  uniGUIBaseClasses, uniImage, unimImage;

type
  TUnimForm2 = class(TUnimForm)
    UnimImage1: TUnimImage;
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimForm2: TUnimForm2;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimForm2: TUnimForm2;
begin
  Result := TUnimForm2(UniMainModule.GetFormInstance(TUnimForm2));
end;

procedure TUnimForm2.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  if Sender.ButtonId<>0 then
    ShowMessage('Button Id: '+IntToStr(Sender.ButtonId))
  else
    Close;
end;

end.
