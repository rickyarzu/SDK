unit Janua.Phoenix.PgTwilioSync;

interface

uses
  System.SysUtils, System.Classes, udmPgStorage, UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni,
  Janua.Unidac.Connection, InterBaseUniProvider, MemDS;

type
  TdmPgTWilioSync = class(TdmPgStorage)
    FbPhoenixConnection: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    qryTwilioLog: TUniQuery;
    qryTwilioLogdb_schema_id: TIntegerField;
    qryTwilioLogjguid: TGuidField;
    qryTwilioLogdeleted: TBooleanField;
    qryTwilioLoginsert_date: TDateTimeField;
    qryTwilioLogupdate_date: TDateTimeField;
    qryTwilioLoguser_insert: TWideStringField;
    qryTwilioLoguser_update: TWideStringField;
    qryTwilioLogjson_content: TWideMemoField;
    qryTwilioLogbody_received: TWideMemoField;
    qryTwilioLogaction: TWideStringField;
    qryPhoenixLogClone: TUniQuery;
    qryMaxTwilioLog: TUniQuery;
    qryPhoenixLogCloneSTATO: TSmallintField;
    qryPhoenixLogCloneWANUMBER: TWideStringField;
    qryPhoenixLogCloneMANAGED: TWideStringField;
    qryPhoenixLogCloneINSERT_DATE: TDateTimeField;
    qryPhoenixLogCloneUPDATE_DATE: TDateTimeField;
    qryPhoenixLogCloneJSON_CONTENT: TBlobField;
    qryPhoenixLogCloneBODY_RECEIVED: TBlobField;
    qryPhoenixLogCloneACTION: TWideStringField;
    qryPhoenixLogCloneJGUID: TGuidField;
    qryWebHook: TUniQuery;
    qryMessageStatus: TUniQuery;
    qryWebHookSTATO: TSmallintField;
    qryWebHookJGUID: TGuidField;
    qryWebHookWANUMBER: TWideStringField;
    qryWebHookMANAGED: TWideStringField;
    qryWebHookINSERT_DATE: TDateTimeField;
    qryWebHookUPDATE_DATE: TDateTimeField;
    qryWebHookACTION: TWideStringField;
    spInsertMessage: TUniStoredProc;
    qryMessageList: TUniQuery;
    qryPhoenixLogClonememTwilioJson: TStringField;
    qryWebHookmemTwilioJson: TStringField;
    qryMessageListWA_NAME: TWideStringField;
    qryMessageListWANUMBER: TWideStringField;
    qryMessageListWAMESSAGE: TWideStringField;
    qryMessageListWAREAD: TWideStringField;
    qryMessageListIN_OUT: TSmallintField;
    qryMessageListSTATE: TSmallintField;
    qryMessageListINSERT_DATE: TDateTimeField;
    qryMessageListREAD_DATE: TDateTimeField;
    qryMessageListWA_STATE: TSmallintField;
    qryMessageListWA_ID: TWideStringField;
    qryMessageListREPORT_ID: TIntegerField;
    qryMessageStatusSTATO: TSmallintField;
    qryMessageStatusJGUID: TGuidField;
    qryMessageStatusWANUMBER: TWideStringField;
    qryMessageStatusMANAGED: TWideStringField;
    qryMessageStatusINSERT_DATE: TDateTimeField;
    qryMessageStatusUPDATE_DATE: TDateTimeField;
    qryMessageStatusBODY_RECEIVED: TWideMemoField;
    qryMessageStatusACTION: TWideStringField;
    qryMessageStatusmemTwilioJson: TStringField;
    qryMessageListcalcLabel: TStringField;
    spUdateMessage: TUniStoredProc;
    tbWhatsAppStates: TUniTable;
    tbWhatsAppStatesID: TSmallintField;
    tbWhatsAppStatesDESCRIPTION: TWideStringField;
    tbWhatsAppStatesIMAGE: TBlobField;
    qryStatini: TUniQuery;
    qryLkpMessageStatus: TUniQuery;
    qryLkpMessageStatusWA_ID: TWideStringField;
    qryLkpMessageStatusID: TSmallintField;
    qryLkpMessageStatusDESCRIPTION: TWideStringField;
    qryLkpMessageStatusIMAGE: TBlobField;
    dsStatini: TUniDataSource;
    qryStatiniCHIAVE: TIntegerField;
    qryStatiniCLIENTE: TIntegerField;
    qryStatiniFILIALE: TIntegerField;
    qryStatiniTITOLO: TWideStringField;
    qryStatiniRAGIONE_SOCIALE: TWideStringField;
    qryStatiniINDIRIZZO: TWideStringField;
    qryStatiniCOMUNE: TWideStringField;
    qryStatiniPROVINCIA: TWideStringField;
    qryStatiniCAP: TWideStringField;
    qryStatiniTELEFONO: TWideStringField;
    qryStatiniCELLULARE: TWideStringField;
    qryStatiniNOTE: TBlobField;
    qryStatiniORARIO_APERTURA_DAL1: TTimeField;
    qryStatiniORARIO_APERTURA_DAL2: TTimeField;
    qryStatiniORARIO_APERTURA_AL1: TTimeField;
    qryStatiniORARIO_APERTURA_AL2: TTimeField;
    qryStatiniCHIUSURA: TWideStringField;
    qryStatiniFATTURA: TIntegerField;
    qryStatiniDATA_INTERVENTO: TDateField;
    qryStatiniGENERAZIONE_AUTOMATICA: TIntegerField;
    qryStatiniTECNICO_INTERVENTO: TIntegerField;
    qryStatiniSCANSIONE: TBlobField;
    qryStatiniREGISTRO: TBlobField;
    qryStatiniNOTE_PER_IL_TECNICO: TBlobField;
    qryStatiniSOSPESO: TWideStringField;
    qryStatiniDA_ESPORTARE_SUL_WEB: TWideStringField;
    qryStatiniRESPONSABILE: TIntegerField;
    qryStatiniESPORTATO_SU_MOBILE: TWideStringField;
    qryStatiniNOTE_DAL_TECNICO: TBlobField;
    qryStatiniJSON_DA_MOBILE: TBlobField;
    qryStatiniPDF_STATINO: TBlobField;
    qryStatiniREGISTRO_IS_PDF: TWideStringField;
    qryStatiniVERBALE_PROVA_DINAMICA: TBlobField;
    qryStatiniVERBALE_MANICHETTE: TBlobField;
    qryStatiniPREVENTIVO: TIntegerField;
    qryStatiniIGNORA_EVIDENZIAZIONE: TWideStringField;
    qryStatiniANNULLATO_DA_TABLET: TWideStringField;
    qryStatiniMOBILEWARN_NUOVA_ATTREZZATURA: TWideStringField;
    qryStatiniMOBILEWARN_ORDINARIA_RITIRATA: TWideStringField;
    qryStatiniMOBILEWARN_N_ORDIN_CONTROLLATA: TWideStringField;
    qryStatiniMOBILEWARN_SMALTIMENTO: TWideStringField;
    qryStatiniSTATO_LAVORAZIONE: TWideStringField;
    qryStatiniDATA_CHIUSURA_DA_SERVER: TDateField;
    qryStatiniCHIUSURA_EXT: TWideStringField;
    qryStatiniCHIUSURA_STATINO: TBlobField;
    qryStatiniMOBILEWARN_NON_ESEGUITI: TWideStringField;
    qryStatiniPRESA_IN_CARICO: TWideStringField;
    qryStatiniFORNITURA: TWideStringField;
    qryStatiniAPPUNTAMENTO_DATA: TDateField;
    qryStatiniAPPUNTAMENTO_ORA: TTimeField;
    qryStatiniSTATO: TSmallintField;
    qryStatiniJGUID: TBytesField;
    qryStatiniGCAL: TWideStringField;
    qryStatiniWANUMBER: TWideStringField;
    qryStatiniWA: TWideStringField;
    qryStatiniSTATO_IMMAGINE: TBlobField;
    qryStatiniWA_ID: TWideStringField;
    qryStatiniWA_IMAGE: TBlobField;
    qryStatiniWA_STATE: TSmallintField;
    qryTwilioLogid: TLargeintField;
    qryPhoenixLogCloneID: TLargeintField;
    qryMaxTwilioLogMAX_ID: TLargeintField;
    qryWebHookID: TLargeintField;
    qryMessageStatusID: TLargeintField;
    qryMessageListID: TIntegerField;
    qryMessageListUPD_ID: TLargeintField;
    qryLkpMessageStatusWA_STATE: TSmallintField;
    qryWebHookJSON_CONTENT: TWideMemoField;
    qryWebHookBODY_RECEIVED: TWideMemoField;
    qryMessageStatusJSON_CONTENT: TWideMemoField;
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryPhoenixLogCloneCalcFields(DataSet: TDataSet);
    procedure qryWebHookCalcFields(DataSet: TDataSet);
    procedure qryMessageStatusCalcFields(DataSet: TDataSet);
    procedure qryMessageListCalcFields(DataSet: TDataSet);
    procedure qryStatiniAfterOpen(DataSet: TDataSet);
  private
    FRecordFound: Integer;
    procedure SetRecordFound(const Value: Integer);
  protected
    function GetLastSync: Integer;

  public
    { Public declarations }
    procedure SyncDBTwilio;
    procedure SyncMessages;
    procedure OpenTwilio;
    procedure SyncStatus;
    procedure StatiniStatus;
  public
    property RecordFound: Integer read FRecordFound write SetRecordFound;
  end;

