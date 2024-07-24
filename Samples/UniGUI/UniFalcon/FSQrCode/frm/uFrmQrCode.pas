unit uFrmQrCode;

interface

uses
  UniFSQrCode,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIFrame, uniGUIBaseClasses, uniPanel, uniLabel, uniEdit,
  Vcl.Imaging.pngimage, uniImage, uniMultiItem, uniComboBox, uniSpinEdit,
  uniButton, uniBitBtn, UniFSButton, uniHTMLFrame, uniTrackBar;

type
  TfrmQrCode = class(TUniFrame)
    pnlQrCode: TUniPanel;
    pnl1: TUniPanel;
    lblVersion: TUniLabel;
    QrCode: TUniFSQrCode;
    QrCode1: TUniFSQrCode;
    QrCode2: TUniFSQrCode;
    QrCode3: TUniFSQrCode;
    QrCode4: TUniFSQrCode;
    btnGenerate: TUniFSButton;
    imgFalconSistemas: TUniImage;
    pnlCenter: TUniPanel;
    lbl1: TUniLabel;
    cmbRender: TUniComboBox;
    lbl2: TUniLabel;
    lbl3: TUniLabel;
    cmbLevel: TUniComboBox;
    edtFill: TUniEdit;
    lbl4: TUniLabel;
    lbl5: TUniLabel;
    edtBackgroundColor: TUniEdit;
    lbl6: TUniLabel;
    edtContent: TUniEdit;
    lbl7: TUniLabel;
    edtLabelQr: TUniEdit;
    lbl8: TUniLabel;
    lbl9: TUniLabel;
    cmbModes: TUniComboBox;
    lbl10: TUniLabel;
    edtFontName: TUniEdit;
    lbl11: TUniLabel;
    edtFontColor: TUniEdit;
    lbl12: TUniLabel;
    edtUrlImage: TUniEdit;
    tcbRadius: TUniTrackBar;
    tcbMinVersion: TUniTrackBar;
    UniLabel1: TUniLabel;
    tcbSize: TUniTrackBar;
    UniLabel2: TUniLabel;
    tcbPosX: TUniTrackBar;
    lbl13: TUniLabel;
    tcbPosY: TUniTrackBar;
    btn1: TUniFSButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure QrCodeGetImage(Sender: TObject; PathImage: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIServer;

{$R *.dfm}

procedure TfrmQrCode.btn1Click(Sender: TObject);
begin
  QrCode.GetImage();
end;

procedure TfrmQrCode.btnGenerateClick(Sender: TObject);
begin
  QrCode.QrOptions.Render := TQrRender(cmbRender.ItemIndex);
  QrCode.QrOptions.MinVersion := tcbMinVersion.Position;
  QrCode.QrOptions.Level := TQrLevel(cmbLevel.ItemIndex);
  QrCode.QrOptions.Fill := edtFill.Text;
  QrCode.QrOptions.BackGroundColor := edtBackgroundColor.Text;
  QrCode.QrOptions.Content := edtContent.Text;
  QrCode.QrOptions.LabelQr := edtLabelQr.Text;
  QrCode.QrOptions.Radius := tcbRadius.Position;
  QrCode.QrOptions.SizeLabelQr := tcbSize.Position;
  QrCode.QrOptions.PositionLabelQrX := tcbPosX.Position;
  QrCode.QrOptions.PositionLabelQrY := tcbPosY.Position;
  QrCode.QrOptions.Mode := TQrModes(cmbModes.ItemIndex);
  QrCode.QrOptions.FontName := edtFontName.Text;
  QrCode.QrOptions.FontColor := edtFontColor.Text;
  QrCode.QrOptions.ImageUrl := edtUrlImage.Text;

  QrCode.Generate;
end;

procedure TfrmQrCode.QrCodeGetImage(Sender: TObject; PathImage: string);
var
  vUrl: string;
begin
  vUrl := UniServerInstance.LocalCacheURL + ExtractFileName(PathImage);
  UniSession.AddJS('window.open("'+vUrl+'")');
end;

procedure TfrmQrCode.UniFrameCreate(Sender: TObject);
begin
  lblVersion.Caption := 'UniFSQrCode - Component Version: '+UniFSQrCode.PackageVersion;
end;

initialization
  RegisterClass(TfrmQrCode);

end.
