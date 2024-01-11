unit Janua.lnd.Intf;

interface

uses Janua.Orm.Intf, Janua.Html.Types, Janua.Html.Intf, JOrm.Cms.MainArguments.Intf,
  JOrm.Cms.Arguments.Intf, JOrm.Cms.Articles.Intf, Janua.Football.Web.Intf;

type
  ILndPage = interface(IFootballPage)
    ['{17EB06E9-91C4-4E9C-AAB6-EF2310B235C3}']
    // Main Menu
    function GetMainArgumentsSet: IMainArguments;
    procedure SetMainArgumentsSet(Value: IMainArguments);
    property MainArgumentsSet: IMainArguments read GetMainArgumentsSet write SetMainArgumentsSet;
    // Sub Menu
    function GetArgumentsSet: IArguments;
    procedure SetArgumentsSet(Value: IArguments);
    property ArgumentsSet: IArguments read GetArgumentsSet write SetArgumentsSet;
  end;

type
  ILndHomePage = interface(ILndPage)
    ['{BF13DB37-F8CE-42B0-B3E4-3676FCE0DDDF}']
    // News
    function GetNewsSet: IArticles;
    procedure SetNewsSet(Value: IArticles);
    property NewsSet: IArticles read GetNewsSet write SetNewsSet;
    // Comunicati
    function GetComunicatiSet: IArticles;
    procedure SetComunicatiSet(Value: IArticles);
    property ComunicatiSet: IArticles read GetComunicatiSet write SetComunicatiSet;
    // Norme
    function GetNormeSet: IArticles;
    procedure SetNormeSet(Value: IArticles);
    property NormeSet: IArticles read GetNormeSet write SetNormeSet;
    // Urgenze
    function GetUrgenzeSet: IArticles;
    procedure SetUrgenzeSet(Value: IArticles);
    property UrgenzeSet: IArticles read GetUrgenzeSet write SetUrgenzeSet;
  end;

type
  ILndArticlePage = interface(ILndPage)
    ['{6A1AEB79-7E70-4A5A-A43F-40C80A2644A4}']
    // News
    function GetArticle: IArticle;
    procedure SetArticle(Value: IArticle);
    property Article: IArticle read GetArticle write SetArticle;
    function AsHtml: string;
  end;

type
  ILndArgumentPage = interface(ILndPage)
    ['{9394B6CE-8E56-437B-BDE4-330D1C1B45FD}']
    function GetArticle: IArticles;
    procedure SetArticle(Value: IArticles);
    function GetFootballMenu: IJanuaHtmlObject;
    function GetArticleObject: IJanuaHtmlObject;
    // News
    property Article: IArticles read GetArticle write SetArticle;
    function AsHtml: string;
  end;

implementation

end.
