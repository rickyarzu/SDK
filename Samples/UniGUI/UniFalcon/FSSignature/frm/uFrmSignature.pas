unit uFrmSignature;

interface

uses
  UniFSSignature,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniImage, uniGUIBaseClasses, uniPanel,
  uniButton, uniBitBtn, UniFSButton, uniHTMLFrame, uniScrollBox;

type
  TfrmSignature = class(TUniFrame)
    pnlCenter: TUniPanel;
    imgFalconSistemas: TUniImage;
    lblVersion: TUniLabel;
    Signature: TUniFSSignature;
    btnClear: TUniFSButton;
    btnSaveAsJpeg: TUniFSButton;
    lbl1: TUniLabel;
    btnSaveAsPng: TUniFSButton;
    btnSaveAsSvg: TUniFSButton;
    ScrollBox: TUniScrollBox;
    img1: TUniImage;
    btnOtherSignature: TUniFSButton;
    btnIsEmpty: TUniFSButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnSaveAsJpegClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnSaveAsPngClick(Sender: TObject);
    procedure btnSaveAsSvgClick(Sender: TObject);
    procedure SignatureGetImage(Sender: TObject; PathImage: string);
    procedure btnOtherSignatureClick(Sender: TObject);
    procedure btnIsEmptyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIServer, uFrmSignatureOther;

{$R *.dfm}

procedure TfrmSignature.btnClearClick(Sender: TObject);
begin
  Signature.ClearSignature;
end;

procedure TfrmSignature.btnIsEmptyClick(Sender: TObject);
begin
  if Signature.GetSignatureIsEmpty then
    ShowMessage('Is Empty!')
  else
    ShowMessage('Not Is Empty');
end;

procedure TfrmSignature.btnOtherSignatureClick(Sender: TObject);
begin
  frmSignatureOther.ShowModal();
end;

procedure TfrmSignature.btnSaveAsJpegClick(Sender: TObject);
begin
  Signature.GetImage('image/jpeg');
end;

procedure TfrmSignature.btnSaveAsPngClick(Sender: TObject);
begin
  Signature.GetImage('image/png');
end;

procedure TfrmSignature.btnSaveAsSvgClick(Sender: TObject);
begin
  Signature.GetImage('image/svg+xml');
end;

procedure TfrmSignature.SignatureGetImage(Sender: TObject; PathImage: string);
begin
  img1.Url := UniServerInstance.LocalCacheURL + ExtractFileName(PathImage);
  UniSession.AddJS('window.open("'+img1.Url+'")');
end;

procedure TfrmSignature.UniFrameCreate(Sender: TObject);
begin
  lblVersion.Caption := 'UniFSSignature - Component Version: '+UniFSSignature.PackageVersion;
end;

initialization
  RegisterClass(TfrmSignature);

end.
