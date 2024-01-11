unit Janua.Cms.Server.Impl;

interface

uses
  Spring.Collections, Janua.Orm.Intf, Janua.Server.Impl, Janua.Server.Intf, JOrm.Cms.MainArguments.Intf,
  JOrm.Cms.Articles.Intf, Janua.Cms.Server.Intf, JOrm.Cms.Arguments.Intf, Janua.Orm.Impl, Data.DB,
  Janua.Core.DB.Impl;


// DEfinisco un Template 'base' dello Storage del Server che rappresenti le funzioni base dello Storage
// In sostanza 'espone' tutti i Metodi indicati nella classe o nella Interfaccia Storage .................
// Si chiamerà per i discendenti TJanuaPgCmsStorage.
// type
// TJanuaCmsStorage = class(TJanuaStorage, IJanuaStorage, IJanuaCmsStorage)
// type  IJanuaStorage = interface(IInterface)

type
  TJanuaCmsStorage = class(TJanuaStorage)
  strict protected
    FArgumentsStorage: IJanuaRecordSetStorage;
    FArticlesStorage: IJanuaRecordSetStorage;
  protected
    // Arguments Storage
    function GetArgumentsStorage: IJanuaRecordSetStorage;
    procedure SetArgumentsStorage(const Value: IJanuaRecordSetStorage);
    // Articles Storage
    function GetArticlesStorage: IJanuaRecordSetStorage;
    procedure SetArticlesStorage(const Value: IJanuaRecordSetStorage);
  public
    property ArticlesStorage: IJanuaRecordSetStorage read GetArticlesStorage write SetArticlesStorage;
    property ArgumentsStorage: IJanuaRecordSetStorage read GetArgumentsStorage write SetArgumentsStorage;
  end;

type
  TJanuaDBCmsStorage = class(TJanuaCmsStorage)
  strict private
    FjdsMainArguments: IJanuaDBDataset;
    FjdsArguments: IJanuaDBDataset;
    FjdsArticles: IJanuaDBDataset;
  private
    FdsArgumentsArticles: TDataset;
    FdsMainArguments: TDataset;
    FdsArticles: TDataset;
    FdsArguments: TDataset;
    FjdsArticlesAttachments: IJanuaDBDataset;
  protected
    function GetjdsArticlesAttachments: IJanuaDBDataset;
    procedure SetjdsArticlesAttachments(Value: IJanuaDBDataset);
    function GetdsArgumentsArticles: TDataset;
    function GetdsMainArguments: TDataset;
    function GetdsArticles: TDataset;
    function GetdsArguments: TDataset;
    procedure SetdsArguments(const Value: TDataset);
    procedure SetdsArgumentsArticles(const Value: TDataset);
    procedure SetdsArticles(const Value: TDataset);
    procedure SetdsMainArguments(const Value: TDataset);
    function GetjdsMainArguments: IJanuaDBDataset;
    procedure SetjdsMainArguments(Value: IJanuaDBDataset);
    function GetjdsArguments: IJanuaDBDataset;
    procedure SetjdsArguments(Value: IJanuaDBDataset);
    function GetjdsArticles: IJanuaDBDataset;
    procedure SetjdsArticles(Value: IJanuaDBDataset);
    procedure AssignDatasets(aDatasetList: TDatasetList);
  strict protected
    procedure SetAfterDestroyDataset; override;
    procedure SetInternalCreateDBDataSets; override;
    procedure SetInternalCreateDataset; override;
    procedure SetAfterCreateDataset; override;
    procedure SetInternalDestroyDataset; override;
    procedure SetInternalAssignDatasets; override;
  public
    constructor Create; override;
  public
    property dsMainArguments: TDataset read GetdsMainArguments write SetdsMainArguments;
    property dsArguments: TDataset read GetdsArguments write SetdsArguments;
    property dsArticles: TDataset read GetdsArticles write SetdsArticles;
    property dsArgumentsArticles: TDataset read GetdsArgumentsArticles write SetdsArgumentsArticles;
  public
    property jdsMainArguments: IJanuaDBDataset read GetjdsMainArguments write SetjdsMainArguments;
    property jdsArguments: IJanuaDBDataset read GetjdsArguments write SetjdsArguments;
    property jdsArticles: IJanuaDBDataset read GetjdsArticles write SetjdsArticles;
    property jdsArticlesAttachments: IJanuaDBDataset read FjdsArticlesAttachments write SetjdsArticlesAttachments;
  end;

  (*
    type
    TJanuaCmsDSStorage = class(TJanuaDatasetStorage, IJanuaRecordSetStorage)
    strict protected
    // Il data-store che poi rappresenta il datamodule (quindi oracle, postgres, interbase) nella sua
    // implementazione è completamente identificato dalla interfaccia IJanuaCmsStorage che si
    // prende carico di tutti i dataset (da esporre) e di tutte le funzioni utili ...................
    // L'unica funzione da Implementare è il 'ponte' tra lo storage e il RecordSet : InternalAssignDatasets
    FCmsStorage: IJanuaCmsStorage;
    public
    constructor Create(aStorage: IJanuaCmsStorage); overload; virtual;
    end;

    type
    TJanuaCmsDBDSStorage = class(TJanuaCmsDSStorage, IJanuaRecordSetStorage)
    strict protected
    // Il data-store che poi rappresenta il datamodule (quindi oracle, postgres, interbase) nella sua
    // implementazione è completamente identificato dalla interfaccia IJanuaCmsStorage che si
    // prende carico di tutti i dataset (da esporre) e di tutte le funzioni utili ...................
    // L'unica funzione da Implementare è il 'ponte' tra lo storage e il RecordSet : InternalAssignDatasets
    FCmsDBStorage: IJanuaDBCmsStorage;
    public
    constructor Create(aStorage: IJanuaDBCmsStorage); overload; virtual;
    end;

    type
    TJanuaCmsArgumentsDSStorage = class(TJanuaCmsDBDSStorage, IJanuaRecordSetStorage)
    public
    constructor Create(aStorage: IJanuaDBCmsStorage); override;
    strict protected
    procedure InternalAssignDatasets; override;
    end;

    type
    TJanuaCmsArticlesDSStorage = class(TJanuaCmsDBDSStorage, IJanuaRecordSetStorage)
    public
    constructor Create(aStorage: IJanuaDBCmsStorage); override;
    strict protected
    procedure InternalAssignDatasets; override;
    end;
  *)

