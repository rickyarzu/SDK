unit uFrmLogin;

interface

uses
  {$REGION 'Falcon Sistemas - www.falconsistemas.com.br'}
  UniFSButton,
  {$ENDREGION}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIRegClasses,
  uniGUIForm, uniImage, uniButton, uniBitBtn, uniCheckBox, uniLabel,
  uniEdit, uniGUIBaseClasses, uniMultiItem, uniComboBox;

type
  TUniLoginForm1 = class(TUniLoginForm)
    cmbUsuario: TUniComboBox;
    edtSenha: TUniEdit;
    lblEsqueciMinhaSenha: TUniLabel;
    lblTituloSistema: TUniLabel;
    lblDireitos: TUniLabel;
    lbllLinkTermos: TUniLabel;
    chkSalvarUsuarioSenha: TUniCheckBox;
    lblSubTitulo: TUniLabel;
    btnConectar: TUniFSButton;
    btnCadastrar: TUniFSButton;
    imgLogo: TUniImage;
    lblVersao: TUniLabel;
    procedure btnConectarClick(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, Main,
  System.TypInfo, UniFSTheme;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

procedure TUniLoginForm1.btnConectarClick(Sender: TObject);
begin
  MainForm.ShowModal();
  Self.Hide;
end;

procedure TUniLoginForm1.UniLoginFormCreate(Sender: TObject);
begin
  lblTituloSistema.Caption := 'Falcon Theme '+ GetEnumName(TypeInfo(TStyle), Integer(UniMainModule.FSTheme.Style));
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
