unit ufrmResult;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniMemo, unimMemo, uniButton, uniBitBtn, unimBitBtn;

type
  TfrmResult = class(TUnimForm)
    memResult: TUnimMemo;
    btnFalcon: TUnimBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmResult: TfrmResult;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmResult: TfrmResult;
begin
  Result := TfrmResult(UniMainModule.GetFormInstance(TfrmResult));
end;

end.
