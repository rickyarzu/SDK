unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniPanel, uniGUIFrame, uniGUIBaseClasses, UniFSConfirm,
  UniFSPopup, uniImage, uniSpeedButton, uniLabel, uniButton, uniBitBtn, UniFSButton;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    pnlMenuPrincipal: TUniPanel;
    btnSair: TUniFSButton;
    btnAlertas: TUniFSButton;
    btnAtualizacoes: TUniFSButton;
    btnMinhaConta: TUniFSButton;
    btnSugestoes: TUniFSButton;
    Spb1: TUniSpeedButton;
    Spb2: TUniSpeedButton;
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
    imgFalconSistemas: TUniImage;
    lblVersion: TUniLabel;
    PopupAlerta: TUniFSPopup;
    PopupAtualizacoes: TUniFSPopup;
    Confirm: TUniFSConfirm;
    Popup: TUniFSPopup;
    PopupBottom: TUniFSPopup;
    Popup3: TUniFSPopup;
    Popup4: TUniFSPopup;
    Popup5: TUniFSPopup;
    Popup6: TUniFSPopup;
    UniContainerPanel1: TUniContainerPanel;
    lblProjeto: TUniLabel;
    lblEmpresa: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure PopupAlertaEvents(EventName: string; Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregaAlertas();
    procedure CarregaAtualizacoes();
    procedure NewPagePanel(Name: string);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

{ TMainForm }

procedure TMainForm.CarregaAlertas;
var
  SB: TStringBuilder;
begin
  SB := TStringBuilder.Create;
  try
    SB.Append('<a onClick=ajaxRequest(' + PopupAlerta.JSName +
      ',''popup'',[''act=ativar_usuario'',''cod=125'']); style=''cursor: pointer;''');
    SB.Append(
      ' class=''fs-group-item''><i class=''fas fa-lg fa-user-check text-blue''></i>&nbsp; Ativar Usuário - Clique Aqui </a>');

    SB.Append('<a onClick=ajaxRequest(' + PopupAlerta.JSName +
      ',''popup'',[''act=documentos_pendente'',''cod=126'']); style=''cursor: pointer;''');
    SB.Append(
      ' class=''fs-group-item''><i class=''far fa-lg fa-envelope text-green''></i>&nbsp; Existem documentos pendentes </a>');

    PopupAlerta.SetHtml(SB.ToString);
  finally
    FreeAndNil(SB);
  end;
end;

procedure TMainForm.CarregaAtualizacoes;
var
  SB: TStringBuilder;
begin
  SB := TStringBuilder.Create;
  try
    SB.Append(
      '<a class=''fs-group-item''><i class=''far fa-smile fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append(
      '<a class=''fs-group-item''><i class=''fas fa-sync fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append(
      '<a class=''fs-group-item''><i class=''fas fa-puzzle-piece fa-lg text-red''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append(
      '<a class=''fs-group-item''><i class=''fas fa-sync fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append(
      '<a class=''fs-group-item''><i class=''fas fa-sync fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append(
      '<a class=''fs-group-item''><i class=''fas fa-puzzle-piece fa-lg text-red''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append(
      '<a class=''fs-group-item''><i class=''fas fa-sync fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append(
      '<a class=''fs-group-item''><i class=''fas fa-sync fa-lg text-green''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append(
      '<a class=''fs-group-item''><i class=''fas fa-puzzle-piece fa-lg text-red''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');
    SB.Append(
      '<a class=''fs-group-item''><i class=''far fa-thumbs-up fa-lg text-purple''></i>&nbsp; 05/05/2020 - Foi adicionado um novo recurso na plataforma </a>');

    PopupAtualizacoes.SetHtml(SB.ToString);
  finally
    FreeAndNil(SB);
  end;
end;

procedure TMainForm.NewPagePanel(Name: string);
var
  Pnl: TUniPanel;
  FCurrentFrame: TUniFrameClass;
  Fr: TUniFrame;
begin
  {
    Pnl := TUniPanel.Create(Self);
    Pnl.Name := Name;
    Pnl.Align := alClient;
    Pnl.BorderStyle := ubsNone;
    Pnl.Parent := Self;
    Pnl.LayoutConfig.Width := '100%';


    FCurrentFrame := TUniFrameClass(FindClass(Name));

    Fr := FCurrentFrame.Create(Pnl);
    Fr.Align := alClient;
    Fr.Parent := Pnl;
  }
end;

procedure TMainForm.PopupAlertaEvents(EventName: string; Params: TUniStrings);
begin
  if Params.Values['act'] = 'ativar_usuario' then
    Confirm.Alert('Parabéns!', 'Seu usuário foi ativado com sucesso.', 'far fa-lg fa-smile', TTypeColor.green,
      TTheme.modern);
  if Params.Values['act'] = 'documentos_pendente' then
    ShowMessage('Abertura de tela mostrando os documentos pendentes - código ' + Params.Values['cod']);

end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  CarregaAlertas;
  CarregaAtualizacoes;

  lblVersion.Caption := 'Component Version: ' + UniFSPopup.PackageVersion;
end;

initialization

RegisterAppFormClass(TMainForm);

end.
