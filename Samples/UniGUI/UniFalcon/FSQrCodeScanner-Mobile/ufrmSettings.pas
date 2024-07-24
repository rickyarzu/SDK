unit ufrmSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, UniFSQrCodeScanner,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, uniGUIBaseClasses,
  uniButton, uniBitBtn, unimBitBtn, uniCheckBox, unimCheckBox, unimScrollBox,
  uniMultiItem, unimSelect, uniEdit, unimEdit;

type
  TfrmSettings = class(TUnimForm)
    btnFalcon: TUnimBitBtn;
    ScrollBox: TUnimScrollBox;
    chkQR_CODE: TUnimCheckBox;
    SelectBoxType: TUnimSelect;
    edtBoxWidth: TUnimEdit;
    edtBoxHeight: TUnimEdit;
    chkAZTEC: TUnimCheckBox;
    chkCODABAR: TUnimCheckBox;
    chkCODE_39: TUnimCheckBox;
    chkCODE_93: TUnimCheckBox;
    chkCODE_128: TUnimCheckBox;
    chkDATA_MATRIX: TUnimCheckBox;
    chkMAXICODE: TUnimCheckBox;
    chkITF: TUnimCheckBox;
    chkEAN_13: TUnimCheckBox;
    chkEAN_8: TUnimCheckBox;
    chkPDF_417: TUnimCheckBox;
    chkRSS_14: TUnimCheckBox;
    chkRSS_EXPANDED: TUnimCheckBox;
    chkUPC_A: TUnimCheckBox;
    chkUPC_E: TUnimCheckBox;
    chkUPC_EAN_EXTENSION: TUnimCheckBox;
    SelectBoxAspectRatio: TUnimSelect;
    procedure btnFalconClick(Sender: TObject);
    procedure UnimFormAfterShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmSettings: TfrmSettings;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Mainm, System.TypInfo;

function frmSettings: TfrmSettings;
begin
  Result := TfrmSettings(UniMainModule.GetFormInstance(TfrmSettings));
end;

procedure TfrmSettings.btnFalconClick(Sender: TObject);
begin
  MainmForm.QrCodeScanner.QrBoxFunction.QrBoxType := TQrBoxType(SelectBoxType.ItemIndex);
  MainmForm.QrCodeScanner.QrBoxFunction.QrAspectRatio := TQrAspectRatio(SelectBoxAspectRatio.ItemIndex);
  MainmForm.QrCodeScanner.QrBoxFunction.QrBoxWidth := StrToInt(edtBoxWidth.Text);
  MainmForm.QrCodeScanner.QrBoxFunction.QrBoxHeight := StrToInt(edtBoxHeight.Text);
  MainmForm.QrCodeScanner.QrSupportedScanTypes.QR_CODE := chkQR_CODE.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.AZTEC := chkAZTEC.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.CODABAR := chkCODABAR.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.CODE_39 := chkCODE_39.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.CODE_93 := chkCODE_93.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.CODE_128 := chkCODE_128.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.DATA_MATRIX := chkDATA_MATRIX.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.MAXICODE := chkMAXICODE.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.ITF := chkITF.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.EAN_13 := chkEAN_13.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.EAN_8 := chkEAN_8.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.PDF_417 := chkPDF_417.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.RSS_14 := chkRSS_14.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.RSS_EXPANDED := chkRSS_EXPANDED.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.UPC_A := chkUPC_A.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.UPC_E := chkUPC_E.Checked;
  MainmForm.QrCodeScanner.QrSupportedScanTypes.UPC_EAN_EXTENSION := chkUPC_EAN_EXTENSION.Checked;

  MainmForm.QrCodeScanner.UpdateConfigCamera();
  Self.Close;
end;

procedure TfrmSettings.UnimFormAfterShow(Sender: TObject);
begin
  SelectBoxType.ItemIndex := Integer(MainmForm.QrCodeScanner.QrBoxFunction.QrBoxType);
  SelectBoxAspectRatio.ItemIndex := Integer(MainmForm.QrCodeScanner.QrBoxFunction.QrAspectRatio);
  edtBoxWidth.Text := MainmForm.QrCodeScanner.QrBoxFunction.QrBoxWidth.ToString;
  edtBoxHeight.Text := MainmForm.QrCodeScanner.QrBoxFunction.QrBoxHeight.ToString;
  chkQR_CODE.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.QR_CODE;
  chkAZTEC.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.AZTEC;
  chkCODABAR.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.CODABAR;
  chkCODE_39.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.CODE_39;
  chkCODE_93.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.CODE_93;
  chkCODE_128.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.CODE_128;
  chkDATA_MATRIX.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.DATA_MATRIX;
  chkMAXICODE.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.MAXICODE;
  chkITF.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.ITF;
  chkEAN_13.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.EAN_13;
  chkEAN_8.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.EAN_8;
  chkPDF_417.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.PDF_417;
  chkRSS_14.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.RSS_14;
  chkRSS_EXPANDED.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.RSS_EXPANDED;
  chkUPC_A.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.UPC_A;
  chkUPC_E.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.UPC_E;
  chkUPC_EAN_EXTENSION.Checked := MainmForm.QrCodeScanner.QrSupportedScanTypes.UPC_EAN_EXTENSION;
end;

end.
