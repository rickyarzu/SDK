unit uFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniCheckBox, uniEdit, uniButton, uniBitBtn,
  UniFSButton, uniMultiItem, uniComboBox, UniFSCombobox, uniImage, uniHTMLFrame,
  uniPageControl, uniLabel, uniGUIBaseClasses, uniPanel;

type
  TfrmLogin = class(TUniForm)
    pgcLogin: TUniPageControl;
    TabLogin: TUniTabSheet;
    lblTituloSistema: TUniLabel;
    lblSubTitulo: TUniLabel;
    imgLogo: TUniImage;
    pnlSep: TUniPanel;
    pnlControl2: TUniPanel;
    lbl1: TUniLabel;
    cmbEmpresa: TUniFSComboBox;
    btnContinuarEmpresa: TUniFSButton;
    pnlControl1: TUniPanel;
    cmbUsuario: TUniComboBox;
    edtSenha: TUniEdit;
    lblEsqueciMinhaSenha: TUniLabel;
    chkLembrar: TUniCheckBox;
    btnConectar: TUniFSButton;
    btnCadastrar: TUniFSButton;
    procedure btnConectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uDmToast;

function frmLogin: TfrmLogin;
begin
  Result := TfrmLogin(UniMainModule.GetFormInstance(TfrmLogin));
end;

procedure TfrmLogin.btnConectarClick(Sender: TObject);
begin
  dmToast.Toast.Success('Usuário conectado com sucesso','');
  Self.Close;
end;

end.
