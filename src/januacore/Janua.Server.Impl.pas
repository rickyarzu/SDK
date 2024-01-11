unit Janua.Server.Impl;

interface

uses
  // System
  System.Classes, System.SysUtils, Spring.Collections, System.Json, REST.Client,
  // Janua Core
  Janua.Server.Intf, Janua.Core.Types, Janua.Core.Classes, Janua.Http.Intf, Janua.Core.DB.Intf,
  // Janua Orm.
  Janua.Orm.Impl {TODO: eliminare la dipendenza da Impl impiegando interface GUID e non recordsetClass} ,
  Janua.Orm.Intf;

type
  TJanuaFuncResult = class(TInterfacedObject, IJanuaFuncResult)
  private
    FErrorMessage: string;
    FParams: IJanuaParams;
    FHasErrors: Boolean;
    FResult: IJanuaRecord;
    FCount: Integer;
    procedure SetDefault;
  protected
    function GetResult: IJanuaRecord;
    procedure SetParams(const Value: IJanuaParams);
    procedure SetResult(const Value: IJanuaRecord);
    function GetParams: IJanuaParams;
    function GetErrorMessage: string;
    procedure SetErrorMessage(const Value: string);
    function GetHasErrors: Boolean;
    procedure SetHasErrors(const Value: Boolean);
    function GetAsJsonObject: TJsonObject;
    procedure SetAsJsonObject(const Value: TJsonObject);
    function GetCount: Integer;
    procedure SetCount(const Value: Integer);
  public
    Constructor Create; overload;
    Constructor Create(aJson: string); overload;
    Constructor Create(aJsonObject: TJsonObject); overload;
  end;

type
  TJanuaCustomStorage = class(TJanuaInterfacedBindableObject)
  strict private
    FMaxRecords: Integer;
    FParameters: TJanuaFields;
    FRecordSet: IJanuaRecordSet;
  strict protected
    FOnUpdateError: TNotifyEvent;
    FOnUpdateSuccess: TNotifyEvent;
    procedure InternalCheck; virtual;
  protected
    function GetRecordSet: IJanuaRecordSet;
    function GetOnUpdateSuccess: TNotifyEvent;
    procedure SetOnUpdateSuccess(const aValue: TNotifyEvent);
    property OnUpdateSuccess: TNotifyEvent read GetOnUpdateSuccess write SetOnUpdateSuccess;
    function GetOnUpdateError: TNotifyEvent;
    procedure SetOnUpdateError(const aValue: TNotifyEvent);
    function GetParameters: TJanuaFields;
    procedure SetParameters(const aValue: TJanuaFields);
    function GetMaxRecords: Integer;
    procedure SetMaxRecords(const aValue: Integer);
    procedure AddParam(aParam: IJanuaField);
    function ParamByName(const aName: string): IJanuaField;
    function GetRecordCount: NativeUInt;
  public
    Constructor Create(aRecordSetModel: IJanuaRecordSet); overload;
  public
    function Open: NativeUInt; virtual;
    procedure AsyncLoadData(aProcResult: TProc<Integer, Boolean>; aProcError: TProc<Exception>); virtual;
    property RecordCount: NativeUInt read GetRecordCount;
    property Parameters: TJanuaFields read GetParameters write SetParameters;
    property OnUpdateError: TNotifyEvent read GetOnUpdateError write SetOnUpdateError;
    property RecordSet: IJanuaRecordSet read GetRecordSet;
    property MaxRecords: Integer read GetMaxRecords Write SetMaxRecords;
  end;

  TJanuaClassStorage = class of TJanuaCustomStorage;

type
  TJanuaCustomDatasetStorage = class(TJanuaCustomStorage, IJanuaRecordSetStorage)
  strict private
    FDatasets: TJanuaDBDatasets; // TArray<IJanuaDBDataset>;
    FMainDataset: IJanuaDBDataset;
  strict protected
    procedure InternalCheck; override;
    function LoadData: Boolean; virtual;
    procedure InternalAssignDatasets;
  public
    constructor Create; override;
    procedure AsyncLoadData(aProcResult: TProc<Integer, Boolean>; aProcError: TProc<Exception>); override;
    procedure AsyncApplyUpdates(const aRecordSet: IJanuaRecordSet);
    // constructor Create(const aName: string; aRecordSetClass: TRecordSetClass; aDataset: IJanuaDBDataset); overload;
    constructor Create(const aName: string; aRecordSetIntf: TGUID;
      aDatasets: TArray<IJanuaDBDataset>); overload;
    function ApplyUpdates(const aRecordSet: IJanuaRecordSet): Boolean;
  end;

