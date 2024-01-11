/// <summary>
/// Storage, Cache and Server-Client structure for Anagraph Schema.
/// </summary>
/// <remarks>
/// Based on IJanuaStorage Interface and Template. <font color="#2A2A2A" face="Courier New"><br /></font><c>
/// type TJanuaXXXStorage = class(TJanuaStorage, IJanuaStorage,
/// IJanuaCmsStorage)</c>
/// </remarks>
unit Janua.Anagraph.Server.Impl;

interface

uses
  Spring.Collections, Data.DB,
  // Janua
  Janua.Core.DB.Impl, Janua.Orm.Intf, Janua.Server.Impl, Janua.Server.Intf, Janua.Orm.Impl,
  Janua.Anagraph.Server.Intf, JOrm.Anagraph.Intf, JOrm.Anagraph.Group.Intf;

type
  /// <summary>
  /// Template of Anagraph Storage Class. Implementing common Anagraph storage methods and properties
  /// </summary>
  TJanuaAnagraphStorage = class(TJanuaStorage)
  strict protected
    FAnagraphsStorage: IJanuaRecordSetStorage;
    // Private Field
    FGroupsStorage: IJanuaRecordSetStorage;
  protected
    function GetAnagraphsStorage: IJanuaRecordSetStorage;
    procedure SetAnagraphsStorage(const Value: IJanuaRecordSetStorage);
    // Groups
    function GetGroupsStorage: IJanuaRecordSetStorage;
    procedure SetGroupsStorage(const Value: IJanuaRecordSetStorage);
  public
    property AnagraphsStorage: IJanuaRecordSetStorage read GetAnagraphsStorage write SetAnagraphsStorage;
    property GroupsStorage: IJanuaRecordSetStorage read GetGroupsStorage write SetGroupsStorage;
  end;

type
  TJanuaDBAnagraphStorage = class(TJanuaAnagraphStorage)
  strict protected
    FjdsAnagraphs: IJanuaDBDataset;
    FjdsGroups: IJanuaDBDataset;
  strict protected
    procedure SetAfterDestroyDataset; override;
    procedure SetInternalCreateDBDataSets; override;
    procedure SetInternalCreateDataset; override;
    procedure SetAfterCreateDataset; override;
    procedure SetInternalDestroyDataset; override;
    procedure SetInternalAssignDatasets; override;
  protected
    function GetjdsAnagraphs: IJanuaDBDataset;
    procedure SetjdsAnagraphs(Value: IJanuaDBDataset);
    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
  public
    constructor Create; override;
  public
    property jdsAnagraphs: IJanuaDBDataset read GetjdsAnagraphs write SetjdsAnagraphs;
    property jdsGroups: IJanuaDBDataset read GetjdsGroups write SetjdsGroups;
  end;

