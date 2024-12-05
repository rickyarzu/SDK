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
    qryTwilioLogid: TIntegerField;
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
    qryPhoenixLogCloneID: TIntegerField;
    qryPhoenixLogCloneSTATO: TSmallintField;
    qryPhoenixLogCloneWANUMBER: TWideStringField;
    qryPhoenixLogCloneMANAGED: TWideStringField;
    qryPhoenixLogCloneINSERT_DATE: TDateTimeField;
    qryPhoenixLogCloneUPDATE_DATE: TDateTimeField;
    qryPhoenixLogCloneJSON_CONTENT: TBlobField;
    qryPhoenixLogCloneBODY_RECEIVED: TBlobField;
    qryPhoenixLogCloneACTION: TWideStringField;
    qryMaxTwilioLogMAX_ID: TIntegerField;
    qryPhoenixLogCloneJGUID: TGuidField;
    qryWebHook: TUniQuery;
    qryMessageStatus: TUniQuery;
    qryWebHookID: TIntegerField;
    qryWebHookSTATO: TSmallintField;
    qryWebHookJGUID: TGuidField;
    qryWebHookWANUMBER: TWideStringField;
    qryWebHookMANAGED: TWideStringField;
    qryWebHookINSERT_DATE: TDateTimeField;
    qryWebHookUPDATE_DATE: TDateTimeField;
    qryWebHookJSON_CONTENT: TBlobField;
    qryWebHookBODY_RECEIVED: TBlobField;
    qryWebHookACTION: TWideStringField;
    spInsertMessage: TUniStoredProc;
    qryMessageList: TUniQuery;
    qryPhoenixLogClonememTwilioJson: TStringField;
    qryWebHookmemTwilioJson: TStringField;
    qryMessageListWA_NAME: TWideStringField;
    qryMessageListWANUMBER: TWideStringField;
    qryMessageListWAMESSAGE: TWideStringField;
    qryMessageListID: TIntegerField;
    qryMessageListWAREAD: TWideStringField;
    qryMessageListIN_OUT: TSmallintField;
    qryMessageListSTATE: TSmallintField;
    qryMessageListINSERT_DATE: TDateTimeField;
    qryMessageListREAD_DATE: TDateTimeField;
    qryMessageListWA_STATE: TSmallintField;
    qryMessageListWA_ID: TWideStringField;
    qryMessageListREPORT_ID: TIntegerField;
    qryMessageStatusID: TIntegerField;
    qryMessageStatusSTATO: TSmallintField;
    qryMessageStatusJGUID: TGuidField;
    qryMessageStatusWANUMBER: TWideStringField;
    qryMessageStatusMANAGED: TWideStringField;
    qryMessageStatusINSERT_DATE: TDateTimeField;
    qryMessageStatusUPDATE_DATE: TDateTimeField;
    qryMessageStatusJSON_CONTENT: TBlobField;
    qryMessageStatusBODY_RECEIVED: TWideMemoField;
    qryMessageStatusACTION: TWideStringField;
    qryMessageStatusmemTwilioJson: TStringField;
    qryMessageListcalcLabel: TStringField;
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryPhoenixLogCloneCalcFields(DataSet: TDataSet);
    procedure qryWebHookCalcFields(DataSet: TDataSet);
    procedure qryMessageStatusCalcFields(DataSet: TDataSet);
    procedure qryMessageListCalcFields(DataSet: TDataSet);
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
  public
    property RecordFound: Integer read FRecordFound write SetRecordFound;
  end;

var
  dmPgTWilioSync: TdmPgTWilioSync;

implementation

uses Janua.Core.Functions, Janua.Cloud.Types;

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
  lHtml := '';
  if qryMessageListWA_STATE.AsInteger = -1 then
    lHtml := '<IMG src="idx:0">'
  else if qryMessageListWA_STATE.AsInteger = 0 then
    lHtml := '<IMG src="idx:1">'
  else if qryMessageListWA_STATE.AsInteger = 1 then
    lHtml := '<IMG src="idx:2">'
  else if qryMessageListWA_STATE.AsInteger = 2 then
    lHtml := '<IMG src="idx:3">';

  qryMessageListcalcLabel.AsString := lHtml;
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
      lWebHook.SetFromString(qryWebHookBODY_RECEIVED.AsString);
      // :WANUMBER, :WAMESSAGE, :ID, :WAREAD, :IN_OUT, :STATE, :INSERT_DATE,
      // :READ_DATE, :WA_STATE, :WA_ID, :REPORT_ID
      spInsertMessage.ParamByName('WANUMBER').AsString := lWebHook.From;
      spInsertMessage.ParamByName('WAMESSAGE').AsString := lWebHook.Body;
      spInsertMessage.ParamByName('INSERT_DATE').AsDateTime := qryWebHookINSERT_DATE.AsDateTime;
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
begin
  qryMessageStatus.Close;
  qryMessageStatus.Open;
end;

end.