var
  dmPgTWilioSync: TdmPgTWilioSync;

implementation

uses Janua.Core.Functions, Janua.Cloud.Types, System.StrUtils, System.Math, System.DateUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmPgTWilioSync.DataModuleCreate(Sender: TObject);
begin
  inherited;
  qryMaxTwilioLog.Connection := FbPhoenixConnection;
  qryPhoenixLogClone.Connection := FbPhoenixConnection;
  spInsertMessage.Connection := FbPhoenixConnection;
  qryMessageList.Connection := FbPhoenixConnection;
  qryMessageStatus.Connection := FbPhoenixConnection;
  qryWebHook.Connection := FbPhoenixConnection;
  spUdateMessage.Connection := FbPhoenixConnection;
  tbWhatsAppStates.Connection := FbPhoenixConnection;
  qryLkpMessageStatus.Connection := FbPhoenixConnection;
  qryStatini.Connection := FbPhoenixConnection;
  qryStatini.Open;
end;

function TdmPgTWilioSync.GetLastSync: Integer;
begin
  qryMaxTwilioLog.Close;
  qryMaxTwilioLog.Open;
  Result := qryMaxTwilioLogMAX_ID.AsInteger;
  qryMaxTwilioLog.Close;
end;

procedure TdmPgTWilioSync.OpenTwilio;
begin
  var
  vTest := GetLastSync;
  qryTwilioLog.Close;
  qryTwilioLog.Params[0].AsInteger := vTest;
  qryTwilioLog.Open;

  qryPhoenixLogClone.Close;
  qryPhoenixLogClone.Params[0].AsInteger := vTest;
  qryPhoenixLogClone.Open;
