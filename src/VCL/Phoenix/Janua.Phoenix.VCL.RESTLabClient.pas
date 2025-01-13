unit Janua.Phoenix.VCL.RESTLabClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.JSON, Data.DB,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.Mask, VCL.ExtCtrls, VCL.ComCtrls,
  VCL.Grids, VCL.DBGrids, VCL.Buttons, VCL.DBCtrls, VCL.ExtDlgs,
  // TMS
  AdvMemo, advmjson, JvExDBGrids, JvDBGrid,
  // Forms
  uJanuaVclForm, Janua.Controls.Forms.Impl, Janua.VCL.Controls.Forms.Impl, Janua.Controls.Forms.Intf,
  // Janua
  Janua.Core.Classes, Janua.REST.Types, Janua.Core.Types, Janua.Http.Types, Janua.REST.Intf,
  Janua.Phoenix.dmIBLabSync;

type
  TfrmPhoenixVCLRESTLabClient = class(TJanuaVCLFormModel, IJanuaForm)
    Panel1: TPanel;
    edUsername: TLabeledEdit;
    edPassword: TLabeledEdit;
    edServerUrl: TLabeledEdit;
    btnRestCall: TButton;
    PageControl1: TPageControl;
    tabJsonList: TTabSheet;
    tabJsonConfigurazioni: TTabSheet;
    memJsonResponse: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    pnlListaEstintori: TPanel;
    Panel2: TPanel;
    memConfigurazioni: TAdvMemo;
    tabUpdateReports: TTabSheet;
    memConfigurazioniHead: TAdvMemo;
    memTmpConfigurazioni: TAdvMemo;
    memRawResponse: TAdvMemo;
    dsLabEstintori: TDataSource;
    tabLog: TTabSheet;
    memLog: TMemo;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    dsDetailEstintori: TDataSource;
    btnOpen: TButton;
    btnUpdateData: TButton;
    tabUpdateData: TTabSheet;
    Panel3: TPanel;
    JvDBGrid1: TJvDBGrid;
    SaveTextFileDialog1: TSaveTextFileDialog;
    btnSaveJson: TButton;
    ProgressBar1: TProgressBar;
    procedure btnRestCallClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnSaveJsonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnUpdateDataClick(Sender: TObject);
  private
    FdmFDACPhoenixLab: TdmPhoenixIBLab;
    { Private declarations }
    procedure StatoLavorazioni;
    procedure Configurazioni;
    procedure ElaborateJson;
    procedure SetdmFDACPhoenixLab(const Value: TdmPhoenixIBLab);
  public
    { Public declarations }
    property dmFDACPhoenixLab: TdmPhoenixIBLab read FdmFDACPhoenixLab write SetdmFDACPhoenixLab;
  end;

var
  frmPhoenixVCLRESTLabClient: TfrmPhoenixVCLRESTLabClient;

implementation

uses
  Janua.Application.Framework, Janua.REST.Client, Janua.Core.JSON;

{$R *.dfm}

procedure TfrmPhoenixVCLRESTLabClient.btnOpenClick(Sender: TObject);
begin
  FdmFDACPhoenixLab.Refresh;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnRestCallClick(Sender: TObject);
begin
  memLog.Lines.Add(DateTimeToStr(Now()));
  StatoLavorazioni;
  Configurazioni;
  ElaborateJson;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnSaveJsonClick(Sender: TObject);
begin
  if self.SaveTextFileDialog1.Execute then
    memJsonResponse.Lines.SaveToFile(self.SaveTextFileDialog1.FileName)
end;

procedure TfrmPhoenixVCLRESTLabClient.btnUpdateDataClick(Sender: TObject);
begin
  FdmFDACPhoenixLab.UpdateData;
  memJsonResponse.Lines.Text := FdmFDACPhoenixLab.JsonResponse;
  memLog.Lines.Text := FdmFDACPhoenixLab.Log.Text;
end;

procedure TfrmPhoenixVCLRESTLabClient.Configurazioni;
var
  // TRESTClient = class( IRESTClient)
  lClient: IJanuaRESTClient;
  lJson: string;
  lJsonObject, lConfJson: TJsonObject;
begin
  TJanuaApplication.RestClientConf.Username := edUsername.Text;
  TJanuaApplication.RestClientConf.Password := edPassword.Text;
  TJanuaApplication.RestClientConf.Server := edServerUrl.Text;
  lClient := TJanuaRESTClient.Create;
  // https://www.assoantincendio.com/PhoenixMobile/PhxConfigurazioni.php?PhxAccount=***!Admin&PhxPassword=***!PhoenixFly
  lClient.PasswordParam := 'PhxPassword';
  lClient.UserParam := 'PhxAccount';
  lClient.SetMimeType(TJanuaMimeType.jmtTextPlain);
  lClient.AuthenticationType := Janua.REST.Types.TAuthenticationType.jatGetParams;
  if lClient.Execute(TJanuaHttpMethod.jhmGet, ['PhoenixMobile', 'PhxConfigurazioni.php']) then
  begin
    (*
      lJson := StringReplace(lClient.Content, '"{', '{', [rfReplaceAll]);
      lJson := StringReplace(lJson, '}",', '},', [rfReplaceAll]);
      lJson := StringReplace(lJson, '\"', '"', [rfReplaceAll]);
      var
      testPos := Pos('\"1', lJson);
      lJson := StringReplace(lJson, '\"1', ' 1', [rfReplaceAll]);
      lJson := StringReplace(lJson, '\\"', ' - ', [rfReplaceAll]);
      testPos := Pos('}"\"}"', lJson);
      lJson := StringReplace(lJson, '}"\"}"', '}}', [rfReplaceAll]);
      lJson := StringReplace(lJson, '}"}', '}}', [rfReplaceAll]);
    *)
    // lJson := StringReplace(lJson, '"COMUNE_FATTURAZIONE"', 'COMUNE_FATTURAZIONE', [rfReplaceAll]);
    memConfigurazioniHead.Lines.Text := JsonPretty(lClient.Content);
  end;
  lJsonObject := Janua.Core.JSON.JsonParse(lClient.Content);
  JsonValue(lJsonObject, 'Configurazione', lJson);
  memTmpConfigurazioni.Lines.Text := lJson;
  lJsonObject := Janua.Core.JSON.JsonParse(lJson);
  memConfigurazioni.Lines.Text := JsonPretty(lJsonObject);
end;

procedure TfrmPhoenixVCLRESTLabClient.ElaborateJson;
begin
  FdmFDACPhoenixLab.ElaborateJson;
  memJsonResponse.Lines.Text := FdmFDACPhoenixLab.JsonResponse;
end;

procedure TfrmPhoenixVCLRESTLabClient.FormCreate(Sender: TObject);
begin
  FdmFDACPhoenixLab := TdmPhoenixIBLab.Create(self)
end;

procedure TfrmPhoenixVCLRESTLabClient.SetdmFDACPhoenixLab(const Value: TdmPhoenixIBLab);
begin
  FdmFDACPhoenixLab := Value;
end;

procedure TfrmPhoenixVCLRESTLabClient.StatoLavorazioni;
begin
  FdmFDACPhoenixLab.StatoLavorazioni;
  memRawResponse.Lines.Text := FdmFDACPhoenixLab.RawResponse;
end;

end.
