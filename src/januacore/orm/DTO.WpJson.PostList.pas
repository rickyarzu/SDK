unit DTO.WpJson.PostList;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TAbout = class;
  TAuthor = class;
  TCollection = class;
  TContent = class;
  TCuries = class;
  TExcerpt = class;
  TGraph = class;
  TGuId = class;
  TImage = class;
  TIsPartOf = class;
  TJetpackRelatedPosts = class;
  TLinks = class;
  TLogo = class;
  TMainEntityOfPage = class;
  TMeta = class;
  TOgImage = class;
  TPotentialAction = class;
  TPredecessorVersion = class;
  TPrimaryImageOfPage = class;
  TPublisher = class;
  TQueryInput = class;
  TReplies = class;
  TRobots = class;
  TSchema = class;
  TSelf = class;
  //TTarget = class;
  TTargetHints = class;
  TTitle = class;
  TTwitterMisc = class;
  TVersionHistory = class;
  TWpAttachment = class;
  TWpFeaturedmedia = class;
  TWpTerm = class;
  TYoastHeadJson = class;

  TCuries = class
  private
    [JSONName('href')]
    FHref: string;
    [JSONName('name')]
    FName: string;
    [JSONName('templated')]
    FTemplated: Boolean;
  published
    property Href: string read FHref write FHref;
    property Name: string read FName write FName;
    property Templated: Boolean read FTemplated write FTemplated;
  end;

  TWpTerm = class
  private
    [JSONName('embeddable')]
    FEmbeddable: Boolean;
    [JSONName('href')]
    FHref: string;
    [JSONName('taxonomy')]
    FTaxonomy: string;
  published
    property Embeddable: Boolean read FEmbeddable write FEmbeddable;
    property Href: string read FHref write FHref;
    property Taxonomy: string read FTaxonomy write FTaxonomy;
  end;

  TWpAttachment = class
  private
    [JSONName('href')]
    FHref: string;
  published
    property Href: string read FHref write FHref;
  end;

  TWpFeaturedmedia = class
  private
    [JSONName('embeddable')]
    FEmbeddable: Boolean;
    [JSONName('href')]
    FHref: string;
  published
    property Embeddable: Boolean read FEmbeddable write FEmbeddable;
    property Href: string read FHref write FHref;
  end;

  TPredecessorVersion = class
  private
    [JSONName('href')]
    FHref: string;
    [JSONName('id')]
    FId: Integer;
  published
    property Href: string read FHref write FHref;
    property Id: Integer read FId write FId;
  end;

  TVersionHistory = class
  private
    [JSONName('count')]
    FCount: Integer;
    [JSONName('href')]
    FHref: string;
  published
    property Count: Integer read FCount write FCount;
    property Href: string read FHref write FHref;
  end;

  TReplies = class
  private
    [JSONName('embeddable')]
    FEmbeddable: Boolean;
    [JSONName('href')]
    FHref: string;
  published
    property Embeddable: Boolean read FEmbeddable write FEmbeddable;
    property Href: string read FHref write FHref;
  end;

  TAuthor = class
  private
    [JSONName('embeddable')]
    FEmbeddable: Boolean;
    [JSONName('href')]
    FHref: string;
    [JSONName('@id')]
    FId: string;
    [JSONName('name')]
    FName: string;
  published
    property Embeddable: Boolean read FEmbeddable write FEmbeddable;
    property Href: string read FHref write FHref;
    property Id: string read FId write FId;
    property Name: string read FName write FName;
  end;

  TAbout = class
  private
    [JSONName('href')]
    FHref: string;
  published
    property Href: string read FHref write FHref;
  end;

  TCollection = class
  private
    [JSONName('href')]
    FHref: string;
  published
    property Href: string read FHref write FHref;
  end;

  TTargetHints = class(TJsonDTO)
  private
    [JSONName('allow')]
    FAllowArray: TArray<string>;
    [JSONMarshalled(False)]
    FAllow: TList<string>;
    function GetAllow: TList<string>;
  protected
    function GetAsJson: string; override;
  published
    property Allow: TList<string> read GetAllow;
  public
    destructor Destroy; override;
  end;

  TSelf = class
  private
    [JSONName('href')]
    FHref: string;
    [JSONName('targetHints')]
    FTargetHints: TTargetHints;
  published
    property Href: string read FHref write FHref;
    property TargetHints: TTargetHints read FTargetHints;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TLinks = class(TJsonDTO)
  private
    [JSONName('about'), JSONMarshalled(False)]
    FAboutArray: TArray<TAbout>;
    [GenericListReflect]
    FAbout: TObjectList<TAbout>;
    [JSONName('author'), JSONMarshalled(False)]
    FAuthorArray: TArray<TAuthor>;
    [GenericListReflect]
    FAuthor: TObjectList<TAuthor>;
    [JSONName('collection'), JSONMarshalled(False)]
    FCollectionArray: TArray<TCollection>;
    [GenericListReflect]
    FCollection: TObjectList<TCollection>;
    [JSONName('curies'), JSONMarshalled(False)]
    FCuriesArray: TArray<TCuries>;
    [GenericListReflect]
    FCuries: TObjectList<TCuries>;
    [JSONName('predecessor-version'), JSONMarshalled(False)]
    FPredecessorVersionArray: TArray<TPredecessorVersion>;
    [GenericListReflect]
    FPredecessorVersion: TObjectList<TPredecessorVersion>;
    [JSONName('replies'), JSONMarshalled(False)]
    FRepliesArray: TArray<TReplies>;
    [GenericListReflect]
    FReplies: TObjectList<TReplies>;
    [JSONName('self'), JSONMarshalled(False)]
    FSelfArray: TArray<TSelf>;
    [GenericListReflect]
    FSelf: TObjectList<TSelf>;
    [JSONName('version-history'), JSONMarshalled(False)]
    FVersionHistoryArray: TArray<TVersionHistory>;
    [GenericListReflect]
    FVersionHistory: TObjectList<TVersionHistory>;
    [JSONName('wp:attachment'), JSONMarshalled(False)]
    FWpAttachmentArray: TArray<TWpAttachment>;
    [GenericListReflect]
    FWpAttachment: TObjectList<TWpAttachment>;
    [JSONName('wp:featuredmedia'), JSONMarshalled(False)]
    FWpFeaturedmediaArray: TArray<TWpFeaturedmedia>;
    [GenericListReflect]
    FWpFeaturedmedia: TObjectList<TWpFeaturedmedia>;
    [JSONName('wp:term'), JSONMarshalled(False)]
    FWpTermArray: TArray<TWpTerm>;
    [GenericListReflect]
    FWpTerm: TObjectList<TWpTerm>;
    function GetAbout: TObjectList<TAbout>;
    function GetAuthor: TObjectList<TAuthor>;
    function GetCollection: TObjectList<TCollection>;
    function GetCuries: TObjectList<TCuries>;
    function GetPredecessorVersion: TObjectList<TPredecessorVersion>;
    function GetReplies: TObjectList<TReplies>;
    function GetSelf: TObjectList<TSelf>;
    function GetVersionHistory: TObjectList<TVersionHistory>;
    function GetWpAttachment: TObjectList<TWpAttachment>;
    function GetWpFeaturedmedia: TObjectList<TWpFeaturedmedia>;
    function GetWpTerm: TObjectList<TWpTerm>;
  protected
    function GetAsJson: string; override;
  published
    property About: TObjectList<TAbout> read GetAbout;
    property Author: TObjectList<TAuthor> read GetAuthor;
    property Collection: TObjectList<TCollection> read GetCollection;
    property Curies: TObjectList<TCuries> read GetCuries;
    property PredecessorVersion: TObjectList<TPredecessorVersion> read GetPredecessorVersion;
    property Replies: TObjectList<TReplies> read GetReplies;
    property Self: TObjectList<TSelf> read GetSelf;
    property VersionHistory: TObjectList<TVersionHistory> read GetVersionHistory;
    property WpAttachment: TObjectList<TWpAttachment> read GetWpAttachment;
    property WpFeaturedmedia: TObjectList<TWpFeaturedmedia> read GetWpFeaturedmedia;
    property WpTerm: TObjectList<TWpTerm> read GetWpTerm;
  public
    destructor Destroy; override;
  end;

  TJetpackRelatedPosts = class
  end;

  TImage = class
  private
    [JSONName('@id')]
    FId: string;
  published
    property Id: string read FId write FId;
  end;

  TLogo = class
  private
    [JSONName('caption')]
    FCaption: string;
    [JSONName('contentUrl')]
    FContentUrl: string;
    [JSONName('height')]
    FHeight: Integer;
    [JSONName('@id')]
    FId: string;
    [JSONName('inLanguage')]
    FInLanguage: string;
    [JSONName('@type')]
    FType: string;
    [JSONName('url')]
    FUrl: string;
    [JSONName('width')]
    FWidth: Integer;
  published
    property Caption: string read FCaption write FCaption;
    property ContentUrl: string read FContentUrl write FContentUrl;
    property Height: Integer read FHeight write FHeight;
    property Id: string read FId write FId;
    property InLanguage: string read FInLanguage write FInLanguage;
    property &Type: string read FType write FType;
    property Url: string read FUrl write FUrl;
    property Width: Integer read FWidth write FWidth;
  end;

  TQueryInput = class
  private
    [JSONName('@type')]
    FType: string;
    [JSONName('valueName')]
    FValueName: string;
    [JSONName('valueRequired')]
    FValueRequired: Boolean;
  published
    property &Type: string read FType write FType;
    property ValueName: string read FValueName write FValueName;
    property ValueRequired: Boolean read FValueRequired write FValueRequired;
  end;

  TPotentialAction = class
  private
    [JSONName('query-input')]
    FQueryInput: TQueryInput;
    //[JSONName('target')]
    //FTarget: TTarget;
    [JSONName('@type')]
    FType: string;
  published
    property QueryInput: TQueryInput read FQueryInput;
    // property Target: TTarget read FTarget;
    property &Type: string read FType write FType;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TPublisher = class
  private
    [JSONName('@id')]
    FId: string;
  published
    property Id: string read FId write FId;
  end;

  TPrimaryImageOfPage = class
  private
    [JSONName('@id')]
    FId: string;
  published
    property Id: string read FId write FId;
  end;

  TIsPartOf = class
  private
    [JSONName('@id')]
    FId: string;
  published
    property Id: string read FId write FId;
  end;

  TMainEntityOfPage = class
  private
    [JSONName('@id')]
    FId: string;
  published
    property Id: string read FId write FId;
  end;

  TGraph = class(TJsonDTO)
  private
    [JSONName('articleSection')]
    FArticleSectionArray: TArray<string>;
    [JSONMarshalled(False)]
    FArticleSection: TList<string>;
    [JSONName('author')]
    FAuthor: TAuthor;
    [JSONName('caption')]
    FCaption: string;
    [JSONName('contentUrl')]
    FContentUrl: string;
    [SuppressZero, JSONName('dateModified')]
    FDateModified: TDateTime;
    [SuppressZero, JSONName('datePublished')]
    FDatePublished: TDateTime;
    [JSONName('description')]
    FDescription: string;
    [JSONName('headline')]
    FHeadline: string;
    [JSONName('height')]
    FHeight: Integer;
    [JSONName('@id')]
    FId: string;
    [JSONName('image')]
    FImage: TImage;
    [JSONName('inLanguage')]
    FInLanguage: string;
    [JSONName('isPartOf')]
    FIsPartOf: TIsPartOf;
    [JSONName('keywords')]
    FKeywordsArray: TArray<string>;
    [JSONMarshalled(False)]
    FKeywords: TList<string>;
    [JSONName('logo')]
    FLogo: TLogo;
    [JSONName('mainEntityOfPage')]
    FMainEntityOfPage: TMainEntityOfPage;
    [JSONName('name')]
    FName: string;
    [JSONName('potentialAction'), JSONMarshalled(False)]
    FPotentialActionArray: TArray<TPotentialAction>;
    [GenericListReflect]
    FPotentialAction: TObjectList<TPotentialAction>;
    [JSONName('primaryImageOfPage')]
    FPrimaryImageOfPage: TPrimaryImageOfPage;
    [JSONName('publisher')]
    FPublisher: TPublisher;
    [JSONName('sameAs')]
    FSameAsArray: TArray<string>;
    [JSONMarshalled(False)]
    FSameAs: TList<string>;
    [JSONName('thumbnailUrl')]
    FThumbnailUrl: string;
    [JSONName('@type')]
    FType: string;
    [JSONName('url')]
    FUrl: string;
    [JSONName('width')]
    FWidth: Integer;
    [JSONName('wordCount')]
    FWordCount: Integer;
    function GetArticleSection: TList<string>;
    function GetKeywords: TList<string>;
    function GetPotentialAction: TObjectList<TPotentialAction>;
    function GetSameAs: TList<string>;
  protected
    function GetAsJson: string; override;
  published
    property ArticleSection: TList<string> read GetArticleSection;
    property Author: TAuthor read FAuthor;
    property Caption: string read FCaption write FCaption;
    property ContentUrl: string read FContentUrl write FContentUrl;
    property DateModified: TDateTime read FDateModified write FDateModified;
    property DatePublished: TDateTime read FDatePublished write FDatePublished;
    property Description: string read FDescription write FDescription;
    property Headline: string read FHeadline write FHeadline;
    property Height: Integer read FHeight write FHeight;
    property Id: string read FId write FId;
    property Image: TImage read FImage;
    property InLanguage: string read FInLanguage write FInLanguage;
    property IsPartOf: TIsPartOf read FIsPartOf;
    property Keywords: TList<string> read GetKeywords;
    property Logo: TLogo read FLogo;
    property MainEntityOfPage: TMainEntityOfPage read FMainEntityOfPage;
    property Name: string read FName write FName;
    property PotentialAction: TObjectList<TPotentialAction> read GetPotentialAction;
    property PrimaryImageOfPage: TPrimaryImageOfPage read FPrimaryImageOfPage;
    property Publisher: TPublisher read FPublisher;
    property SameAs: TList<string> read GetSameAs;
    property ThumbnailUrl: string read FThumbnailUrl write FThumbnailUrl;
    property &Type: string read FType write FType;
    property Url: string read FUrl write FUrl;
    property Width: Integer read FWidth write FWidth;
    property WordCount: Integer read FWordCount write FWordCount;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

  TSchema = class(TJsonDTO)
  private
    [JSONName('@context')]
    FContext: string;
    [JSONName('@graph'), JSONMarshalled(False)]
    FGraphArray: TArray<TGraph>;
    [GenericListReflect]
    FGraph: TObjectList<TGraph>;
    function GetGraph: TObjectList<TGraph>;
  protected
    function GetAsJson: string; override;
  published
    property Context: string read FContext write FContext;
    property Graph: TObjectList<TGraph> read GetGraph;
  public
    destructor Destroy; override;
  end;

  TTwitterMisc = class
  private
    [JSONName('Scritto da')]
    FScrittoDa: string;
    [JSONName('Tempo di lettura stimato')]
    FTempoDiLetturaStimato: string;
  published
    property ScrittoDa: string read FScrittoDa write FScrittoDa;
    property TempoDiLetturaStimato: string read FTempoDiLetturaStimato write FTempoDiLetturaStimato;
  end;

  TOgImage = class
  private
    [JSONName('height')]
    FHeight: string;
    [JSONName('type')]
    FType: string;
    [JSONName('url')]
    FUrl: string;
    [JSONName('width')]
    FWidth: Integer;
  published
    property Height: string read FHeight write FHeight;
    property &Type: string read FType write FType;
    property Url: string read FUrl write FUrl;
    property Width: Integer read FWidth write FWidth;
  end;

  TRobots = class
  private
    [JSONName('follow')]
    FFollow: string;
    [JSONName('index')]
    FIndex: string;
    [JSONName('max-image-preview')]
    FMaxImagePreview: string;
    [JSONName('max-snippet')]
    FMaxSnippet: string;
    [JSONName('max-video-preview')]
    FMaxVideoPreview: string;
  published
    property Follow: string read FFollow write FFollow;
    property Index: string read FIndex write FIndex;
    property MaxImagePreview: string read FMaxImagePreview write FMaxImagePreview;
    property MaxSnippet: string read FMaxSnippet write FMaxSnippet;
    property MaxVideoPreview: string read FMaxVideoPreview write FMaxVideoPreview;
  end;

  TYoastHeadJson = class(TJsonDTO)
  private
    [SuppressZero, JSONName('article_modified_time')]
    FArticleModifiedTime: TDateTime;
    [SuppressZero, JSONName('article_published_time')]
    FArticlePublishedTime: TDateTime;
    [JSONName('article_publisher')]
    FArticlePublisher: string;
    [JSONName('author')]
    FAuthor: string;
    [JSONName('canonical')]
    FCanonical: string;
    [JSONName('description')]
    FDescription: string;
    [JSONName('og_description')]
    FOgDescription: string;
    [JSONName('og_image'), JSONMarshalled(False)]
    FOgImageArray: TArray<TOgImage>;
    [GenericListReflect]
    FOgImage: TObjectList<TOgImage>;
    [JSONName('og_locale')]
    FOgLocale: string;
    [JSONName('og_site_name')]
    FOgSiteName: string;
    [JSONName('og_title')]
    FOgTitle: string;
    [JSONName('og_type')]
    FOgType: string;
    [JSONName('og_url')]
    FOgUrl: string;
    [JSONName('robots')]
    FRobots: TRobots;
    [JSONName('schema')]
    FSchema: TSchema;
    [JSONName('title')]
    FTitle: string;
    [JSONName('twitter_misc')]
    FTwitterMisc: TTwitterMisc;
    function GetOgImage: TObjectList<TOgImage>;
  protected
    function GetAsJson: string; override;
  published
    property ArticleModifiedTime: TDateTime read FArticleModifiedTime write FArticleModifiedTime;
    property ArticlePublishedTime: TDateTime read FArticlePublishedTime write FArticlePublishedTime;
    property ArticlePublisher: string read FArticlePublisher write FArticlePublisher;
    property Author: string read FAuthor write FAuthor;
    property Canonical: string read FCanonical write FCanonical;
    property Description: string read FDescription write FDescription;
    property OgDescription: string read FOgDescription write FOgDescription;
    property OgImage: TObjectList<TOgImage> read GetOgImage;
    property OgLocale: string read FOgLocale write FOgLocale;
    property OgSiteName: string read FOgSiteName write FOgSiteName;
    property OgTitle: string read FOgTitle write FOgTitle;
    property OgType: string read FOgType write FOgType;
    property OgUrl: string read FOgUrl write FOgUrl;
    property Robots: TRobots read FRobots;
    property Schema: TSchema read FSchema;
    property Title: string read FTitle write FTitle;
    property TwitterMisc: TTwitterMisc read FTwitterMisc;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

  TMeta = class
  private
    [JSONName('_et_gb_content_width')]
    FEtGbContentWidth: string;
    [JSONName('_et_pb_old_content')]
    FEtPbOldContent: string;
    [JSONName('_et_pb_use_builder')]
    FEtPbUseBuilder: string;
    [JSONName('footnotes')]
    FFootnotes: string;
    [JSONName('inline_featured_image')]
    FInlineFeaturedImage: Boolean;
    [JSONName('_jetpack_memberships_contains_paid_content')]
    FJetpackMembershipsContainsPaidContent: Boolean;
  published
    property EtGbContentWidth: string read FEtGbContentWidth write FEtGbContentWidth;
    property EtPbOldContent: string read FEtPbOldContent write FEtPbOldContent;
    property EtPbUseBuilder: string read FEtPbUseBuilder write FEtPbUseBuilder;
    property Footnotes: string read FFootnotes write FFootnotes;
    property InlineFeaturedImage: Boolean read FInlineFeaturedImage write FInlineFeaturedImage;
    property JetpackMembershipsContainsPaidContent: Boolean read FJetpackMembershipsContainsPaidContent write FJetpackMembershipsContainsPaidContent;
  end;

  TExcerpt = class
  private
    [JSONName('protected')]
    FProtected: Boolean;
    [JSONName('rendered')]
    FRendered: string;
  published
    property Protected: Boolean read FProtected write FProtected;
    property Rendered: string read FRendered write FRendered;
  end;

  TContent = class
  private
    [JSONName('protected')]
    FProtected: Boolean;
    [JSONName('rendered')]
    FRendered: string;
  published
    property Protected: Boolean read FProtected write FProtected;
    property Rendered: string read FRendered write FRendered;
  end;

  TTitle = class
  private
    [JSONName('rendered')]
    FRendered: string;
  published
    property Rendered: string read FRendered write FRendered;
  end;

  TGuId = class
  private
    [JSONName('rendered')]
    FRendered: string;
  published
    property Rendered: string read FRendered write FRendered;
  end;

  TItems = class(TJsonDTO)
  private
    [JSONName('author')]
    FAuthor: Integer;
    [JSONName('categories')]
    FCategoriesArray: TArray<Integer>;
    [JSONMarshalled(False)]
    FCategories: TList<Integer>;
    [JSONName('class_list')]
    FClassListArray: TArray<string>;
    [JSONMarshalled(False)]
    FClassList: TList<string>;
    [JSONName('comment_status')]
    FCommentStatus: string;
    [JSONName('content')]
    FContent: TContent;
    [SuppressZero, JSONName('date')]
    FDate: TDateTime;
    [SuppressZero, JSONName('date_gmt')]
    FDateGmt: TDateTime;
    [JSONName('excerpt')]
    FExcerpt: TExcerpt;
    [JSONName('featured_media')]
    FFeaturedMedia: Integer;
    [JSONName('format')]
    FFormat: string;
    [JSONName('guid')]
    FGuId: TGuId;
    [JSONName('id')]
    FId: Integer;
    [JSONName('jetpack_featured_media_url')]
    FJetpackFeaturedMediaUrl: string;
    [JSONName('jetpack-related-posts'), JSONMarshalled(False)]
    FJetpackRelatedPostsArray: TArray<TJetpackRelatedPosts>;
    [GenericListReflect]
    FJetpackRelatedPosts: TObjectList<TJetpackRelatedPosts>;
    [JSONName('jetpack_sharing_enabled')]
    FJetpackSharingEnabled: Boolean;
    [JSONName('link')]
    FLink: string;
    [JSONName('_links')]
    FLinks: TLinks;
    [JSONName('meta')]
    FMeta: TMeta;
    [SuppressZero, JSONName('modified')]
    FModified: TDateTime;
    [SuppressZero, JSONName('modified_gmt')]
    FModifiedGmt: TDateTime;
    [JSONName('ping_status')]
    FPingStatus: string;
    [JSONName('slug')]
    FSlug: string;
    [JSONName('status')]
    FStatus: string;
    [JSONName('sticky')]
    FSticky: Boolean;
    [JSONName('tags')]
    FTagsArray: TArray<Integer>;
    [JSONMarshalled(False)]
    FTags: TList<Integer>;
    [JSONName('template')]
    FTemplate: string;
    [JSONName('title')]
    FTitle: TTitle;
    [JSONName('type')]
    FType: string;
    [JSONName('yoast_head')]
    FYoastHead: string;
    [JSONName('yoast_head_json')]
    FYoastHeadJson: TYoastHeadJson;
    function GetCategories: TList<Integer>;
    function GetClassList: TList<string>;
    function GetJetpackRelatedPosts: TObjectList<TJetpackRelatedPosts>;
    function GetTags: TList<Integer>;
  protected
    function GetAsJson: string; override;
  published
    property Author: Integer read FAuthor write FAuthor;
    property Categories: TList<Integer> read GetCategories;
    property ClassList: TList<string> read GetClassList;
    property CommentStatus: string read FCommentStatus write FCommentStatus;
    property Content: TContent read FContent;
    property Date: TDateTime read FDate write FDate;
    property DateGmt: TDateTime read FDateGmt write FDateGmt;
    property Excerpt: TExcerpt read FExcerpt;
    property FeaturedMedia: Integer read FFeaturedMedia write FFeaturedMedia;
    property Format: string read FFormat write FFormat;
    property GuId: TGuId read FGuId;
    property Id: Integer read FId write FId;
    property JetpackFeaturedMediaUrl: string read FJetpackFeaturedMediaUrl write FJetpackFeaturedMediaUrl;
    property JetpackRelatedPosts: TObjectList<TJetpackRelatedPosts> read GetJetpackRelatedPosts;
    property JetpackSharingEnabled: Boolean read FJetpackSharingEnabled write FJetpackSharingEnabled;
    property Link: string read FLink write FLink;
    property Links: TLinks read FLinks;
    property Meta: TMeta read FMeta;
    property Modified: TDateTime read FModified write FModified;
    property ModifiedGmt: TDateTime read FModifiedGmt write FModifiedGmt;
    property PingStatus: string read FPingStatus write FPingStatus;
    property Slug: string read FSlug write FSlug;
    property Status: string read FStatus write FStatus;
    property Sticky: Boolean read FSticky write FSticky;
    property Tags: TList<Integer> read GetTags;
    property Template: string read FTemplate write FTemplate;
    property Title: TTitle read FTitle;
    property &Type: string read FType write FType;
    property YoastHead: string read FYoastHead write FYoastHead;
    property YoastHeadJson: TYoastHeadJson read FYoastHeadJson;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

  TWPJPostsRoot = class(TJsonDTO)
  private
    [JSONName('Items'), JSONMarshalled(False)]
    FItemsArray: TArray<TItems>;
    [GenericListReflect]
    FItems: TObjectList<TItems>;
    function GetItems: TObjectList<TItems>;
  protected
    function GetAsJson: string; override;
  published
    property Items: TObjectList<TItems> read GetItems;
  public
    destructor Destroy; override;
  end;

