unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses, uniImage, unimImage;

type
  TUnimForm2 = class(TUnimForm)
    UnimImage1: TUnimImage;
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

end.
