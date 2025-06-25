unit Janua.Phoenix.VCL.RESTLabClient;

interface

uses
  Winapi.Windows, Winapi.Messages, Winapi.ShellAPI, System.SysUtils, System.Variants, System.Classes,
  System.JSON, Data.DB,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.Mask, VCL.ExtCtrls, VCL.ComCtrls,
  VCL.Grids, VCL.DBGrids, VCL.Buttons, VCL.DBCtrls, VCL.ExtDlgs,
  // TMS
  AdvMemo, advmjson, JvExDBGrids, JvDBGrid,
  // Phoenix
  Phoenix.JSON.Config.DTO, Phoenix.JSON.Statini.DTO, udmTestPhoenixDMVC,
  // Forms
  uJanuaVclForm, Janua.Controls.Forms.Impl, Janua.VCL.Controls.Forms.Impl, Janua.Controls.Forms.Intf,
  // Janua
  Janua.Core.Classes, Janua.REST.Types, Janua.Core.Types, Janua.Http.Types, Janua.REST.Intf,
  Janua.Phoenix.dmIBLabSync, CRGrid, Janua.VCL.EnhCRDBGrid, VCL.Samples.Spin, JvExMask, JvToolEdit;

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
    tabInterventiRiepilogo: TTabSheet;
    Panel6: TPanel;
    EnhCRDBGrid13: TEnhCRDBGrid;
    dsStatino: TDataSource;
    btnTestReport: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    EnhCRDBGrid14: TEnhCRDBGrid;
    btnPreviewReport: TButton;
    btnJson: TButton;
    EnhCRDBGrid15: TEnhCRDBGrid;
    EnhCRDBGrid16: TEnhCRDBGrid;
    btnLuci: TButton;
    btnGruppi: TButton;
    btnPorte: TButton;
    btnFumi: TButton;
    pnlStatiniTop: TPanel;
    edChiave: TEdit;
    lbIDChiave: TLabel;
    EnhCRDBGrid17: TEnhCRDBGrid;
    dsStatini: TDataSource;
    edLista: TButton;
    btnIdranti: TButton;
    btnEstintori: TButton;
    lbContratto: TLabel;
    edContratto: TEdit;
    btnTestAllegati: TButton;
    tabExportConf: TTabSheet;
    memExportConf: TAdvMemo;
    btnConf: TButton;
    memExportConfAdapted: TAdvMemo;
    memFinalConf: TAdvMemo;
    tabExportUtenti: TTabSheet;
    memUtenti: TAdvMemo;
    memUtentiTranslated: TAdvMemo;
    memUtentiFinal: TAdvMemo;
    tabMagazzino: TTabSheet;
    memMagazzino: TAdvMemo;
    memMagazzinoTranslated: TAdvMemo;
    memMagazzinoFinal: TAdvMemo;
    tabRapportini: TTabSheet;
    EnhCRDBGrid18: TEnhCRDBGrid;
    dsStatiniNC: TDataSource;
    btnTestNewReport: TButton;
    memReport: TAdvMemo;
    memReportTranslated: TAdvMemo;
    memReportFinal: TAdvMemo;
    tabFinalTest: TTabSheet;
    btnFinalTest: TButton;
    memTestConf: TAdvMemo;
    memTestUtenti: TAdvMemo;
    memTestReport: TAdvMemo;
    memTestProdotti: TAdvMemo;
    memTestTranslated: TAdvMemo;
    tabTestRESTAPI: TTabSheet;
    pnlRestTop: TPanel;
    spPort: TSpinEdit;
    btnStartDMVC: TButton;
    lbGetResult: TLabel;
    PageControl5: TPageControl;
    tabConf: TTabSheet;
    tabUsers: TTabSheet;
    tabProdotti: TTabSheet;
    tabReport: TTabSheet;
    tabRapportiniGiorno: TTabSheet;
    TabSheet6: TTabSheet;
    memJsonConfResponse: TAdvMemo;
    memJsonConfElaborated: TAdvMemo;
    btnGetRestConf: TButton;
    memUtentiREST: TAdvMemo;
    memUtentiRestObject: TAdvMemo;
    btnUtenti: TButton;
    memProdottiREST: TAdvMemo;
    memProdottiRestObject: TAdvMemo;
    btnItems: TButton;
    TabSheet1: TTabSheet;
    EnhCRDBGrid19: TEnhCRDBGrid;
    memStatinoREST: TAdvMemo;
    memStatinoRESTObject: TAdvMemo;
    btnReportREST: TButton;
    btnBuildCache: TButton;
    btnAltreCache: TButton;
    memReportList: TAdvMemo;
    btnReportList: TButton;
    memReportListElaborated: TAdvMemo;
    btnTestList: TButton;
    memLista: TMemo;
    edIdranti: TJvComboEdit;
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
    procedure btnPreviewReportClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
    procedure btnLuciClick(Sender: TObject);
    procedure btnGruppiClick(Sender: TObject);
    procedure btnPorteClick(Sender: TObject);
    procedure btnFumiClick(Sender: TObject);
    procedure btnTestReportClick(Sender: TObject);
    procedure edListaClick(Sender: TObject);
    procedure btnIdrantiClick(Sender: TObject);
    procedure btnEstintoriClick(Sender: TObject);
    procedure btnTestAllegatiClick(Sender: TObject);
    procedure btnConfClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTestNewReportClick(Sender: TObject);
    procedure btnFinalTestClick(Sender: TObject);
    procedure btnStartDMVCClick(Sender: TObject);
    procedure btnGetRestConfClick(Sender: TObject);
    procedure btnUtentiClick(Sender: TObject);
    procedure btnItemsClick(Sender: TObject);
    procedure btnReportRESTClick(Sender: TObject);
    procedure btnBuildCacheClick(Sender: TObject);
    procedure btnAltreCacheClick(Sender: TObject);
    procedure btnReportListClick(Sender: TObject);
    procedure btnTestListClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FdmFDACPhoenixLab: TdmPhoenixIBLab;
    FServer: string;
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
  uQrpPhoenixReport, Janua.Phoenix.VCL.ReportController, Janua.Interbase.dmModel, Janua.Phoenix.FbReport,
  // Phoenix
  DlgShowContratto, DlgNuovoStatino, Globale, ZFIBPlusNodoGenerico2, udmPhoenixFirebirdAppBackend,
  ufrmPhoenixJsonPreview, udmPhoenixReportsCaches,
  // Janua
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, Janua.REST.Client, DTO.Phoenix.ReportList,
  Janua.Phoenix.dmIBReportPlanner, Janua.VCL.Functions,

  Janua.Core.AsyncTask, Janua.Application.Framework, Janua.Core.JSON,

  Janua.Phoenix.VCL.dlgEditReportTimetable, Janua.Phoenix.VCL.dlgModificaStatino,
  MainUnit, EsportazioneSuMobile,
  Janua.Phoenix.FbJsonReport;