implementation

{ TTargetHints }

destructor TTargetHints.Destroy;
begin
  GetAllow.Free;
  inherited;
end;

function TTargetHints.GetAllow: TList<string>;
begin
  Result := List<string>(FAllow, FAllowArray);
end;

function TTargetHints.GetAsJson: string;
begin
  RefreshArray<string>(FAllow, FAllowArray);
  Result := inherited;
end;

{ TSelf }

constructor TSelf.Create;
begin
  inherited;
  FTargetHints := TTargetHints.Create;
end;

destructor TSelf.Destroy;
begin
  FTargetHints.Free;
  inherited;
end;

{ TLinks }

destructor TLinks.Destroy;
begin
  GetAbout.Free;
  GetSelf.Free;
  GetCollection.Free;
  GetAuthor.Free;
  GetReplies.Free;
  GetVersionHistory.Free;
  GetPredecessorVersion.Free;
  GetWpFeaturedmedia.Free;
  GetWpAttachment.Free;
  GetWpTerm.Free;
  GetCuries.Free;
  inherited;
end;

function TLinks.GetAbout: TObjectList<TAbout>;
begin
  Result := ObjectList<TAbout>(FAbout, FAboutArray);
end;

function TLinks.GetAuthor: TObjectList<TAuthor>;
begin
  Result := ObjectList<TAuthor>(FAuthor, FAuthorArray);
