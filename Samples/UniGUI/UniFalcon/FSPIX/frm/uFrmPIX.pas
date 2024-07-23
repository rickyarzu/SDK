unit uFrmPIX;

interface

uses
  UniFSPIX, FS.Pix, UniFSQrCode, UniFSButton, UniFSMaskEdit,
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIFrame, uniGUIBaseClasses, uniPanel, uniLabel, uniEdit, uniButton,
  uniBitBtn, uniImage, uniMultiItem, uniComboBox, uniMemo;

type
  TfrmPIX = class(TUniFrame)
    pnlQrCode: TUniPanel;
    lblVersion: TUniLabel;
    imgFalconSistemas: TUniImage;
    pnlCenter: TUniPanel;
    lbl12: TUniLabel;
    btnGenerate: TUniFSButton;
    cmbTipo: TUniComboBox;
    lbl1: TUniLabel;
    lblImg: TUniLabel;
    btnBaixar: TUniFSButton;
    lbl2: TUniLabel;
    edtBeneficiario: TUniEdit;
    edtValor: TUniNumberEdit;
    lbl3: TUniLabel;
    lbl4: TUniLabel;
    edtIdentificador: TUniEdit;
    edtChave: TUniFSMaskEdit;
    lbl5: TUniLabel;
    edtCidade: TUniEdit;
    QrPix: TUniFSPix;
    memPayLoad: TUniMemo;
    lbl6: TUniLabel;
    lbl7: TUniLabel;
    memImageBase64: TUniMemo;
    btnPayLoad: TUniFSButton;
    btn1: TUniFSButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure QrCodeGetImage(Sender: TObject; PathImage: string);
    procedure cmbTipoCloseUp(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
    procedure QrPixGetImage(Sender: TObject; PathImage: string);
    procedure btnBaixarClick(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure btnPayLoadClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnGenerateAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIServer;

{$R *.dfm}

procedure TfrmPIX.btn1Click(Sender: TObject);
begin
  memImageBase64.Lines.Clear;
  memImageBase64.Lines.Text := QrPix.Pix.GetImageBase64();
end;

procedure TfrmPIX.btnBaixarClick(Sender: TObject);
begin
  QrPix.GetImage;
end;

procedure TfrmPIX.btnGenerateAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  //
end;

procedure TfrmPIX.btnGenerateClick(Sender: TObject);
begin
  QrPix.Pix.TipoChave := TTipoChave(cmbTipo.ItemIndex);
  QrPix.Pix.Chave := edtChave.Text;
  QrPix.Pix.Cidade := edtCidade.Text;
  QrPix.Pix.Beneficiario := edtBeneficiario.Text;
  QrPix.Pix.Valor := edtValor.Value;
  QrPix.Pix.Identificador := edtIdentificador.Text;

  QrPix.GeneratePix;
end;

procedure TfrmPIX.btnPayLoadClick(Sender: TObject);
begin
  memPayLoad.Lines.Clear;
  memPayLoad.Lines.Text := QrPix.Pix.GetPayLoad();
end;

procedure TfrmPIX.cmbTipoCloseUp(Sender: TObject);
begin
  if cmbTipo.ItemIndex = 0 then
    edtChave.Mask := '(99) 99999-9999';
  if cmbTipo.ItemIndex = 1 then
    edtChave.Mask := '';
  if cmbTipo.ItemIndex = 2 then
    edtChave.Mask := '999.999.999-99';
  if cmbTipo.ItemIndex = 3 then
    edtChave.Mask := '99.999.999/9999-99';
  if cmbTipo.ItemIndex = 4 then
    edtChave.Mask := '';
end;

procedure TfrmPIX.QrCodeGetImage(Sender: TObject; PathImage: string);
var
  vUrl: string;
begin
  vUrl := UniServerInstance.LocalCacheURL + ExtractFileName(PathImage);
  UniSession.AddJS('window.open("'+vUrl+'")');
end;

procedure TfrmPIX.QrPixGetImage(Sender: TObject; PathImage: string);
var
  vUrl: string;
begin
  vUrl := UniServerInstance.LocalCacheURL + ExtractFileName(PathImage);
  UniSession.AddJS('window.open("'+vUrl+'")');
end;

procedure TfrmPIX.UniFrameCreate(Sender: TObject);
begin
  lblVersion.Caption := 'UniFSPix - Component Version: '+UniFSPIX.PackageVersion;
end;

procedure TfrmPIX.UniFrameReady(Sender: TObject);
begin
  btnGenerate.OnClick(Sender);
end;

initialization
  RegisterClass(TfrmPIX);

end.
