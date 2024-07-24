unit uFrmLoginNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, UniFSTheme,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, FS.Cookies,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, UniFSCombobox,
  uniMultiItem, uniComboBox, uniLabel, uniCheckBox, uniButton, uniBitBtn,
  UniFSButton, uniEdit, uniPageControl, uniImage, uniHTMLFrame, FS.Exception,
  System.Generics.Collections, UniFSConfirm, uniTimer, Vcl.Imaging.pngimage;

type
  TfrmLoginNew = class(TUniFrame)
    pnlBackground: TUniPanel;
    pnlLoginTransparent: TUniPanel;
    pnlLogin: TUniPanel;
    pgcLogin: TUniPageControl;
    TabLogin: TUniTabSheet;
    pnlBottom: TUniPanel;
    lblTituloSistema: TUniLabel;
    lblSubTitulo: TUniLabel;
    imgLogo: TUniImage;
    lbllLinkTermos: TUniLabel;
    lblVersao: TUniLabel;
    lblDireitos: TUniLabel;
    lblSuporte: TUniLabel;
    pnlSep: TUniPanel;
    pnlControl1: TUniPanel;
    pnlControl2: TUniPanel;
    lbl1: TUniLabel;
    cmbEmpresa: TUniFSComboBox;
    btnContinuarEmpresa: TUniFSButton;
    cmbUsuario: TUniComboBox;
    edtSenha: TUniEdit;
    lblEsqueciMinhaSenha: TUniLabel;
    chkLembrar: TUniCheckBox;
    btnConectar: TUniFSButton;
    btnCadastrar: TUniFSButton;
    Confirm: TUniFSConfirm;
    tmrLogin: TUniTimer;
    lblImg: TUniLabel;
    lblSobreMobile: TUniLabel;
    lblFacebook: TUniLabel;
    lbllLinkSite: TUniLabel;
    imgGoogle: TUniImage;
    imgApple: TUniImage;
    lblSubTitulo1: TUniLabel;
    lblSobreMobile1: TUniLabel;
    lblQrCode: TUniLabel;
    procedure pnlBackgroundResize(Sender: TUniControl; OldWidth,
      OldHeight: Integer);
    procedure UniFrameCreate(Sender: TObject);
    procedure pnlBackgroundAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure tmrLoginTimer(Sender: TObject);
    procedure lblQrCodeClick(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
  private
    { Private declarations }
    vAdminHabilitado : Boolean;
    vTentativaLogin : Integer;

    procedure DefineRegrasLayout;

    procedure SetCookies;
    procedure GetListNomesCookies;

    procedure Conectar;
  public
    { Public declarations }
  end;

const SISTEMA = 'FALCON FINANCAS|';

implementation

{$R *.dfm}

uses Main, MainModule, ServerModule, uniGUIApplication, uDmToast;

procedure TfrmLoginNew.btnConectarClick(Sender: TObject);
begin
  Conectar;
end;

procedure TfrmLoginNew.Conectar;
begin
  UniSession.AddJS('$(''body'').preloader({text: ''Autenticando usuário...''});');
  tmrLogin.Enabled := True;
end;

procedure TfrmLoginNew.DefineRegrasLayout;
var
  Node: string;
begin
  pgcLogin.ActivePage := TabLogin;

  if UniServerModule.NodeMode then
    Node := ' ('+ UniServerModule.NodeId.ToString+')';

  lblVersao.Caption := UniFSTheme.PackageVersion + Node;
  lblDireitos.Caption := 'Copyright @' + FormatDateTime('YYYY', Now) + ' Falcon Sistemas';

  pnlBottom.Color := clBtnFace;
end;

procedure TfrmLoginNew.GetListNomesCookies;
var
  Cookies: TCookies;
  List: TStringList;
  I: Integer;
begin
  Cookies := TCookies.Create(Self);
  try
    Cookies.Sistema := SISTEMA;
    List  := Cookies.GetListNomeSistema(SISTEMA);

    cmbUsuario.Items.Clear;
    for I := 0 to List.Count -1 do
      cmbUsuario.Items.Add(List[I]);
  finally
    FreeAndNil(Cookies);
    FreeAndNil(List);
  end;
end;

procedure TfrmLoginNew.lblQrCodeClick(Sender: TObject);
begin
  Confirm.Alert(
    'Aponte a câmera do celular',
    '<img src="https://www.financeiro.app/images/svg/qr-code.svg" width="350" height="350" hspace="0" vspace="0">',
    '',
    TTypeColor.blue,
    TTheme.modern);
end;

procedure TfrmLoginNew.pnlBackgroundAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = 'resize' then
    cmbUsuario.SetFocus;
end;

procedure TfrmLoginNew.pnlBackgroundResize(Sender: TUniControl; OldWidth,
  OldHeight: Integer);
begin
  pnlLoginTransparent.Top := (UniMainModule.SistemaLogado.HeightScreen div 2) - (pnlLoginTransparent.Height div 2);
  pnlLoginTransparent.Left := (UniMainModule.SistemaLogado.WidthScreen div 2) - (pnlLoginTransparent.Width div 2);

  pnlLoginTransparent.Visible := True;
  pnlBottom.Visible := True;
end;

procedure TfrmLoginNew.SetCookies;
var
  Cookies: TCookies;
begin
  Cookies := TCookies.Create(Self);
  try
    Cookies.Sistema := SISTEMA;
    Cookies.Nome := cmbUsuario.Text;
    Cookies.DiasExpira := 60;
    Cookies.SetCookies;
  finally
    FreeAndNil(Cookies);
  end;
end;

procedure TfrmLoginNew.tmrLoginTimer(Sender: TObject);
begin
  try
    try
      Sleep(1000);
      MainForm.NewPagePanel('TfrmModFinanceiro');
      Self.Destroy;
    finally
      UniSession.AddJS('$(''body'').preloader(''remove'');');
    end;
  except
    on e: ExceptionMsg do
      Confirm.Alert('',e.Message,'fas fa-exclamation-triangle', TTypeColor.orange, TTheme.modern);
  end;
end;

procedure TfrmLoginNew.UniFrameCreate(Sender: TObject);
begin
  DefineRegrasLayout;

  vAdminHabilitado  := False;
  vTentativaLogin := 0;

  GetListNomesCookies;
  cmbUsuario.ItemIndex  := 0;
  chkLembrar.Checked := edtSenha.Text <> EmptyStr;
end;

initialization
  RegisterClass(TfrmLoginNew);

end.