end;

procedure TdmPgTWilioSync.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  // Before Connect Test
  inherited;

end;

procedure TdmPgTWilioSync.qryMessageListCalcFields(DataSet: TDataSet);
begin
  inherited;
  var
  vIcon := qryMessageListWA_STATE.AsInteger + 1;
  qryMessageListcalcLabel.AsString := '<IMG src="idx:' + vIcon.ToString + '">';
end;

procedure TdmPgTWilioSync.qryMessageStatusCalcFields(DataSet: TDataSet);
var
  lStatus: TTWilioStatus;
begin
  lStatus.SetFromString(qryMessageStatusBODY_RECEIVED.AsString);
  qryMessageStatusmemTwilioJson.AsString := lStatus.GetAsJson;
end;

procedure TdmPgTWilioSync.qryPhoenixLogCloneCalcFields(DataSet: TDataSet);
var
  lWebHook: TTwilioWebHook;
begin
  lWebHook.SetFromString(qryPhoenixLogCloneBODY_RECEIVED.AsString);
  qryPhoenixLogClonememTwilioJson.AsString := lWebHook.GetAsJson;
end;

procedure TdmPgTWilioSync.qryStatiniAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryLkpMessageStatus.Open;
end;

procedure TdmPgTWilioSync.qryWebHookCalcFields(DataSet: TDataSet);
var
  lWebHook: TTwilioWebHook;
begin
  lWebHook.SetFromString(qryWebHookBODY_RECEIVED.AsString);
  qryWebHookmemTwilioJson.AsString := lWebHook.GetAsJson;

end;

procedure TdmPgTWilioSync.SetRecordFound(const Value: Integer);
begin
  FRecordFound := Value;
end;

procedure TdmPgTWilioSync.StatiniStatus;
begin
  qryStatini.First;
  While not qryStatini.Eof do
  begin
    var
    lStream := TMemoryStream.Create;
    try
      if qryLkpMessageStatus.RecordCount > 0 then
      begin
        qryLkpMessageStatusIMAGE.SaveToStream(lStream);
        qryStatini.Edit;
        qryStatiniWA_IMAGE.LoadFromStream(lStream);
        qryStatiniWA_STATE.AsInteger := qryLkpMessageStatusWA_STATE.AsInteger;
        try
          qryStatini.Post;
        except
          qryStatini.Cancel;
        end;
      end;
    finally
      lStream.Free;
    end;
    qryStatini.Next;
  end;
  qryStatini.First;
