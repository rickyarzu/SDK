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
    IntegerField2: TIntegerField;
    SmallintField2: TSmallintField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    BlobField3: TBlobField;
    BlobField4: TBlobField;
    WideStringField6: TWideStringField;
    GuidField2: TGuidField;
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
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
  private
    FRecordFound: Integer;
    procedure SetRecordFound(const Value: Integer);
  protected
    function GetLastSync: Integer;
  public
    { Public declarations }
    procedure SyncDBTwilio;
    procedure SyncMessages;
  public
    property RecordFound: Integer read FRecordFound write SetRecordFound;
  end;

var
  dmPgTWilioSync: TdmPgTWilioSync;

implementation

uses Janua.Core.Functions, Janua.Cloud.Types;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function TdmPgTWilioSync.GetLastSync: Integer;
begin
  qryMaxTwilioLog.Connection := self.FbPhoenixConnection;
  qryMaxTwilioLog.Close;
  qryMaxTwilioLog.Open;
  Result := qryMaxTwilioLogMAX_ID.AsInteger;
  qryMaxTwilioLog.Close;
end;

procedure TdmPgTWilioSync.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  // Before Connect Test
  inherited;

end;

procedure TdmPgTWilioSync.SetRecordFound(const Value: Integer);
begin
  FRecordFound := Value;
end;

procedure TdmPgTWilioSync.SyncDBTwilio;
begin
  var
  vTest := GetLastSync;
  qryTwilioLog.Close;
  qryTwilioLog.Params[0].AsInteger := vTest;
  qryTwilioLog.Open;
  qryPhoenixLogClone.Connection := self.FbPhoenixConnection;
  qryPhoenixLogClone.Close;
  qryPhoenixLogClone.Params[0].AsInteger := vTest;
  qryPhoenixLogClone.Open;

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
      spInsertMessage.Connection := FbPhoenixConnection;
      spInsertMessage.ParamByName('WANUMBER').AsString := lWebHook.From;
      spInsertMessage.ParamByName('WAMESSAGE').AsString := lWebHook.Body;
      spInsertMessage.ParamByName('INSERT_DATE').AsDateTime := qryWebHookINSERT_DATE.AsDateTime;
      spInsertMessage.ParamByName('WA_ID').AsString := lWebHook.MessageSid;
      spInsertMessage.ParamByName('WA_STATE').AsInteger := 1;
      spInsertMessage.ParamByName('IN_OUT').AsInteger := 1;
      spInsertMessage.ExecProc;
      qryWebHook.Edit;
      qryWebHookMANAGED.AsSTring := 'T';
      qryWebHook.Post;
      qryWebHook.Next;
    end;
  end;
end;

end.