end;

function TLinks.GetCollection: TObjectList<TCollection>;
begin
  Result := ObjectList<TCollection>(FCollection, FCollectionArray);
end;

function TLinks.GetCuries: TObjectList<TCuries>;
begin
  Result := ObjectList<TCuries>(FCuries, FCuriesArray);
end;

function TLinks.GetPredecessorVersion: TObjectList<TPredecessorVersion>;
begin
  Result := ObjectList<TPredecessorVersion>(FPredecessorVersion, FPredecessorVersionArray);
end;

function TLinks.GetReplies: TObjectList<TReplies>;
begin
  Result := ObjectList<TReplies>(FReplies, FRepliesArray);
end;

function TLinks.GetSelf: TObjectList<TSelf>;
begin
  Result := ObjectList<TSelf>(FSelf, FSelfArray);
end;

function TLinks.GetVersionHistory: TObjectList<TVersionHistory>;
begin
  Result := ObjectList<TVersionHistory>(FVersionHistory, FVersionHistoryArray);
end;

function TLinks.GetWpAttachment: TObjectList<TWpAttachment>;
begin
  Result := ObjectList<TWpAttachment>(FWpAttachment, FWpAttachmentArray);
end;

function TLinks.GetWpFeaturedmedia: TObjectList<TWpFeaturedmedia>;
begin
  Result := ObjectList<TWpFeaturedmedia>(FWpFeaturedmedia, FWpFeaturedmediaArray);
