unit ufrmQrCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniSegmentedButton, unimSegmentedButton, uniPanel,
  uniHTMLFrame, UniFSQrCodeScanner, UnimFSQrCodeScanner;

type
  TfrmQrCode = class(TUnimForm)
    SegmentedButton: TUnimSegmentedButton;
    QrCodeScanner: TUnimFSQrCodeScanner;
    procedure SegmentedButtonClick(Sender: TUnimButtonItem);
    procedure QrCodeScannerScanSuccess(Sender: TObject; DecodedResult: string);
    procedure UnimFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CameraBack();
    procedure CameraFront();

    procedure CallBackResult(Sender: TComponent; AResult: Integer);
  end;

function frmQrCode: TfrmQrCode;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ufrmResult;

function frmQrCode: TfrmQrCode;
begin
  Result := TfrmQrCode(UniMainModule.GetFormInstance(TfrmQrCode));
end;

procedure TfrmQrCode.CallBackResult(Sender: TComponent; AResult: Integer);
begin
  if QrCodeScanner.QrCameraDefault = TQrCameDefault.Back then
    CameraBack();
  if QrCodeScanner.QrCameraDefault = TQrCameDefault.Front then
    CameraFront();
end;

procedure TfrmQrCode.CameraBack;
begin
  QrCodeScanner.QrCameraDefault := TQrCameDefault.Back;
  QrCodeScanner.UpdateConfigCamera;
end;

procedure TfrmQrCode.CameraFront;
begin
  QrCodeScanner.QrCameraDefault := TQrCameDefault.Front;
  QrCodeScanner.UpdateConfigCamera;
end;

procedure TfrmQrCode.QrCodeScannerScanSuccess(Sender: TObject;
  DecodedResult: string);
begin
  QrCodeScanner.StopCamera;

  if frmResult.memResult.Lines.Text.IsEmpty then
  begin
    frmResult.memResult.Lines.Add(DecodedResult);
    frmResult.Show(CallBackResult);
  end;
end;

procedure TfrmQrCode.SegmentedButtonClick(Sender: TUnimButtonItem);
begin
  if Sender.ButtonId = 0 then
    CameraBack();
  if Sender.ButtonId = 1 then
    CameraFront();
end;

procedure TfrmQrCode.UnimFormShow(Sender: TObject);
begin
  if QrCodeScanner.QrCameraDefault = TQrCameDefault.Back then
    SegmentedButton.Items[0].Pressed := True;
  if QrCodeScanner.QrCameraDefault = TQrCameDefault.Front then
    SegmentedButton.Items[1].Pressed := True
end;

end.