type
  TJanuaServer = class(TJanuaInterfacedBindableObject, IJanuaServer)
  strict private
    FRecordSets: IList<IJanuaRecordSet>;
    FIsServer: Boolean;
    FFunctions: TFunctions;
  strict protected
    // 'local' Storage, potrebbe anche essere un 'virtual' Storage.
    FStorage: IJanuaStorage;
    FName: string;
    FServerType: TJanuaServerType;
  protected
    function GetKeepAlive: Boolean;
    procedure SetKeepAlive(const Value: Boolean);
    procedure AddRecordSet(aRecordSet: IJanuaRecordSet);
    procedure AddFunction(const aName: string; aFunction: TFunction);
    function DoNotCheckSever: Boolean;
  private
    function GetRecordSets: IList<IJanuaRecordSet>;
    procedure SetRecordSets(const Value: IList<IJanuaRecordSet>);
    function GetIsServer: Boolean;
    procedure SetIsServer(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetFunctions: TFunctions;
    procedure SetFunctions(const Value: TFunctions);
    function GetServerType: TJanuaServerType;
    procedure SetServerType(const Value: TJanuaServerType);
  public
    Constructor Create(const aServerType: TJanuaServerType = jstDBServer); overload; virtual;
    Constructor Create(aStorage: IJanuaStorage; aServerType: TJanuaServerType = jstDBServer);
      overload; virtual;
  public
    property RecordSets: IList<IJanuaRecordSet> read GetRecordSets write SetRecordSets;
    property Name: string read GetName write SetName;
    property ServerType: TJanuaServerType read GetServerType write SetServerType;
  end;

type
  TServerHelper = class
  strict private
  class var
    FInitialized: Boolean;
    FRestClient: TRESTClient;
    FRestRequest: TRESTRequest;
  public
    /// <summary>
    /// Calls a remote function using schema.function location passing it params as Json (GET)
    /// and retrieves a result (IJanuaFuncResult)
    /// </summary>
    class function OpenServerFunction(const aSchema, aFunction: string; const aParams: IJanuaParams)
      : IJanuaFuncResult;
    /// <summary>
    /// Calls a remote function using schema.function location passing it params as Json (GET) async
    /// and retrieves a result (IJanuaFuncResult) that passes as callback to a TProc<IJanuaFuncResult>
    /// </summary>
    /// <param name="aSchema">
    /// schema name, ussually equals lowercase name of the object (FName)
    /// </param>
    /// <param name="aFunction">
    /// function name used to find function in internal list
    /// </param>
    /// <param name="aParams">
    /// Params List using Object IJanuaParams.
    /// </param>
    /// </param>
    /// <param name="aAsyncProc">
    /// Callback procedure to be called after execution. Will obtain IJanuaFuncResult Remote Func. Result
    /// </param>
    /// <returns>
    /// IJanuaFuncResult is an interface that contains a IJanuaRecord as a Result and has a
    /// function and procedure to marshall/unmarshall its content to a Json Object
    /// </returns>
    class procedure OpenServerFunctionAsync(const aSchema, aFunction: string; const aParams: IJanuaParams;
      aAsyncProc: TProc<IJanuaFuncResult>);
    /// <summary>
    /// Create params to a remote URI schema.function location for a 'get' http request
    /// it also convert and encodes a set of Params (IJanuaParams) to json and http URI param
    /// </summary>
    class function GetHttpParams(const aSchema, aFunction: string; const aParams: IJanuaParams)
      : TJanuaHttpParams;
    class procedure Initialize;
    class procedure Finalize;
  end;

implementation

uses Spring, System.SyncObjs, System.Types, Janua.Application.Framework, Janua.Core.AsyncTask,
  // Janua Core Functions
  Janua.Core.Functions, Janua.Core.Json, Janua.Http.Impl, Janua.Http.Types;

{ TJanuaServer }

var
  FLock: TCriticalSection;

function TJanuaServer.GetKeepAlive: Boolean;
begin
  Result := self.FStorage.KeepAlive
end;

function TJanuaServer.GetName: string;
begin
  Result := self.FName;
end;

function TJanuaServer.GetRecordSets: IList<IJanuaRecordSet>;
begin
  Result := self.FRecordSets;
end;

function TJanuaServer.GetServerType: TJanuaServerType;
begin
  Result := self.FServerType
end;

procedure TJanuaServer.SetKeepAlive(const Value: Boolean);
begin
  if Assigned(self.FStorage) and (Value <> self.FStorage.KeepAlive) then
  begin
    self.FStorage.KeepAlive := Value;
    if Value then
      self.FStorage.CreateDataset
    else
      self.FStorage.DestroyDataset
  end;
end;

procedure TJanuaServer.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TJanuaServer.SetRecordSets(const Value: IList<IJanuaRecordSet>);
begin
  self.FRecordSets := Value;
end;

procedure TJanuaServer.SetServerType(const Value: TJanuaServerType);
begin
  FServerType := Value;
end;

procedure TJanuaServer.AddFunction(const aName: string; aFunction: TFunction);
begin
  FFunctions.Add(aName, aFunction);
end;

procedure TJanuaServer.AddRecordSet(aRecordSet: IJanuaRecordSet);
begin
  FRecordSets.Add(aRecordSet)
end;

constructor TJanuaServer.Create(const aServerType: TJanuaServerType = jstDBServer);
begin
  // Server per mantenere un elenco dei RecordSet attivi sul server
  FRecordSets := TCollections.CreateList<IJanuaRecordSet>;
  FFunctions := TCollections.CreateDictionary<string, TFunction>;
  self.FIsServer := aServerType in [TJanuaServerType.jstDBServer, TJanuaServerType.jstRestServer];
  self.FServerType := aServerType;

end;

constructor TJanuaServer.Create(aStorage: IJanuaStorage; aServerType: TJanuaServerType = jstDBServer);
begin
  // Guard.CheckNotNull(aStorage, 'TJanuaServer.Create aStorage is Null');
  self.Create(aServerType);
  self.FStorage := aStorage
end;

function TJanuaServer.DoNotCheckSever: Boolean;
begin
  Result := self.FServerType in [jstRestServer, jstRestClient]
end;

function TJanuaServer.GetFunctions: TFunctions;
begin
  Result := self.FFunctions
end;

function TJanuaServer.GetIsServer: Boolean;
begin
  Result := self.FIsServer
end;

procedure TJanuaServer.SetFunctions(const Value: TFunctions);
begin
  self.FFunctions := Value
end;

procedure TJanuaServer.SetIsServer(const Value: Boolean);
begin
  self.FIsServer := Value;
end;

{ TJanuaFuncResult }

constructor TJanuaFuncResult.Create;
begin
  self.SetDefault;
  FResult := TJanuaRecord.Create('result');
end;

constructor TJanuaFuncResult.Create(aJsonObject: TJsonObject);
begin
  try
    Create;
    try
      SetAsJsonObject(aJsonObject);
    finally
      aJsonObject.Free
    end;
  except
    on e: Exception do
      raise Exception.Create('TJanuaFuncResult.Create(aJsonObject): ' + e.Message);
  end;
end;

constructor TJanuaFuncResult.Create(aJson: string);
var
  tmp: TJsonObject;
begin
  Guard.CheckTrue(aJson <> '', 'TJanuaFuncResult.Create aJson is nil');
  try
    tmp := Janua.Core.Json.JsonParse(aJson);
    self.Create(tmp);
  except
    on e: Exception do
      raise Exception.Create('TJanuaFuncResult.Create(aJson): ' + e.Message);
  end;
end;

function TJanuaFuncResult.GetAsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'error', self.FErrorMessage);
  Janua.Core.Json.JsonPair(Result, 'haserrors', self.FHasErrors);
  Janua.Core.Json.JsonPair(Result, 'params', self.FParams.AsJsonObject);
  // Esporto i metadati del record che rappresenta il risultato della funzione
  Janua.Core.Json.JsonPair(Result, 'meta', self.FResult.AsMetadata);
  // Ed infine i dati contenuti nel medesimo Record esportato ................
  Janua.Core.Json.JsonPair(Result, 'result', self.FResult.AsJsonObject);
  (* TJanuaFuncResult è quindi una 'envelope' ad un gruppo di parametri e ad un Record
    Il record potrebbe essere 'vuoto' ma sicuramente non è nullo. Generalmente ha come 'name' Result *)