end;

function TLinks.GetWpTerm: TObjectList<TWpTerm>;
begin
  Result := ObjectList<TWpTerm>(FWpTerm, FWpTermArray);
end;

function TLinks.GetAsJson: string;
begin
  RefreshArray<TAbout>(FAbout, FAboutArray);
  RefreshArray<TAuthor>(FAuthor, FAuthorArray);
  RefreshArray<TCollection>(FCollection, FCollectionArray);
  RefreshArray<TCuries>(FCuries, FCuriesArray);
  RefreshArray<TPredecessorVersion>(FPredecessorVersion, FPredecessorVersionArray);
  RefreshArray<TReplies>(FReplies, FRepliesArray);
  RefreshArray<TSelf>(FSelf, FSelfArray);
  RefreshArray<TVersionHistory>(FVersionHistory, FVersionHistoryArray);
  RefreshArray<TWpAttachment>(FWpAttachment, FWpAttachmentArray);
  RefreshArray<TWpFeaturedmedia>(FWpFeaturedmedia, FWpFeaturedmediaArray);
  RefreshArray<TWpTerm>(FWpTerm, FWpTermArray);
  Result := inherited;
end;

{ TPotentialAction }

constructor TPotentialAction.Create;
begin
  inherited;
  FQueryInput := TQueryInput.Create;
 // FTarget := TTarget.Create;
