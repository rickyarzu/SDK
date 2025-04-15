unit ufrmUnitTestJanuaVCLComponents;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // DB
  Data.DB, MemDS, VirtualTable, IdHTTPWebBrokerBridge, DAScript, DASQLMonitor, UniSQLMonitor, UniScript,
  Uni, DBAccess, UniProvider, PostgreSQLUniProvider,
  // Janua
  uJanuaVCLForm, Janua.Controls.Intf, Janua.Controls.Forms.Intf, // *** Janua VCL Form BindModel ****
  Janua.Core.Classes, Janua.Components.Dialogs, Janua.Vcl.Geocoding, Janua.Core.Types, Janua.Vcl.Dialogs,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus, JvExControls,
  Vcl.ExtCtrls, AdvMemo, AdvmSQLS, Vcl.Grids, Vcl.DBGrids, CRGrid, DBAdvNavigator, Vcl.Buttons, AdvmPS,
  JvBaseDlg, JvSelectDirectory, AdvmWS, advmjson, AdvGlowButton, AdvAppStyler, Vcl.DBCtrls, AdvUtil,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, tmsAdvGridExcel, JvComponentBase, JvDBGridExport, JvCsvData,
  JvDBLookup,
  // Janua
  Janua.Vcl.EnhDBGrid,    Janua.Vcl.EnhCRDBGrid,
  Janua.Test.Vcl.frameViewModelAnagraphSearch {uframeTestViewModelAnagraphSearch} ,
  Janua.Test.Vcl.frameViewModelLocationSearch {uframeTestViewModelLocationSearch},
  Janua.Test.VCL.framePrintInvoice {uframeTestPrintInvoice},
  Janua.Test.vcl.framePrintAWBs  {uframeTestPrintAWBs},
  Janua.Test.VCL.framePrintWarehouseReceipts  {uframePrintWarehouseReceipts},
  Janua.Test.VCL.frameOrmDB {uframeTestOrmDB},
  Janua.Test.VCL.frameVclOrmDatasetSync {uframeVclTestOrmDatasetSync},
  uJanuaVCLFrame,
  Janua.Core.Legacy, AdvStyleIF, Vcl.Mask, Janua.Core.Commons, Janua.Unidac.Connection;

