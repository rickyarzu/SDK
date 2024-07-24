unit uDmAcessos;

interface

uses
  SysUtils, Classes, Vcl.Menus, uniMainMenu;

type
  TdmAcessos = class(TDataModule)
    MenAcesso: TUniMenuItems;
    ActFinanceiro1: TUniMenuItem;
    actFinCapPainelPagamento: TUniMenuItem;
    actFinCrePainelRecebimento: TUniMenuItem;
    actFinTrbPainelTransferenciaSaldo: TUniMenuItem;
    actFinTrbExtratoContas: TUniMenuItem;
    actFinFcxFluxoCaixa: TUniMenuItem;
    actAdmPainelRecibo: TUniMenuItem;
    ActCadastros1: TUniMenuItem;
    actFinTrbPainelContas: TUniMenuItem;
    actFinCapPainelCategoriaDespesa: TUniMenuItem;
    actFinCrePainelCategoriaReceita: TUniMenuItem;
    actFinCrcPainelFornecedorCliente: TUniMenuItem;
    ActRelatrios1: TUniMenuItem;
    ActRelContasPagar: TUniMenuItem;
    ActRelContasReceber: TUniMenuItem;
    ActRelIRPF: TUniMenuItem;
    ActRelExtratoConciliacao: TUniMenuItem;
    ActAdministrao1: TUniMenuItem;
    ActAdmPainelEmpresa: TUniMenuItem;
    ActAdmPainelUsuario: TUniMenuItem;
    actCfgUsuario: TUniMenuItem;
    actCfgSistema: TUniMenuItem;
    actGrfTelaPrincipal: TUniMenuItem;
    ActSistema1: TUniMenuItem;
    actSisPainelFeedBack: TUniMenuItem;
    actSisAtualizacoes: TUniMenuItem;
    actSisPainelSistema: TUniMenuItem;
    actFecharTodasAbas: TUniMenuItem;
    ActDashboard: TUniMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbreTela(Sender, PageControl: TObject);
  end;

function dmAcessos: TdmAcessos;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule, FS.Abas, uniGUIForm,
  uniPageControl, uniGUIApplication;

function dmAcessos: TdmAcessos;
begin
  Result := TdmAcessos(UniMainModule.GetModuleInstance(TdmAcessos));
end;

{ TdmAcessos }

procedure TdmAcessos.AbreTela(Sender, PageControl: TObject);
var
  vTag : Integer;
  vImageIndex : Integer;
  vNameForm : string;
  vCaption : string;

  Frm : TUniForm;
  FrmClass : TUniFormClass;
begin
  {:: Tag ::

   -1 -> Exit
   0  -> ABA = Close True
   10 -> ABA = Close False
   1  -> FORM}

  vTag  := 0;
  vImageIndex := 0;

  if Sender is TUniMenuItem then
  begin
    vNameForm := TUniMenuItem(Sender).Name;
    vCaption := TUniMenuItem(Sender).Caption;
    vTag := TUniMenuItem(Sender).Tag;
    vImageIndex := TUniMenuItem(Sender).ImageIndex;
  end;

  if vTag = -1 then
    Exit;

  vNameForm := StringReplace(vNameForm,'act','Tfrm',[rfIgnoreCase]);

  if vTag = 0 then
    TAbas.Nova(vNameForm, TUniPageControl(PageControl), vCaption, vImageIndex, True, True);
  if vTag = 10 then
    TAbas.Nova(vNameForm, TUniPageControl(PageControl), vCaption, vImageIndex, False, True);

  if vTag = 1 then
  begin
    FrmClass  := TUniFormClass(FindClass(vNameForm));

    Frm := FrmClass.Create(UniApplication);
    Frm.ShowModal();
  end;
end;

initialization
  RegisterModuleClass(TdmAcessos);

end.
