unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUImClasses,
  uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, uniGUIBaseClasses,
  uniLabel, unimLabel, uniPanel, uniHTMLFrame, UniFSQrCodeScanner,
  UnimFSQrCodeScanner, unimMemo, uniMemo, unimMenu, uniMultiItem, unimSelect,
  uniButton, uniBitBtn, unimBitBtn;

type
  TMainmForm = class(TUnimForm)
    QrCodeScanner: TUnimFSQrCodeScanner;
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
    procedure QrCodeScannerScanSuccess(Sender: TObject; DecodedResult: string);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CallBackResult(Sender: TComponent; AResult: Integer);
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ufrmResult, ufrmSettings, ufrmQrCode;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.CallBackResult(Sender: TComponent; AResult: Integer);
begin
  QrCodeScanner.StartCameraBack;
end;

procedure TMainmForm.QrCodeScannerScanSuccess(Sender: TObject;
  DecodedResult: string);
begin
  QrCodeScanner.StopCamera;

  if frmResult.memResult.Lines.Text.IsEmpty then
  begin
    frmResult.memResult.Lines.Add(DecodedResult);
    frmResult.Show(CallBackResult);
  end;
end;

procedure TMainmForm.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
var
  Menu: TUnimMenuItem;
begin
  case Sender.ButtonId of
    0: QrCodeScanner.StartCameraBack;
    1: QrCodeScanner.StopCamera;
    4: frmSettings.Show();
    5: frmQrCode.Show();
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