type
  TfrmUnitTestJanuaVCLComponents = class(TJanuaVCLFormModel, IJanuaContainer, IJanuaForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    JanuaVCLGeoMaps1: TJanuaVCLGeoMaps;
    JanuaCoreLogger1: TJanuaCoreLogger;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Button2: TButton;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    memJson: TAdvMemo;
    memLog: TAdvMemo;
    Button3: TButton;
    Panel2: TPanel;
    btnGenerate: TButton;
    edTableName: TLabeledEdit;
    edAbbreviation: TLabeledEdit;
    edKeys: TLabeledEdit;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    TabSheet6: TTabSheet;
    PgErgoConnection: TJanuaUniConnection;
    Panel3: TPanel;
    edPort: TLabeledEdit;
    edDatabase: TLabeledEdit;
    edServerAddress: TLabeledEdit;
    edSchema: TLabeledEdit;
    edUserName: TLabeledEdit;
    edPassword: TLabeledEdit;
    btnConnectServer: TButton;
    btnExecuteSql: TButton;
    PgScript1: TUniScript;
    PgSQLMonitor1: TUniSQLMonitor;
    dsGuidGenerator: TDataSource;
    memDBLog: TAdvMemo;
    grdTAbles: TCRDBGrid;
    vtGuidGenerator: TVirtualTable;
    vtGuidGeneratorSchemaTable: TStringField;
    vtGuidGeneratorAbbreviation: TStringField;
    vtGuidGeneratorKey: TStringField;
    DBAdvNavigator1: TDBNavigator;
    Button7: TButton;
    Button8: TButton;
    qryColumns: TUniQuery;
    qryColumnscolumn_name: TWideStringField;
    dsColumns: TDataSource;
    qryIndexFields: TUniQuery;
    qryIndexFieldsattname: TWideStringField;
    qryIndexFieldsdata_type: TWideStringField;
    Panel4: TPanel;
    grdColumns: TDBGrid;
    dbgrdKeys: TDBGrid;
    qrySchemaTables: TUniQuery;
    qrySchemaTablestable_name: TWideStringField;
    btnSchema: TButton;
    dsIndexFields: TDataSource;
    edPrefix: TLabeledEdit;
    TabSheet7: TTabSheet;
    PageControl3: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    Panel5: TPanel;
    Button4: TButton;
    edRestPort: TLabeledEdit;
    edWebPort: TLabeledEdit;
    tabLogServer: TTabSheet;
    memMainLog: TAdvMemo;
    PageControl4: TPageControl;
    TabSheet12: TTabSheet;
    tabIntf: TTabSheet;
    tabCustomImpl: TTabSheet;
    memSQL: TAdvMemo;
    Button5: TButton;
    PgDDLColumnsTable: TUniTable;
    memSourceIntf: TAdvMemo;
    MemSourceCustomImpl: TAdvMemo;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    Panel6: TPanel;
    CRDBGrid2: TCRDBGrid;
    btnTriggers: TButton;
    Button9: TButton;
    qryTriggers: TUniQuery;
    grdTriggers: TCRDBGrid;
    DataSource4: TDataSource;
    qryTriggerstrigger_name: TWideStringField;
    DataSource5: TDataSource;
    lbCount: TLabel;
    lbtTot: TLabel;
    TabSheet13: TTabSheet;
    Panel7: TPanel;
    Button10: TButton;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    Button11: TButton;
    SpeedButton2: TButton;
    PageControl5: TPageControl;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    AdvMemHtml: TAdvMemo;
    AdvMemoJson: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    Button12: TButton;
    Button13: TButton;
    TabSheet17: TTabSheet;
    memSrvIntf: TAdvMemo;
    TabSheet18: TTabSheet;
    memSrvImpl: TAdvMemo;
    TabSheet19: TTabSheet;
    AdvMemo2: TAdvMemo;
    JanuaInputText1: TJanuaInputText;
    JanuaDialogText1: TJanuaDialogText;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    btnAnalytics: TButton;
    qryAnalisi: TUniQuery;
    qryAnalisititle: TWideStringField;
    qryAnalisiminimum: TWideStringField;
    qryAnalisimaximum: TWideStringField;
    qryAnalisirows: TLargeintField;
    vtAnalysis: TVirtualTable;
    TabSheet20: TTabSheet;
    DBAdvGrid1: TDBAdvGrid;
    DataSource6: TDataSource;
    AdvGridExcelIO1: TAdvGridExcelIO;
    qryColumnstable_catalog: TWideStringField;
    qryColumnstable_schema: TWideStringField;
    qryColumnstable_name: TWideStringField;
    qryColumnsordinal_position: TIntegerField;
    qryColumnscolumn_default: TWideStringField;
    qryColumnsis_nullable: TWideStringField;
    qryColumnsdata_type: TWideStringField;
    qryColumnscharacter_maximum_length: TIntegerField;
    qryColumnscharacter_octet_length: TIntegerField;
    qryColumnsnumeric_precision: TIntegerField;
    qryColumnsnumeric_precision_radix: TIntegerField;
    qryColumnsnumeric_scale: TIntegerField;
    qryColumnsdatetime_precision: TIntegerField;
    qryColumnsinterval_type: TWideStringField;
    qryColumnsinterval_precision: TIntegerField;
    qryColumnscharacter_set_catalog: TWideStringField;
    qryColumnscharacter_set_schema: TWideStringField;
    qryColumnscharacter_set_name: TWideStringField;
    qryColumnscollation_catalog: TWideStringField;
    qryColumnscollation_schema: TWideStringField;
    qryColumnscollation_name: TWideStringField;
    qryColumnsdomain_catalog: TWideStringField;
    qryColumnsdomain_schema: TWideStringField;
    qryColumnsdomain_name: TWideStringField;
    qryColumnsudt_catalog: TWideStringField;
    qryColumnsudt_schema: TWideStringField;
    qryColumnsudt_name: TWideStringField;
    qryColumnsscope_catalog: TWideStringField;
    qryColumnsscope_schema: TWideStringField;
    qryColumnsscope_name: TWideStringField;
    qryColumnsmaximum_cardinality: TIntegerField;
    qryColumnsdtd_identifier: TWideStringField;
    qryColumnsis_self_referencing: TWideStringField;
    qryColumnsis_identity: TWideStringField;
    qryColumnsidentity_generation: TWideStringField;
    qryColumnsidentity_start: TWideStringField;
    qryColumnsidentity_increment: TWideStringField;
    qryColumnsidentity_maximum: TWideStringField;
    qryColumnsidentity_minimum: TWideStringField;
    qryColumnsidentity_cycle: TWideStringField;
    qryColumnsis_generated: TWideStringField;
    qryColumnsgeneration_expression: TWideStringField;
    qryColumnsis_updatable: TWideStringField;
    EnhDBGrid1: TDBGrid;
    CsvExport: TJvCsvDataSet;
    vtAnalysistitle: TWideStringField;
    vtAnalysisminimum: TWideStringField;
    vtAnalysismaximum: TWideStringField;
    vtAnalysisrows: TLargeintField;
    qrySchemas: TUniQuery;
    edTableSchema: TJvDBLookupCombo;
    dsSchemas: TDataSource;
    qrySchemasnspname: TWideStringField;
    btnSchemaAnalytics: TButton;
    btnClear: TButton;
    CsvExportTITLE: TWideStringField;
    CsvExportMINIMUM: TWideStringField;
    CsvExportMAXIMUM: TWideStringField;
    CsvExportROWS: TIntegerField;
    dsCsvExport: TDataSource;
    tabTestViewModels: TTabSheet;
    frameTestViewModelAnagraphSearch1: TframeTestViewModelAnagraphSearch;
    qryAnalisidiff: TLargeintField;
    vtAnalysisLargeintField: TLargeintField;
    CsvExportDIFF: TIntegerField;
    FileSaveDialog1: TFileSaveDialog;
    PopupMenu1: TPopupMenu;
    ExportAsCSV1: TMenuItem;
    ExportAsExcel1: TMenuItem;
    TabSheet14: TTabSheet;
    MemSourceImpl: TAdvMemo;
    pgTestViewModels: TPageControl;
    tabSearchAnagraph: TTabSheet;
    tabSearchLocation: TTabSheet;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    grdSearchAnagraph: TEnhCRDBGrid;
    grpAnagraphSearch: TGroupBox;
    edCompanyName: TEdit;
    lbCompanyName: TLabel;
    edAnagraphCode: TEdit;
    lbCompanyCode: TLabel;
    edAnagraphId: TEdit;
    lbId: TLabel;
    frameTestViewModelLocationSearch1: TframeTestViewModelLocationSearch;
    grdLocations: TEnhCRDBGrid;
    TabSheet21: TTabSheet;
    PageControl6: TPageControl;
    tabInvoices: TTabSheet;
    tabAWV: TTabSheet;
    tabShipments: TTabSheet;
    tabWarehouseReceipts: TTabSheet;
    frameTestPrintInvoice1: TframeTestPrintInvoice;
    framePrintWarehouseReceipts1: TframePrintWarehouseReceipts;
    tabOrmDataset: TTabSheet;
    pgTestOrmDatasetMVVM: TPageControl;
    tabOrmDatasetSync: TTabSheet;
    tabOrmMVVMTest: TTabSheet;
    frameTestOrmDB1: TframeTestOrmDB;
    frameVclTestOrmDatasetSync1: TframeVclTestOrmDatasetSync;
    tabTestNavigator: TTabSheet;
    pnlTestMVVMNavigator: TPanel;
    btnStartTestMVVMNavigator: TButton;
    procedure btnAnalyticsClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edPortChange(Sender: TObject);
    procedure edDatabaseChange(Sender: TObject);
    procedure edServerAddressChange(Sender: TObject);
    procedure edSchemaChange(Sender: TObject);
    procedure edPasswordChange(Sender: TObject);
    procedure edUserNameChange(Sender: TObject);
    procedure btnConnectServerClick(Sender: TObject);
    procedure btnExecuteSqlClick(Sender: TObject);
    procedure btnSchemaAnalyticsClick(Sender: TObject);
    procedure PgSQLMonitor1SQL(Sender: TObject; Text: string; Flag: TDATraceFlag);
    procedure dsGuidGeneratorDataChange(Sender: TObject; Field: TField);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure btnSchemaClick(Sender: TObject);
    procedure btnStartTestMVVMNavigatorClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnTriggersClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure ExportAsCSV1Click(Sender: TObject);
    procedure frameBindTestOrm1btnUndoClick(Sender: TObject);
    procedure framePrintWarehouseReceipts1btnStartTestClick(Sender: TObject);
    procedure frameTestOrmDB1btnSaveClick(Sender: TObject);
    procedure frameTestViewModelAnagraphSearch1Button1Click(Sender: TObject);
    procedure frameTestViewModelLocationSearch1Button1Click(Sender: TObject);
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure frameTestOrmDB1btnSetupRecordClick(Sender: TObject);
    procedure frameVclTestOrmDatasetSync1btnStartTestClick(Sender: TObject);
    procedure frameTestOrmDB1btnStartOrmdbTestClick(Sender: TObject);
  private
    FCounter: Word;
    { Private declarations }
    function BindPort(Aport: Integer): Boolean;
    function CheckPort(Aport: Integer): Integer;
    procedure WriteLog(aLog: string);
    procedure StartServer(const Aserver: TIdHTTPWebBrokerBridge);
    procedure Trigger;
  public
    { Public declarations }
    RServer: TIdHTTPWebBrokerBridge;
    WServer: TIdHTTPWebBrokerBridge;
  end;

var
  frmUnitTestJanuaVCLComponents: TfrmUnitTestJanuaVCLComponents;

implementation

uses
  uTestORM, System.StrUtils,
  Vcl.Styles,
  System.Types,
  System.IOUtils,
  IPPeerServer,
  IPPeerAPI,
  Web.WebReq,
  Web.WebBroker,
  Janua.Server.Impl,
  Janua.Metro5.Builder, Janua.Html.Metro5.Pages, Janua.Html.Bootstrap4.Builder,
  Janua.Html.Metro5.Impl, Janua.Html.Metro5.Intf, Janua.Metro5.Builder.Intf,
  Datasnap.DSSession, Janua.Orm.Generator, Janua.Core.AsyncTask,
  JOrm.Football.FtChampionships.Intf, Janua.Football.Impl,
  Janua.Cms.Server.Intf, Janua.Cms.Server.Impl, Janua.Virtual.Cms,
  JOrm.Cms.Articles.Intf, Janua.Html.Metro5.Types, JOrm.Anagraph.Intf,
  {JOrm.Football.FtChampionships.Impl} JOrm.Football.Matches.Intf, {JOrm.Football.Matches.Impl,}
  Janua.Football.Intf, Janua.Football.Server.Intf, Janua.Football.Server.Impl, Janua.Virtual.Football,
  Janua.Orm.Intf,
  Janua.Orm.Impl, Janua.Html.Builder.Impl, Janua.Html.Intf, Janua.Html.Builder.Intf,
  ufrmVCLVMTestNavigator, WebModuleJormModel, Janua.Application.Framework, Janua.Vcl.Interposers,
  Janua.Core.Functions, udlgTestPgTablesList;

{$R *.dfm}

procedure TfrmUnitTestJanuaVCLComponents.StartServer(const Aserver: TIdHTTPWebBrokerBridge);
begin
  if not(Aserver.Active) then
  begin
    if CheckPort(Aserver.DefaultPort) > 0 then
    begin
      self.WriteLog(Format('Starting Server', [Aserver.DefaultPort]));
      Aserver.Bindings.Clear;
      Aserver.Active := True;
      ShowMessage('Server Avviato');
    end
    else
      WriteLog(Format('Server Port: ', [Aserver.DefaultPort.ToString]));
  end
  else
    WriteLog('Server Running');

end;

procedure TfrmUnitTestJanuaVCLComponents.Trigger;
var
  b: TStringBuilder;
  t, a, j, d, aSchema: string;
  i: Integer;

  function k: string;
  begin
    if self.qryColumns.RecordCount < 2 then
      Result := edKeys.Text
    else
    begin
      qryIndexFields.First;
      while not qryIndexFields.Eof do
      begin
        Result := Result + IfThen(Result = '', '', ',') + qryIndexFieldsattname.AsWideString + ' ';
        qryIndexFields.Next;
      end;
    end;
  end;
  function ks: string;
  var
    tmp: string;
  begin
    if self.qryColumns.RecordCount < 2 then
      Result := k + ' = r.' + k
    else
    begin
      qryIndexFields.First;
      while not qryIndexFields.Eof do
      begin
        tmp := qryIndexFieldsattname.AsWideString;
        Result := Result + IfThen(Result = '', ' ', ' AND ') + tmp + ' = r.' + tmp;
        qryIndexFields.Next;
      end;
    end;

  end;

begin
  t := LowerCase(edTableName.Text);
  a := LowerCase(self.edAbbreviation.Text);
  j := a + '_jguid';
  d := a + '_deleted';
  i := Pos('.', edTableName.Text);
  aSchema := Copy(edTableName.Text, 1, i - 1);

  b := TStringBuilder.Create;
  try
    b.AppendLine('CREATE or replace FUNCTION ' + aSchema + '.' + a + '_trg()');
    b.AppendLine('RETURNS trigger');
    b.AppendLine('LANGUAGE ''plpgsql''');
    b.AppendLine('AS $BODY$');
    b.AppendLine('');
    b.AppendLine('begin');
    b.AppendLine('');
    b.AppendLine('  if New.' + j + ' is null then');
    b.AppendLine('     New.' + j + ':= ''{'' || public.uuid_generate_v1mc() || ''}'';');
    b.AppendLine('  end if;');
    b.AppendLine('');
    b.AppendLine('  if New.' + d + ' is null then');
    b.AppendLine('     New.' + d + ' := false;');
    b.AppendLine('  end if;');
    b.AppendLine('');
    b.AppendLine('  if New.db_schema_id is null then');
    b.AppendLine('     New.db_schema_id:=0;');
    b.AppendLine('  end if;');
    b.AppendLine('  Return NEW;');
    b.AppendLine('end;');
    b.AppendLine('$BODY$;');
    b.AppendLine('');
    if not qryTriggers.Locate('trigger_name', a + '_bi_trg', []) then
    begin
      b.AppendLine('CREATE TRIGGER ' + a + '_bi_trg');
      b.AppendLine('BEFORE INSERT OR UPDATE');
      b.AppendLine('ON ' + t);
      b.AppendLine('FOR EACH ROW');
      b.AppendLine('EXECUTE PROCEDURE ' + aSchema + '.' + a + '_trg();');
    end;
    b.AppendLine('');
    memSQL.Lines.Text := b.ToString;
  finally
    b.Free;
  end;

end;

function TfrmUnitTestJanuaVCLComponents.CheckPort(Aport: Integer): Integer;
begin
  if BindPort(Aport) then
    Result := Aport
  else
    Result := 0;
end;

function TfrmUnitTestJanuaVCLComponents.BindPort(Aport: Integer): Boolean;
var
  LTestServer: IIPTestServer;
begin
  Result := True;
  try
    LTestServer := PeerFactory.CreatePeer('', IIPTestServer) as IIPTestServer;
    LTestServer.TestOpenPort(Aport, nil);
  except
    Result := False;
  end;
end;

procedure TfrmUnitTestJanuaVCLComponents.btnAnalyticsClick(Sender: TObject);
var
  lTitle, lTable: string;
  lJvDBGridCSVExport: TJvDBGridCSVExport;
begin
  lTitle := '';
  lTable := '';

  lTable := vtGuidGenerator.fieldByName('SchemaTable').AsWideString;
  if not CsvExport.Active then
    CsvExport.Open;

  if not vtAnalysis.Active then
    vtAnalysis.Open;

  if vtAnalysis.RecordCount > 0 then
  begin
    vtAnalysis.First;
    while not vtAnalysis.Eof do
      vtAnalysis.Delete;
  end;

  if CsvExport.RecordCount > 0 then
  begin
    CsvExport.First;
    while not CsvExport.Eof do
      CsvExport.Delete;
  end;

  qryColumns.First;
  while not qryColumns.Eof do
  begin
    {
      select
      'anno'::character varying as title,
      min(anno)::character varying as minimum,
      max(anno)::character varying as maximum,
      count(1) as rows,
      diff
      from
      custom_tm_logistic.entrate a,
      (
      select count(1) diff from
      (select distinct anno from custom_tm_logistic.entrate) as foo
      ) as b
      where
      anno is not null
      group by b.diff
    }
    if (qryColumnsdata_type.AsString <> 'boolean') and (qryColumnsdata_type.AsString <> 'bytea') and
      (qryColumnsdata_type.AsString <> 'uuid') and (qryColumnsdata_type.AsString <> 'jsonb') then
    begin
      lTitle := qryColumnscolumn_name.AsString;
      qryAnalisi.SQL.Clear;
      qryAnalisi.SQL.Add('select');
      qryAnalisi.SQL.Add(QuotedStr(lTitle) + '::character varying as title,');
      qryAnalisi.SQL.Add('min(' + lTitle + ')::character varying as minimum, ');
      qryAnalisi.SQL.Add('max(' + lTitle + ')::character varying as maximum, ');
      qryAnalisi.SQL.Add('count(1) as rows, b.diff');
      // From Table,
      qryAnalisi.SQL.Add('from ' + lTable + ',');
      // Nested Query Analysis
      qryAnalisi.SQL.Add('(');
      qryAnalisi.SQL.Add('select count(1) diff from');
      qryAnalisi.SQL.Add('(select distinct ' + lTitle + ' from ' + lTable + ') as foo');
      qryAnalisi.SQL.Add(') as b');
      // Condition Where
      qryAnalisi.SQL.Add('where ' + lTitle + ' is not null');
      if (qryColumnsdata_type.AsString = 'integer') or (qryColumnsdata_type.AsString = 'bigint') or
        (qryColumnsdata_type.AsString = 'smallint') or (qryColumnsdata_type.AsString = 'numeric') then
        qryAnalisi.SQL.Add('and ' + lTitle + ' > 0');

      if (qryColumnsdata_type.AsString = 'string') or (qryColumnsdata_type.AsString = 'character varying') or
        (qryColumnsdata_type.AsString = 'varchar') or (qryColumnsdata_type.AsString = 'varchar2') then
        qryAnalisi.SQL.Add('and trim(' + lTitle + ') > ' + QuotedStr(''));

      // Group by
      qryAnalisi.SQL.Add('group by b.diff ');

      qryAnalisi.SQL.Add('having count(1) > 0');

      qryAnalisi.Open;
      vtAnalysis.Append;
      CopyRecord(qryAnalisi, vtAnalysis);
      CsvExport.Append;
      CopyRecord(qryAnalisi, CsvExport);
    end;
    // vtAnalysis.Post;
    qryColumns.Next;
  end;
  lTitle := vtGuidGenerator.fieldByName('SchemaTable').AsWideString;
  CsvExport.ExportCsvFile('c:\januaproject\dati\' + lTable + '.csv');
  AdvGridExcelIO1.XLSExport('c:\januaproject\dati\' + lTable + '.xls');

  (*
    lJvDBGridCSVExport := TJvDBGridCSVExport.Create(nil);
    try
    lJvDBGridCSVExport.Grid := EnhDBGrid1;
    lJvDBGridCSVExport.Destination := TExportDestination.edFile;
    lJvDBGridCSVExport.FileName := 'c:\januaproject\data\' + vtGuidGeneratorSchemaTable.AsWideString + '.csv';
    lJvDBGridCSVExport.ExportGrid;
    finally
    lJvDBGridCSVExport.Free;;
    end;
  *)

end;

procedure TfrmUnitTestJanuaVCLComponents.btnClearClick(Sender: TObject);
begin
  vtGuidGenerator.First;
  while not vtGuidGenerator.Eof do
    vtGuidGenerator.Delete;
end;

procedure TfrmUnitTestJanuaVCLComponents.Button10Click(Sender: TObject);
var
  aStorage: IJanuaDBFootballStorage;
  aMatchesStorage: IJanuaRecordSetStorage;
  aMatches: IMatches;
  aTest: Integer;
  aColumn: THtmlTableTableColumn;
  aBuilder: IHtmlTableBuilder;
  aResult: IHtmlTable;
  vHtml: string;
begin
  aStorage := TJanuaVirtualFootballStorage.Create;
  // Assert.IsNotNull(aStorage, 'Error aStorage is nil');
  aStorage.CreateDataset;
  // Nota: aMatchesStorage non 'conosce' Virtual o Postgres ma si riferisce solo all'interfaccia ....
  aMatchesStorage := TJanuaCustomDatasetStorage.Create('matches', IMatches { TMatches } ,
    [aStorage.jdsMatches]);
  // Assert.IsNotNull(aMatchesStorage, 'Error aMatchesStorage is nil');
  // provo ad assegnare aMatches al relativo Storage .......................
  aStorage.OpenMatches;

  if not TJanuaOrmFactory.TryGetRecordSetIntf(IMatches, 'matches', aMatchesStorage, nil, aMatches)
  then
    raise Exception.Create('aMatchesStorage.Create IMatches not set');

  // aMatches := TMatchFactory.CreateRecordset('matches', aMatchesStorage, nil);
  // Assert.IsNotNull(aMatches, 'Error aMatches is nil');
  // Caricamento diretto dei dati
  aMatches.LoadFromLocalStorage;
  aTest := aMatches.RecordCount;
  aMatches.First;
  // THtmlTableBuilder = class(THtmlBuilder, IHtmlBuilder, IHtmlTableBuilder)
  aBuilder := THtmlTableBuilder.Create(aMatches);
  // Assert.IsNotNull(aBuilder);
  // constructor Create(aField: IJanuaField; const aTitle: string; const aGroup: string = '';
  // const aOnCellClick: string = ''; const aOnColumnClick: string = ''; const aWidth: Word = 0;
  // const aHeight: Word = 0);
  aColumn := THtmlTableTableColumn.Create((aMatches.CurrentRecord as IMatch).HomeTeamLogo, 'Casa');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create((aMatches.CurrentRecord as IMatch).VisitorsTeamLogo, 'Ospiti');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create((aMatches.CurrentRecord as IMatch).Score, 'Ris.');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create((aMatches.CurrentRecord as IMatch).Notes, 'Note');
  aBuilder.AddColumin(aColumn);
  aResult := aBuilder.GetElement as IHtmlTable;
  aResult.Striped := True;
  aResult.Hover := True;
  // Assert.IsNotNull(aResult);
  vHtml := aResult.AsHtml;
  // Assert.IsTrue(vHtml <> '');
  aStorage.DestroyDataset;
  self.AdvMemHtml.Lines.Text := vHtml;
end;

procedure TfrmUnitTestJanuaVCLComponents.Button11Click(Sender: TObject);
var
  // Parte di Football .................
  aStorage: IJanuaFootballStorage;
  aSettings: IFootballSettings;
  Aserver: IJanuaServerFootball;
  // Parte del Cms .....................
  cServer: IJanuaServerCms;
  cStorage: IJanuaCmsStorage;
begin
  aSettings := TFootballSettings.Create;
  aStorage := TJanuaVirtualFootballStorage.Create(aSettings);
  Aserver := TJanuaServerFootball.Create(aStorage, nil, aSettings);
  Aserver.Settings.season_id := 76;
  Aserver.Settings.league_id := 124;
  Aserver.OpenMatches;
  AdvMemoJson.Lines.Clear;
  AdvMemoJson.Lines.Add(Aserver.Matches.AsJsonObject.ToString);
  // Cms Test ....................................................
  cStorage := TJanuaVirtualCmsStorage.Create;
  cServer := TJanuaServerCms.Create(cStorage, nil);
  cServer.OpenMainArguments;
  cServer.MainArguments.LoadFromLocalStorage;
  AdvMemoJson.Lines.Add(cServer.MainArguments.AsJsonObject.ToString);
end;

procedure TfrmUnitTestJanuaVCLComponents.Button12Click(Sender: TObject);
var
  // DM: udmVirtualCmsServer.TdmVirtualCmsServer;
  aStorage: IJanuaCmsStorage;
  Aserver: IJanuaServerCms;
  Test: IJanuaRecordSet;
  // ma: IMainArguments;
  // ar: IArguments;
  a: Janua.Html.Builder.Intf.IHtmlBuilder;
  m: Janua.Html.Builder.Intf.IHtmlMenuBuilder;
  o: IJanuaHtmlObject;
  s: string;
  t1, t2: Integer;
begin
  aStorage := TJanuaVirtualCmsStorage.Create;
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  Aserver := TJanuaServerCms.Create(aStorage, nil);
  Aserver.OpenMainArguments;
  t1 := Aserver.MainArguments.RecordCount;
  t2 := Aserver.MainArguments.Arguments.RecordCount;
  t2 := Aserver.MainArguments.CurrentRecord.Recordsets[0].RecordCount;
  // Assert.IsTrue(aServer.MainArguments.RecordCount > 0, 'aServer.MainArguments has 0 Records');

  // ma := Test as IMainArguments;
  // ar := ma.MainArgument.Arguments;

  s := Aserver.MainArguments.ToJson;
  self.AdvMemoJson.Lines.Add(s);
  // occorre un campo anche 'calcolato' per il sub-url da decifrare.
  // il campo 'icona' diventa ora fondamentale almeno per gli argomenti
  // tanto quanto fondamentale una propr

  TMetro5BuilderFactory.GetMenuBuilder( { aRecordset } Aserver.MainArguments,
    { aSubRecordSet } Aserver.MainArguments.Arguments,
    { aTitle } Aserver.MainArguments.Main_argument_des,
    { aIcon } Aserver.MainArguments.Arguments.Icon,
    { aUrl } Aserver.MainArguments.Arguments.Url,
    { aSubTitle } Aserver.MainArguments.Arguments.Argument_des,
    { aSubIcon } nil, { aSubUrl } nil, { aSelected } nil, { aSubSelected } nil,
    { out a IHtmlMenuBuilder } m, { out b IHtmlBuilder } a);

  o := a.GetElement;

  s := o.AsHtml;
  self.AdvMemHtml.Lines.Add(s);

end;

procedure TfrmUnitTestJanuaVCLComponents.Button13Click(Sender: TObject);
var
  // DM: udmVirtualCmsServer.TdmVirtualCmsServer;
  aStorage: IJanuaCmsStorage;
  Aserver: IJanuaServerCms;
  Test: IJanuaRecordSet;
  a: Janua.Html.Builder.Intf.IHtmlBuilder;
  m: IHtmlArticlesBuilder;
  o: IJanuaHtmlObject;
  s: string;
  t1: Integer;
  t: TArticlesSettings;
  ar: IArticles;
begin
  aStorage := TJanuaVirtualCmsStorage.Create;
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  Aserver := TJanuaServerCms.Create(aStorage, nil);
  Aserver.OpenArgumentArticles(1);
  ar := Aserver.Articles;
  t1 := ar.RecordCount;
  // Assert.IsTrue(aServer.MainArguments.RecordCount > 0, 'aServer.MainArguments has 0 Records');

  // ma := Test as IMainArguments;
  // ar := ma.MainArgument.Arguments;

  s := ar.ToJson;
  self.AdvMemoJson.Lines.Add(s);
  // occorre un campo anche 'calcolato' per il sub-url da decifrare.
  // il campo 'icona' diventa ora fondamentale almeno per gli argomenti
  // tanto quanto fondamentale una propr
  t := TArticlesSettings.Create('Titolo', 'Descrizione');
  t.TitleField := ar.Title;
  t.DescriptionField := ar.Abstract;
  t.UrlField := ar.ArticleUrl;
  t.ImageField := ar.ImageUrl;
  t.DateField := ar.Datetime;
  t.AuthorField := ar.Author;

  a := TMetro5BuilderFactory.GetArticlesPortlet(t, ar);
  o := a.GetElement;

  s := o.AsHtml;
  self.AdvMemHtml.Lines.Text := s;

end;

procedure TfrmUnitTestJanuaVCLComponents.Button1Click(Sender: TObject);
begin
  JanuaVCLGeoMaps1.getGeoCoding(Label1.Caption);
  self.Label2.Caption := JanuaVCLGeoMaps1.Coordinates.ToString;
  self.Label3.Caption := JanuaVCLGeoMaps1.ReverseGeoCoding;
end;

procedure TfrmUnitTestJanuaVCLComponents.Button2Click(Sender: TObject);
var
  j, l: string;
begin
  TestSubRecord(j, l);
  self.memJson.Lines.Text := j;
  self.memLog.Lines.Text := l;
end;

procedure TfrmUnitTestJanuaVCLComponents.Button3Click(Sender: TObject);
var
  j, l: string;
begin
  TestStorage(j, l);
  self.memJson.Lines.Text := j;
  self.memLog.Lines.Text := l;

end;

procedure TfrmUnitTestJanuaVCLComponents.btnGenerateClick(Sender: TObject);
var
  b: TStringBuilder;
  t, a, j, d: string;
  function k: string;
  begin
    if self.qryColumns.RecordCount < 2 then
      Result := edKeys.Text
    else
    begin
      qryIndexFields.First;
      while not qryIndexFields.Eof do
      begin
        Result := Result + IfThen(Result = '', '', ',') + qryIndexFieldsattname.AsWideString + ' ';
        qryIndexFields.Next;
      end;
    end;
  end;
  function ks: string;
  var
    tmp: string;
  begin
    if self.qryColumns.RecordCount < 2 then
      Result := k + ' = r.' + k
    else
    begin
      qryIndexFields.First;
      while not qryIndexFields.Eof do
      begin
        tmp := qryIndexFieldsattname.AsWideString;
        Result := Result + IfThen(Result = '', ' ', ' AND ') + tmp + ' = r.' + tmp;
        qryIndexFields.Next;
      end;
    end;

  end;

begin
  t := edTableName.Text;
  a := edAbbreviation.Text;
  self.vtGuidGenerator.Edit;
  self.vtGuidGenerator.fieldByName('SchemaTable').AsString := t;
  self.vtGuidGenerator.fieldByName('Abbreviation').AsString := a;
  self.vtGuidGenerator.fieldByName('Key').AsString := k;
  vtGuidGenerator.Post;
  t := LowerCase(edTableName.Text);
  a := LowerCase(self.edAbbreviation.Text);

  j := a + '_jguid';
  d := a + '_deleted';
  b := TStringBuilder.Create;
  try
    b.AppendLine('DO');
    b.AppendLine('$$');
    b.AppendLine('declare');
    b.AppendLine('  r record;');
    b.AppendLine('  guid character varying;');
    b.AppendLine('BEGIN');
    b.AppendLine('');
    if not self.qryColumns.Locate('column_name', 'db_schema_id', []) then
    begin
      (* ALTER TABLE cms.main_arguments
        ADD COLUMN db_schema_id bigint; *)
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('    ADD COLUMN db_schema_id bigint; ');
      b.AppendLine('');
    end
    else
    begin
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('     ALTER COLUMN db_schema_id TYPE integer; ');
      b.AppendLine('');
    end;
    if not self.qryColumns.Locate('column_name', d, []) then
    begin
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('    ADD COLUMN ' + d + ' boolean DEFAULT False;');
    end;
    if not self.qryColumns.Locate('column_name', j, []) then
    begin
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('    ADD COLUMN ' + j + ' character varying(40); ');
      b.AppendLine('');
      b.AppendLine('COMMENT ON COLUMN ' + t + '.' + j); // system.db_users.' + j + '
      b.AppendLine('    IS  ''guid unique identifier across DBs'';');
      b.AppendLine('');
      b.AppendLine('');
      b.AppendLine(' FOR r IN (select ' + k + ' from ' + t + ') LOOP');
      b.AppendLine('       perform pg_sleep(.001);');
      b.AppendLine('	   select ''{'' || uuid_generate_v1() || ''}''  into guid;');
      b.AppendLine('	   update ' + t + ' set ' + j + ' = guid where ' + ks + ';');
      b.AppendLine('       RAISE NOTICE ''%'', guid;');
      b.AppendLine(' END LOOP;');
      b.AppendLine('');
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('    ADD CONSTRAINT ' + j + '_uk UNIQUE (' + j + ');');
      b.AppendLine('');
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('    ALTER COLUMN ' + j + ' SET NOT NULL; ');
      b.AppendLine('');
    end;
    if not self.qryColumns.Locate('column_name', d, []) then
    begin
      b.AppendLine('');
      b.AppendLine('update ' + t + ' set ' + d + ' = false ; ');
      b.AppendLine('');
    end;
    b.AppendLine('END');
    b.AppendLine('$$');
    memSQL.Lines.Text := b.ToString;
  finally
    b.Free
  end;
end;

procedure TfrmUnitTestJanuaVCLComponents.FormCreate(Sender: TObject);
begin
  {
    FServerConf.Port := 5432;
    FServerConf.DatabaseName := 'ergomercator';
    FServerConf.Password := '3rg0m3rc4t0r';
    FServerConf.Username := 'ergo';
    FServerConf.Address := 'pg.januaservers.com';
    FServerConf.Schema := 'football';
    FServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
  }
  // self.vtGuidGenerator.LoadFromFile('C:\Januaproject\dati\GuidGenerator.vtd');
  vtGuidGenerator.LoadFromFile(sGitHubHome + '\SDK\res\GuidGenerator.vtd');
  vtGuidGenerator.Open;
  edPort.Text := TJanuaApplication.ServerPort.ToString;
  // JanuaApplicationGlobalProfile.JanuaServerConf.Port.ToString;
  edDatabase.Text := TJanuaApplication.ServerDatabaseName;
  // JanuaApplicationGlobalProfile.JanuaServerConf.DatabaseName;
  self.edServerAddress.Text := TJanuaApplication.ServerAddress;
  /// JanuaApplicationGlobalProfile.JanuaServerConf.Address;
  self.edSchema.Text := TJanuaApplication.ServerSchema;
  // JanuaApplicationGlobalProfile.JanuaServerConf.Schema;
  self.edUserName.Text := TJanuaApplication.ServerUserName;
  // JanuaApplicationGlobalProfile.JanuaServerConf.Username;
  self.edPassword.Text := TJanuaApplication.ServerPassword;
  // JanuaApplicationGlobalProfile.JanuaServerConf.Password;
  // TJanuaOrmFramework.Initialize;
  // Web Module Assign

  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;

  // TSysStyleManager.Enabled := True;
end;

procedure TfrmUnitTestJanuaVCLComponents.edPortChange(Sender: TObject);
begin
  TJanuaApplication.ServerPort := StrToInt(edPort.Text)
end;

procedure TfrmUnitTestJanuaVCLComponents.edDatabaseChange(Sender: TObject);
begin
  TJanuaApplication.ServerDatabaseName := edDatabase.Text;
end;

procedure TfrmUnitTestJanuaVCLComponents.edServerAddressChange(Sender: TObject);
begin
  TJanuaApplication.ServerAddress := edServerAddress.Text;
end;

procedure TfrmUnitTestJanuaVCLComponents.edSchemaChange(Sender: TObject);
begin
  if TJanuaApplication.ServerSchema <> edSchema.Text then
    TJanuaApplication.ServerSchema := edSchema.Text;
end;

procedure TfrmUnitTestJanuaVCLComponents.edPasswordChange(Sender: TObject);
begin
  if TJanuaApplication.ServerPassword <> self.edPassword.Text then
    TJanuaApplication.ServerPassword := self.edPassword.Text;
end;

procedure TfrmUnitTestJanuaVCLComponents.edUserNameChange(Sender: TObject);
begin
  TJanuaApplication.ServerUserName := self.edUserName.Text;
end;

procedure TfrmUnitTestJanuaVCLComponents.btnConnectServerClick(Sender: TObject);
var
  i: Integer;
begin
  PgErgoConnection.Connected := False;

  // JanuaApplicationGlobalProfile.JanuaServerConf.Password;
  PgErgoConnection.Connect;
  qryColumns.Open;
  qryIndexFields.Open;
  qryTriggers.Open;
  qrySchemas.Open;
end;

procedure TfrmUnitTestJanuaVCLComponents.btnExecuteSqlClick(Sender: TObject);
begin
  self.PgScript1.SQL.Text := memSQL.Lines.Text;
  PgScript1.Execute;
end;

procedure TfrmUnitTestJanuaVCLComponents.btnSchemaAnalyticsClick(Sender: TObject);
begin
  vtGuidGenerator.First;
  while not vtGuidGenerator.Eof do
  begin
    btnAnalyticsClick(self);
    vtGuidGenerator.Next;
  end;

end;

procedure TfrmUnitTestJanuaVCLComponents.PgErgoConnectionBeforeConnect(Sender: TObject);
var
  i: Integer;
  a: TJanuaServerRecordConf;
  e: TJanuaUniConnection;
  s: string;
begin
  a := TJanuaApplication.JanuaServerConf;
  e := PgErgoConnection;
  begin
    e.Server := a.Address;
    PgErgoConnection.Port := a.Port;
    PgErgoConnection.Database := a.DatabaseName;
    // non aggiorno lo schema in quanto ogni server ha il suo schema .........................................
    s := 'PostgreSQL.Schema' + e.SpecificOptions.NameValueSeparator + a.Schema;
    i := PgErgoConnection.SpecificOptions.IndexOfName('PostgreSQL.Schema');
    if (i > -1) and (e.SpecificOptions[i] <> s) then
      e.SpecificOptions[i] := s;
    e.Password := a.Password;
    e.Username := a.Username;
    s := 'PostgreSQL.UseUnicode' + e.SpecificOptions.NameValueSeparator + 'True';
    i := PgErgoConnection.SpecificOptions.IndexOfName('PostgreSQL.UseUnicode');
    if (i > -1) and (e.SpecificOptions[i] <> s) then
      e.SpecificOptions[i] := s;
  end;
end;

procedure TfrmUnitTestJanuaVCLComponents.PgSQLMonitor1SQL(Sender: TObject; Text: string; Flag: TDATraceFlag);
begin
  self.memDBLog.Lines.Add(Text);
end;

procedure TfrmUnitTestJanuaVCLComponents.dsGuidGeneratorDataChange(Sender: TObject; Field: TField);
begin
  { t := LowerCase(edTableName.Text);
    a := LowerCase(self.edAbbreviation.Text);
    k := LowerCase(self.edKeys.Text); }
  if edTableName.Text <> self.vtGuidGenerator.fieldByName('SchemaTable').AsString then
  begin
    if not(vtGuidGenerator.State in [dsEdit, dsInsert]) then
    begin
      self.qryIndexFields.Close;
      self.qryIndexFields.SQL.Clear;
      self.qryIndexFields.SQL.Add('SELECT a.attname, format_type(a.atttypid, a.atttypmod) AS data_type');
      self.qryIndexFields.SQL.Add('FROM   pg_index i JOIN   pg_attribute a ON a.attrelid = i.indrelid');
      self.qryIndexFields.SQL.Add('  AND a.attnum = ANY(i.indkey)');
      self.qryIndexFields.SQL.Add('WHERE  i.indrelid = ''' + vtGuidGenerator.fieldByName('SchemaTable')
        .AsString + '''::regclass AND    i.indisprimary');
      qryIndexFields.Open;
    end;
  end;
  edTableName.Text := self.vtGuidGenerator.fieldByName('SchemaTable').AsString;
  edAbbreviation.Text := self.vtGuidGenerator.fieldByName('Abbreviation').AsString;
  edKeys.Text := self.vtGuidGenerator.fieldByName('Key').AsString;
end;

procedure TfrmUnitTestJanuaVCLComponents.Button7Click(Sender: TObject);
begin
  vtGuidGenerator.SaveToFile(sGitHubHome + '\SDK\res\GuidGenerator.vtd');
end;

procedure TfrmUnitTestJanuaVCLComponents.Button8Click(Sender: TObject);
begin
  lbCount.Caption := '0';
  lbtTot.Caption := self.vtGuidGenerator.RecordCount.ToString;
  vtGuidGenerator.First;
  FCounter := 0;
  while not self.vtGuidGenerator.Eof do
  begin
    btnGenerateClick(self);
    {
      Async.Run<Boolean>(
      function: Boolean
      var
      aScritp: TUniScript;
      begin
      // This is the "background" anonymous method. Runs in the
      // background thread, and its result is passed
      // to the "success" callback.
      // In this case the result is a String.
      aScritp := TUniScript.Create(nil);
      try
      aScritp.Connection := self.PgErgoConnection;
      aScritp.SQL.Text := self.AdvMemo1.Lines.Text;
      aScritp.Execute;
      Result := True;
      finally
      aScritp.Free;
      end;
      end,
      procedure(const Value: Boolean)
      begin
      // This is the "success" callback. Runs in the UI thread and
      // gets the result of the "background" anonymous method.
      Inc(FCounter);
      self.lbCount.Caption := FCounter.ToString;
      end,
      procedure(const Ex: exception)
      begin
      // This is the "error" callback.
      // Runs in the UI thread and is called only if the
      // "background" anonymous method raises an exception.
      Inc(FCounter);
      self.lbCount.Caption := FCounter.ToString;
      ShowMessage('Errore: ' + Ex.Message);
      end);
    }
    PgScript1.SQL.Text := memSQL.Lines.Text;
    PgScript1.Execute;
    vtGuidGenerator.Next;
  end;
end;

procedure TfrmUnitTestJanuaVCLComponents.Button9Click(Sender: TObject);
begin
  Trigger;
end;

procedure TfrmUnitTestJanuaVCLComponents.btnSchemaClick(Sender: TObject);
var
  c: char;
  j: Integer;
  tmp, sct: string;
  LdlgVCLTestPgTablesList: TdlgVCLTestPgTablesList;
  function CheckTable(tName: string): Boolean;
  begin
    qryIndexFields.Close;
    qryIndexFields.SQL.Clear;
    qryIndexFields.SQL.Add('SELECT a.attname, format_type(a.atttypid, a.atttypmod) AS data_type');
    qryIndexFields.SQL.Add('FROM   pg_index i JOIN   pg_attribute a ON a.attrelid = i.indrelid');
    qryIndexFields.SQL.Add('  AND a.attnum = ANY(i.indkey)');
    qryIndexFields.SQL.Add('WHERE  i.indrelid = ''' + tName + '''::regclass AND    i.indisprimary');
    qryIndexFields.Open;
    Result := qryIndexFields.RecordCount > 0;
  end;

begin
  // j := 0;
  qrySchemaTables.Close;
  qrySchemaTables.Params[0].AsWideString := LowerCase(edTableSchema.Text);
  qrySchemaTables.Open;
  qrySchemaTables.First;
  if qrySchemaTables.RecordCount > 0 then
  begin
    while not qrySchemaTables.Eof do
    begin
      sct := LowerCase(edTableSchema.Text + '.' + qrySchemaTablestable_name.AsWideString);
      if CheckTable(sct) and not vtGuidGenerator.Locate('SchemaTable', sct, []) then
      begin
        vtGuidGenerator.Append;
        vtGuidGenerator.fieldByName('SchemaTable').AsWideString := sct;
        tmp := Copy(LowerCase(edTableSchema.Text), 1, 1);
        j := 1;
        for c in LowerCase(StringReplace(qrySchemaTablestable_name.AsWideString, edPrefix.Text, '', [])) do
        begin
          if (j < 4) and not CharInset(c, ['a', 'e', 'i', 'o', 'u', 'j', 'y', '-', '_']) then
          begin
            tmp := tmp + c;
            Inc(j);
          end;
        end;
        vtGuidGenerator.fieldByName('Abbreviation').AsWideString := tmp;
        vtGuidGenerator.Post;
        btnGenerateClick(Sender);
        Button7Click(Sender);
      end;
      qrySchemaTables.Next
    end;

    LdlgVCLTestPgTablesList := TdlgVCLTestPgTablesList.Create(self);
    try
      LdlgVCLTestPgTablesList.ShowModal;
    finally
      LdlgVCLTestPgTablesList.Free;
      LdlgVCLTestPgTablesList := nil;
    end;

  end;

end;

procedure TfrmUnitTestJanuaVCLComponents.btnStartTestMVVMNavigatorClick(Sender: TObject);
var
  lfrmVCLVMTestNavigator: TfrmVCLVMTestNavigator;
begin
  lfrmVCLVMTestNavigator := ufrmVCLVMTestNavigator.TfrmVCLVMTestNavigator.Create(self);
  lfrmVCLVMTestNavigator.Parent := tabTestNavigator;
  lfrmVCLVMTestNavigator.BorderStyle := bsNone;
  lfrmVCLVMTestNavigator.BorderIcons := [];
  lfrmVCLVMTestNavigator.Align := alClient;
  lfrmVCLVMTestNavigator.Visible := True;
  lfrmVCLVMTestNavigator.Activate;
end;

procedure TfrmUnitTestJanuaVCLComponents.SpeedButton1Click(Sender: TObject);
begin
  RServer := TIdHTTPWebBrokerBridge.Create(nil);
  RServer.DefaultPort := StrToInt(edRestPort.Text);
  StartServer(RServer)
end;

procedure TfrmUnitTestJanuaVCLComponents.SpeedButton2Click(Sender: TObject);
begin
  WServer := TIdHTTPWebBrokerBridge.Create(nil);
  WServer.DefaultPort := StrToInt(edWebPort.Text);
  StartServer(WServer)
end;

procedure TfrmUnitTestJanuaVCLComponents.WriteLog(aLog: string);
begin
  memMainLog.Lines.Add(aLog)
end;

procedure TfrmUnitTestJanuaVCLComponents.Button5Click(Sender: TObject);
var
  aIntf, aImpl, aCustom, aDataset, aSchema, aAbbr, aPrefix, aFolder: string;
  aFileIntf, aFileImpl, s, p, st: string;
  bCustom: Boolean;
  i: Integer;
begin
  PgDDLColumnsTable.TableName := edTableName.Text;
  i := Pos('.', edTableName.Text);
  aSchema := Copy(edTableName.Text, 1, i - 1);
  aPrefix := edPrefix.Text;
  aDataset := Copy(edTableName.Text, i + 1, Length(edTableName.Text) - i + 1);
  if (aPrefix <> '') and (Copy(aDataset, 1, Length(aPrefix)) = aPrefix) then
    aDataset := Copy(aDataset, Length(aPrefix) + 1, Length(aDataset) - Length(aPrefix));
  s := aPrefix + aDataset;

  s := TJanuaApplication.DialogText.InputText('singolare', 'Record', s);

  p := s + 's';

  p := TJanuaApplication.DialogText.InputText('plurale', 'RecordSet', p);
  st := TJanuaApplication.DialogText.InputText('storage: ', 'Storage Name:',
    'T' + Capitalize(aSchema) + 'Storage');

  bCustom := TJanuaApplication.Dialogs.JMessageDlg('Creo la classe Custom?');

  aAbbr := LowerCase(edAbbreviation.Text);
  PgDDLColumnsTable.Open;
  Janua.Orm.Generator.GenerateRecordSet(aIntf, aImpl, aCustom, PgDDLColumnsTable, aDataset, aSchema, aAbbr,
    aFileIntf, aFileImpl, s, p, bCustom);
  memSourceIntf.Lines.Text := aIntf;
  MemSourceImpl.Lines.Text := aImpl;

  Janua.Orm.Generator.GenerateServer(aIntf, aImpl, aCustom, aDataset, aSchema, aAbbr, s, p, st);

  memSrvIntf.Lines.Text := aIntf;
  memSrvImpl.Lines.Text := aImpl;
  // sGitHubHome + '\SDK\res\GuidGenerator.vtd'
  if TJanuaApplication.Dialogs.SelectDirectory('Source Jorm Folder', sGitHubHome + '\SDK\src') then
  // if TJanuaCoreOS.SelectFolder(aFolder, 'Source Jorm Folder', 'Ok') then
  begin
    aFolder := TJanuaApplication.Dialogs.SelectedFile;
    memSourceIntf.Lines.SaveToFile(TPath.Combine(aFolder, aFileIntf + '.pas'));
    MemSourceImpl.Lines.SaveToFile(TPath.Combine(aFolder, aFileImpl + '.pas'));
  end;
end;

procedure TfrmUnitTestJanuaVCLComponents.btnTriggersClick(Sender: TObject);
begin
  vtGuidGenerator.First;
  while not vtGuidGenerator.Eof do
  begin
    Trigger;
    btnExecuteSqlClick(self);
    vtGuidGenerator.Next;
  end;
end;

procedure TfrmUnitTestJanuaVCLComponents.ExportAsCSV1Click(Sender: TObject);
begin
  if FileSaveDialog1.Execute then
    CsvExport.SaveToFile(FileSaveDialog1.FileName);

end;

procedure TfrmUnitTestJanuaVCLComponents.frameBindTestOrm1btnUndoClick(Sender: TObject);
begin
  frameTestOrmDB1.frameBindTestOrm1btnUndoClick(Sender);
end;

procedure TfrmUnitTestJanuaVCLComponents.framePrintWarehouseReceipts1btnStartTestClick(Sender: TObject);
begin
  framePrintWarehouseReceipts1.btnStartTestClick(Sender);

end;

procedure TfrmUnitTestJanuaVCLComponents.frameTestOrmDB1btnSaveClick(Sender: TObject);
begin
  frameTestOrmDB1.btnSaveClick(Sender);

end;

procedure TfrmUnitTestJanuaVCLComponents.frameTestOrmDB1btnSetupRecordClick(Sender: TObject);
begin
  frameTestOrmDB1.btnSetupRecordClick(Sender);

end;

procedure TfrmUnitTestJanuaVCLComponents.frameTestOrmDB1btnStartOrmdbTestClick(Sender: TObject);
begin
  frameTestOrmDB1.btnStartOrmdbTestClick(Sender);

end;

procedure TfrmUnitTestJanuaVCLComponents.frameTestViewModelAnagraphSearch1Button1Click(Sender: TObject);
var
  lAnagraph: IAnagraph;
begin
  // Chiamo l'attivazione del Frame
  frameTestViewModelAnagraphSearch1.Button1Click(Sender);
  // Assegno la griglia per verificare il Test.
  grdSearchAnagraph.DataSource := frameTestViewModelAnagraphSearch1.SearchViewModelAnagraph.dsSearch;
  lAnagraph := frameTestViewModelAnagraphSearch1.SearchViewModelAnagraph.Anagraph;
  edCompanyName.Text := lAnagraph.AnLastName.AsString;
  lAnagraph.AnLastName.Bind('AsString', edCompanyName, 'Text', True);
end;

procedure TfrmUnitTestJanuaVCLComponents.frameTestViewModelLocationSearch1Button1Click(Sender: TObject);
begin
  frameTestViewModelLocationSearch1.Button1Click(Sender);
  grdLocations.DataSource := frameTestViewModelLocationSearch1.SearchViewModelLogisticLocation.dsSearch;
end;

procedure TfrmUnitTestJanuaVCLComponents.frameVclTestOrmDatasetSync1btnStartTestClick(Sender: TObject);
begin
  frameVclTestOrmDatasetSync1.btnStartTestClick(Sender);

end;

end.