end;

procedure TdmPgTWilioSync.SyncDBTwilio;
begin
  OpenTwilio;
  if qryTwilioLog.RecordCount > 0 then
    CloneDataset(qryTwilioLog, qryPhoenixLogClone);
end;

procedure TdmPgTWilioSync.SyncMessages;
var
  lWebHook: TTwilioWebHook;
begin
  qryWebHook.Connection := FbPhoenixConnection;
  qryWebHook.Open;
  if qryWebHook.RecordCount > 0 then
  begin
    qryWebHook.First;
    While not qryWebHook.Eof do
    begin
      // lWebHook.SetFromString(qryWebHookBODY_RECEIVED.AsString);
      lWebHook.SetAsJson(qryWebHookJSON_CONTENT.AsWideString);
      // :WANUMBER, :WAMESSAGE, :ID, :WAREAD, :IN_OUT, :STATE, :INSERT_DATE,
      // :READ_DATE, :WA_STATE, :WA_ID, :REPORT_ID
      spInsertMessage.ParamByName('WANUMBER').AsString := lWebHook.From;
      spInsertMessage.ParamByName('WAMESSAGE').AsString := lWebHook.Body;
      spInsertMessage.ParamByName('INSERT_DATE').AsDateTime := IncMinute( qryWebHookINSERT_DATE.AsDateTime, -3);
      spInsertMessage.ParamByName('WA_ID').AsString := lWebHook.MessageSid;
      spInsertMessage.ParamByName('WA_STATE').AsInteger := 1;
      spInsertMessage.ParamByName('IN_OUT').AsInteger := 1;
      spInsertMessage.ExecProc;
      qryWebHook.Edit;
      qryWebHookMANAGED.AsString := 'T';
      qryWebHook.Post;
      qryWebHook.Next;
    end;
  end;
end;

procedure TdmPgTWilioSync.SyncStatus;
var
  lStatus: TTWilioStatus;
begin
  qryMessageStatus.Close;
  qryMessageStatus.Open;
  if qryMessageStatus.RecordCount > 0 then
    while not qryMessageStatus.Eof do
    begin

      lStatus.SetFromString(qryMessageStatusBODY_RECEIVED.AsString);
      { EXECUTE PROCEDURE UPDATE_WHATSAPP_MESSAGES(:WAREAD, :STATE, :READ_DATE, :WA_STATE, :WA_ID) }

      // :WAREAD
      var
      lRead := IfThen(lStatus.MessageStatus = 'read', 'T', 'F');
      spUdateMessage.ParamByName('WAREAD').AsString := lRead;

      // :WA_STATE
      var
      lWState := 0;

      // STATE -- translated from string (read, sent, delivererd, undelirvered) to a state ordinal -1, 0, 1, 2
      if lStatus.MessageStatus = 'read' then
        lWState := 2
      else if lStatus.MessageStatus = 'sent' then
        lWState := 0
      else if lStatus.MessageStatus = 'delivered' then
        lWState := 1
      else if lStatus.MessageStatus = 'undelivered' then
        lWState := -1;

      spUdateMessage.ParamByName('WA_STATE').AsInteger := lWState;

      // :STATE can be only -1 failed, 0 sent or delivered, 1 read.
      var
      lState := 0;

      case lWState of
        - 1:
          lState := -1;
        2:
          lState := 1;
      end;

      // READ_DATE to be Set ONLY if lState = 1;
      if lState = 1 then
        spUdateMessage.ParamByName('READ_DATE').AsDateTime := qryMessageStatusINSERT_DATE.Value;

      // Unique ID identifier for every message is a string (base64 or similar)
      spUdateMessage.ParamByName('WA_ID').AsString := lStatus.MessageSid;

      // Unique ID identifier for every message is a string (base64 or similar)
      spUdateMessage.ParamByName('UPD_ID').AsLargeInt := qryMessageStatusID.AsLargeInt;

      spUdateMessage.ExecProc;


      qryMessageStatus.Edit;
      qryMessageStatusMANAGED.AsString := 'T';
      qryMessageStatus.Post;

      qryMessageStatus.Next;
    end;

  qryMessageStatus.Close;
end;

end.
