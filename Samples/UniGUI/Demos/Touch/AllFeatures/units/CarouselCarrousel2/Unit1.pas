unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniGUIBaseClasses, uniEdit, unimEdit,Unit2;

type
  TUnimCarouselSubForm1 = class(TUnimForm)
    UnimEdit1: TUnimEdit;
    UnimButton1: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimCarouselSubForm1: TUnimCarouselSubForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimCarouselSubForm1: TUnimCarouselSubForm1;
begin
  Result := TUnimCarouselSubForm1(UniMainModule.GetFormInstance(TUnimCarouselSubForm1));
end;

procedure TUnimCarouselSubForm1.UnimButton1Click(Sender: TObject);
begin
  UnimCarouselSubForm2.Show;
end;

end.
