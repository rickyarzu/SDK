unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniMultiItem, unimSelect, uniLabel, unimLabel, jpeg,
  uniGUIBaseClasses, uniImage, unimImage;

type
  TUnimCarouselSubForm2 = class(TUnimForm)
    UnimImage1: TUnimImage;
    UnimLabel1: TUnimLabel;
    UnimSelect1: TUnimSelect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimCarouselSubForm2: TUnimCarouselSubForm2;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimCarouselSubForm2: TUnimCarouselSubForm2;
begin
  Result := TUnimCarouselSubForm2(UniMainModule.GetFormInstance(TUnimCarouselSubForm2));
end;

end.
