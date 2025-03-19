unit Janua.VCL.INPS.Redis.frmMain;

interface

uses
  // RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.Menus, VCL.ExtCtrls, VCL.ComCtrls, VCL.StdCtrls,
  VCL.ExtDlgs, VCL.Buttons, AdvMemo,
  // Janua
  Janua.INPS.RedisRequest;

type
  TfrmVCLINPMainRedis = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    Apri1: TMenuItem;
    Apri2: TMenuItem;
    SalvaconNome1: TMenuItem;
    SaveTextFileDialog1: TSaveTextFileDialog;
    OpenTextFileDialog1: TOpenTextFileDialog;
    PageControl1: TPageControl;
    tabTemplates: TTabSheet;
    tabPodRedis: TTabSheet;
    pgProjects: TPageControl;
    tabCommon: TTabSheet;
    lbTemplatesTitle: TLabel;
    grpUserPing: TGroupBox;
    lbPingUtente: TLabel;
    lbPingPassword: TLabel;
    lbPingPasswordSha256: TLabel;
    lbPasswordPingBase64: TLabel;
    edPingUtente: TEdit;
    edPINGPassword: TEdit;
    edPingPasswordSHA: TEdit;
    edPingPasswordBase64: TEdit;
    grpAdmin: TGroupBox;
    lbAdmin: TLabel;
    lbPasswordAdminSHA: TLabel;
    edAdminUser: TEdit;
    edPasswordAdminSHA: TEdit;
    pnlTemplates: TPanel;
    listFields: TListBox;
    pgTemplates: TPageControl;
    tabTemplateSviluppoACL: TTabSheet;
    memTemplateSviluppoACL: TAdvMemo;
    tabTemplateCollaudoACL: TTabSheet;
    memTemplateCollaudoACL: TAdvMemo;
    tabTemplateProdACL: TTabSheet;
    memTemplateProdACL: TAdvMemo;
    tabTemplateDevRequest: TTabSheet;
    memTemplateDevRequest: TAdvMemo;
    tabTemplateTestRequest: TTabSheet;
    memTemplateTestRequest: TAdvMemo;
    tabTemplateProdRequest: TTabSheet;
    memTemplateProdRequest: TAdvMemo;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    CheckBox1: TCheckBox;
    tabSviluppo: TTabSheet;
    tabCollaudo: TTabSheet;
    tabProduzione: TTabSheet;
    pnlMain: TPanel;
    lbAreaFunzionale: TLabel;
    lbMicroservizio: TLabel;
    lbOrganization: TLabel;
    lbPartOf: TLabel;
    lbmaxMemoryPolicy: TLabel;
    lbMicroservizioRedis: TLabel;
    edAreaFunzionaleCodice: TEdit;
    edAreaFunzionaleDescrizione: TEdit;
    edMicroservizio: TEdit;
    edLabelOrganization: TEdit;
    edLabelPartOf: TEdit;
    edMemoryPolicy: TEdit;
    edRedisMSBase: TEdit;
    edRedisServiceName: TEdit;
    pnlMainMenu: TPanel;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    CheckBox2: TCheckBox;
    Panel2: TPanel;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    CheckBox3: TCheckBox;
    PageControl2: TPageControl;
    tabTemplateSviluppo: TTabSheet;
    tabTemplateCollaudo: TTabSheet;
    tabTemplateProduzione: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    GroupBox6: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    Panel3: TPanel;
    ListBox1: TListBox;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    AdvMemo1: TAdvMemo;
    TabSheet4: TTabSheet;
    AdvMemo4: TAdvMemo;
    Panel4: TPanel;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    CheckBox4: TCheckBox;
    Label20: TLabel;
    Panel5: TPanel;
    ListBox2: TListBox;
    PageControl4: TPageControl;
    TabSheet8: TTabSheet;
    AdvMemo8: TAdvMemo;
    TabSheet11: TTabSheet;
    AdvMemo11: TAdvMemo;
    Panel6: TPanel;
    SpeedButton45: TSpeedButton;
    SpeedButton46: TSpeedButton;
    SpeedButton47: TSpeedButton;
    SpeedButton48: TSpeedButton;
    SpeedButton49: TSpeedButton;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton53: TSpeedButton;
    SpeedButton54: TSpeedButton;
    SpeedButton55: TSpeedButton;
    CheckBox5: TCheckBox;
    Label22: TLabel;
    Panel7: TPanel;
    ListBox3: TListBox;
    PageControl5: TPageControl;
    TabSheet13: TTabSheet;
    AdvMemo13: TAdvMemo;
    TabSheet14: TTabSheet;
    AdvMemo14: TAdvMemo;
    TabSheet15: TTabSheet;
    AdvMemo15: TAdvMemo;
    TabSheet16: TTabSheet;
    AdvMemo16: TAdvMemo;
    TabSheet17: TTabSheet;
    AdvMemo17: TAdvMemo;
    TabSheet18: TTabSheet;
    AdvMemo18: TAdvMemo;
    Panel8: TPanel;
    SpeedButton56: TSpeedButton;
    SpeedButton57: TSpeedButton;
    SpeedButton58: TSpeedButton;
    SpeedButton59: TSpeedButton;
    SpeedButton60: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton62: TSpeedButton;
    SpeedButton63: TSpeedButton;
    SpeedButton64: TSpeedButton;
    SpeedButton65: TSpeedButton;
    SpeedButton66: TSpeedButton;
    CheckBox6: TCheckBox;
    procedure Apri1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SalvaconNome1Click(Sender: TObject);
    procedure tabTemplateSviluppoACLShow(Sender: TObject);
    procedure tabTemplateCollaudoACLShow(Sender: TObject);
    procedure tabTemplateProdACLShow(Sender: TObject);
    procedure tabTemplateDevRequestShow(Sender: TObject);
    procedure tabTemplateTestRequestShow(Sender: TObject);
    procedure tabTemplateProdRequestShow(Sender: TObject);
  private
    FRequests: TRequestController;
    FSelectedMemo: TAdvMemo;
    procedure SetRequests(const Value: TRequestController);
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Requests: TRequestController read FRequests write SetRequests;
  end;