{$R *.dfm}

procedure TfrmPhoenixVCLRESTLabClient.btnAltreCacheClick(Sender: TObject);
begin
  var
  sConf := EsportazioneSuMobile.GetExportConfMobileJson(MAIN_FORM.QRY_GENERIC);
  dmPhoenixReportsCaches.SetConfCache(sConf);
  sConf := EsportazioneSuMobile.GetUtentiJson(MAIN_FORM.QRY_GENERIC);
  dmPhoenixReportsCaches.SetUtentiCache(sConf);
  sConf := EsportazioneSuMobile.GetMagazzinoJson(MAIN_FORM.QRY_GENERIC);
  dmPhoenixReportsCaches.SetProdottiCache(sConf);
end;

procedure TfrmPhoenixVCLRESTLabClient.btnApriTuttiClick(Sender: TObject);
begin
  dmFbPhoenixJsonReport.ApriTuttiIUniQuery
end;

procedure TfrmPhoenixVCLRESTLabClient.btnBuildCacheClick(Sender: TObject);
begin
  dmFbPhoenixJsonReport.qryStatiniNonCompilati.First;
  ExportToJsonString := True;
  While not dmFbPhoenixJsonReport.qryStatiniNonCompilati.Eof do
  begin
    var
    sConf := '';
    var
    lParam := dmFbPhoenixJsonReport.qryStatiniNonCompilatiCHIAVE.AsInteger;
    MAIN_FORM.QRY_GENERIC.Close;
    MAIN_FORM.QRY_GENERIC.SQL.Text := 'SELECT * FROM STATINI WHERE CHIAVE = ' + lParam.ToString;
    MAIN_FORM.QRY_GENERIC.ExecQuery;
    var
    vTest := MAIN_FORM.QRY_GENERIC.Open;
    if (MAIN_FORM.QRY_GENERIC.RecordCount > 0) then
    begin
      MOBExportStatino(MAIN_FORM.QRY_GENERIC, False, sConf);
      var
      lID := MAIN_FORM.QRY_GENERIC.FieldByName('CHIAVE').AsInteger;
      dmPhoenixReportsCaches.SetStatinoCache(lID, sConf);
    end;
    dmFbPhoenixJsonReport.qryStatiniNonCompilati.Next;
  end;
  ExportToJsonString := False;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnConfClick(Sender: TObject);
