unit Main;

interface

uses
  UniFSTheme,
  UniFSButton,
  UniFSConfirm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniLabel, uniGUIBaseClasses,
  uniPanel, uniButton, uniBitBtn, uniEdit, uniGroupBox, uniTrackBar,
  uniRadioGroup, uniCheckBox, uniCalendar, uniPageControl, uniProgressBar,
  uniMenuButton, uniSpeedButton, uniBasicGrid, uniDBGrid, uniSpinEdit,
  uniDateTimePicker, Vcl.Menus, uniMainMenu,  Data.DB,
  Datasnap.DBClient, UniFSMenuButton, uniImageList, uniTreeView, uniScrollBox,
  uniMultiItem, uniComboBox, uniTreeMenu;

type
  TMainForm = class(TUniForm)
    pnl1: TUniPanel;
    lblTheme: TUniLabel;
    Popup1: TUniPopupMenu;
    ActControle011: TUniMenuItem;
    ActControle021: TUniMenuItem;
    CDS: TClientDataSet;
    DS: TDataSource;
    ActControle031: TUniMenuItem;
    ActControle041: TUniMenuItem;
    ActOld1: TUniMenuItem;
    scrMaster: TUniScrollBox;
    pgcAdmin: TUniPageControl;
    tab1: TUniTabSheet;
    tab2: TUniTabSheet;
    pgc1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    pgb1: TUniProgressBar;
    dbg1: TUniDBGrid;
    spb1: TUniSpeedButton;
    spb2: TUniSpeedButton;
    spb3: TUniSpeedButton;
    btn1: TUniFSMenuButton;
    btn4: TUniFSButton;
    UniTabSheet2: TUniTabSheet;
    tab3: TUniTabSheet;
    tabClosable: TUniTabSheet;
    pnl2: TUniPanel;
    UniCheckBox1: TUniCheckBox;
    rdg1: TUniRadioGroup;
    trc1: TUniTrackBar;
    dat1: TUniDateTimePicker;
    grp1: TUniGroupBox;
    lbl2: TUniLabel;
    edt1: TUniEdit;
    lbl3: TUniLabel;
    edt2: TUniEdit;
    lbl4: TUniLabel;
    edt3: TUniEdit;
    lbl5: TUniLabel;
    edt4: TUniEdit;
    btn2: TUniFSButton;
    btn3: TUniFSButton;
    pnlTreeView: TUniPanel;
    tvwMenu: TUniTreeView;
    pnl3: TUniPanel;
    btnExpandirMenu: TUniFSButton;
    btnRecolherMenu: TUniFSButton;
    cmbSearch: TUniComboBox;
    btn5: TUniFSButton;
    tab4: TUniTabSheet;
    ContainerPanel1: TUniContainerPanel;
    pnlA: TUniPanel;
    pnl4: TUniPanel;
    pnl5: TUniPanel;
    pnl6: TUniPanel;
    pnl7: TUniPanel;
    cmb1: TUniComboBox;
    Confirm: TUniFSConfirm;
    btnResumoFinanceiro: TUniFSButton;
    tab5: TUniTabSheet;
    ContainerPanel: TUniContainerPanel;
    pnlBorder: TUniPanel;
    menAcesso: TUniTreeMenu;
    pnlMenuTop: TUniPanel;
    UniFSButton1: TUniFSButton;
    MenAcesso1: TUniMenuItems;
    ActFinanceiro1: TUniMenuItem;
    ActFinCapPainelPagamento1: TUniMenuItem;
    ActFinCrePainelRecebimento1: TUniMenuItem;
    ActFinTrbPainelTransferenciaSaldo1: TUniMenuItem;
    ActFinTrbExtratoContas1: TUniMenuItem;
    ActFinFcxFluxoCaixa1: TUniMenuItem;
    ActAdmPainelRecibo1: TUniMenuItem;
    ActCadastros1: TUniMenuItem;
    ActFinTrbPainelContas1: TUniMenuItem;
    ActFinCapPainelCategoriaDespesa1: TUniMenuItem;
    ActFinCrePainelCategoriaReceita1: TUniMenuItem;
    ActFinCrcPainelFornecedorCliente1: TUniMenuItem;
    ActRelatrios1: TUniMenuItem;
    ActRelContasPagar: TUniMenuItem;
    ActRelContasReceber: TUniMenuItem;
    ActRelIRPF: TUniMenuItem;
    ActRelExtratoConciliacao: TUniMenuItem;
    ActAdministrao1: TUniMenuItem;
    ActAdmPainelEmpresa: TUniMenuItem;
    ActAdmPainelUsuario: TUniMenuItem;
    ActCfgUsuario1: TUniMenuItem;
    ActCfgSistema1: TUniMenuItem;
    ActGrfTelaPrincipal1: TUniMenuItem;
    ActSistema1: TUniMenuItem;
    ActSisPainelFeedBack1: TUniMenuItem;
    ActSisAtualizacoes1: TUniMenuItem;
    ActSisPainelSistema1: TUniMenuItem;
    ActFecharTodasAbas1: TUniMenuItem;
    imglFA: TUniNativeImageList;
    imgl20: TUniNativeImageList;
    untrmn1: TUniTreeMenu;
    UniMenuItems1: TUniMenuItems;
    UniMenuItem1: TUniMenuItem;
    UniMenuItem2: TUniMenuItem;
    UniMenuItem3: TUniMenuItem;
    UniMenuItem4: TUniMenuItem;
    UniMenuItem5: TUniMenuItem;
    UniMenuItem6: TUniMenuItem;
    UniMenuItem7: TUniMenuItem;
    UniMenuItem8: TUniMenuItem;
    UniMenuItem9: TUniMenuItem;
    UniMenuItem10: TUniMenuItem;
    UniMenuItem11: TUniMenuItem;
    UniMenuItem12: TUniMenuItem;
    UniMenuItem13: TUniMenuItem;
    UniMenuItem14: TUniMenuItem;
    UniMenuItem15: TUniMenuItem;
    UniMenuItem16: TUniMenuItem;
    UniMenuItem17: TUniMenuItem;
    UniMenuItem18: TUniMenuItem;
    UniMenuItem19: TUniMenuItem;
    UniMenuItem20: TUniMenuItem;
    UniMenuItem21: TUniMenuItem;
    UniMenuItem22: TUniMenuItem;
    UniMenuItem23: TUniMenuItem;
    UniMenuItem24: TUniMenuItem;
    UniMenuItem25: TUniMenuItem;
    UniMenuItem26: TUniMenuItem;
    UniMenuItem27: TUniMenuItem;
    UniMenuItem28: TUniMenuItem;
    procedure UniFormCreate(Sender: TObject);
    procedure btnExpandirMenuClick(Sender: TObject);
    procedure btnRecolherMenuClick(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure cmbSearchChange(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure menAcessoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, System.TypInfo, uFrmLogin,
  uFrmCommon;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btn2Click(Sender: TObject);
begin
  Confirm.Question('Confirma Gravação','REGISTRO Nº 584440',
    'fa fa-question-circle-o', TTypeColor.blue, TTheme.modern,
    procedure(Button: TConfirmButton)
    begin
      if Button = Yes then
      begin
        Confirm.Alert('Registro Gravado com Sucesso','','fa fa-thumbs-o-up', TTypeColor.green, TTheme.modern);
      end;
      if Button = No then
        Confirm.Alert('','Não foi possivel concluir a gravação entre em contato','', TTypeColor.orange, TTheme.modern);

    end
  );
end;

procedure TMainForm.btn4Click(Sender: TObject);
begin
  frmCommon.ShowModal();
end;

procedure TMainForm.btnExpandirMenuClick(Sender: TObject);
begin
  tvwMenu.FullExpand;
end;

procedure TMainForm.btnRecolherMenuClick(Sender: TObject);
begin
  tvwMenu.FullCollapse;
end;

procedure TMainForm.cmbSearchChange(Sender: TObject);
var
  S : string;
  I : Integer;
  aExpand : Boolean;
begin
  cmbSearch.text := LowerCase(Trim(cmbSearch.text));

  if (Length(cmbSearch.text) > 1) or (cmbSearch.text = '') then
  begin
    aExpand := cmbSearch.text<>'';
    TvwMenu.BeginUpdate;
    try
      TvwMenu.ResetData;
      for I := 0 to TvwMenu.Items.Count - 1 do
      begin
        S := LowerCase(TvwMenu.Items[I].Text);
        TvwMenu.Items[I].Visible := (Length(cmbSearch.text) = 0) or (Pos(cmbSearch.text, S)>0);
        TvwMenu.Items[I].Expanded := aExpand;
      end;
    finally
      TvwMenu.EndUpdate;
    end;
  end;

end;

procedure TMainForm.menAcessoClick(Sender: TObject);
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
    Confirm.Alert(Nd.Text,'Icons </br> https://fontawesome.com/v4.7.0/icons/');
  end;

end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  lblTheme.Caption := 'MainModule -> FSTheme -> '+ GetEnumName(TypeInfo(TStyle), Integer(UniMainModule.FSTheme.Style));

  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Fornecedor', ftString,30);
    FieldDefs.Add('CNPJ', ftString,20);
    FieldDefs.Add('Endereço', ftString,28);
    FieldDefs.Add('CEP', ftString,12);
    FieldDefs.Add('Telefone', ftString,20);
    FieldDefs.Add('Ativo', ftString,7);
    FieldDefs.Add('Cadastro', ftDateTime);
    CreateDataSet;
    AppendRecord(['Fulano da Silva Bento', '40.455.888/0001-71', 'Rua das Bromelias Nº8000','78450-000','(45) 9-9918-2584','Não','10/10/2017']);
    AppendRecord(['João Figueiredo', '23.453.888/0032-45', 'Rua das Vitória Nº 52','78450-000','(66) 9-9918-6515','Sim','10/10/2017']);
  end;

  pgcAdmin.ActivePage := tab5;

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
