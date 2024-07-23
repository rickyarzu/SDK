unit uFrmModFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTimer, UniFSPopup, uniLabel, uniPageControl,
  uniButton, uniBitBtn, UniFSButton, uniTreeView, uniTreeMenu, uniPanel,
  uniGUIBaseClasses, UniFSConfirm;

type
  TfrmModFinanceiro = class(TUniFrame)
    Confirm: TUniFSConfirm;
    ContainerPanel: TUniContainerPanel;
    pnlBorder: TUniPanel;
    menAcesso: TUniTreeMenu;
    pnlMenuTop: TUniPanel;
    btnResumoFinanceiro: TUniFSButton;
    pgcControl: TUniPageControl;
    pnlMenuPrincipal: TUniPanel;
    btnSair: TUniFSButton;
    lblFalconFinancas: TUniLabel;
    btnAlertas: TUniFSButton;
    btnAtualizacoes: TUniFSButton;
    btnMenu: TUniFSButton;
    lblUsuarioConectado: TUniLabel;
    lblEmpresa: TUniLabel;
    btnMinhaConta: TUniFSButton;
    btnSugestoes: TUniFSButton;
    PopupAtualizacoes: TUniFSPopup;
    tmrLoad: TUniTimer;
    procedure btnMenuClick(Sender: TObject);
    procedure btnResumoFinanceiroClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure menAcessoClick(Sender: TObject);
    procedure tmrLoadTimer(Sender: TObject);
    procedure UniFrameAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniFrameBeforeReady(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregaAtualizacoes();
  end;

implementation

uses
  uDmAcessos, uniMainMenu, FS.Abas, uDmToast, UniFSToast, MainModule;

{$R *.dfm}

procedure TfrmModFinanceiro.btnMenuClick(Sender: TObject);
begin
  ContainerPanel.Visible := not(ContainerPanel.Visible);
end;

procedure TfrmModFinanceiro.btnResumoFinanceiroClick(Sender: TObject);
begin
  dmAcessos.AbreTela(dmAcessos.ActDashboard, pgcControl);
end;

procedure TfrmModFinanceiro.btnSairClick(Sender: TObject);
begin
  UniApplication.Restart;
end;

procedure TfrmModFinanceiro.CarregaAtualizacoes;
var
  SB: TStringBuilder;
begin
  SB := TStringBuilder.Create;
  try
    SB.Append('<a class=''fs-group-item''><i class=''far fa-smile fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append('<a class=''fs-group-item''><i class=''fas fa-sync fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append('<a class=''fs-group-item''><i class=''fas fa-puzzle-piece fa-lg text-red''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append('<a class=''fs-group-item''><i class=''fas fa-sync fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append('<a class=''fs-group-item''><i class=''fas fa-sync fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append('<a class=''fs-group-item''><i class=''fas fa-puzzle-piece fa-lg text-red''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append('<a class=''fs-group-item''><i class=''fas fa-sync fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append('<a class=''fs-group-item''><i class=''fas fa-sync fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append('<a class=''fs-group-item''><i class=''fas fa-puzzle-piece fa-lg text-red''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append('<a class=''fs-group-item''><i class=''far fa-thumbs-up fa-lg text-purple''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');

    PopupAtualizacoes.SetHtml(SB.ToString);
  finally
    FreeAndNil(SB);
  end;
end;

procedure TfrmModFinanceiro.menAcessoClick(Sender: TObject);
var
  Nd : TUniTreeNode;
  MenItens: TUniMenuItems;
  vI: Integer;
  vII: Integer;
begin
  Nd := menAcesso.Selected;

  if not(Nd.Enabled) then
    Exit;

  if not(Nd.HasChildren) then
  begin
    MenItens := dmAcessos.MenAcesso;

    for vI := 0 to MenItens.Items.Count -1 do
    begin
      if Nd.Text = MenItens.Items[vI].Caption then
      begin
        dmAcessos.AbreTela(MenItens.Items[vI], pgcControl);
        Exit;
      end;

      for vII := 0 to MenItens.Items[vI].Count -1 do
      begin
        if MenItens.Items[vI].Items[vII].Caption = dmAcessos.actFecharTodasAbas.Caption then
        begin
          TAbas.FecharTodas(pgcControl);
          dmAcessos.AbreTela(dmAcessos.actGrfTelaPrincipal,pgcControl);
          Break
        end;
        if Nd.Text = MenItens.Items[vI].Items[vII].Caption then
        begin
          dmAcessos.AbreTela(MenItens.Items[vI].Items[vII], pgcControl);
          Exit;
        end;
      end;
    end;

  end;
end;

procedure TfrmModFinanceiro.tmrLoadTimer(Sender: TObject);
begin
  menAcesso.Items.Item[1].Expand(True);

  dmToast.Toast.Info('Este projeto está incluso dentro do pacote UniFalcon','',TToastPosition.bottomRight);

  dmAcessos.AbreTela(dmAcessos.ActDashboard, pgcControl);
end;

procedure TfrmModFinanceiro.UniFrameAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if SameText(EventName, '_get_param') then
  begin
    with UniMainModule.SistemaLogado do
    begin
      WidthMonitor := Params.Values['width'].ToInteger();
      HeightMonitor := Params.Values['height'].ToInteger();

      UserAgent := UniSession.UserAgent;
    end;
  end;

  if EventName = 'resize' then
  begin
    UniMainModule.SistemaLogado.WidthScreen := Params.Values['w'].ToInteger();
    UniMainModule.SistemaLogado.HeightScreen := Params.Values['h'].ToInteger();
  end;
end;

procedure TfrmModFinanceiro.UniFrameBeforeReady(Sender: TObject);
begin
  tmrLoad.Enabled := True;
end;

procedure TfrmModFinanceiro.UniFrameCreate(Sender: TObject);
begin
  CarregaAtualizacoes;
end;

initialization
  RegisterClass(TfrmModFinanceiro);

end.