var
  frmVCLINPMainRedis: TfrmVCLINPMainRedis;

implementation

{$R *.dfm}

procedure TfrmVCLINPMainRedis.Apri1Click(Sender: TObject);
begin
  if OpenTextFileDialog1.Execute then
  begin
    FRequests.LoadFromFile(OpenTextFileDialog1.FileName);
  end;
end;

constructor TfrmVCLINPMainRedis.Create(AOwner: TComponent);
begin
  inherited;
  FRequests := TRequestController.Create;
end;

destructor TfrmVCLINPMainRedis.Destroy;
begin

  inherited;
end;

procedure TfrmVCLINPMainRedis.FormDestroy(Sender: TObject);
begin
  FRequests.Free;
  FRequests := nil;
end;

procedure TfrmVCLINPMainRedis.SalvaconNome1Click(Sender: TObject);
begin
  if SaveTextFileDialog1.Execute then
  begin
    FRequests.SaveToFile(SaveTextFileDialog1.FileName);
  end;
end;

procedure TfrmVCLINPMainRedis.SetRequests(const Value: TRequestController);
begin
   FRequests := Value;
end;

procedure TfrmVCLINPMainRedis.tabTemplateCollaudoACLShow(Sender: TObject);
begin
  FSelectedMemo := memTemplateCollaudoACL
end;

procedure TfrmVCLINPMainRedis.tabTemplateDevRequestShow(Sender: TObject);
begin
  FSelectedMemo := memTemplateDevRequest
end;

procedure TfrmVCLINPMainRedis.tabTemplateProdACLShow(Sender: TObject);
begin
  FSelectedMemo := memTemplateProdACL
end;

procedure TfrmVCLINPMainRedis.tabTemplateProdRequestShow(Sender: TObject);
begin
  FSelectedMemo := memTemplateProdRequest
end;

procedure TfrmVCLINPMainRedis.tabTemplateSviluppoACLShow(Sender: TObject);
begin
  FSelectedMemo := memTemplateSviluppoACL
end;

procedure TfrmVCLINPMainRedis.tabTemplateTestRequestShow(Sender: TObject);
begin
  FSelectedMemo := memTemplateTestRequest
end;

end.
