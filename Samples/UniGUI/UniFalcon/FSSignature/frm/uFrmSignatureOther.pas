unit uFrmSignatureOther;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniImage, uniScrollBox, uniButton, uniBitBtn,
  UniFSButton, uniPanel, uniHTMLFrame, UniFSSignature, uniGUIBaseClasses,
  uniLabel;

type
  TfrmSignatureOther = class(TUniForm)
    lbl1: TUniLabel;
    Signature: TUniFSSignature;
    btnClear: TUniFSButton;
    btnSaveAsJpeg: TUniFSButton;
    btnSaveAsPng: TUniFSButton;
    btnSaveAsSvg: TUniFSButton;
    ScrollBox: TUniScrollBox;
    img1: TUniImage;
    procedure btnClearClick(Sender: TObject);
    procedure btnSaveAsJpegClick(Sender: TObject);
    procedure btnSaveAsPngClick(Sender: TObject);
    procedure btnSaveAsSvgClick(Sender: TObject);
    procedure SignatureGetImage(Sender: TObject; PathImage: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmSignatureOther: TfrmSignatureOther;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uniGUIServer;

function frmSignatureOther: TfrmSignatureOther;
begin
  Result := TfrmSignatureOther(UniMainModule.GetFormInstance(TfrmSignatureOther));
end;

procedure TfrmSignatureOther.btnClearClick(Sender: TObject);
begin
  Signature.ClearSignature;
end;

procedure TfrmSignatureOther.btnSaveAsJpegClick(Sender: TObject);
begin
  Signature.GetImage('image/jpeg');
end;

procedure TfrmSignatureOther.btnSaveAsPngClick(Sender: TObject);
begin
  Signature.GetImage('image/png');
end;

procedure TfrmSignatureOther.btnSaveAsSvgClick(Sender: TObject);
begin
  Signature.GetImage('image/svg+xml');
end;

procedure TfrmSignatureOther.SignatureGetImage(Sender: TObject;
  PathImage: string);
begin
  img1.Url := UniServerInstance.LocalCacheURL + ExtractFileName(PathImage);
  UniSession.AddJS('window.open("'+img1.Url+'")');
end;

end.