begin
  var
  sConf := EsportazioneSuMobile.GetExportConfMobileJson(MAIN_FORM.QRY_GENERIC);
  sConf := JsonPretty(sConf);
  memExportConf.Lines.Text := sConf;
  sConf := ReplacePhoenixJson(sConf);
  memExportConfAdapted.Lines.Text := sConf;
  var
  lConf := TConfRoot.Create;
  lConf.AsJson := sConf;
  memFinalConf.Lines.Text := JsonPretty(lConf.AsJson);

  sConf := EsportazioneSuMobile.GetUtentiJson(MAIN_FORM.QRY_GENERIC);
  sConf := JsonPretty(sConf);
  memUtenti.Lines.Text := sConf;
  sConf := ReplacePhoenixJson(sConf);
  memUtentiTranslated.Lines.Text := sConf;
  var
  lTec := TTecniciRoot.Create;
  lTec.AsJson := sConf;
  memUtentiFinal.Lines.Text := JsonPretty(lTec.AsJson);

  sConf := EsportazioneSuMobile.GetMagazzinoJson(MAIN_FORM.QRY_GENERIC);
  sConf := JsonPretty(sConf);
  memMagazzino.Lines.Text := sConf;
  sConf := ReplacePhoenixJson(sConf);
  memMagazzinoTranslated.Lines.Text := sConf;
  var
  lProd := TProdottiRoot.Create;
  lProd.AsJson := sConf;
  memMagazzinoFinal.Lines.Text := JsonPretty(lProd.AsJson);
end;

procedure TfrmPhoenixVCLRESTLabClient.btnEstintoriClick(Sender: TObject);
begin
  dmFbPhoenixJsonReport.UpdateAllEstintori
end;

procedure TfrmPhoenixVCLRESTLabClient.btnFinalTestClick(Sender: TObject);
begin
  var
  DM := TdmPhoenixAppBackend.Create(nil);
  try
    var
    lConf := '';
    lConf := DM.GetConf;
    self.memTestConf.Lines.Text := JsonPretty(lConf);

    lConf := DM.GetUtenti;
    self.memTestUtenti.Lines.Text := JsonPretty(lConf);

    lConf := DM.GetProdotti;
    self.memTestProdotti.Lines.Text := JsonPretty(lConf);

    var
    lParam := dmFbPhoenixJsonReport.qryStatiniNonCompilatiCHIAVE.AsInteger;
    lConf := DM.GetStatino(lParam);
    memTestReport.Lines.Text := JsonPretty(lConf);

    var
    lStatino := TStatino.Create;
    try
      try
        lStatino.AsJson := lConf;
        lConf := ReplaceJsonToPhoenix(lStatino.AsJson);
        memTestTranslated.Lines.Text := JsonPretty(lConf);
      except
        on e: exception do
          memTestTranslated.Lines.Text := e.Message;
      end;
    finally
      lStatino.Free;
    end;

  finally
    DM.Free;
  end;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnFumiClick(Sender: TObject);
