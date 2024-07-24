unit uFrmPopup;

interface

uses
  UniFSPopup, UniFSButton, Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIFrame, uniLabel, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel,
  uniSpeedButton, UniFSConfirm, uniImage;

type
  TfrmPopup = class(TUniFrame)
    pnlMenuPrincipal: TUniPanel;
    btnSair: TUniFSButton;
    btnAlertas: TUniFSButton;
    btnAtualizacoes: TUniFSButton;
    lblProjeto: TUniLabel;
    lblEmpresa: TUniLabel;
    btnMinhaConta: TUniFSButton;
    btnSugestoes: TUniFSButton;
    PopupAlerta: TUniFSPopup;
    PopupAtualizacoes: TUniFSPopup;
    Confirm: TUniFSConfirm;
    Spb1: TUniSpeedButton;
    Popup: TUniFSPopup;
    Spb2: TUniSpeedButton;
    PopupBottom: TUniFSPopup;
    pnl1: TUniPanel;
    Spb3: TUniSpeedButton;
    Spb4: TUniSpeedButton;
    Spb5: TUniSpeedButton;
    Spb6: TUniSpeedButton;
    Spb7: TUniSpeedButton;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniSpeedButton4: TUniSpeedButton;
    UniSpeedButton5: TUniSpeedButton;
    Popup3: TUniFSPopup;
    Popup4: TUniFSPopup;
    Popup5: TUniFSPopup;
    Popup6: TUniFSPopup;
    imgFalconSistemas: TUniImage;
    lblVersion: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure PopupAlertaEvents(EventName: string; Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregaAlertas();
    procedure CarregaAtualizacoes();
  end;

implementation

{$R *.dfm}

{ TfrmPopup }

procedure TfrmPopup.CarregaAlertas;
var
  SB: TStringBuilder;
begin
  SB := TStringBuilder.Create;
  try
    SB.Append('<a onClick=ajaxRequest('+PopupAlerta.JSName+',''popup'',[''act=ativar_usuario'',''cod=125'']); style=''cursor: pointer;''');
    SB.Append(' class=''fs-group-item''><i class=''fas fa-lg fa-user-check text-blue''></i>&nbsp; Ativar Usuário - Clique Aqui </a>');

    SB.Append('<a onClick=ajaxRequest('+PopupAlerta.JSName+',''popup'',[''act=documentos_pendente'',''cod=126'']); style=''cursor: pointer;''');
    SB.Append(' class=''fs-group-item''><i class=''far fa-lg fa-envelope text-green''></i>&nbsp; Existem documentos pendentes </a>');

    PopupAlerta.SetHtml(SB.ToString);
  finally
    FreeAndNil(SB);
  end;
end;

procedure TfrmPopup.CarregaAtualizacoes;
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

procedure TfrmPopup.PopupAlertaEvents(EventName: string; Params: TUniStrings);
begin
  if Params.Values['act'] = 'ativar_usuario' then
    Confirm.Alert('Parabéns!','Seu usuário foi ativado com sucesso.','far fa-lg fa-smile', TTypeColor.green, TTheme.modern);
  if Params.Values['act'] = 'documentos_pendente' then
    ShowMessage('Abertura de tela mostrando os documentos pendentes - código '+ Params.Values['cod']);
end;

procedure TfrmPopup.UniFrameCreate(Sender: TObject);
begin
  CarregaAlertas;
  CarregaAtualizacoes;

  lblVersion.Caption := 'Component Version: '+UniFSPopup.PackageVersion;
end;

initialization
  RegisterClass(TfrmPopup);

end.
