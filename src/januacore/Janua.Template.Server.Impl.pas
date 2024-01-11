unit Janua.Template.Server.Impl;

interface

uses
  Spring.Collections, Janua.Orm.Intf, Janua.Server.Impl, Janua.Server.Intf, Janua.Orm.Types,
  Janua.Template.Server.Intf, Janua.Orm.Impl;


// DEfinisco un Template 'base' dello Storage del Server che rappresenti le funzioni base dello Storage
// In sostanza 'espone' tutti i Metodi indicati nella classe o nella Interfaccia Storage .................
// Si chiamerà per i discendenti TJanuaPgCmsStorage.
// type
// TJanuaCmsStorage = class(TJanuaStorage, IJanuaStorage, IJanuaCmsStorage)
// type  IJanuaStorage = interface(IInterface)

type
  TJanuaTemplateStorage = class(TJanuaStorage, IJanuaTemplateStorage, IJanuaStorage)
  strict protected
    // Storage
    // FTemplatesStorage: IJanuaRecordSetStorage;
  protected
    // Getter/Setter Functions
    // function GetTemplatesStorage: IJanuaRecordSetStorage;
    // procedure SetTemplatesStorage(const Value: IJanuaRecordSetStorage);
  public
    // Properties
    // property TemplatesStorage: IJanuaRecordSetStorage read GetTemplatesStorage write SetTemplatesStorage;
  end;

type
  TJanuaDBTemplateStorage = class(TJanuaTemplateStorage, IJanuaDBTemplateStorage, IJanuaTemplateStorage,
    IJanuaStorage)
  strict protected
    FjdsTemplates: IJanuaDBDataset;
  protected
    function GetjdsTemplates: IJanuaDBDataset;
    procedure SetjdsTemplates(Value: IJanuaDBDataset);
  public
    constructor Create; override;
  public
    property jdsTemplates: IJanuaDBDataset read GetjdsTemplates write SetjdsTemplates;
  end;

type
  TJanuaServerTemplateCache = class(TInterfacedObject, IJanuaServerTemplateCache)
  strict private
    FServerTemplate: IJanuaServerTemplate;
  public
    constructor Create(const aServer: IJanuaServerTemplate); virtual;
  end;

  TJanuaServerTemplate = class(TJanuaServer, IJanuaServerTemplate, IJanuaServer)
  strict private
    FLocalStorage, FRemoteStorage: IJanuaTemplateStorage;
  protected
    FCache: IJanuaServerTemplateCache;
    { Server_Getters_Setters_Interface }
    function GetCache: IJanuaServerTemplateCache;
    procedure SetCache(const Value: IJanuaServerTemplateCache);
  public
    Constructor Create(aServerType: TJanuaServerType = jstDBServer); override;
    // Dependency injection procedure for LocalStorate and Remote Storage
    constructor Create(const aLocalStorage, aRemoteStorage: IJanuaTemplateStorage;
      aServerType: TJanuaServerType = jstDBServer; aServerCache: IJanuaServerTemplateCache = nil); overload;
  public
    // Public properties
    property Cache: IJanuaServerTemplateCache read GetCache write SetCache;
    // REST Functions
    // function RestGetTemplates(const aParams: IJanuaParams): IJanuaFuncResult;
  end;

type
  TJanuaServerTemplateFactory = class(TInterfacedObject, IJanuaServerTemplateFactory)
  private
    FTemplateCache: IJanuaServerTemplateCache;
    procedure SetTemplateCache(const Value: IJanuaServerTemplateCache);
  public
    function GetServerTemplate: IJanuaServerTemplate; overload;
    function GetServerTemplate(const aCache: IJanuaServerTemplateCache): IJanuaServerTemplate; overload;
    function GetServerTemplate(const aLocalStorage, aRemoteStorage: IJanuaTemplateStorage)
      : IJanuaServerTemplate; overload;
    function GetTemplateStorage: IJanuaTemplateStorage; virtual; abstract;
    function GetTemplateCache: IJanuaServerTemplateCache;
  public
    constructor Create(const aCache: IJanuaServerTemplateCache);
    property TemplateCache: IJanuaServerTemplateCache read GetTemplateCache write SetTemplateCache;
  end;

type
  TJanuaTemplateFactory = class
  public
    { Factory_Params_Functions }
  end;

implementation

uses Spring, System.SysUtils, Janua.Core.Types
  {Implementation_Use_Clause}
    ;