end;

destructor TPotentialAction.Destroy;
begin
  FQueryInput.Free;
  // FTarget.Free;
  inherited;
end;

{ TGraph }

constructor TGraph.Create;
begin
  inherited;
  FIsPartOf := TIsPartOf.Create;
  FMainEntityOfPage := TMainEntityOfPage.Create;
  FAuthor := TAuthor.Create;
  FPrimaryImageOfPage := TPrimaryImageOfPage.Create;
  FPublisher := TPublisher.Create;
  FLogo := TLogo.Create;
  FImage := TImage.Create;
end;

destructor TGraph.Destroy;
begin
  FIsPartOf.Free;
  FMainEntityOfPage.Free;
  FAuthor.Free;
  FPrimaryImageOfPage.Free;
  FPublisher.Free;
  FLogo.Free;
  FImage.Free;
  GetArticleSection.Free;
  GetKeywords.Free;
  GetPotentialAction.Free;
  GetSameAs.Free;
  inherited;
end;

function TGraph.GetArticleSection: TList<string>;
begin
  Result := List<string>(FArticleSection, FArticleSectionArray);
end;

function TGraph.GetKeywords: TList<string>;
begin
  Result := List<string>(FKeywords, FKeywordsArray);
end;

function TGraph.GetPotentialAction: TObjectList<TPotentialAction>;
begin
  Result := ObjectList<TPotentialAction>(FPotentialAction, FPotentialActionArray);
