unit Janua.Cms.ViewModel.Intf;

interface

uses Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB, JOrm.Documents.Intf,
  Janua.ViewModels.Intf, Janua.Search.ViewModels.Engines.Intf, JOrm.Cms.Arguments.Intf, JOrm.Cms.Articles.Intf,
  JOrm.Cms.MainArguments.Intf, JOrm.Cms.SubArguments.Intf, JOrm.Cms.ArticlesAttachment.Intf;

type
  IJanuaCmsDataModule = interface(IJanuaDataModuleContainer)
    ['{A6434871-71D8-4729-AFBD-DF3BA076547A}']

    function GetjdsMainArguments: IJanuaDBDataset;
    procedure SetjdsMainArguments(Value: IJanuaDBDataset);
    property jdsMainArguments: IJanuaDBDataset read GetjdsMainArguments write SetjdsMainArguments;

    function GetjdsArguments: IJanuaDBDataset;
    procedure SetjdsArguments(Value: IJanuaDBDataset);
    property jdsArguments: IJanuaDBDataset read GetjdsArguments write SetjdsArguments;

    function GetjdsArgumentArticles: IJanuaDBDataset;
    procedure SetjdsArgumentArticles(Value: IJanuaDBDataset);
    property jdsArgumentArticles: IJanuaDBDataset read GetjdsArgumentArticles write SetjdsArgumentArticles;

    function GetjdsArticles: IJanuaDBDataset;
    procedure SetjdsArticles(Value: IJanuaDBDataset);
    property jdsArticles: IJanuaDBDataset read GetjdsArticles write SetjdsArticles;

    function GetjdsArticleAttachments: IJanuaDBDataset;
    procedure SetjdsArticleAttachments(Value: IJanuaDBDataset);
    property jdsArticleAttachments: IJanuaDBDataset read GetjdsArticleAttachments
      write SetjdsArticleAttachments;
  end;

  IJanuaDBCmsModel = interface(IJanuaDBModel)
    ['{5DED8DD1-BC9D-42BE-ACC2-E27A427E4710}']
    function GetjdsMainArguments: IJanuaDBDataset;
    procedure SetjdsMainArguments(Value: IJanuaDBDataset);
    property jdsMainArguments: IJanuaDBDataset read GetjdsMainArguments write SetjdsMainArguments;

    function GetjdsArguments: IJanuaDBDataset;
    procedure SetjdsArguments(Value: IJanuaDBDataset);
    property jdsArguments: IJanuaDBDataset read GetjdsArguments write SetjdsArguments;

    function GetjdsArgumentArticles: IJanuaDBDataset;
    procedure SetjdsArgumentArticles(Value: IJanuaDBDataset);
    property jdsArgumentArticles: IJanuaDBDataset read GetjdsArgumentArticles write SetjdsArgumentArticles;

    function GetjdsArticles: IJanuaDBDataset;
    procedure SetjdsArticles(Value: IJanuaDBDataset);
    property jdsArticles: IJanuaDBDataset read GetjdsArticles write SetjdsArticles;

    function GetjdsArticleAttachments: IJanuaDBDataset;
    procedure SetjdsArticleAttachments(Value: IJanuaDBDataset);
    property jdsArticleAttachments: IJanuaDBDataset read GetjdsArticleAttachments
      write SetjdsArticleAttachments;

    function GetMainArgumentID: Integer;
    procedure SetMainArgumentID(const Value: Integer);
    /// <summary>  This property is linked with the Type_ID Parameter of the Heads  dataset </summary>
    property MainArgumentID: Integer read GetMainArgumentID write SetMainArgumentID;

    function GetArgumentID: Integer;
    procedure SetArgumentID(const Value: Integer);
    /// <summary>  This property is linked with the Type_ID Parameter of the Heads  dataset </summary>
    property ArgumentID: Integer read GetArgumentID write SetArgumentID;

    function GetArticleID: Int64;
    procedure SetArticleID(const Value: Int64);
    /// <summary>  This property is linked with the ID Parameter of the Heads, used to retrieve only one
    /// document at a time </summary>
    property ArticleID: Int64 read GetArticleID write SetArticleID;

    function GetCurrentArticle: IDocHeadView;
    procedure SetCurrentArticle(const Value: IDocHeadView);
    property CurrentArticle: IDocHeadView read GetCurrentArticle write SetCurrentArticle;

    function GetCurrentArgument: IDocHeadView;
    procedure SetCurrentArgument(const Value: IDocHeadView);
    property CurrentArgument: IDocHeadView read GetCurrentArgument write SetCurrentArgument;

    procedure OpenMainArguments;
    function OpenArguments: Integer;
    function OpenArticles(const aArgumentGUID: TGUID; const limit: Word = 20; const page: Word = 1)
      : Integer; overload;
    function OpenArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20;
      const page: Word = 1; const aIsVideo: boolean = False): Integer; overload;
    function GetArticles(const aMainArgumentID, aArgumentID: Word; const limit: Word = 20;
      const page: Word = 1; const aIsVideo: boolean = False): IArticles; overload;
    function GetArticles(const aArgumentGUID: TGUID; const limit: Word = 20; const page: Word = 1)
      : IArticles; overload;
    // funzioni legacy per retro compatibilità vecchio sistema LND
    function GetArticle(const aArticleID: Int64; out aCount: Word): IArticle;
    function GetArticlesListPos(aMainArgumentID, aPosition, aLimit, aPage: Word; aHasLink: boolean = False)
      : IArticles;
    function GetArticlesList(aMainArgumentID, aArgumentID, aLimit, aPage: Word; aIsVideo: boolean = False)
      : IArticles; overload;
    function GetArticlesList(aArgumentGUID: TGUID; aLimit, aPage: Word; aHasLink: boolean = False)
      : IArticles; overload;

    // Warnings
    function GetWarnings(out aCount: Word): IArticles; overload;
    function GetWarnings(const aLimit, aPage: Word; out aCount: Word; aUPDID: Int64 = 0): IArticles; overload;
  end;

implementation

end.