end;

function TJanuaFuncResult.GetCount: Integer;
begin
  Result := self.FCount
end;

function TJanuaFuncResult.GetErrorMessage: string;
begin
  Result := self.FErrorMessage;
end;

function TJanuaFuncResult.GetHasErrors: Boolean;
begin
  Result := self.FHasErrors
end;

function TJanuaFuncResult.GetParams: IJanuaParams;
begin
  Result := self.FParams;
end;

function TJanuaFuncResult.GetResult: IJanuaRecord;
begin
  Result := self.FResult
end;

procedure TJanuaFuncResult.SetAsJsonObject(const Value: TJsonObject);
var
  LParams, LResult, LMeta: TJsonObject;
  STmp: string;
  SBool: Boolean;
begin
  Janua.Core.Json.JsonValue(Value, 'error', FErrorMessage);
  Janua.Core.Json.JsonValue(Value, 'haserrors', self.FHasErrors);
  LParams := Janua.Core.Json.JsonObject('params', Value);
  // Janua.Core.Json.JsonPair(Value, 'params', LParams);
  LMeta := Janua.Core.Json.JsonObject('meta', Value);
  self.FResult.AsMetadata := LMeta;
  // Janua.Core.Json.JsonPair(Value, 'result', LResult);
  LResult := Janua.Core.Json.JsonObject('result', Value);
  self.FResult.AsJsonObject := LResult;
  self.FParams.AsJsonObject := LParams;
