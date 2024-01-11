unit JOrm.Cms.Articles.Intf;

interface

uses Spring.Collections, Janua.Orm.Intf, JOrm.Cms.ArticlesAttachment.Intf;

type

  TJanuaState = record
    State: ShortInt;
    Description: string;
  public
    constructor Create(aState: ShortInt; aDescription: string);
  end;

  TArticleFilter = (Articles, Deleteds, Drafts);

const
  SArticleFilters: array [TArticleFilter] of string = ('state >= 0', 'state = -1', 'state = 0');

type

  IArticle = interface(IJanuaRecord)
    ['{1A87E638-F844-4EBA-8795-C57277952D8A}']
    function GetArticle_id: IJanuaField;
    procedure SetArticle_id(const Value: IJanuaField);
    property Article_id: IJanuaField read GetArticle_id write SetArticle_id;
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    property Title: IJanuaField read GetTitle write SetTitle;
    function GetAbstract: IJanuaField;
    procedure SetAbstract(const Value: IJanuaField);
    property Abstract: IJanuaField read GetAbstract write SetAbstract;
    function GetAuthor_id: IJanuaField;
    procedure SetAuthor_id(const Value: IJanuaField);
    property Author_id: IJanuaField read GetAuthor_id write SetAuthor_id;
    function GetText: IJanuaField;
    procedure SetText(const Value: IJanuaField);
    property Text: IJanuaField read GetText write SetText;
    function GetDatetime: IJanuaField;
    procedure SetDatetime(const Value: IJanuaField);
    property Datetime: IJanuaField read GetDatetime write SetDatetime;
    function GetExternal_link: IJanuaField;
    procedure SetExternal_link(const Value: IJanuaField);
    property External_link: IJanuaField read GetExternal_link write SetExternal_link;
    function GetImage: IJanuaField;
    procedure SetImage(const Value: IJanuaField);
    property Image: IJanuaField read GetImage write SetImage;
    function GetShorttext: IJanuaField;
    procedure SetShorttext(const Value: IJanuaField);
    property Shorttext: IJanuaField read GetShorttext write SetShorttext;
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    function GetSpecification_id: IJanuaField;
    procedure SetSpecification_id(const Value: IJanuaField);
    property Specification_id: IJanuaField read GetSpecification_id write SetSpecification_id;
    function GetArticle_key: IJanuaField;
    procedure SetArticle_key(const Value: IJanuaField);
    property Article_key: IJanuaField read GetArticle_key write SetArticle_key;
    function GetImage_url: IJanuaField;
    procedure SetImage_url(const Value: IJanuaField);
    property Image_url: IJanuaField read GetImage_url write SetImage_url;
    function GetLanguage_id: IJanuaField;
    procedure SetLanguage_id(const Value: IJanuaField);
    property Language_id: IJanuaField read GetLanguage_id write SetLanguage_id;
    function GetFeed_id: IJanuaField;
    procedure SetFeed_id(const Value: IJanuaField);
    property Feed_id: IJanuaField read GetFeed_id write SetFeed_id;
    function GetImagetext: IJanuaField;
    procedure SetImagetext(const Value: IJanuaField);
    property Imagetext: IJanuaField read GetImagetext write SetImagetext;
    function GetAttachment: IJanuaField;
    procedure SetAttachment(const Value: IJanuaField);
    property Attachment: IJanuaField read GetAttachment write SetAttachment;
    function GetHasimage: IJanuaField;
    procedure SetHasimage(const Value: IJanuaField);
    property Hasimage: IJanuaField read GetHasimage write SetHasimage;
    function GetHasattach: IJanuaField;
    procedure SetHasattach(const Value: IJanuaField);
    property Hasattach: IJanuaField read GetHasattach write SetHasattach;
    // Cal and Read Only Fields
    function GetImageUrl: IJanuaField;
    procedure SetImageUrl(const Value: IJanuaField);
    property ImageUrl: IJanuaField read GetImageUrl write SetImageUrl;
    function GetAttachmentUrl: IJanuaField;
    procedure SetAttachmentUrl(const Value: IJanuaField);
    property AttachmentUrl: IJanuaField read GetAttachmentUrl write SetAttachmentUrl;
    function GetArticleUrl: IJanuaField;
    procedure SetArticleUrl(const Value: IJanuaField);
    property ArticleUrl: IJanuaField read GetArticleUrl write SetArticleUrl;
    function GetAuthor: IJanuaField;
    procedure SetAuthor(const Value: IJanuaField);
    property Author: IJanuaField read GetAuthor write SetAuthor;
    function GetAuthorText: string;
    procedure SetAuthorText(const Value: string);
    property AuthorText: string read GetAuthorText write SetAuthorText;
    // Article as Blob
    function GetArticle: IJanuaField;
    procedure SetArticle(const Value: IJanuaField);
    property Article: IJanuaField read GetArticle write SetArticle;
    // State
    // Article State from -1 to 9
    function GetState: IJanuaField;
    procedure SetState(const Value: IJanuaField);
    property State: IJanuaField read GetState write SetState;
    // Article as Blob
    function GetExpiryDate: IJanuaField;
    procedure SetExpiryDate(const Value: IJanuaField);
    property ExpiryDate: IJanuaField read GetExpiryDate write SetExpiryDate;
    // Image ID.
    function GetMainImageId: IJanuaField;
    procedure SetMainImageId(const Value: IJanuaField);
    property MainImageId: IJanuaField read GetMainImageId write SetMainImageId;
    function GetMainAttachId: IJanuaField;
    procedure SetMainAttachId(const Value: IJanuaField);
    property MainAttachId: IJanuaField read GetMainAttachId write SetMainAttachId;
    function GetThumbImageId: IJanuaField;
    procedure SetThumbImageId(const Value: IJanuaField);
    property ThumbImageId: IJanuaField read GetThumbImageId write SetThumbImageId;
    // Class Properties
    function GetAttachUrl: string;
    function GetMainImageUrl: string;
    function GetThumbImageUrl: string;
    property MainImageUrl: string read GetMainImageUrl;
    property ThumbImageUrl: string read GetThumbImageUrl;
    property AttachUrl: string read GetAttachUrl;
    function GenerateAttachUrl: string;
    // Sub RecordSets
    // Attachment Table
    procedure SetAttachments(const Value: IArticlesAttachments);
    function GetAttachments: IArticlesAttachments;
    property Attachments: IArticlesAttachments read GetAttachments write SetAttachments;
    // StateListPost
    function CalcStatePos(aState: integer): integer;
    function GetStatePos: integer;
    procedure SetStatePos(const Value: integer);
    property StatePos: integer read GetStatePos write SetStatePos;
    function GetStateList: IList<TJanuaState>;
    procedure SetStateList(const Value: IList<TJanuaState>);
    property StateList: IList<TJanuaState> read GetStateList write SetStateList;
  end;

  IArticles = interface(IJanuaRecordSet)
    ['{845C5B84-5AFE-444B-9CDD-0F174D8BCF09}']
    function GetArticle_id: IJanuaField;
    procedure SetArticle_id(const Value: IJanuaField);
    property Article_id: IJanuaField read GetArticle_id write SetArticle_id;
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    property Title: IJanuaField read GetTitle write SetTitle;
    function GetAbstract: IJanuaField;
    procedure SetAbstract(const Value: IJanuaField);
    property Abstract: IJanuaField read GetAbstract write SetAbstract;
    function GetAuthor_id: IJanuaField;
    procedure SetAuthor_id(const Value: IJanuaField);
    property Author_id: IJanuaField read GetAuthor_id write SetAuthor_id;
    function GetText: IJanuaField;
    procedure SetText(const Value: IJanuaField);
    property Text: IJanuaField read GetText write SetText;
    function GetDatetime: IJanuaField;
    procedure SetDatetime(const Value: IJanuaField);
    property Datetime: IJanuaField read GetDatetime write SetDatetime;
    function GetExternal_link: IJanuaField;
    procedure SetExternal_link(const Value: IJanuaField);
    property External_link: IJanuaField read GetExternal_link write SetExternal_link;
    function GetImage: IJanuaField;
    procedure SetImage(const Value: IJanuaField);
    property Image: IJanuaField read GetImage write SetImage;
    function GetShorttext: IJanuaField;
    procedure SetShorttext(const Value: IJanuaField);
    property Shorttext: IJanuaField read GetShorttext write SetShorttext;
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    function GetSpecification_id: IJanuaField;
    procedure SetSpecification_id(const Value: IJanuaField);
    property Specification_id: IJanuaField read GetSpecification_id write SetSpecification_id;
    function GetArticle_key: IJanuaField;
    procedure SetArticle_key(const Value: IJanuaField);
    property Article_key: IJanuaField read GetArticle_key write SetArticle_key;
    function GetImage_url: IJanuaField;
    procedure SetImage_url(const Value: IJanuaField);
    property Image_url: IJanuaField read GetImage_url write SetImage_url;
    function GetLanguage_id: IJanuaField;
    procedure SetLanguage_id(const Value: IJanuaField);
    property Language_id: IJanuaField read GetLanguage_id write SetLanguage_id;
    function GetFeed_id: IJanuaField;
    procedure SetFeed_id(const Value: IJanuaField);
    property Feed_id: IJanuaField read GetFeed_id write SetFeed_id;
    function GetImagetext: IJanuaField;
    procedure SetImagetext(const Value: IJanuaField);
    property Imagetext: IJanuaField read GetImagetext write SetImagetext;
    function GetAttachment: IJanuaField;
    procedure SetAttachment(const Value: IJanuaField);
    property Attachment: IJanuaField read GetAttachment write SetAttachment;
    function GetHasimage: IJanuaField;
    procedure SetHasimage(const Value: IJanuaField);
    property Hasimage: IJanuaField read GetHasimage write SetHasimage;
    function GetHasattach: IJanuaField;
    procedure SetHasattach(const Value: IJanuaField);
    property Hasattach: IJanuaField read GetHasattach write SetHasattach;
    function GetArticle: IArticle;
    procedure SetArticle(const Value: IArticle);
    property Article: IArticle read GetArticle write SetArticle;
    // Cal and Read Only Fields ....................................................
    function GetImageUrl: IJanuaField;
    procedure SetImageUrl(const Value: IJanuaField);
    property ImageUrl: IJanuaField read GetImageUrl write SetImageUrl;
    function GetAttachmentUrl: IJanuaField;
    procedure SetAttachmentUrl(const Value: IJanuaField);
    property AttachmentUrl: IJanuaField read GetAttachmentUrl write SetAttachmentUrl;
    function GetArticleUrl: IJanuaField;
    procedure SetArticleUrl(const Value: IJanuaField);
    property ArticleUrl: IJanuaField read GetArticleUrl write SetArticleUrl;
    function GetAuthor: IJanuaField;
    procedure SetAuthor(const Value: IJanuaField);
    property Author: IJanuaField read GetAuthor write SetAuthor;
    function GetAuthorText: string;
    procedure SetAuthorText(const Value: string);
    property AuthorText: string read GetAuthorText write SetAuthorText;
    // External Files and Images Management ...............................................
    function GetMainImageId: IJanuaField;
    procedure SetMainImageId(const Value: IJanuaField);
    property MainImageId: IJanuaField read GetMainImageId write SetMainImageId;
    function GetMainAttachId: IJanuaField;
    procedure SetMainAttachId(const Value: IJanuaField);
    property MainAttachId: IJanuaField read GetMainAttachId write SetMainAttachId;
    function GetThumbImageId: IJanuaField;
    procedure SetThumbImageId(const Value: IJanuaField);
    property ThumbImageId: IJanuaField read GetThumbImageId write SetThumbImageId;
    function GetState: IJanuaField;
    procedure SetState(const Value: IJanuaField);
    property State: IJanuaField read GetState write SetState;
    // Article as Blob
    function GetExpiryDate: IJanuaField;
    procedure SetExpiryDate(const Value: IJanuaField);
    property ExpiryDate: IJanuaField read GetExpiryDate write SetExpiryDate;
  end;

implementation

{ TJanuaState }

{ TJanuaState }

constructor TJanuaState.Create(aState: ShortInt; aDescription: string);
begin
  self.State := aState;
  self.Description := aDescription;
end;

end.
