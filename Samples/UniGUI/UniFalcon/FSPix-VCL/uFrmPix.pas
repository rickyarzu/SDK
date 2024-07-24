unit uFrmPix;

interface

uses
  Winapi.Windows, ShellAPI,
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, FS.Pix;

type
  TfrmPixVCL = class(TForm)
    lbl12: TLabel;
    btnGenerate: TButton;
    cmbTipo: TComboBox;
    lbl1: TLabel;
    btnBaixar: TButton;
    lbl2: TLabel;
    edtBeneficiario: TEdit;
    edtValor: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    edtIdentificador: TEdit;
    edtChave: TEdit;
    lbl5: TLabel;
    edtCidade: TEdit;
    imgPix: TImage;
    memPayLoad: TMemo;
    lbl6: TLabel;
    lbl7: TLabel;
    memImageBase64: TMemo;
    procedure btnGenerateClick(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPixVCL: TfrmPixVCL;

implementation

{$R *.dfm}

procedure TfrmPixVCL.btnBaixarClick(Sender: TObject);
var
  vFile: string;
begin
  vFile := ExtractFileDir(Application.ExeName)+ '\img\' + IntToStr(Random(99999)) + '.bmp';
  ForceDirectories(ExtractFileDir(Application.ExeName)+ '\img\');
  imgPix.Picture.SaveToFile(vFile);

  ShellExecute(handle, 'open', PChar(vFile), '', '', SW_SHOWNORMAL);
end;

procedure TfrmPixVCL.btnGenerateClick(Sender: TObject);
var
  Pix: TPix;
  vImgPix: TBitmap;
begin
  Pix := TPix.Create;
  try
    Pix.TipoChave := TTipoChave(cmbTipo.ItemIndex);
    Pix.Chave := edtChave.Text;
    Pix.Cidade := edtCidade.Text;
    Pix.Beneficiario := edtBeneficiario.Text;
    Pix.Valor := StrToFloat(edtValor.Text);
    Pix.Identificador := edtIdentificador.Text;
    memPayLoad.Lines.Text := Pix.GetPayLoad();
    memImageBase64.Lines.Text := Pix.GetImageBase64();
    try
      vImgPix := Pix.GetImage(5);
      imgPix.Picture.Assign(vImgPix);
    finally
      vImgPix.Free;
    end;
  finally
    FreeAndNil(Pix);
  end;
end;

end.