end;

procedure TJanuaFuncResult.SetCount(const Value: Integer);
begin
  self.FCount := Value;
end;

procedure TJanuaFuncResult.SetDefault;
begin
  self.FParams := TJanuaParams.Create;
  self.FCount := 0;
  FErrorMessage := '';
  FHasErrors := False;
end;

procedure TJanuaFuncResult.SetErrorMessage(const Value: string);
begin
  self.FErrorMessage := Value
end;

procedure TJanuaFuncResult.SetHasErrors(const Value: Boolean);
begin
  self.FHasErrors := Value
end;

procedure TJanuaFuncResult.SetParams(const Value: IJanuaParams);
begin
  FParams := Value;
end;

procedure TJanuaFuncResult.SetResult(const Value: IJanuaRecord);
begin
  FResult := Value;
end;

{ TServerHelper }

class procedure TServerHelper.Finalize;
begin
  FRestRequest.Free;
  FRestClient.Free;
  FRestClient := nil;
end;

class function TServerHelper.GetHttpParams(const aSchema, aFunction: string; const aParams: IJanuaParams)
  : TJanuaHttpParams;
begin
  Result.Clear;
  Result.Add(TJanuaHttpParam.Create('page', 'function'));
  Result.Add(TJanuaHttpParam.Create('function', aFunction.ToLower));
  Result.Add(TJanuaHttpParam.Create('schema', aSchema.ToLower));
  Result.Add(TJanuaHttpParam.Create('params', ToJsonFree(aParams.AsJsonObject)));
end;

class procedure TServerHelper.Initialize;
begin
  FRestClient := TRESTClient.Create(TJanuaApplication.RestServer);
  FRestRequest := TRESTRequest.Create(nil);
  FRestRequest.Client := FRestClient;
end;

class function TServerHelper.OpenServerFunction(const aSchema, aFunction: string; const aParams: IJanuaParams)
  : IJanuaFuncResult;
var
  LHttpParams: TJanuaHttpParams;
  tmp: string;
