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
  Janua.Phoenix.dmIBLabSync, CRGrid, Janua.VCL.EnhCRDBGrid;

type
  TfrmPhoenixVCLRESTLabClient = class(TJanuaVCLFormModel, IJanuaForm)
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    dsLabEstintori: TDataSource;
    dsDetailEstintori: TDataSource;
    SaveTextFileDialog1: TSaveTextFileDialog;
    PageControl1: TPageControl;
    tabLab: TTabSheet;
    tabTestJson: TTabSheet;
    PageControl2: TPageControl;
    tabJsonList: TTabSheet;
    memJsonResponse: TAdvMemo;
    pnlListaEstintori: TPanel;
    btnSaveJson: TButton;
    ProgressBar1: TProgressBar;
    memRawResponse: TAdvMemo;
    tabUpdateData: TTabSheet;
    Panel3: TPanel;
    JvDBGrid1: TJvDBGrid;
    tabJsonConfigurazioni: TTabSheet;
    Panel2: TPanel;
    memConfigurazioni: TAdvMemo;
    memConfigurazioniHead: TAdvMemo;
    memTmpConfigurazioni: TAdvMemo;
    tabUpdateReports: TTabSheet;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    btnOpen: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    tabLog: TTabSheet;
    memLog: TMemo;
    Panel1: TPanel;
    edUsername: TLabeledEdit;
    edPassword: TLabeledEdit;
    edServerUrl: TLabeledEdit;
    btnRestCall: TButton;
    btnUpdateData: TButton;
    tabTestREST: TTabSheet;
    RemoteDB: TTabSheet;
    PageControl3: TPageControl;
    tabConfigurazini: TTabSheet;
    Panel5: TPanel;
    memJsonConfigurazioni: TAdvMemo;
    btnTestConfigurazini: TButton;
    pnlTestJson: TPanel;
    PageControl4: TPageControl;
    tabTestLuci: TTabSheet;
    TabTestSprinkler: TTabSheet;
    EnhCRDBGrid1: TEnhCRDBGrid;
    EnhCRDBGrid2: TEnhCRDBGrid;
    EnhCRDBGrid3: TEnhCRDBGrid;
    tabGruppi: TTabSheet;
    tabPorte: TTabSheet;
    tabImpianti: TTabSheet;
    grSprinkler: TEnhCRDBGrid;
    EnhCRDBGrid5: TEnhCRDBGrid;
    EnhCRDBGrid6: TEnhCRDBGrid;
    EnhCRDBGrid7: TEnhCRDBGrid;
    tabEstintori: TTabSheet;
    EnhCRDBGrid8: TEnhCRDBGrid;
    tabIdranti: TTabSheet;
    btnApriTutti: TButton;
    EnhCRDBGrid9: TEnhCRDBGrid;
    EnhCRDBGrid10: TEnhCRDBGrid;
    tabRilevatoriFumi: TTabSheet;
    EnhCRDBGrid11: TEnhCRDBGrid;
    grdInterventiGruppi: TEnhCRDBGrid;
    grdInterventiPorte: TEnhCRDBGrid;
    EnhCRDBGrid4: TEnhCRDBGrid;
    tabSintesiEstintori: TTabSheet;
    EnhCRDBGrid12: TEnhCRDBGrid;
    TabSheet1: TTabSheet;
    Panel6: TPanel;
    EnhCRDBGrid13: TEnhCRDBGrid;
    dsStatino: TDataSource;
    btnTestReport: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    EnhCRDBGrid14: TEnhCRDBGrid;
    btnPreviewReport: TButton;
    Button1: TButton;
    procedure btnRestCallClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnSaveJsonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnUpdateDataClick(Sender: TObject);
    procedure btnTestConfiguraziniClick(Sender: TObject);
    procedure btnApriTuttiClick(Sender: TObject);
    procedure EnhCRDBGrid3ColEnter(Sender: TObject);
    procedure EnhCRDBGrid3CellClick(Column: TColumn);
    procedure EnhCRDBGrid3DblClick(Sender: TObject);
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
  // Phoenix
  DlgShowContratto, DlgNuovoStatino, Globale, ZFIBPlusNodoGenerico2,
  // Janua
  Janua.Phoenix.dmIBReportPlanner, Janua.VCL.Functions, Janua.Core.AsyncTask,
  Janua.Phoenix.VCL.dlgEditReportTimetable, Janua.Phoenix.VCL.dlgModificaStatino,
  Janua.Application.Framework, Janua.REST.Client, Janua.Core.JSON, MainUnit, EsportazioneSuMobile,
  Janua.Phoenix.FbJsonReport;

{$R *.dfm}

procedure TfrmPhoenixVCLRESTLabClient.btnApriTuttiClick(Sender: TObject);
begin
  dmFbPhoenixJsonReport.ApriTuttiIUniQuery
end;

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

procedure TfrmPhoenixVCLRESTLabClient.btnTestConfiguraziniClick(Sender: TObject);
begin
  TMOBExporting.Test := True;
  MOBExportingConfigurazioni(MAIN_FORM.QRY_GENERIC);
  memJsonConfigurazioni.Lines.Text := TMOBExporting.Configurazioni;
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

procedure TfrmPhoenixVCLRESTLabClient.EnhCRDBGrid3CellClick(Column: TColumn);
begin
  dsStatino.DataSet := Column.Field.DataSet;
  dmFbPhoenixJsonReport.OpenSintesiReport(Column.Field.DataSet);
end;

procedure TfrmPhoenixVCLRESTLabClient.EnhCRDBGrid3ColEnter(Sender: TObject);
begin
  dmFbPhoenixJsonReport.OpenSintesiReport(TEnhCRDBGrid(Sender).DataSource.DataSet);
end;

procedure TfrmPhoenixVCLRESTLabClient.EnhCRDBGrid3DblClick(Sender: TObject);
var
  ADialog: TDLG_STATINO;
begin
  ADialog := TDLG_STATINO.Create(Nil);
  try
    ADialog.Init(TFiBConfig.QRY_GENERIC, TEnhCRDBGrid(Sender).DataSource.DataSet.FieldByName('STATINO')
      .AsInteger);
    if ADialog.ShowModal = mrOK then
    begin
      ADialog.NodoStatino.Registra(spsRegistra);
      // FStatinoModificato := True;
    end;
  finally
    ADialog.Free;
  end;

end;

procedure TfrmPhoenixVCLRESTLabClient.FormCreate(Sender: TObject);
begin
  FdmFDACPhoenixLab := TdmPhoenixIBLab.Create(self);
  Application.CreateForm(TdmFbPhoenixJsonReport, dmFbPhoenixJsonReport);
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
