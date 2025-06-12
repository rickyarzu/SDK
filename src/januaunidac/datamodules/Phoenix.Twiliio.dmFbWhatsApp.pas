unit Phoenix.Twiliio.dmFbWhatsApp;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, System.StrUtils, System.Math, System.DateUtils,
  // UniDAC Firebase Interbase Provider
  UniProvider, Uni, InterBaseUniProvider, MemDS,
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Core.DB.Intf, Janua.Uni.Intf,
  // Janua
  udmFbStorage, Janua.Cloud.Types, Janua.Unidac.Connection;

type
  TdmFbTwilioWhatsApp = class(TdmFbStorage)
    qryPhoenixTwilioLog: TUniQuery;
    qryPhoenixTwilioLogSTATO: TSmallintField;
    qryPhoenixTwilioLogWANUMBER: TWideStringField;
    qryPhoenixTwilioLogMANAGED: TWideStringField;
    qryPhoenixTwilioLogINSERT_DATE: TDateTimeField;
    qryPhoenixTwilioLogUPDATE_DATE: TDateTimeField;
    qryPhoenixTwilioLogJSON_CONTENT: TBlobField;
    qryPhoenixTwilioLogBODY_RECEIVED: TBlobField;
    qryPhoenixTwilioLogACTION: TWideStringField;
    qryPhoenixTwilioLogJGUID: TGuidField;
    spInsertMessage: TUniStoredProc;
    qryMessageList: TUniQuery;
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
    qryMessageListcalcLabel: TStringField;
    spUdateMessage: TUniStoredProc;
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
    qryPhoenixTwilioLogID: TLargeintField;
    qryMessageListID: TIntegerField;
    qryMessageListUPD_ID: TLargeintField;
    qryLkpMessageStatusWA_STATE: TSmallintField;
    qryMaxTwilioLog: TUniQuery;
    qryMaxTwilioLogMAXID: TLargeintField;
    qryNextVal: TUniQuery;
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryMessageListCalcFields(DataSet: TDataSet);
    procedure qryStatiniAfterOpen(DataSet: TDataSet);
  private
    FRecordFound: Integer;
    procedure SetRecordFound(const Value: Integer);

  public
    { Public declarations }
    procedure OpenTwilio;
    procedure StatiniStatus;
  public
    procedure FallBack(const aFallback: string);
    procedure StatusCallback(const aText: string; aStatus: TTWilioStatus);
    procedure WebHook(const aText: string; aHook: TTwilioWebHook);
  public
    property RecordFound: Integer read FRecordFound write SetRecordFound;
  end;

var
  dmFbTwilioWhatsApp: TdmFbTwilioWhatsApp;

implementation

uses Janua.Core.Functions;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmFbTwilioWhatsApp.DataModuleCreate(Sender: TObject);
begin
  inherited;
  spInsertMessage.Connection := FbPhoenixConnection;
  qryMessageList.Connection := FbPhoenixConnection;
  spUdateMessage.Connection := FbPhoenixConnection;
  qryLkpMessageStatus.Connection := FbPhoenixConnection;
  qryStatini.Connection := FbPhoenixConnection;
  qryStatini.Open;
  qryMaxTwilioLog.Close;
  qryMaxTwilioLog.Open;
  qryMaxTwilioLogMAXID.AsInteger;
  qryPhoenixTwilioLog.Open;
end;

procedure TdmFbTwilioWhatsApp.FallBack(const aFallback: string);
begin
  qryPhoenixTwilioLog.Append;
  qryPhoenixTwilioLogBODY_RECEIVED.AsString := aFallback;
  qryPhoenixTwilioLogACTION.AsString := 'fallback';
  qryPhoenixTwilioLog.Post;
end;

procedure TdmFbTwilioWhatsApp.OpenTwilio;
begin
  qryPhoenixTwilioLog.Close;
  qryPhoenixTwilioLog.Open;
end;

procedure TdmFbTwilioWhatsApp.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  // Before Connect Test
  inherited;