begin
  dmFbPhoenixJsonReport.UpdateAllFumi
end;

procedure TfrmPhoenixVCLRESTLabClient.btnGetRestConfClick(Sender: TObject);
var
  lClient: IJanuaRESTClient;
begin
  // IJanuaRESTClient
  lClient := TJanuaRESTClient.Create;
  lClient.ServerURL := FServer;
  lClient.ServerPort := spPort.Value;
  lClient.SetMimeType(jmtTextPlain);
  lClient.ApiUrl := 'api/conf';
  lbGetResult.Caption := lClient.GetFullUrl;

  // function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
  if lClient.Execute(TJanuaHttpMethod.jhmGet) then
  begin
    var
    sConf := lClient.Content;

    memJsonConfResponse.Lines.Text := sConf;

    var
    lConf := TConfRoot.Create;
    lConf.AsJson := sConf;
    memJsonConfElaborated.Lines.Text := JsonPretty(lConf.AsJson);
  end;

end;

procedure TfrmPhoenixVCLRESTLabClient.btnGruppiClick(Sender: TObject);
begin
  dmFbPhoenixJsonReport.UpdateAllGruppi;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnIdrantiClick(Sender: TObject);
begin
  dmFbPhoenixJsonReport.UpdateAllIdranti;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnItemsClick(Sender: TObject);
var
  lClient: IJanuaRESTClient;
begin
  // IJanuaRESTClient
  lClient := TJanuaRESTClient.Create;
  lClient.ServerURL := FServer;
  lClient.ServerPort := spPort.Value;
  lClient.SetMimeType(jmtTextPlain);
  lClient.ApiUrl := 'api/items';
  lbGetResult.Caption := lClient.GetFullUrl;

  // function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
  if lClient.Execute(TJanuaHttpMethod.jhmGet) then
  begin
    var
    sConf := lClient.Content;

    memProdottiREST.Lines.Text := sConf;

    var
    lConf := TProdottiRoot.Create;
    lConf.AsJson := sConf;
    memProdottiRestObject.Lines.Text := JsonPretty(lConf.AsJson);
  end;

end;

procedure TfrmPhoenixVCLRESTLabClient.btnJsonClick(Sender: TObject);
begin
  var
  vTest := dsStatino.DataSet.FieldByName('STATINO').AsString;

  var
  lJson := JsonPretty(dsStatino.DataSet.FieldByName('JSON_DA_MOBILE').AsString);
  frmJsonPreview.memOriginal.Lines.Text := lJson;
  lJson := ReplacePhoenixJson(lJson);
  // memReplaced
  frmJsonPreview.memReplaced.Lines.Text := lJson;
  var
  lStatino := TStatino.Create;
  TRY
    lStatino.AsJson := lJson;
    lJson := JsonPretty(lStatino.AsJson);
    frmJsonPreview.AdvMemo1.Lines.Text := lJson;
  except
    on e: exception do
    begin
     frmJsonPreview.AdvMemo1.Lines.Text := e.Message;
    end;

  END;

  frmJsonPreview.ShowModal;
  dmFbPhoenixJsonReport.UpdateFromClass(lStatino);

  { frmJsonPreview
    var
    lJson := tbStatiniJSON_DA_MOBILE.AsString;
    if lJson <> '' then
    begin
    memOriginal.Lines.Text := JsonPretty(lJson);
    lJson := ReplacePhoenixJson(lJson);
    memJsonPretty.Lines.Text := JsonPretty(lJson);
    tabParameters.Lines.Text := GlobalParams;

    var
    lStatino := TStatino.Create;
    lStatino.AsJson := lJson;

    lJson := lStatino.AsJson;

    if lJson <> '' then
    memJsonFinal.Lines.Text := JsonPretty(lJson);
    end;

  }
end;

procedure TfrmPhoenixVCLRESTLabClient.btnLuciClick(Sender: TObject);
begin
  dmFbPhoenixJsonReport.UpdateAllLuci
end;