begin
  Guard.CheckNotNull(aParams, self.ClassName + '.OpenServerFunction aParams is nil');
  try
    LHttpParams := TServerHelper.GetHttpParams(aSchema, aFunction, aParams);
    tmp := TJanuaHttp.OpenUrlAsString( { Url } TJanuaApplication.RestServer,
      { HttpParams } LHttpParams,
      { MimeType } jmtApplicationJson);

    // Testo la f() sul server passandole i parametri
    Result := TJanuaFuncResult.Create(tmp);
  except
    on e: Exception do
      RaiseException('TServerHelper.OpenServerFunction', e, nil, 'Url:' + TJanuaApplication.RestServer);
    // raise exception.Create(ClassName + '.OpenServerFunction Message: ' + sLineBreak + e.Message);
  end;
end;

class procedure TServerHelper.OpenServerFunctionAsync(const aSchema, aFunction: string;
  const aParams: IJanuaParams; aAsyncProc: TProc<IJanuaFuncResult>);
var
  LHttpParams: TJanuaHttpParams;
  LJObj: TJsonObject;
begin
  Guard.CheckNotNull(aParams, self.ClassName + '.OpenServerFunction aParams is nil');
  try
    LHttpParams := TServerHelper.GetHttpParams(aSchema, aFunction, aParams);
    FLock.Acquire;
    FRestRequest.Resource := '?' + System.UTF8ToString(LHttpParams.AsEncoded);
    FRestRequest.ExecuteAsync(
      procedure
      var
        LFuncResult: IJanuaFuncResult;
      begin
        LJObj := FRestRequest.Response.JsonValue as TJsonObject;
        LFuncResult := TJanuaFuncResult.Create(LJObj);
        LJObj.Free;
        FLock.Release;
        if Assigned(aAsyncProc) then
          aAsyncProc(LFuncResult)
      end);
  except
    on e: Exception do
    begin
      FLock.Release;
      raise Exception.Create('TServerHelper.OpenServerFunctionAsync: ' + e.Message);
    end;
  end;
end;

{ TJanuaCustomStorage }

procedure TJanuaCustomStorage.AddParam(aParam: IJanuaField);
begin
  self.FParameters.Add(aParam)
end;

procedure TJanuaCustomStorage.AsyncLoadData(aProcResult: TProc<Integer, Boolean>;
aProcError: TProc<Exception>);
begin

end;

constructor TJanuaCustomStorage.Create(aRecordSetModel: IJanuaRecordSet);
begin
  try
    inherited Create;
    FParameters := TCollections.CreateList<IJanuaField>;
    FRecordSet := aRecordSetModel;
  finally

  end;
end;

function TJanuaCustomStorage.GetMaxRecords: Integer;
begin
  Result := self.FMaxRecords
end;

function TJanuaCustomStorage.GetOnUpdateError: TNotifyEvent;
begin
  Result := self.FOnUpdateError
end;

function TJanuaCustomStorage.GetOnUpdateSuccess: TNotifyEvent;
begin
  Result := self.FOnUpdateSuccess
end;

function TJanuaCustomStorage.GetParameters: TJanuaFields;
begin
  Result := self.FParameters
end;

function TJanuaCustomStorage.GetRecordCount: NativeUInt;
begin
  Result := FRecordSet.RecordCount;
end;

function TJanuaCustomStorage.GetRecordSet: IJanuaRecordSet;
begin
  Result := self.FRecordSet;
end;

procedure TJanuaCustomStorage.InternalCheck;
begin
  Guard.CheckNotNull(self.FRecordSet, 'TJanuaCustomStorage.InternalCheck FRecordSet is nil ');
end;

function TJanuaCustomStorage.Open: NativeUInt;
begin
  Result := 0;
end;

function TJanuaCustomStorage.ParamByName(const aName: string): IJanuaField;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to Pred(self.Parameters.Count) do
    if LowerCase(FParameters[I].DBField) = aName.ToLower then
      exit(FParameters[I])
end;

procedure TJanuaCustomStorage.SetMaxRecords(const aValue: Integer);
begin
  self.FMaxRecords := aValue
end;

procedure TJanuaCustomStorage.SetOnUpdateError(const aValue: TNotifyEvent);
begin
  self.FOnUpdateError := aValue
end;

