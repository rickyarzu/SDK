unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses, uniButton,
  unimButton, uniBitBtn, unimBitBtn;

type
  TUnimForm3 = class(TUnimForm)
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimForm3: TUnimForm3;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimForm3: TUnimForm3;
begin
  Result := TUnimForm3(UniMainModule.GetFormInstance(TUnimForm3));
end;

end.
