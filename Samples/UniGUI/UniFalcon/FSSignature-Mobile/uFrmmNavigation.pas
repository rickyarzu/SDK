unit uFrmmNavigation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniURLFrame, unimURLFrame, uniImage;

type
  TfrmmNavigation = class(TUnimForm)
    url: TUnimURLFrame;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmmNavigation: TfrmmNavigation;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmmNavigation: TfrmmNavigation;
begin
  Result := TfrmmNavigation(UniMainModule.GetFormInstance(TfrmmNavigation));
end;

end.