type
  TJanuaServerAnagraphCache = class(TInterfacedObject, IJanuaServerAnagraphCache)
  strict private
    FServerAnagraph: IJanuaServerAnagraph;
  public
    constructor Create(const aServer: IJanuaServerAnagraph); virtual;
  end;

  TJanuaServerAnagraph = class(TJanuaServer, IJanuaServerAnagraph, IJanuaServer)
  strict private
    FLocalStorage, FRemoteStorage: IJanuaAnagraphStorage;
    // RecordSets Storage
    { Server_Recordset_Storage }
    /// <summary> Questa è una classe di Database. </summary>
    FLocalAnagraphsStorage: IJanuaRecordSetStorage;
    /// <summary> remote è usualmente una classe REST Storage o Remote SQL </summary>
    FRemoteAnagraphsStorage: IJanuaRecordSetStorage;
    FLocalGroupsStorage: IJanuaRecordSetStorage; // Questa è una classe di Database.
    FRemoteGroupsStorage: IJanuaRecordSetStorage; // remote è usualmente una classe REST Storage
  protected
    FAnagraphs: IAnagraphs;
    FGroups: IAnagGroup;
  protected
    FCache: IJanuaServerAnagraphCache;
    function GetCache: IJanuaServerAnagraphCache;
    procedure SetCache(const Value: IJanuaServerAnagraphCache);
    /// <summary> Server_Getters Interface </summary>
    function GetAnagraphs: IAnagraphs;
    /// <summary>
    /// Server_Setters Interface
    /// </summary>
    /// <param name="Value">
    /// IAnagraphs RecordSet Interface
    /// </param>
    procedure SetAnagraphs(const Value: IAnagraphs);
    /// <summary>
    /// Server_Setters Interface
    /// </summary>
    /// <param name="Value">
    /// IGroups RecordSet Interface
    /// </param>
    function GetGroups: IAnagGroup;
    procedure SetGroups(const Value: IAnagGroup);
  public
    constructor Create(const aServerType: TJanuaServerType = jstDBServer); override;
    /// <summary>  Dependency injection procedure for LocalStorate and Remote Storage </summary>
    constructor Create(const aLocalStorage, aRemoteStorage: IJanuaAnagraphStorage;
      aServerType: TJanuaServerType = jstDBServer); overload;
  public
    property Anagraphs: IAnagraphs read GetAnagraphs write SetAnagraphs;
    property Groups: IAnagGroup read GetGroups write SetGroups;
  public
    function OpenGroups: Integer;
    function OpenAnagraphs: Integer;
  public
    // REST Functions
    function RestGetAnagraphs(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetGroups(const aParams: IJanuaParams): IJanuaFuncResult;
  end;

type
  TJanuaServerAnagraphFactory = class(TInterfacedObject, IJanuaServerAnagraphFactory)
  private
    FAnagraphCache: IJanuaServerAnagraphCache;
    procedure SetAnagraphCache(const Value: IJanuaServerAnagraphCache);
  public
    function GetServerAnagraph: IJanuaServerAnagraph; overload;
    function GetServerAnagraph(const aCache: IJanuaServerAnagraphCache): IJanuaServerAnagraph; overload;
    function GetServerAnagraph(const aLocalStorage, aRemoteStorage: IJanuaAnagraphStorage)
      : IJanuaServerAnagraph; overload;
    function GetAnagraphStorage: IJanuaAnagraphStorage; virtual; abstract;
    /// <summary>
    /// Returns the pointer to FAnagraphCache
    /// </summary>
    /// <remarks>
    /// Se devo crearmi una 'cache' in casa allora mi creo un server (istanza
    /// per la Cache). Creando lo storage internamente. Funzione adatta per
    /// un server web ma non per un client dove invece del Local Storage
    /// 'comanda' un Remote Storage.
    /// </remarks>
    function GetAnagraphCache: IJanuaServerAnagraphCache;
  public
    constructor Create(const aCache: IJanuaServerAnagraphCache);
    property AnagraphCache: IJanuaServerAnagraphCache read GetAnagraphCache write SetAnagraphCache;
  end;

type
  TJanuaAnagraphFactory = class
  public
    class function CreateAnagraphsParams: IJanuaParams; overload;
    class function CreateAnagraphsParams(aSettings: TJanuaAnagraphSettings): IJanuaParams; overload;
  end;

implementation

uses System.SysUtils, Spring, Janua.Core.Types, Janua.Orm.Types, JOrm.Anagraph.Impl,
  JOrm.Anagraph.Group.Impl, Janua.Application.Framework;

{ TJanuaAnagraphStorage }

function TJanuaAnagraphStorage.GetAnagraphsStorage: IJanuaRecordSetStorage;
begin
  Result := self.FAnagraphsStorage
end;

function TJanuaAnagraphStorage.GetGroupsStorage: IJanuaRecordSetStorage;
begin
  Result := self.FGroupsStorage
end;

procedure TJanuaAnagraphStorage.SetAnagraphsStorage(const Value: IJanuaRecordSetStorage);
begin
  FAnagraphsStorage := Value
end;

procedure TJanuaAnagraphStorage.SetGroupsStorage(const Value: IJanuaRecordSetStorage);
begin
  FGroupsStorage := Value
end;

{ TJanuaDBAnagraphStorage }

constructor TJanuaDBAnagraphStorage.Create;
begin
  inherited;
end;

function TJanuaDBAnagraphStorage.GetjdsAnagraphs: IJanuaDBDataset;
begin
  Result := self.FjdsAnagraphs
end;

function TJanuaDBAnagraphStorage.GetjdsGroups: IJanuaDBDataset;
begin
  Result := FjdsGroups
end;

procedure TJanuaDBAnagraphStorage.SetAfterCreateDataset;
begin
  inherited;
  FAfterCreateDataset := procedure
    begin
      // se non è ancora stato creato FArgumentsStorage lo crea e gli assegna i due Dataset di riferimento.
      if not Assigned(FAnagraphsStorage) then
        FAnagraphsStorage := TJanuaCustomDatasetStorage.Create('anagraphs', IAnagraphs { TAnagraphs } , [jdsAnagraphs]);
      // FjdsGroups
      if not Assigned(FGroupsStorage) then
        FGroupsStorage := TJanuaCustomDatasetStorage.Create('Groups', IAnagGroups { TAnagGroups } , [jdsGroups]);
    end;
end;

procedure TJanuaDBAnagraphStorage.SetAfterDestroyDataset;
begin
  inherited;
  FAfterDestroyDataset := procedure
    begin
      FAnagraphsStorage := nil;
    end;
end;

procedure TJanuaDBAnagraphStorage.SetInternalAssignDatasets;
begin
  inherited;

end;

procedure TJanuaDBAnagraphStorage.SetInternalCreateDataset;
begin
  inherited;

end;

procedure TJanuaDBAnagraphStorage.SetInternalCreateDBDataSets;
begin
  inherited;

end;

procedure TJanuaDBAnagraphStorage.SetInternalDestroyDataset;
begin
  inherited;

end;

procedure TJanuaDBAnagraphStorage.SetjdsAnagraphs(Value: IJanuaDBDataset);
begin
  self.FjdsAnagraphs := Value
end;

procedure TJanuaDBAnagraphStorage.SetjdsGroups(Value: IJanuaDBDataset);
begin
  FjdsGroups := Value
end;

{ TJanuaServerAnagraphFactory }

constructor TJanuaServerAnagraphFactory.Create(const aCache: IJanuaServerAnagraphCache);
begin
  self.FAnagraphCache := aCache;
end;

function TJanuaServerAnagraphFactory.GetAnagraphCache: IJanuaServerAnagraphCache;
begin
  if not Assigned(self.FAnagraphCache) then
  begin
    FAnagraphCache := TJanuaServerAnagraphCache.Create(self.GetServerAnagraph(self.GetAnagraphStorage, nil));
  end;
  Result := self.FAnagraphCache
end;

function TJanuaServerAnagraphFactory.GetServerAnagraph: IJanuaServerAnagraph;
begin
  Result := TJanuaServerAnagraph.Create(self.GetAnagraphStorage, nil);
end;

function TJanuaServerAnagraphFactory.GetServerAnagraph(const aCache: IJanuaServerAnagraphCache): IJanuaServerAnagraph;
begin
  // Result := TJanuaServerAnagraph.Create(const aCache, nil, nil);
end;

function TJanuaServerAnagraphFactory.GetServerAnagraph(const aLocalStorage, aRemoteStorage: IJanuaAnagraphStorage)
  : IJanuaServerAnagraph;
begin
  Result := TJanuaServerAnagraph.Create(aLocalStorage, aRemoteStorage);
end;

procedure TJanuaServerAnagraphFactory.SetAnagraphCache(const Value: IJanuaServerAnagraphCache);
begin
  FAnagraphCache := Value;
end;

{ TJanuaServerAnagraph }

constructor TJanuaServerAnagraph.Create(const aServerType: TJanuaServerType = jstDBServer);
begin
  inherited;
  self.FName := 'anagraph';
end;

constructor TJanuaServerAnagraph.Create(const aLocalStorage, aRemoteStorage: IJanuaAnagraphStorage;
  aServerType: TJanuaServerType = jstDBServer);
begin
  self.Create(aServerType);
  // Guard questo template deve stare qui ......
  Guard.CheckTrue(Assigned(aLocalStorage) or Assigned(aRemoteStorage) or DoNotCheckSever,
    self.ClassName + '.Create aLocalStorage, aRemoteStorage are both Null');

  // Chiamo il costruttore dando la precedendza a local storage
  if Assigned(aLocalStorage) then
    self.Create(aLocalStorage)
  else
    self.Create(aRemoteStorage);
  // dopodichè attivo la parte 'custom' di creazione dei componenti del sistema.
  FLocalStorage := aLocalStorage;
  FRemoteStorage := aRemoteStorage;
  // importante per assegnare gli storage

  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    FLocalStorage.KeepAlive := True;
    { Sever_Assign_Local_Storage }
  end;

  if Assigned(self.FRemoteStorage) then
  begin
    FRemoteStorage.CreateDataset;
    FRemoteStorage.KeepAlive := True;
    { Sever_Assign_Remote_Storage }
  end;

  { Server_Create_Recordsets }
  (*
    FAnagraphs := TAnagraphFactory.CreateRecordset('anagraphs', FLocalAnagraphsStorage, FRemoteAnagraphsStorage)
    as IAnagraphs;
  *)

  if not TJanuaOrmFactory.TryGetRecordSetIntf(IAnagraphs, 'anagraphs', FLocalAnagraphsStorage,
    FRemoteAnagraphsStorage, FAnagraphs) then
    raise Exception.Create('TJanuaServerAnagraph.Create IAnagraphs not set');
  AddRecordSet(FAnagraphs);
end;

function TJanuaServerAnagraph.GetAnagraphs: IAnagraphs;
begin
  Result := self.FAnagraphs
end;

{ Server_Getters_Setters_Implementation }

function TJanuaServerAnagraph.GetCache: IJanuaServerAnagraphCache;
begin
  Result := self.FCache
end;

function TJanuaServerAnagraph.GetGroups: IAnagGroup;
begin
  Result := self.FGroups
end;

function TJanuaServerAnagraph.OpenAnagraphs: Integer;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    Result := FLocalStorage.OpenAnagraphs;
    self.FAnagraphs.LoadFromLocalStorage;
    // self.FNextMatchDay.DirectLoadFromDataset(FLocalStorage.jdsNextMatchDay.Dataset);
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    Result := FRemoteStorage.OpenAnagraphs;
    FAnagraphs.LoadFromRemoteStorage;
  end;
end;

function TJanuaServerAnagraph.OpenGroups: Integer;
begin
  try
    Result := -1;
    { TODO : Implementare JanuaServerAnagraph OpenGroups }
  except
    on e: Exception do
      raise Exception.Create(self.ClassName + '.SearchUser ' + e.ClassName + sl + e.Message);
  end;
end;

procedure TJanuaServerAnagraph.SetAnagraphs(const Value: IAnagraphs);
begin
  self.FAnagraphs := Value
end;

procedure TJanuaServerAnagraph.SetCache(const Value: IJanuaServerAnagraphCache);
begin
  self.FCache := Value
end;

procedure TJanuaServerAnagraph.SetGroups(const Value: IAnagGroup);
begin
  self.FGroups := Value
end;

{ Server_Rest_Implementation }

function TJanuaServerAnagraph.RestGetAnagraphs(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetNextMatchDay aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings

  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore

  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaAnagraphFactory.CreateAnagraphsParams;

  Result.RecResult.RecordSets.Add(self.GetAnagraphs);
  // Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  // Result.RecResult.RecordSets.Add(self.GetNextMatchDay);
  // Result.RecResult.RecordSets.Add(self.GetNextMatches);
end;

function TJanuaServerAnagraph.RestGetGroups(const aParams: IJanuaParams): IJanuaFuncResult;
begin

end;

{ TJanuaServerAnagraphCache }

constructor TJanuaServerAnagraphCache.Create(const aServer: IJanuaServerAnagraph);
begin

end;

{ TJanuaAnagraphFactory }

class function TJanuaAnagraphFactory.CreateAnagraphsParams(aSettings: TJanuaAnagraphSettings): IJanuaParams;
begin
  Result := TJanuaParams.Create;
  Result.AddParam('anagraph_id', TJanuaFieldType.jptInteger, TValue(aSettings.anagraph_id));
  Result.AddParam('group_id', TJanuaFieldType.jptInteger, TValue(aSettings.group_id));
  Result.AddParam('search', TJanuaFieldType.jptString, TValue(aSettings.searchname));
  Result.AddParam('showdel', TJanuaFieldType.jptBoolean, TValue(aSettings.showdeleted));
  Result.AddParam('limit', TJanuaFieldType.jptInteger, TValue(aSettings.limit));
  Result.AddParam('page', TJanuaFieldType.jptInteger, TValue(aSettings.page));
end;

class function TJanuaAnagraphFactory.CreateAnagraphsParams: IJanuaParams;
begin
  // function GetArticle(aArticleID: Int64): IArticle;
  Result := TJanuaAnagraphFactory.CreateAnagraphsParams(TJanuaAnagraphSettings.Create('%'));
end;

end.