procedure TfrmPhoenixVCLRESTLabClient.btnOpenClick(Sender: TObject);
begin
  FdmFDACPhoenixLab.Refresh;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnPorteClick(Sender: TObject);
begin
  dmFbPhoenixJsonReport.UpdateAllPorte
end;

procedure TfrmPhoenixVCLRESTLabClient.btnPreviewReportClick(Sender: TObject);
var
  ADialog: TDLG_STATINO;
begin
  ADialog := TDLG_STATINO.Create(Nil);
  try
    ADialog.Init(TFiBConfig.QRY_GENERIC, dsStatino.DataSet.FieldByName('STATINO').AsInteger);
    if ADialog.ShowModal = mrOK then
    begin
      ADialog.NodoStatino.Registra(spsRegistra);
      // FStatinoModificato := True;
    end;
  finally
    ADialog.Free;
  end;

end;

procedure TfrmPhoenixVCLRESTLabClient.btnReportListClick(Sender: TObject);
var
  lClient: IJanuaRESTClient;
begin
  // [MVCPath('/reports/($user_id)')]
  lClient := TJanuaRESTClient.Create;
  lClient.ServerURL := FServer;
  lClient.ServerPort := spPort.Value;
  lClient.SetMimeType(jmtTextPlain);
  lClient.ApiUrl := 'api/reports';
  lbGetResult.Caption := lClient.GetFullUrl;

  // function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
  if lClient.Execute(TJanuaHttpMethod.jhmGet, ['-1']) then
  begin
    var
    sConf := lClient.Content;

    memReportList.Lines.Text := sConf;

    var
    lConf := TLSStatinoRoot.Create;
    lConf.AsJson := sConf;
    memReportListElaborated.Lines.Text := JsonPretty(lConf.AsJson);
    memLista.Lines.Text := lConf.Iterator.Text;
  end;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnReportRESTClick(Sender: TObject);
var
  lClient: IJanuaRESTClient;
begin
  var
  lParam := dmFbPhoenixJsonReport.qryStatiniNonCompilatiCHIAVE.AsInteger;

  lClient := TJanuaRESTClient.Create;
  lClient.ServerURL := FServer;
  lClient.ServerPort := spPort.Value;
  lClient.SetMimeType(jmtTextPlain);
  lClient.ApiUrl := 'api/report';
  lbGetResult.Caption := lClient.GetFullUrl;

  // function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
  if lClient.Execute(TJanuaHttpMethod.jhmGet, [lParam.ToString]) then
  begin
    var
    sConf := lClient.Content;

    memStatinoREST.Lines.Text := sConf;

    var
    lConf := TStatino.Create;
    lConf.AsJson := sConf;
    memStatinoRESTObject.Lines.Text := JsonPretty(lConf.AsJson);
  end;

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

procedure TfrmPhoenixVCLRESTLabClient.btnStartDMVCClick(Sender: TObject);
var
  lClient: IJanuaRESTClient;
begin
  dmTestPhoenixDMVC.RunServer(spPort.Value);
  // IJanuaRESTClient
  lClient := TJanuaRESTClient.Create;
  { function GetFullUrl: string;
    function GetBaseUrl: string;
    // Properties
    property UserParam: string read GetUserParam write SetUserParam;
    property PasswordParam: string read GetPasswordParam write SetPasswordParam;
    property Content: string read GetContent write SetContent;
    property ResponseCode: integer Read GetResponseCode;
    property ServerURL: string read GetServerURL write SetServerURL;
    property ServerPort: Word read GetServerPort write SetServerPort;
    property AfterExecute: TRESTClientEvent read GetAfterExecute write SetAfterExecute;
    property ApiUrl: string read GetAPIUrl write SetAPIUrl;
    property AuthenticationType: TAuthenticationType read GetAuthenticationType write SetAuthenticationType;
  }
  FServer := 'http://localhost';
  lClient.ServerURL := FServer;
  lClient.ServerPort := spPort.Value;
  lClient.SetMimeType(jmtTextPlain);
  lClient.ApiUrl := 'api';
  lbGetResult.Caption := lClient.GetFullUrl;

  // function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
  if lClient.Execute(TJanuaHttpMethod.jhmGet) then
  begin

    lbGetResult.Caption := lbGetResult.Caption + ' - ' + lClient.Content;
  end;
  btnStartDMVC.Enabled := False;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnTestAllegatiClick(Sender: TObject);