end;

function TGraph.GetSameAs: TList<string>;
begin
  Result := List<string>(FSameAs, FSameAsArray);
end;

function TGraph.GetAsJson: string;
begin
  RefreshArray<string>(FArticleSection, FArticleSectionArray);
  RefreshArray<string>(FKeywords, FKeywordsArray);
  RefreshArray<TPotentialAction>(FPotentialAction, FPotentialActionArray);
  RefreshArray<string>(FSameAs, FSameAsArray);
  Result := inherited;
end;

{ TSchema }

destructor TSchema.Destroy;
begin
  GetGraph.Free;
  inherited;
end;

function TSchema.GetGraph: TObjectList<TGraph>;
begin
  Result := ObjectList<TGraph>(FGraph, FGraphArray);
end;

function TSchema.GetAsJson: string;
begin
  RefreshArray<TGraph>(FGraph, FGraphArray);
  Result := inherited;
end;

{ TYoastHeadJson }

constructor TYoastHeadJson.Create;
begin
  inherited;
  FRobots := TRobots.Create;
  FTwitterMisc := TTwitterMisc.Create;
  FSchema := TSchema.Create;
end;

destructor TYoastHeadJson.Destroy;
begin
  FRobots.Free;
  FTwitterMisc.Free;
  FSchema.Free;
  GetOgImage.Free;
  inherited;