procedure TJanuaCustomStorage.SetOnUpdateSuccess(const aValue: TNotifyEvent);
begin
  self.FOnUpdateSuccess := aValue
end;

procedure TJanuaCustomStorage.SetParameters(const aValue: TJanuaFields);
begin
  self.FParameters := aValue;
end;

{ TJanuaCustomDatasetStorage }

function TJanuaCustomDatasetStorage.ApplyUpdates(const aRecordSet: IJanuaRecordSet): Boolean;
begin
  Result := False;
  // imposto il RecordSet
  // Quando viene chiamato ApplyUpdates la procedura che lo chiama deve essersi occupata di creare lo Storage
  RecordSet.Clear;
  RecordSet.Assign(aRecordSet);
  RecordSet.SaveToDataset;
  // Aggiorno il RecordSet e lo Carico
  RecordSet.Clear;
  RecordSet.LoadFromDataset;
  // imposto la variabile interna RecordSet al puntatore del RecordSet Ricevuto:
  Result := True;
  // Siccome posso essere in Sessione distruggendo lo Storage di Riferimento (implicitamente)
  // potrei mandare in blocco di memoria gli upload successivi .............................
  // inoltre FStorage ? una Interfaccia quindi ? implicitamente Reference Counted
  // self.FStorage.DestroyDataset;
end;

procedure TJanuaCustomDatasetStorage.AsyncApplyUpdates(const aRecordSet: IJanuaRecordSet);
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      // This is the "background" anonymous method. Runs in the
      // background thread, and its result is passed
      // to the "success" callback.
      // In this case the result is a String.
      MonitorEnter(self);
      try
        Result := ApplyUpdates(aRecordSet);
      finally
        MonitorExit(self);
      end;
    end,
    procedure(const aValue: Boolean)
    begin
      // This is the "success" callback. Runs in the UI thread and
      // gets the result of the "background" anonymous method.
      if aValue and Assigned(self.FOnUpdateSuccess) then
        FOnUpdateSuccess(self)
      else if not aValue and Assigned(self.FOnUpdateError) then
        FOnUpdateError(self)
    end,
    procedure(const Ex: Exception)
    begin
      // This is the "error" callback.
      // Runs in the UI thread and is called only if the
      // "background" anonymous method raises an exception.
      if Assigned(FOnUpdateError) then
        FOnUpdateError(self)
    end);
end;

procedure TJanuaCustomDatasetStorage.AsyncLoadData(aProcResult: TProc<Integer, Boolean>;
aProcError: TProc<Exception>);
begin
  inherited;
end;

constructor TJanuaCustomDatasetStorage.Create;
begin
  inherited
end;

constructor TJanuaCustomDatasetStorage.Create(const aName: string; aRecordSetIntf: TGUID;
aDatasets: TArray<IJanuaDBDataset>);
var
  I, j: Word;
  lRecordSet: IJanuaRecordSet;
begin
  try
    j := Length(aDatasets);
    Assert(aRecordSetIntf <> GUID_NULL, ' aRecordSetClass is nil - ' + aName);
    Assert(aDatasets <> nil, ' aDatasets is nil - ' + aName);
    Assert(j > 0, ' Datasets Array (aDatasets) is 0 empty - ' + aName);
    FDatasets := aDatasets; // Updates The datasets Array to be stored internally.
    for I := 0 to Pred(j) do
      Assert(aDatasets[I] <> nil, ' aDatasets[' + I.ToString + '] is nil - ' + aName);

    // calls creator passing it the instance of the recordset that is the blueprint for this storage
    if not TJanuaOrmFactory.TryGetRecordSetIntf(aRecordSetIntf, aName, nil, nil, lRecordSet) then
      raise Exception.Create(ClassName + '.Create TryGetRecordSetIntf(' + aRecordSetIntf.ToString +
        ') not found ' + aName);

    inherited Create(lRecordSet);
    // inherited Create(aRecordSetClass.Create(aName, nil, nil));
    // InternalCheck does not only perform a check but does assign all DBDatasets to their RecordSets
    InternalCheck;
  except
    on e: Exception do
      RaiseException('Create ', e, self, LogString);
  end;
end;