begin
  if not Assigned(dmPhoenixFbReport) then
    dmPhoenixFbReport := TdmPhoenixFbReport.Create(self);

  dmPhoenixFbReport.OpenReport(dsStatino.DataSet.FieldByName('STATINO').AsInteger);

  if dmPhoenixFbReport.qrpCheckList.RecordCount = 0 then
    ShowMessage('Non ci sono Allegati per questo Rapportino')
  else
  begin
    var
    PDFFileName := 'c:\Phoenix\Temp\ALL_' + dsStatino.DataSet.FieldByName('STATINO').AsString + '.pdf';

    var
    rp := TqrpPhoenixReportContainer.Create(self);
    try
      // rp.qrpPhoenixReport.Preview;
      rp.ExportToPDF(PDFFileName);
      ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
    finally
      rp.Free;
    end;
  end;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnTestConfiguraziniClick(Sender: TObject);
begin
  TMOBExporting.Test := True;
  MOBExportingConfigurazioni(MAIN_FORM.QRY_GENERIC);
  memJsonConfigurazioni.Lines.Text := TMOBExporting.Configurazioni;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnTestListClick(Sender: TObject);
var
  DM: TdmPhoenixReportsCaches;
begin
  var
  lStatino := TLSStatinoRoot.Create;

  JsonPretty(lStatino.AsJson);

  DM := TdmPhoenixReportsCaches.Create(nil);
  try
    var
    lJson := DM.GetStatiniGiorno(-1);
    memReportList.Lines.Text := JsonPretty(lJson);
  finally
    DM.Free;
  end;

  var
  aRoot := { TRSRoot } TLSStatinoRoot.Create;
  aRoot.AsJson := memReportList.Lines.Text;

  // lStatino.AsJson := memReportList.Lines.Text;

  memReportListElaborated.Lines.Text := JsonPretty(aRoot.AsJson);

  // memLista.Lines.Text := lStatino.Iterator.Text;

end;

procedure TfrmPhoenixVCLRESTLabClient.btnTestNewReportClick(Sender: TObject);
begin
  var
  sConf := '';
  var
  lParam := dmFbPhoenixJsonReport.qryStatiniNonCompilatiCHIAVE.AsInteger;
  MAIN_FORM.QRY_GENERIC.Close;
  MAIN_FORM.QRY_GENERIC.SQL.Text := 'SELECT * FROM STATINI WHERE CHIAVE = ' + lParam.ToString;
  MAIN_FORM.QRY_GENERIC.ExecQuery;
  var
  vTest := MAIN_FORM.QRY_GENERIC.Open;
  if (MAIN_FORM.QRY_GENERIC.RecordCount > 0) then
  begin
    ExportToJsonString := True;
    MOBExportStatino(MAIN_FORM.QRY_GENERIC, False, sConf);
    sConf := JsonPretty(sConf);
    memReport.Lines.Text := sConf;
    sConf := ReplacePhoenixJson(sConf);
    memReportTranslated.Lines.Text := sConf;
    var
    lProd := TStatino.Create;
    lProd.AsJson := sConf;
    memReportFinal.Lines.Text := JsonPretty(lProd.AsJson);
  end;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnTestReportClick(Sender: TObject);
begin
  if not Assigned(dmPhoenixFbReport) then
    dmPhoenixFbReport := TdmPhoenixFbReport.Create(self);

  dmPhoenixFbReport.OpenReport(dsStatino.DataSet.FieldByName('STATINO').AsInteger);
  var
  PDFFileName := 'c:\Phoenix\Temp\' + dsStatino.DataSet.FieldByName('STATINO').AsString + '.pdf';

  var
  rp := TqrpPhoenixReportContainer.Create(self);
  try
    // rp.qrpPhoenixReport.Preview;
    rp.ExportToPDF(PDFFileName);
    ShellExecute(0, 'open', PChar(PDFFileName), nil, nil, SW_SHOWNORMAL);
  finally
    rp.Free;
  end;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnUpdateDataClick(Sender: TObject);