end;

function TYoastHeadJson.GetOgImage: TObjectList<TOgImage>;
begin
  Result := ObjectList<TOgImage>(FOgImage, FOgImageArray);
end;

function TYoastHeadJson.GetAsJson: string;
begin
  RefreshArray<TOgImage>(FOgImage, FOgImageArray);
  Result := inherited;
end;

{ TItems }

constructor TItems.Create;
begin
  inherited;
  FGuId := TGuId.Create;
  FTitle := TTitle.Create;
  FContent := TContent.Create;
  FExcerpt := TExcerpt.Create;
  FMeta := TMeta.Create;
  FYoastHeadJson := TYoastHeadJson.Create;
  FLinks := TLinks.Create;
end;

destructor TItems.Destroy;
begin
  FGuId.Free;
  FTitle.Free;
  FContent.Free;
  FExcerpt.Free;
  FMeta.Free;
  FYoastHeadJson.Free;
  FLinks.Free;
  GetCategories.Free;
  GetTags.Free;
  GetClassList.Free;
  GetJetpackRelatedPosts.Free;
  inherited;
end;

function TItems.GetCategories: TList<Integer>;
begin
  Result := List<Integer>(FCategories, FCategoriesArray);
end;

function TItems.GetClassList: TList<string>;
begin
  Result := List<string>(FClassList, FClassListArray);
end;

function TItems.GetJetpackRelatedPosts: TObjectList<TJetpackRelatedPosts>;
begin
  Result := ObjectList<TJetpackRelatedPosts>(FJetpackRelatedPosts, FJetpackRelatedPostsArray);
end;

function TItems.GetTags: TList<Integer>;
begin
  Result := List<Integer>(FTags, FTagsArray);
end;

function TItems.GetAsJson: string;
begin
  RefreshArray<Integer>(FCategories, FCategoriesArray);
  RefreshArray<string>(FClassList, FClassListArray);
  RefreshArray<TJetpackRelatedPosts>(FJetpackRelatedPosts, FJetpackRelatedPostsArray);
  RefreshArray<Integer>(FTags, FTagsArray);
  Result := inherited;
end;

{ TWPJPostsRoot }

destructor TWPJPostsRoot.Destroy;
begin
  GetItems.Free;
  inherited;
end;

function TWPJPostsRoot.GetItems: TObjectList<TItems>;
begin
  Result := ObjectList<TItems>(FItems, FItemsArray);
end;

function TWPJPostsRoot.GetAsJson: string;
begin
  RefreshArray<TItems>(FItems, FItemsArray);
  Result := inherited;
end;

end.
