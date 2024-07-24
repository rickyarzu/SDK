unit uFrmCapture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniImage, unimImage;

type
  TfrmCapture = class(TUnimForm)
    img1: TUnimImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCapture: TfrmCapture;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmCapture: TfrmCapture;
begin
  Result := TfrmCapture(UniMainModule.GetFormInstance(TfrmCapture));
end;

end.