begin
  FdmFDACPhoenixLab.UpdateData;
  memJsonResponse.Lines.Text := FdmFDACPhoenixLab.JsonResponse;
  memLog.Lines.Text := FdmFDACPhoenixLab.Log.Text;
end;

procedure TfrmPhoenixVCLRESTLabClient.btnUtentiClick(Sender: TObject);
var
  lClient: IJanuaRESTClient;
begin
  // IJanuaRESTClient
  lClient := TJanuaRESTClient.Create;
  lClient.ServerURL := FServer;
  lClient.ServerPort := spPort.Value;
  lClient.SetMimeType(jmtTextPlain);
  lClient.ApiUrl := 'api/users';
  lbGetResult.Caption := lClient.GetFullUrl;

  // function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
  if lClient.Execute(TJanuaHttpMethod.jhmGet) then
  begin
    var
    sConf := lClient.Content;

    memUtentiREST.Lines.Text := sConf;

    var
    lConf := TTecniciRoot.Create;
    lConf.AsJson := sConf;
    memUtentiRestObject.Lines.Text := JsonPretty(lConf.AsJson);
  end;

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

procedure TfrmPhoenixVCLRESTLabClient.edListaClick(Sender: TObject);
begin
  dmFbPhoenixJsonReport.qElenco.Close;
  if edChiave.Text <> '' then
  begin
    dmFbPhoenixJsonReport.qElenco.Params[0].AsString := edChiave.Text;
  end
  else
  begin
    dmFbPhoenixJsonReport.qElenco.Params[0].AsInteger := 0;
  end;

  if self.edContratto.Text <> '' then
  begin
    dmFbPhoenixJsonReport.qElenco.Params[1].AsString := '%' + StringReplace(edContratto.Text, ' ', '%',
      [rfReplaceAll]) + '%';
  end
  else
  begin
    dmFbPhoenixJsonReport.qElenco.Params[1].AsString := '%';
  end;

  dmFbPhoenixJsonReport.qElenco.Open;
  dsStatino.DataSet := dsStatini.DataSet;
  dmFbPhoenixJsonReport.OpenSintesiReport(dsStatini.DataSet);
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
var
  lClient: IJanuaRESTClient;
begin
  // IJanuaRESTClient
  lClient := TJanuaRESTClient.Create;
  FServer := 'http://localhost';
  lClient.ServerURL := FServer;
  lClient.ServerPort := spPort.Value;
  lClient.ApiUrl := 'api';
  lbGetResult.Caption := lClient.GetFullUrl;

  FdmFDACPhoenixLab := TdmPhoenixIBLab.Create(self);
  Application.CreateForm(TdmFbPhoenixJsonReport, dmFbPhoenixJsonReport);
  dsStatino.DataSet := dmFbPhoenixJsonReport.qryStatiniLuci;
  Application.CreateForm(TfrmJsonPreview, frmJsonPreview);
  Application.CreateForm(TdmPhoenixFbReport, dmPhoenixFbReport);
  Application.CreateForm(TdmVCLPhoenixReportController, dmVCLPhoenixReportController);
  Application.CreateForm(TdmPhoenixAppBackend, dmPhoenixAppBackend);
  // dmTestPhoenixDMVC
  Application.CreateForm(TdmTestPhoenixDMVC, dmTestPhoenixDMVC);
  Application.CreateForm(TdmPhoenixReportsCaches, dmPhoenixReportsCaches);

end;

procedure TfrmPhoenixVCLRESTLabClient.FormDestroy(Sender: TObject);
begin
  dmTestPhoenixDMVC.StopServer;
end;

procedure TfrmPhoenixVCLRESTLabClient.FormShow(Sender: TObject);
begin
  dmFbPhoenixJsonReport.qryStatiniNonCompilati.Open;
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
