unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm,  uniGUImForm, uniButton, unimButton, unimCarousel,
  uniGUIBaseClasses, uniGUImJSForm, unimPanel;

type
  TUnimForm2 = class(TUnimForm)
    UnimCarousel1: TUnimCarousel;
    UnimCarouselPage1: TUnimCarouselPage;
    UnimCarouselPage2: TUnimCarouselPage;
    UnimCarouselPage3: TUnimCarouselPage;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimButton3: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
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

procedure TUnimForm2.UnimButton1Click(Sender: TObject);
begin
  UnimCarousel1.ActivePage:=UnimCarouselPage2;
end;

end.
