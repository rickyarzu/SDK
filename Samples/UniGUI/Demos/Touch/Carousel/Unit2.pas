unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUImForm, uniLabel, unimLabel,
  uniGUIBaseClasses, uniMultiItem, unimSelect, jpeg, uniImage,
  unimImage;

type
  TUnimForm2 = class(TUnimForm)
    UnimSelect1: TUnimSelect;
    UnimLabel1: TUnimLabel;
    UnimImage1: TUnimImage;
    procedure UnimSelect1Change(Sender: TObject);
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

procedure TUnimForm2.UnimSelect1Change(Sender: TObject);
begin
  UnimLabel1.Caption := UnimSelect1.Text;
end;

end.