type
  TJanuaServerCmsCache = class(TInterfacedObject, IJanuaServerCmsCache)
  strict private
    FServerCms: IJanuaServerCms;
    FMainArguments: IMainArguments;
    FWarnings: IArticles;
    FArticles: IDictionary<TGUID, IArticles>;
    FArguments: IDictionary<TGUID, IArguments>;
    FIndexIntArticles: IDictionary<Int64, IArticle>;
    FIndexGUIDArticles: IDictionary<TGUID, IArticle>;
    FArgumentArticles: IDictionary<Integer, IArticles>;
  private
    function GetMainArguments: IMainArguments;
    procedure SetMainArguments(const Value: IMainArguments);
    function GetServerCms: IJanuaServerCms;
    procedure setServerCms(const Value: IJanuaServerCms);
  public
    constructor Create(const aServer: IJanuaServerCms); virtual;

  public
    procedure LoadCache;
    property MainArguments: IMainArguments read GetMainArguments write SetMainArguments;
    property ServerCms: IJanuaServerCms read GetServerCms write setServerCms;
  public
    procedure StoreArgument(aArgument: IMainArguments);
    procedure StoreArticles(aMasterGUID: TGUID; aArticles: IArticles);
    function GetArticles(aMasterGUID: TGUID; aLimit: Integer = 20): IArticles;
    procedure StoreArticle(aMasterGUID: TGUID; aArticle: IArticle);
    function GetArticle(aID: Int64; out aArticle: IArticle): Boolean; overload;
    function GetArticle(aGUID: TGUID; out aArticle: IArticle): Boolean; overload;
    function GetWarnings: IArticles; overload;
    function GetWarnings(const aLimit, aPage: Word): IArticles; overload;
    destructor Destroy; override;
  end;

  TJanuaServerCms = class(TJanuaServer, IJanuaServerCms, IJanuaServer)
  strict private
    FLocalStorage, FRemoteStorage: IJanuaCmsStorage;
    FArticleID: Int64;
    FLocalArgumentsStorage: IJanuaRecordSetStorage; // Questa è una classe di Database.
    FRemoteArgumentsStorage: IJanuaRecordSetStorage; // remote è usualmente una classe REST Storage
    FLocalArticlesStorage: IJanuaRecordSetStorage; // Questa è una classe di Database.
    FRemoteArticlesStorage: IJanuaRecordSetStorage; // remote è usualmente una classe REST Storage
    function GetArgumentsStorage: IJanuaRecordSetStorage;
    procedure SetArgumentsStorage(const Value: IJanuaRecordSetStorage);
    procedure SetArticleID(const Value: Int64);
  protected
    FMainArguments: IMainArguments;
    FArticles: IArticles;
    FCache: IJanuaServerCmsCache;
    FArgumentsStorage: IJanuaRecordSetStorage;
  protected
    function GetMainArguments: IMainArguments;
    procedure SetMainArguments(const Value: IMainArguments);
    function GetArticles: IArticles;
    procedure SetArticles(const Value: IArticles);
    function GetCache: IJanuaServerCmsCache;
    procedure SetCache(const Value: IJanuaServerCmsCache);
    // Arguments
    function GetLocalArgumentsStorage: IJanuaRecordSetStorage;
    procedure SetLocalArgumentsStorage(const Value: IJanuaRecordSetStorage);
    function GetRemoteArgumentsStorage: IJanuaRecordSetStorage;
    procedure SetRemoteArgumentsStorage(const Value: IJanuaRecordSetStorage);
    // Articles
    function GetLocalArticlesStorage: IJanuaRecordSetStorage;
    procedure SetLocalArticlesStorage(const Value: IJanuaRecordSetStorage);
    function GetRemoteArticlesStorage: IJanuaRecordSetStorage;
    procedure SetRemoteArticlesStorage(const Value: IJanuaRecordSetStorage);
  public
    constructor Create(const aServerType: TJanuaServerType = jstDBServer); override;
    // Dependency injection procedure for LocalStorate and Remote Storage
    constructor Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage;
      aServerType: TJanuaServerType = jstDBServer); overload;
    constructor Create(const aCache: IJanuaServerCmsCache; const aLocalStorage, aRemoteStorage: IJanuaCmsStorage;
      aServerType: TJanuaServerType = jstDBServer); overload;
    destructor Destroy; override;
    procedure OpenMainArguments;
    function OpenArgumentArticles(const aArgumentID: Integer; bRemote: Boolean = False): Integer;
    procedure AsyncOpenMainArguments;
    procedure LocalOpenMainArguments;
  public
    property LocalArgumentsStorage: IJanuaRecordSetStorage read GetLocalArgumentsStorage write SetLocalArgumentsStorage;
    property RemoteArgumentsStorage: IJanuaRecordSetStorage read GetRemoteArgumentsStorage
      write SetRemoteArgumentsStorage;
    property MainArguments: IMainArguments read GetMainArguments write SetMainArguments;
    property LocalArticlesStorage: IJanuaRecordSetStorage read GetLocalArticlesStorage write SetLocalArticlesStorage;
    property RemoteArticlesStorage: IJanuaRecordSetStorage read GetRemoteArticlesStorage write SetRemoteArticlesStorage;
    property Articles: IArticles read GetArticles write SetArticles;
    property Cache: IJanuaServerCmsCache read GetCache write SetCache;
  public
    function OpenArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 6; const page: Word = 1;
      const aIsVideo: Boolean = False): Integer; overload;
    // Legacy Articles Procedures
    // funzioni Legacy per compatibilità con precedente versione di Software LND Genova.................................
    function GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
    function GetArticlesListPos(const aMainArgumentID, aPosition, aLimit, aPage: Word; aHasLink: Boolean = False)
      : IArticles;
    function GetArticlesList(const aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: Boolean = False)
      : IArticles; overload;
    function GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: Boolean = False): IArticles; overload;
    // funzioni Legacy per compatibilità con precedente versione di Software LND Genova.................................
    function GetWarnings(out aCount: Word): IArticles; overload;
    function GetWarnings(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64 = 0): IArticles; overload;
    function GetNews(out aCount: Word): IArticles; overload;
    function GetNews(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64 = 0): IArticles; overload;
  private
    FMainArgumentID: Word;
    FArgumentID: Word;
    FIsVideo: Boolean;
    procedure SetArgumentID(const Value: Word);
    procedure SetMainArgumentID(const Value: Word);
    procedure SetIsVideo(const Value: Boolean);
  public
    function CreateArticleParams: IJanuaParams;
    function CreateArgumentParams: IJanuaParams;
    function CreateArticlesParams: IJanuaParams;
  public
    function RestGetWarings(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetNews(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetArgumentArticles(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetArguments(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetArticlesList(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetArticlesListPos(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetArticle(const aParams: IJanuaParams): IJanuaFuncResult;
    property ArticleID: Int64 read FArticleID write SetArticleID;
    property MainArgumentID: Word read FMainArgumentID write SetMainArgumentID;
    property ArgumentID: Word read FArgumentID write SetArgumentID;
    property IsVideo: Boolean read FIsVideo write SetIsVideo;
  end;

type
  TJanuaServerCmsFactory = class(TInterfacedObject, IJanuaServerCmsFactory)
  private
    FCmsCache: IJanuaServerCmsCache;
    procedure SetCmsCache(const Value: IJanuaServerCmsCache);
  public
    function GetServerCms: IJanuaServerCms; overload;
    function GetServerCms(const aCache: IJanuaServerCmsCache): IJanuaServerCms; overload;
    function GetServerCms(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage): IJanuaServerCms; overload;
    function GetCmsStorage: IJanuaCmsStorage; virtual; abstract;
    function GetCmsCache: IJanuaServerCmsCache;
  public
    constructor Create(const aCache: IJanuaServerCmsCache);
    property CmsCache: IJanuaServerCmsCache read GetCmsCache write SetCmsCache;
  end;

type
  TJanuaCmsFactory = class
  public
    class function CreateArticleParams: IJanuaParams;
    class function CreateArgumentParams: IJanuaParams;
    class function CreateArticlesParams: IJanuaParams;
  end;

implementation

uses Spring, System.SysUtils, Janua.Orm.Types, Janua.Core.Types
  // Cms Framework
    , JOrm.Cms.MainArguments.Impl, JOrm.Cms.Articles.Impl;

{ TJanuaServerCms }

function TJanuaServerCms.GetMainArguments: IMainArguments;
begin
  Result := self.FMainArguments
end;

function TJanuaServerCms.GetNews(out aCount: Word): IArticles;
begin
  Result := self.FLocalStorage.GetArticlesListPos(0, 2, 6, 1, False)
end;

function TJanuaServerCms.GetNews(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64): IArticles;
begin
  Result := self.GetNews(aCount)
end;

procedure TJanuaServerCms.SetMainArgumentID(const Value: Word);
begin
  FMainArgumentID := Value;
end;

procedure TJanuaServerCms.SetMainArguments(const Value: IMainArguments);
begin
  self.FMainArguments := Value;
end;

function TJanuaServerCms.GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
begin
  self.FArticleID := aArticleID;
  Result := self.FLocalStorage.GetArticle(aArticleID, aCount);
end;

function TJanuaServerCms.GetArticles: IArticles;
begin
  Result := self.FArticles
end;

function TJanuaServerCms.GetArticlesList(const aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: Boolean)
  : IArticles;
begin
  Result := self.FLocalStorage.GetArticlesList(aMainArgumentID, aArgumentID, aLimit, aPage, aIsVideo)
end;

function TJanuaServerCms.GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: Boolean): IArticles;
begin
  Result := self.FLocalStorage.GetArticlesList(aArgumentGUID, aLimit, aPage, aHasLink)
end;

function TJanuaServerCms.GetArticlesListPos(const aMainArgumentID, aPosition, aLimit, aPage: Word; aHasLink: Boolean)
  : IArticles;
begin
  Result := FLocalStorage.GetArticlesListPos(aMainArgumentID, aPosition, aLimit, aPage, aHasLink)
end;

procedure TJanuaServerCms.SetArticleID(const Value: Int64);
begin
  FArticleID := Value;
end;

procedure TJanuaServerCms.SetArticles(const Value: IArticles);
begin
  self.FArticles := Value
end;

function TJanuaServerCms.GetCache: IJanuaServerCmsCache;
begin
  Result := self.FCache
end;

procedure TJanuaServerCms.SetCache(const Value: IJanuaServerCmsCache);
begin
  self.FCache := Value
end;

procedure TJanuaServerCms.SetIsVideo(const Value: Boolean);
begin
  FIsVideo := Value;
end;

constructor TJanuaServerCms.Create(const aServerType: TJanuaServerType = jstDBServer);
begin
  inherited Create(aServerType);
  FName := 'cms';
  FArticleID := 0;
  FMainArgumentID := 0;
  FArgumentID := 0;
  AddFunction('argarticles', RestGetArgumentArticles);
  AddFunction('article', RestGetArticle);
  AddFunction('arguments', RestGetArguments);
  AddFunction('articleslist', RestGetArticlesList);
  AddFunction('articleslistpos', RestGetArticlesListPos);
  AddFunction('warnings', RestGetWarings);
  AddFunction('news', RestGetNews);
end;

constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage;
  aServerType: TJanuaServerType = jstDBServer);
begin
  self.Create(aServerType);
  // importante questo template deve stare qui ......
  if not Assigned(aLocalStorage) and not Assigned(aRemoteStorage) then
    raise Exception.Create('TJanuaServerCms.Create aLocalStorage, aRemoteStorage are both Null');
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
    FLocalArgumentsStorage := FLocalStorage.ArgumentsStorage;
    FLocalArticlesStorage := FLocalStorage.ArticlesStorage;
  end;

  if Assigned(self.FRemoteStorage) then
  begin
    FRemoteStorage.CreateDataset;
    FRemoteStorage.KeepAlive := True;
    FRemoteArgumentsStorage := FRemoteStorage.ArgumentsStorage;
    FRemoteArticlesStorage := FRemoteStorage.ArticlesStorage;
  end;

  // Creo FMainArguments Usando la f() Create RecordSet della Factory Attraverso una Ijection
  FMainArguments := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments', FLocalArgumentsStorage,
    FRemoteArgumentsStorage) as IMainArguments;
  self.AddRecordSet(self.FMainArguments);

  // Creo FArticles Usando la f() Create RecordSet della Factory Attraverso una Ijection
  FArticles := TArticleFactory.CreateRecordset('articles', FLocalArticlesStorage, FRemoteArticlesStorage) as IArticles;
  self.AddRecordSet(self.FArticles);
end;

constructor TJanuaServerCms.Create(const aCache: IJanuaServerCmsCache;
  const aLocalStorage, aRemoteStorage: IJanuaCmsStorage; aServerType: TJanuaServerType = jstDBServer);
begin
  self.Create(aLocalStorage, aRemoteStorage, aServerType);
  self.Cache := aCache;
end;

function TJanuaServerCms.CreateArgumentParams: IJanuaParams;
begin
  // function GetArticle(aArticleID: Int64): IArticle;
  Result := TJanuaParams.Create;
  Result.AddParam('void', TJanuaFieldType.jptInteger, TValue(0));
end;

function TJanuaServerCms.CreateArticleParams: IJanuaParams;
begin
  // function GetArticle(aArticleID: Int64): IArticle;
  Result := TJanuaParams.Create;
  Result.AddParam('article_id', TJanuaFieldType.jptLargeInt, TValue(FArticleID));
end;

function TJanuaServerCms.CreateArticlesParams: IJanuaParams;
begin
  // (aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: Boolean = False)
  Result := TJanuaParams.Create;
  Result.AddParam('article_id', TJanuaFieldType.jptLargeInt, TValue(self.FArticleID));
  Result.AddParam('argument_id', TJanuaFieldType.jptInteger, TValue(self.ArgumentID));
  Result.AddParam('main_id', TJanuaFieldType.jptInteger, TValue(self.MainArgumentID));
  Result.AddParam('isvideo', TJanuaFieldType.jptBoolean, TValue(False));
end;

destructor TJanuaServerCms.Destroy;
begin
  FLocalStorage := nil;
  FRemoteStorage := nil;
  FLocalArgumentsStorage := nil; // Questa è una classe di Database.
  FRemoteArgumentsStorage := nil; // remote è usualmente una classe REST Storage
  FLocalArticlesStorage := nil; // Questa è una classe di Database.
  FRemoteArticlesStorage := nil; // remote è usualmente una classe REST Storage
  FMainArguments := nil;
  FArticles := nil;
  FCache := nil;
  FArgumentsStorage := nil;
  inherited;
end;

function TJanuaServerCms.GetArgumentsStorage: IJanuaRecordSetStorage;
begin
  Result := self.FLocalArgumentsStorage
end;

procedure TJanuaServerCms.SetArgumentID(const Value: Word);
begin
  FArgumentID := Value;
end;

procedure TJanuaServerCms.SetArgumentsStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FArgumentsStorage := Value
end;

function TJanuaServerCms.OpenArgumentArticles(const aArgumentID: Integer; bRemote: Boolean = False): Integer;
begin
  if Assigned(self.FLocalStorage) then
  begin
    Result := FLocalStorage.OpenArticles(0, aArgumentID);
    self.FArticles.LoadFromLocalStorage;
    Guard.CheckTrue(self.FArticles.RecordCount = Result, self.ClassName + '.OpenArgumentArticles ' +
      FArticles.RecordCount.ToSTring + ' <> ' + Result.ToSTring);
  end
  else
  begin
    FLocalStorage.OpenArticles(0, aArgumentID);
    self.FArticles.LoadFromLocalStorage;
  end

end;

function TJanuaServerCms.OpenArticles(const aMainArgumentID, aArgumentID, limit, page: Word;
  const aIsVideo: Boolean): Integer;
begin
  if Assigned(self.FLocalStorage) then
  begin
    Result := FLocalStorage.OpenArticles(aMainArgumentID, aArgumentID, limit, page);
    self.FArticles.LoadFromLocalStorage;
  end
  else
  begin
    Result := FRemoteStorage.OpenArticles(aMainArgumentID, aArgumentID, limit, page);
    self.FArticles.LoadFromRemoteStorage;
  end;
end;

procedure TJanuaServerCms.OpenMainArguments;
begin
  if Assigned(self.FCache) then
    self.FMainArguments.Assign(self.FCache.MainArguments)
  else if Assigned(self.FRemoteArgumentsStorage) then
    self.FMainArguments.LoadFromRemoteStorage
  else
    self.LocalOpenMainArguments
end;

function TJanuaServerCms.RestGetArgumentArticles(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetArgumentArticles aParams is nil');
  Guard.CheckTrue(aParams.Items.ContainsKey('argument_id'), 'param argument_id not set');
  try
    self.FMainArgumentID := 0;
    self.FArgumentID := aParams.ParamByName('argument_id').AsInteger;
    self.FArticleID := 0;
    FIsVideo := aParams.ParamByName('isvideo').AsBoolean;
    Result := TJanuaFuncResult.Create;
    Result.Params := self.CreateArticleParams;
    OpenArgumentArticles(FArgumentID, False);
    Result.RecResult.AddRecordSet(self.FArticles);
  except
    on e: Exception do
    begin
      Result.HasErrors := True;
      Result.ErrorMessage := ('TJanuaServerCms.RestGetArgumentArticles(' + FArgumentID.ToSTring + '): ' + e.Message);
    end;
  end;

end;

function TJanuaServerCms.RestGetArguments(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  try
    Guard.CheckNotNull(IJanuaParams, ClassName + '.RestGetArguments RestGetArguments is nil');
    // in Questo caso i Parametri sono (per ora) tutti vuoti ma potrebbero contenere un SessionID o un JWT.
    Result := TJanuaFuncResult.Create;
    OpenMainArguments;
    Result.HasErrors := False;
    Result.ErrorMessage := '';
    Result.RecResult.Clear;
    Result.RecResult.AddRecordSet(self.FMainArguments);
  except
    on e: Exception do
    begin
      Result.HasErrors := True;
      Result.ErrorMessage := ('TJanuaServerCms.RestGetArticle(' + FArticleID.ToSTring + '): ' + e.Message);
    end;
  end;
end;

function TJanuaServerCms.RestGetArticle(const aParams: IJanuaParams): IJanuaFuncResult;
var
  aCount: Word;
begin
  Guard.CheckNotNull(IJanuaParams, ClassName + '.RestGetArguments RestGetArguments is nil');
  try
    self.FArticleID := aParams.Items['article_id'].AsLargeInt;
    Result := TJanuaFuncResult.Create;
    Result.Params := self.CreateArticleParams;
    Result.RecResult.Records.Add(self.GetArticle(FArticleID, aCount));
  except
    on e: Exception do
    begin
      Result.HasErrors := True;
      Result.ErrorMessage := ('TJanuaServerCms.RestGetArticle(' + FArticleID.ToSTring + '): ' + e.Message);
    end;
  end;
end;

function TJanuaServerCms.RestGetArticlesList(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  { Result.AddParam('article_id', TJanuaFieldType.jptLargeInt, TValue(self.FArticleID));
    Result.AddParam('argument_id', TJanuaFieldType.jptInteger, TValue(self.ArgumentID));
    Result.AddParam('main_id', TJanuaFieldType.jptInteger, TValue(self.MainArgumentID));
    Result.AddParam('isvideo', TJanuaFieldType.jptBoolean, TValue(False));
    , aArgumentID, aLimit, aPage: Word; aIsVideo: Boolean
  }
  Guard.CheckNotNull(IJanuaParams, ClassName + '.RestGetArguments RestGetArguments is nil');
  Guard.CheckNotNull(IJanuaParams, ClassName + '.RestGetArguments RestGetArguments is nil');
  try
    self.FMainArgumentID := aParams.ParamByName('main_id').AsInteger;
    self.FArgumentID := aParams.ParamByName('argument_id').AsInteger;
    self.FArticleID := aParams.ParamByName('article_id').AsLargeInt;
    FIsVideo := aParams.ParamByName('isvideo').AsBoolean;
    Result := TJanuaFuncResult.Create;
    Result.Params := self.CreateArticleParams;
    Result.RecResult.AddRecordSet(self.GetArticlesList(FMainArgumentID, FArgumentID, 100, 0, FIsVideo));
  except
    on e: Exception do
    begin
      Result.HasErrors := True;
      Result.ErrorMessage := ('TJanuaServerCms.RestGetArticle(' + FArticleID.ToSTring + '): ' + e.Message);
    end;
  end;
end;

function TJanuaServerCms.RestGetArticlesListPos(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(IJanuaParams, ClassName + '.RestGetArguments RestGetArguments is nil');

end;

function TJanuaServerCms.RestGetNews(const aParams: IJanuaParams): IJanuaFuncResult;
var
  LNews: IArticles;
  LCount: Word;
begin
  try
    Guard.CheckNotNull(IJanuaParams, ClassName + '.RestGetArguments RestGetArguments is nil');
    // in Questo caso i Parametri sono (per ora) tutti vuoti ma potrebbero contenere un SessionID o un JWT.
    Result := TJanuaFuncResult.Create;
    Result.HasErrors := False;
    Result.ErrorMessage := '';
    Result.RecResult.Clear;
    LNews := self.GetNews(LCount);
    Result.RecResult.AddRecordSet(LNews);
    Result.Count := LCount;
  except
    on e: Exception do
    begin
      Result.HasErrors := True;
      Result.ErrorMessage := ('TJanuaServerCms.RestGetArticle(' + FArticleID.ToSTring + '): ' + e.Message);
    end;
  end;
end;

function TJanuaServerCms.RestGetWarings(const aParams: IJanuaParams): IJanuaFuncResult;
var
  LWarnings: IArticles;
  LCount: Word;
begin
  try
    Guard.CheckNotNull(IJanuaParams, ClassName + '.RestGetArguments RestGetArguments is nil');
    // in Questo caso i Parametri sono (per ora) tutti vuoti ma potrebbero contenere un SessionID o un JWT.
    Result := TJanuaFuncResult.Create;
    Result.HasErrors := False;
    Result.ErrorMessage := '';
    Result.RecResult.Clear;
    LWarnings := self.FLocalStorage.GetWarnings(LCount);
    Result.RecResult.AddRecordSet(LWarnings);
    Result.Count := LCount;
  except
    on e: Exception do
    begin
      Result.HasErrors := True;
      Result.ErrorMessage := ('TJanuaServerCms.RestGetArticle(' + FArticleID.ToSTring + '): ' + e.Message);
    end;
  end;

end;

procedure TJanuaServerCms.AsyncOpenMainArguments;
begin

end;

procedure TJanuaServerCms.LocalOpenMainArguments;
var
  i: Integer;
begin
  if Assigned(self.FCache) then
    self.FMainArguments.Assign(self.FCache.MainArguments)
  else
  begin
    if self.FLocalStorage.OpenArguments > 0 then
    begin
      Guard.CheckNotNull(FLocalArgumentsStorage,
        'TJanuaServerCms.LocalOpenMainArguments FLocalArgumentsStorage is nil');
      FMainArguments.LoadFromLocalStorage;
    end;
  end;
end;

function TJanuaServerCms.GetLocalArgumentsStorage: IJanuaRecordSetStorage;
begin
  Result := self.FLocalArgumentsStorage
end;

function TJanuaServerCms.GetLocalArticlesStorage: IJanuaRecordSetStorage;
begin
  Result := self.FLocalArticlesStorage
end;

procedure TJanuaServerCms.SetLocalArgumentsStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FLocalArgumentsStorage := Value
end;

procedure TJanuaServerCms.SetLocalArticlesStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FLocalArticlesStorage := Value
end;

function TJanuaServerCms.GetRemoteArgumentsStorage: IJanuaRecordSetStorage;
begin
  Result := self.FRemoteArgumentsStorage
end;

function TJanuaServerCms.GetRemoteArticlesStorage: IJanuaRecordSetStorage;
begin
  Result := self.FRemoteArticlesStorage
end;

function TJanuaServerCms.GetWarnings(out aCount: Word): IArticles;
begin
  Result := self.FLocalStorage.GetWarnings(aCount);
end;

function TJanuaServerCms.GetWarnings(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64): IArticles;
begin
  Result := self.GetWarnings(aCount)
end;

procedure TJanuaServerCms.SetRemoteArgumentsStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FRemoteArgumentsStorage := Value
end;

procedure TJanuaServerCms.SetRemoteArticlesStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FRemoteArticlesStorage := Value;
end;

{ TJanuaServerCmsCache }

function TJanuaServerCmsCache.GetMainArguments: IMainArguments;
begin
  Result := self.FMainArguments
end;

function TJanuaServerCmsCache.GetServerCms: IJanuaServerCms;
begin
  Result := self.FServerCms
end;

function TJanuaServerCmsCache.GetWarnings: IArticles;
begin

end;

function TJanuaServerCmsCache.GetWarnings(const aLimit, aPage: Word): IArticles;
begin
  Result := JOrm.Cms.Articles.Impl.TArticleFactory.CreateRecordset('warnings', nil, nil);

end;

procedure TJanuaServerCmsCache.LoadCache;
begin
  self.FMainArguments.LoadFromLocalStorage;
  self.FMainArguments.First;
  while not self.FMainArguments.Eof do
  begin
    self.FMainArguments.Arguments.First;
    while not FMainArguments.Arguments.Eof do
    begin

    end;
    self.FMainArguments.Next;
  end;
end;

procedure TJanuaServerCmsCache.SetMainArguments(const Value: IMainArguments);
begin
  self.FMainArguments := Value
end;

procedure TJanuaServerCmsCache.setServerCms(const Value: IJanuaServerCms);
begin
  self.FServerCms := Value;
end;

constructor TJanuaServerCmsCache.Create(const aServer: IJanuaServerCms);
begin
  FArticles := TCollections.CreateDictionary<TGUID, IArticles>;
  FArguments := TCollections.CreateDictionary<TGUID, IArguments>;
  FIndexIntArticles := TCollections.CreateDictionary<Int64, IArticle>;
  FIndexGUIDArticles := TCollections.CreateDictionary<TGUID, IArticle>;
  FArgumentArticles :=   TCollections.CreateDictionary<Integer, IArticles>;
end;

procedure TJanuaServerCmsCache.StoreArticles(aMasterGUID: TGUID; aArticles: IArticles);
begin

end;

function TJanuaServerCmsCache.GetArticles(aMasterGUID: TGUID; aLimit: Integer): IArticles;
begin

end;

procedure TJanuaServerCmsCache.StoreArgument(aArgument: IMainArguments);
begin

end;

procedure TJanuaServerCmsCache.StoreArticle(aMasterGUID: TGUID; aArticle: IArticle);
begin

end;

function TJanuaServerCmsCache.GetArticle(aID: Int64; out aArticle: IArticle): Boolean;
begin
  Result := FIndexIntArticles.TryGetValue(aID, aArticle);

end;

destructor TJanuaServerCmsCache.Destroy;
begin
    FArticles.Clear;
    FArticles := nil;
    FArguments.Clear;
    FArguments := nil;
    FIndexIntArticles.Clear;
    FIndexIntArticles := nil;
    FIndexGUIDArticles.Clear;
    FIndexGUIDArticles:= nil;
    FArgumentArticles.Clear;
    FArgumentArticles:= nil;
  inherited;
end;

function TJanuaServerCmsCache.GetArticle(aGUID: TGUID; out aArticle: IArticle): Boolean;
begin
  Result := self.FIndexGUIDArticles.TryGetValue(aGUID, aArticle);
end;

{ TJanuaCmsArgumentsDSStorage }
(*
  constructor TJanuaCmsArgumentsDSStorage.Create(aStorage: IJanuaDBCmsStorage);
  begin
  // Creo il Dataset di Appoggio.  chiaramente non imposto lo 'storage' locale a Self. (???)......
  inherited;
  self.Create(TMainArguments.Create('main_arguments', nil, nil));
  Guard.CheckNotNull(aStorage.jdsMainArguments, 'TJanuaCmsArgumentsDSStorage.Create jdsMainArguments nil');
  Guard.CheckNotNull(aStorage.jdsArguments, 'TJanuaCmsArgumentsDSStorage.Create jdsArguments nil');
  InternalAssignDatasets;
  end;

  procedure TJanuaCmsArgumentsDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FCmsDBStorage.CreateDataset;
  UpdatedRecordSet.StoreDataset := self.FCmsDBStorage.jdsMainArguments;
  Guard.CheckNotNull(UpdatedRecordSet.CurrentRecord.RecordSets[0], 'RecordSets[0 Arguments is null');
  UpdatedRecordSet.CurrentRecord.RecordSets[0].StoreDataset := FCmsDBStorage.jdsArguments;
  end;
*)

{ TJanuaCmsArticlesDSStorage }
(*
  constructor TJanuaCmsArticlesDSStorage.Create(aStorage: IJanuaDBCmsStorage);
  begin
  inherited;
  // Creo il Dataset di Appoggio.  chiaramente non imposto lo 'storage' locale a Self. (???)......
  self.Create(TArticleFactory.CreateRecordset('articles', nil, nil));
  Guard.CheckNotNull(aStorage.jdsArticles, 'TJanuaCmsArgumentsDSStorage.Create jdsArticles nil');
  // Imposto lo Storage Descendant (che 'conosco' personalmente'
  InternalAssignDatasets;
  end;

  procedure TJanuaCmsArticlesDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FCmsDBStorage.CreateDataset;
  UpdatedRecordSet.CurrentRecord.StoreDataset := self.FCmsDBStorage.jdsArticles;
  UpdatedRecordSet.CurrentRecord.RecordSets[0].StoreDataset := self.FCmsDBStorage.jdsArticlesAttachments;
  end;
*)

{ TJanuaCmsStorage }

procedure TJanuaDBCmsStorage.AssignDatasets(aDatasetList: TDatasetList);
var
  i: Integer;
begin
  for i := 0 to Pred(aDatasetList.Count) do
  begin
    { TODO : Inserire qui il codice di Assegnazione dei Datasets }
  end;
end;

constructor TJanuaDBCmsStorage.Create;
begin
  inherited;
end;

function TJanuaDBCmsStorage.GetdsArguments: TDataset;
begin
  Result := self.FdsArguments
end;

function TJanuaDBCmsStorage.GetdsArgumentsArticles: TDataset;
begin
  Result := self.FdsArgumentsArticles
end;

function TJanuaDBCmsStorage.GetdsArticles: TDataset;
begin
  Result := self.FdsArticles
end;

function TJanuaDBCmsStorage.GetdsMainArguments: TDataset;
begin
  Result := self.FdsArguments
end;

function TJanuaDBCmsStorage.GetjdsArguments: IJanuaDBDataset;
begin
  Result := self.FjdsArguments
end;

function TJanuaDBCmsStorage.GetjdsArticles: IJanuaDBDataset;
begin
  Result := self.FjdsArticles
end;

function TJanuaDBCmsStorage.GetjdsArticlesAttachments: IJanuaDBDataset;
begin
  Result := self.FjdsArticlesAttachments
end;

function TJanuaDBCmsStorage.GetjdsMainArguments: IJanuaDBDataset;
begin
  Result := self.FjdsMainArguments
end;

procedure TJanuaDBCmsStorage.SetAfterCreateDataset;
begin
  inherited;
  FAfterCreateDataset := procedure
    begin
      // se non è ancora stato creato FArgumentsStorage lo crea e gli assegna i due Dataset di riferimento.
      if not Assigned(FArgumentsStorage) then
        FArgumentsStorage := TJanuaCustomDatasetStorage.Create('main_arguments', IMainArguments { TMainArguments } ,
          [FjdsMainArguments, FjdsArguments]);

      if not Assigned(FArticlesStorage) then
        FArticlesStorage := TJanuaCustomDatasetStorage.Create('articles', IArticles { TArticles } ,
          [FjdsArticles, jdsArticlesAttachments]);
    end
end;

procedure TJanuaDBCmsStorage.SetAfterDestroyDataset;
begin
  inherited;
  FAfterDestroyDataset := procedure
    begin
      FArgumentsStorage := nil;
      FArticlesStorage := nil;
    end;
end;

procedure TJanuaDBCmsStorage.SetdsArguments(const Value: TDataset);
begin
  FdsArguments := Value;
end;

procedure TJanuaDBCmsStorage.SetdsArgumentsArticles(const Value: TDataset);
begin
  FdsArgumentsArticles := Value;
end;

procedure TJanuaDBCmsStorage.SetdsArticles(const Value: TDataset);
begin
  FdsArticles := Value;
end;

procedure TJanuaDBCmsStorage.SetdsMainArguments(const Value: TDataset);
begin
  FdsMainArguments := Value;
end;

procedure TJanuaDBCmsStorage.SetInternalAssignDatasets;
begin
  inherited;

end;

procedure TJanuaDBCmsStorage.SetInternalCreateDataset;
begin
  inherited;

end;

procedure TJanuaDBCmsStorage.SetInternalCreateDBDataSets;
begin
  inherited;

end;

procedure TJanuaDBCmsStorage.SetInternalDestroyDataset;
begin
  inherited;

end;

procedure TJanuaDBCmsStorage.SetjdsArguments(Value: IJanuaDBDataset);
begin
  self.FjdsArguments := Value
end;

procedure TJanuaDBCmsStorage.SetjdsArticles(Value: IJanuaDBDataset);
begin
  self.FjdsArticles := Value
end;

procedure TJanuaDBCmsStorage.SetjdsArticlesAttachments(Value: IJanuaDBDataset);
begin
  FjdsArticlesAttachments := Value;
end;

procedure TJanuaDBCmsStorage.SetjdsMainArguments(Value: IJanuaDBDataset);
begin
  self.FjdsMainArguments := Value
end;

{ TJanuaCmsDSStorage }
(*
  constructor TJanuaCmsDSStorage.Create(aStorage: IJanuaCmsStorage);
  begin
  // Imposto lo Storage Descendant (che 'conosco' personalmente'
  self.FCmsStorage := aStorage;
  // Imposto lo Storage per l'ancestor
  self.FStorage := aStorage;
  end;
*)

{ TJanuaCmsStorage }

function TJanuaCmsStorage.GetArgumentsStorage: IJanuaRecordSetStorage;
begin
  Result := self.FArgumentsStorage
end;

function TJanuaCmsStorage.GetArticlesStorage: IJanuaRecordSetStorage;
begin
  Result := self.FArticlesStorage
end;

procedure TJanuaCmsStorage.SetArgumentsStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FArgumentsStorage := Value
end;

procedure TJanuaCmsStorage.SetArticlesStorage(const Value: IJanuaRecordSetStorage);
begin
  self.ArticlesStorage := Value
end;

{ TJanuaServerCmsFactory }

function TJanuaServerCmsFactory.GetServerCms: IJanuaServerCms;
begin
  Result := TJanuaServerCms.Create(self.GetCmsStorage, nil);
end;

constructor TJanuaServerCmsFactory.Create(const aCache: IJanuaServerCmsCache);
begin
  // nel caso di un 'client' il server deve Arrivare dall'esterno. Ed anche il Remote Storage deve essere Esterno
  self.FCmsCache := aCache;
end;

function TJanuaServerCmsFactory.GetCmsCache: IJanuaServerCmsCache;
begin
  if Assigned(self.FCmsCache) then
    Result := self.FCmsCache
  else
  begin
    // se devo crearmi una 'cache' in casa allora mi creo un server (istanza per la Cache)
    // creando lo storage internamente. Funzione adatta per un server web ma non per un client
    // dove invece del Local Storage 'comanda' un Remote Storage.
    self.FCmsCache := TJanuaServerCmsCache.Create(self.GetServerCms(self.GetCmsStorage, nil));
  end;
end;

function TJanuaServerCmsFactory.GetServerCms(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage): IJanuaServerCms;
begin
  Result := TJanuaServerCms.Create(aLocalStorage, aRemoteStorage);
end;

procedure TJanuaServerCmsFactory.SetCmsCache(const Value: IJanuaServerCmsCache);
begin
  FCmsCache := Value;
end;

function TJanuaServerCmsFactory.GetServerCms(const aCache: IJanuaServerCmsCache): IJanuaServerCms;
begin

end;

{ TJanuaCmsDBDSStorage }
(*
  constructor TJanuaCmsDBDSStorage.Create(aStorage: IJanuaDBCmsStorage);
  begin
  Create(aStorage as IJanuaCmsStorage);
  self.FCmsDBStorage := aStorage;
  end;
*)

{ TJanuaCmsFactory }

class function TJanuaCmsFactory.CreateArgumentParams: IJanuaParams;
begin

end;

class function TJanuaCmsFactory.CreateArticleParams: IJanuaParams;
begin

end;

class function TJanuaCmsFactory.CreateArticlesParams: IJanuaParams;
begin

end;

end.
