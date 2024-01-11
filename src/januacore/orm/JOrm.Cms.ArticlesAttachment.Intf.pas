unit JOrm.Cms.ArticlesAttachment.Intf;

interface

uses Janua.Orm.Intf;

type

  IArticlesAttachment = interface(IJanuaRecord)
    ['{8D86E12F-0ABD-43D2-9050-32D120A1B12B}']
    function GetArticleId: IJanuaField;
    procedure SetArticleId(const Value: IJanuaField);
    property ArticleId: IJanuaField read GetArticleId write SetArticleId;
    function GetFileId: IJanuaField;
    procedure SetFileId(const Value: IJanuaField);
    property FileId: IJanuaField read GetFileId write SetFileId;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetExtension: IJanuaField;
    procedure SetExtension(const Value: IJanuaField);
    property Extension: IJanuaField read GetExtension write SetExtension;
    function GetMime: IJanuaField;
    procedure SetMime(const Value: IJanuaField);
    property Mime: IJanuaField read GetMime write SetMime;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetUrl: IJanuaField;
    procedure SetUrl(const Value: IJanuaField);
    property Url: IJanuaField read GetUrl write SetUrl;
  end;

  IArticlesAttachments = interface(IJanuaRecordSet)
    ['{C47E0D48-8BDA-422C-9D19-7293CDA2D768}']
    function GetArticleId: IJanuaField;
    procedure SetArticleId(const Value: IJanuaField);
    property ArticleId: IJanuaField read GetArticleId write SetArticleId;
    function GetFileId: IJanuaField;
    procedure SetFileId(const Value: IJanuaField);
    property FileId: IJanuaField read GetFileId write SetFileId;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetExtension: IJanuaField;
    procedure SetExtension(const Value: IJanuaField);
    property Extension: IJanuaField read GetExtension write SetExtension;
    function GetMime: IJanuaField;
    procedure SetMime(const Value: IJanuaField);
    property Mime: IJanuaField read GetMime write SetMime;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function Getarticles_attachment: IArticlesAttachment;
    procedure Setarticles_attachment(const Value: IArticlesAttachment);
    property articles_attachment: IArticlesAttachment read Getarticles_attachment write Setarticles_attachment;

  end;

implementation

end.