end;

procedure TdmFbTwilioWhatsApp.qryMessageListCalcFields(DataSet: TDataSet);
begin
  inherited;
  var
  vIcon := qryMessageListWA_STATE.AsInteger + 1;
  qryMessageListcalcLabel.AsString := '<IMG src="idx:' + vIcon.ToString + '">';
end;

procedure TdmFbTwilioWhatsApp.qryStatiniAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryLkpMessageStatus.Open;
end;

procedure TdmFbTwilioWhatsApp.SetRecordFound(const Value: Integer);
begin
  FRecordFound := Value;
end;

procedure TdmFbTwilioWhatsApp.StatiniStatus;
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

procedure TdmFbTwilioWhatsApp.StatusCallback(const aText: string; aStatus: TTWilioStatus);
begin
  qryPhoenixTwilioLog.Append;
  qryPhoenixTwilioLogBODY_RECEIVED.AsString := aText;
  qryPhoenixTwilioLogACTION.AsString := 'status_callback';
  qryPhoenixTwilioLogJSON_CONTENT.AsString := aStatus.GetAsJson;
  qryPhoenixTwilioLog.Post;

  var
  lRead := IfThen(aStatus.MessageStatus = 'read', 'T', 'F');
  spUdateMessage.ParamByName('WAREAD').AsString := lRead;

  // :WA_STATE
  var
  lWState := 0;

  // STATE -- translated from string (read, sent, delivererd, undelirvered) to a state ordinal -1, 0, 1, 2
  if aStatus.MessageStatus = 'read' then
    lWState := 2
  else if aStatus.MessageStatus = 'sent' then
    lWState := 0
  else if aStatus.MessageStatus = 'delivered' then
    lWState := 1
  else if aStatus.MessageStatus = 'undelivered' then
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
    spUdateMessage.ParamByName('READ_DATE').AsDateTime := Now();

  // Unique ID identifier for every message is a string (base64 or similar)
  spUdateMessage.ParamByName('WA_ID').AsString := aStatus.MessageSid;

  // Unique ID identifier for every message is a string (base64 or similar)
  spUdateMessage.ParamByName('UPD_ID').AsLargeInt := 0; // qryMessageStatusID.AsLargeInt;

  spUdateMessage.ExecProc;

  qryPhoenixTwilioLog.Edit;
  qryPhoenixTwilioLogMANAGED.AsString := 'T';
  qryPhoenixTwilioLog.Post;

end;

procedure TdmFbTwilioWhatsApp.WebHook(const aText: string; aHook: TTwilioWebHook);
var
  lStatus: TTWilioStatus;
begin

  {
    var
    lWebHook: TTwilioWebHook;
    begin
    lWebHook.SetFromString(qryPhoenixLogCloneBODY_RECEIVED.AsString);
    qryPhoenixLogClonememTwilioJson.AsString := lWebHook.GetAsJson;
  }

  qryPhoenixTwilioLog.Append;
  qryPhoenixTwilioLogBODY_RECEIVED.AsString := aText;
  qryPhoenixTwilioLogACTION.AsString := 'webhook';
  qryPhoenixTwilioLogJSON_CONTENT.AsString := aHook.GetAsJson;
  qryPhoenixTwilioLog.Post;

  spInsertMessage.ParamByName('WANUMBER').AsString := aHook.From;
  spInsertMessage.ParamByName('WAMESSAGE').AsString := aHook.Body;
  spInsertMessage.ParamByName('INSERT_DATE').AsDateTime := Now();
  spInsertMessage.ParamByName('WA_ID').AsString := aHook.MessageSid;
  spInsertMessage.ParamByName('WA_STATE').AsInteger := 1;
  spInsertMessage.ParamByName('IN_OUT').AsInteger := 1;
  spInsertMessage.ExecProc;

  qryPhoenixTwilioLog.Edit;
  qryPhoenixTwilioLogMANAGED.AsString := 'T';
  qryPhoenixTwilioLog.Post;
end;

end.
