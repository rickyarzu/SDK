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

    // Edit - Common
    edAreaFunzionaleCodice: TEdit;
    edAreaFunzionaleDescrizione: TEdit;
    edLabelOrganization: TEdit;
    edMicroservizio: TEdit;
    edLabelPartOf: TEdit;
    edAdminUser: TEdit;
    edPasswordAdminSHA: TEdit;
    edPingPasswordSHA: TEdit;
    edMemoryPolicy: TEdit;
    edRedisMSBase: TEdit;
    edRedisServiceName: TEdit;
    edPingUtente: TEdit;
    edPINGPassword: TEdit;
    edPingPasswordBase64: TEdit;

    // Lables - Common
    lbAreaFunzionale: TLabel;
    lbMicroservizio: TLabel;
    lbOrganization: TLabel;
    lbPingUtente: TLabel;
    lbPartOf: TLabel;
    lbmaxMemoryPolicy: TLabel;
    lbPingPassword: TLabel;
    lbPingPasswordSha256: TLabel;
    lbAdmin: TLabel;
    lbPasswordPingBase64: TLabel;
    lbPasswordAdminSHA: TLabel;

    // Interface
    lbTemplatesTitle: TLabel;
    SalvaconNome1: TMenuItem;
    pnlMain: TPanel;
    pgProjects: TPageControl;
    tabCommon: TTabSheet;
    tabSviluppo: TTabSheet;
    tabCollaudo: TTabSheet;
    tabProduzione: TTabSheet;
    grpUserPing: TGroupBox;
    grpAdmin: TGroupBox;
    SaveTextFileDialog1: TSaveTextFileDialog;
    OpenTextFileDialog1: TOpenTextFileDialog;
    lbMicroservizioRedis: TLabel;
    pnlTemplates: TPanel;
    listFields: TListBox;
    // Templates

    pgTemplates: TPageControl;
    tabTemplateSviluppoACL: TTabSheet;
    tabTemplateCollaudoACL: TTabSheet;
    tabTemplateProdACL: TTabSheet;
    Panel1: TPanel;
    // Templates Toolbar
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
    memTemplateSviluppoACL: TAdvMemo;
    memTemplateCollaudoACL: TAdvMemo;
    memTemplateProdACL: TAdvMemo;
    tabTemplateDevRequest: TTabSheet;
    tabTemplateTestRequest: TTabSheet;
    tabTemplateProdRequest: TTabSheet;
    memTemplateDevRequest: TAdvMemo;
    memTemplateTestRequest: TAdvMemo;
    memTemplateProdRequest: TAdvMemo;
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