{ TJanuaTemplateStorage }

{ Storage-Getter_Setters }

{ TJanuaDBTemplateStorage }

constructor TJanuaDBTemplateStorage.Create;
begin
  inherited;
  SetAfterCreateDataset(
    procedure
    begin
      // se non è ancora stato creato FArgumentsStorage lo crea e gli assegna i due Dataset di riferimento.
      // if not Assigned(FTemplatesStorage) then
      // FTemplatesStorage := TJanuaClassDatasetStorage.Create('Templates', TTemplates, [jdsTemplates]);
      { Storage_After_Create_Dataset }
    end);

  SetAfterDestroyDataset(
    procedure
    begin
      { Storage_Destroy }
      // FTemplatesStorage := nil;

    end);
end;

{ Storage_Getters_Setters }

function TJanuaDBTemplateStorage.GetjdsTemplates: IJanuaDBDataset;
begin
  Result := self.FjdsTemplates
end;

procedure TJanuaDBTemplateStorage.SetjdsTemplates(Value: IJanuaDBDataset);
begin
  self.FjdsTemplates := Value;
end;

{ TJanuaServerTemplateFactory }

constructor TJanuaServerTemplateFactory.Create(const aCache: IJanuaServerTemplateCache);
begin
  self.FTemplateCache := aCache;
end;

function TJanuaServerTemplateFactory.GetTemplateCache: IJanuaServerTemplateCache;
begin
  if Assigned(self.FTemplateCache) then
    Result := self.FTemplateCache
  else
  begin
    // se devo crearmi una 'cache' in casa allora mi creo un server (istanza per la Cache)
    // creando lo storage internamente. Funzione adatta per un server web ma non per un client
    // dove invece del Local Storage 'comanda' un Remote Storage.
    self.FTemplateCache := TJanuaServerTemplateCache.Create
      (self.GetServerTemplate(self.GetTemplateStorage, nil));
  end;
end;

function TJanuaServerTemplateFactory.GetServerTemplate: IJanuaServerTemplate;
begin
  Result := TJanuaServerTemplate.Create(self.GetTemplateStorage, nil);
end;

function TJanuaServerTemplateFactory.GetServerTemplate(const aCache: IJanuaServerTemplateCache)
  : IJanuaServerTemplate;
begin
  Result := TJanuaServerTemplate.Create(nil, nil);
end;

function TJanuaServerTemplateFactory.GetServerTemplate(const aLocalStorage, aRemoteStorage: IJanuaTemplateStorage)
  : IJanuaServerTemplate;
begin
  Result := TJanuaServerTemplate.Create(aLocalStorage, aRemoteStorage);
end;

procedure TJanuaServerTemplateFactory.SetTemplateCache(const Value: IJanuaServerTemplateCache);
begin
  FTemplateCache := Value;
end;

{ TJanuaServerTemplate }

constructor TJanuaServerTemplate.Create(const aLocalStorage, aRemoteStorage: IJanuaTemplateStorage;
aServerType: TJanuaServerType = jstDBServer; aServerCache: IJanuaServerTemplateCache = nil);
begin
  // Guard questo template deve stare qui ......
  Guard.CheckTrue(Assigned(aLocalStorage) or Assigned(aRemoteStorage) or
    (aServerType in [jstDBServer, jstRemoteClient]),
    self.ClassName + '.Create aLocalStorage, aRemoteStorage are both Null');

  // Chiamo il costruttore dando la precedendza a local storage
  if Assigned(aLocalStorage) then
    self.Create(aLocalStorage, aServerType)
  else
    self.Create(aRemoteStorage, aServerType);
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

end;

{ Server_Getters_Setters_Implementation }

constructor TJanuaServerTemplate.Create(aServerType: TJanuaServerType);
begin
  self.FName := 'template';
end;

function TJanuaServerTemplate.GetCache: IJanuaServerTemplateCache;
begin
  Result := self.FCache
end;

procedure TJanuaServerTemplate.SetCache(const Value: IJanuaServerTemplateCache);
begin
  self.FCache := Value
end;

{ TJanuaServerTemplateCache }

constructor TJanuaServerTemplateCache.Create(const aServer: IJanuaServerTemplate);
begin
  { Cache_Create }
  Guard.CheckNotNull(aServer, self.ClassName + '.Create(aServer) is nil');
  self.FServerTemplate := aServer
end;

end.