procedure TJanuaCustomDatasetStorage.InternalAssignDatasets;
(*
  var
  I, j, k: integer;
*)
begin
  inherited;
  // Abandoned the 'old' approach for a newer one based on Enum or Naming match for the Dataset Array
  // Every RecordSet is now Resposible to check and connect to a specific dataset
  RecordSet.AssignDatasets(FDatasets, True);
end;

procedure TJanuaCustomDatasetStorage.InternalCheck;
var
  I: Integer;
begin
  inherited;
  Guard.CheckTrue(Length(FDatasets) > 0);
  Guard.CheckNotNull(RecordSet, 'TJanuaDatasetStorage.InternalCheck RecordSet is null');
  Guard.CheckNotNull(RecordSet.CurrentRecord, 'TJanuaDatasetStorage.InternalCheck CurrentRecord is null: ' +
    RecordSet.Name);
  if not Assigned(RecordSet.CurrentRecord.StoreDataset) then
  begin
    // if Length(FDatasets) > 0 then
    for I := 0 to Pred(Length(FDatasets)) do
      Guard.CheckNotNull(FDatasets[I], 'TJanuaDatasetStorage.LoadData InternalCheck[' + I.ToString + ']');
    RecordSet.AssignDatasets(FDatasets, True);
  end;
  Guard.CheckNotNull(RecordSet.CurrentRecord.StoreDataset,
    'TJanuaDatasetStorage.LoadData RecordSet.CurrentRecord.StoreDataset is null: ' + RecordSet.Name);
end;

function TJanuaCustomDatasetStorage.LoadData: Boolean;
var
  LTest: Integer;
begin
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('LoadData', 'Start ', self);
{$ENDIF}
  try
    Result := False;
    // self.InternalCheck;
    // Creo il Dataset dallo Storage se non ? ancora stato Creato
    // FStorage.CreateDataset;
    // Lancio la procedura di Assegnazione dei Dataset se presente
    // InternalAssignDatasets;
    // Svuoto il Dataset e lo preparo per il caricamento dei dati
    RecordSet.Clear;
{$IFDEF JANUA_TEST}
    TJanuaLogger.LogRecord('LoadData', '_RecordSet.Clear ', self);
{$ENDIF}
    if not RecordSet.CurrentRecord.StoreDataset.Dataset.Active then
      RecordSet.CurrentRecord.StoreDataset.Open;
{$IFDEF JANUA_TEST}
    TJanuaLogger.LogRecord('LoadData', '_StoreDataset.Open ', self);
{$ENDIF}
    LTest := RecordSet.CurrentRecord.StoreDataset.Dataset.RecordCount;
    // Carico i Dati
    RecordSet.LoadFromDataset;
{$IFDEF JANUA_TEST}
    TJanuaLogger.LogRecord('LoadData', '_RecordSet.LoadFromDataset ', self);
{$ENDIF}
    // Siccome posso essere in Sessione distruggendo lo Storage di Riferimento (implicitamente)
    // potrei mandare in blocco di memoria gli upload successivi .............................
    // inoltre FStorage ? una Interfaccia quindi ? implicitamente Reference Counted
    // self.FStorage.DestroyDataset;
    Guard.CheckTrue(RecordSet.RecordCount = LTest, 'RecordSet.RecordCount(' + RecordSet.RecordCount.ToString +
      ') <>' + LTest.ToString);
    Result := LTest > 0;
{$IFDEF JANUA_TEST}
    TJanuaLogger.LogRecord('LoadData', 'End ', self);
{$ENDIF}
  except
    on e: Exception do
      raise Exception.Create(ClassName + '.LoadData: ' + e.ClassName + sLineBreak + 'TJanuaDatasetStorage: ' +
        e.Message);
  end;

end;



// ---------------------------------- initialization/finalization --------------------------------------------

initialization

try
  begin
    { Insert Procedures ............................... }
    TServerHelper.Initialize;
    FLock := TCriticalSection.Create;
  end;
except
  on e: Exception do
    raise Exception.Create('Janua.Server.Impl.initialization ' + e.Message);
end;

finalization

FLock.Release;
FreeAndNil(FLock);
TServerHelper.Finalize;

end.
