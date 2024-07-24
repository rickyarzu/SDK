unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, UniFSQrCode, UnimFSQrCode, uniLabel, unimLabel;

type
  TMainmForm = class(TUnimForm)
    QrCode: TUnimFSQrCode;
    lbl1: TUnimLabel;
    lbl2: TUnimLabel;
    lbl3: TUnimLabel;
    lbl4: TUnimLabel;
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  if Sender.ButtonId = 0 then
  begin
    QrCode.QrOptions.Content := IntToStr(Random(999999999));
    QrCode.Generate;
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
