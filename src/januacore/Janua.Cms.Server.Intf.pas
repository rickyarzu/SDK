unit Janua.Cms.Server.Intf;

interface

uses Janua.Orm.Intf, Janua.Core.DB.Intf, Janua.Server.Intf, JOrm.Cms.MainArguments.Intf,
  JOrm.Cms.Articles.Intf, Data.DB;

type
  IJanuaCmsStorage = interface(IJanuaStorage)
    ['{121453E2-0F57-4E0E-A028-1F0B2FC74ADA}']
    function OpenArguments: integer;
    function OpenArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20; const page: Word = 1;
      const aIsVideo: boolean = False): integer; overload;
    function OpenArticles(const aArgumentGUID: TGUID; const limit: Word = 20; const page: Word = 1): integer; overload;
    function GetArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20; const page: Word = 1;
      const aIsVideo: boolean = False): IArticles; overload;
    function GetArticles(const aArgumentGUID: TGUID; const limit: Word = 20; const page: Word = 1): IArticles; overload;
    // funzioni legacy per retro compatibilità vecchio sistema LND
    function GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
    function GetArticlesListPos(aMainArgumentID, aPosition, aLimit, aPage: Word; aHasLink: boolean = False): IArticles;
    function GetWarnings(out aCount: Word): IArticles; overload;
    function GetWarnings(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64 = 0): IArticles; overload;
    function GetArticlesList(aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: boolean = False)
      : IArticles; overload;
    function GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: boolean = False): IArticles; overload;
    // Arguments Storage
    function GetArgumentsStorage: IJanuaRecordSetStorage;
    procedure SetArgumentsStorage(const Value: IJanuaRecordSetStorage);
    property ArgumentsStorage: IJanuaRecordSetStorage read GetArgumentsStorage write SetArgumentsStorage;
    // Articles Storage
    function GetArticlesStorage: IJanuaRecordSetStorage;
    procedure SetArticlesStorage(const Value: IJanuaRecordSetStorage);
    property ArticlesStorage: IJanuaRecordSetStorage read GetArticlesStorage write SetArticlesStorage;
  end;

type
  IJanuaDBCmsStorage = interface(IJanuaCmsStorage)
    ['{99A3CF37-2601-4DDD-9F32-AEE53631BB47}']
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
    // Dataset
    property dsMainArguments: TDataset read GetdsMainArguments write SetdsMainArguments;
    property dsArguments: TDataset read GetdsArguments write SetdsArguments;
    property dsArticles: TDataset read GetdsArticles write SetdsArticles;
    property dsArgumentsArticles: TDataset read GetdsArgumentsArticles write SetdsArgumentsArticles;
    // JanuaDBDataset
    property jdsMainArguments: IJanuaDBDataset read GetjdsMainArguments write SetjdsMainArguments;
    property jdsArguments: IJanuaDBDataset read GetjdsArguments write SetjdsArguments;
    property jdsArticles: IJanuaDBDataset read GetjdsArticles write SetjdsArticles;
    // Articles Attachment
    function GetjdsArticlesAttachments: IJanuaDBDataset;
    procedure SetjdsArticlesAttachments(Value: IJanuaDBDataset);
    property jdsArticlesAttachments: IJanuaDBDataset read GetjdsArticlesAttachments write SetjdsArticlesAttachments;
  end;

  IJanuaServerCms = interface;

  IJanuaServerCmsCache = interface
    ['{D1C3F2B5-F170-472A-A9D8-5941B24CEEC9}']
    function GetMainArguments: IMainArguments;
    procedure SetMainArguments(const Value: IMainArguments);
    property MainArguments: IMainArguments read GetMainArguments write SetMainArguments;
    procedure StoreArticles(aMasterGUID: TGUID; aArticles: IArticles);
    function GetArticles(aMasterGUID: TGUID; aLimit: integer = 20): IArticles;
    procedure StoreArticle(aMasterGUID: TGUID; aArticle: IArticle);
    function GetArticle(aID: Int64; out aArticle: IArticle): boolean; overload;
    function GetArticle(aGUID: TGUID; out aArticle: IArticle): boolean; overload;
    function GetServerCms: IJanuaServerCms;
    procedure setServerCms(const Value: IJanuaServerCms);
    property ServerCms: IJanuaServerCms read GetServerCms write setServerCms;
    procedure LoadCache;
    function GetWarnings: IArticles; overload;
    function GetWarnings(const aLimit, aPage: Word): IArticles; overload;
    // procedure OpenArticles(aMainArgumentID, aArgumentID, aLimit, aPage: Word; aHasLink: boolean = False);
  end;

  IJanuaServerCms = interface(IJanuaServer)
    ['{955D2AA0-DCFA-4F9D-A5AC-30690F4E2A3C}']
    function GetMainArguments: IMainArguments;
    procedure SetMainArguments(const Value: IMainArguments);
    property MainArguments: IMainArguments read GetMainArguments write SetMainArguments;
    procedure OpenMainArguments;
    procedure AsyncOpenMainArguments;
    procedure LocalOpenMainArguments;
    function GetArticles: IArticles;
    procedure SetArticles(const Value: IArticles);
    property Articles: IArticles read GetArticles write SetArticles;
    function GetCache: IJanuaServerCmsCache;
    procedure SetCache(const Value: IJanuaServerCmsCache);
    property Cache: IJanuaServerCmsCache read GetCache write SetCache;
    function GetLocalArgumentsStorage: IJanuaRecordSetStorage;
    procedure SetLocalArgumentsStorage(const Value: IJanuaRecordSetStorage);
    function GetRemoteArgumentsStorage: IJanuaRecordSetStorage;
    procedure SetRemoteArgumentsStorage(const Value: IJanuaRecordSetStorage);
    property LocalArgumentsStorage: IJanuaRecordSetStorage read GetLocalArgumentsStorage write SetLocalArgumentsStorage;
    property RemoteArgumentsStorage: IJanuaRecordSetStorage read GetRemoteArgumentsStorage
      write SetRemoteArgumentsStorage;
    // Articles
    function OpenArgumentArticles(const aArgumentID: integer; bRemote: boolean = False): integer;
    function OpenArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20; const page: Word = 1;
      const aIsVideo: boolean = False): integer; overload;
    // funzioni Legacy per compatibilità con precedente versione di Software LND Genova.................................
    function GetNews(out aCount: Word): IArticles; overload;
    function GetNews(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64 = 0): IArticles; overload;
    function GetWarnings(out aCount: Word): IArticles; overload;
    function GetWarnings(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64 = 0): IArticles; overload;
    function GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
    function GetArticlesListPos(const aMainArgumentID, aPosition, aLimit, aPage: Word; aHasLink: boolean = False)
      : IArticles;
    function GetArticlesList(const aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: boolean = False)
      : IArticles; overload;
    function GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: boolean = False): IArticles; overload;
    // Rest Test Functions
    function CreateArticleParams: IJanuaParams;
    function CreateArgumentParams: IJanuaParams;
    function CreateArticlesParams: IJanuaParams;
    function RestGetWarings(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetNews(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetArguments(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetArticlesList(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetArticlesListPos(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetArticle(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetArgumentArticles(const aParams: IJanuaParams): IJanuaFuncResult;
  end;

  IJanuaServerCmsFactory = interface(IInterface)
    function GetServerCms: IJanuaServerCms; overload;
    function GetServerCms(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage): IJanuaServerCms; overload;
    function GetCmsStorage: IJanuaCmsStorage;
  end;

implementation

end.
