unit Janua.Html.Impl;

interface

{$I JANUACORE.INC}

uses
  System.SysUtils, System.Classes, Janua.Orm.Intf, System.RTTI,
  // Spring4D
  System.Generics.Collections, // used for TPair component
  // Spring.Collections,
  // Janua Core Librarie
  Janua.Core.Types, Janua.Html.Types,
  Janua.Http.Types, Janua.Html.Intf, Spring.Collections;

type
  TJanuaHtmlObject = class(TInterfacedObject, IJanuaHtmlObject)
  strict private
    FLevel: Integer;
    FTag: string;
    FTitle: string;
    FId: string;
    FOpenTagClass: TFuncOfCssClass;
    FStyle: TJanuaCss;
    FAutoClose: boolean;
    FTerminateSlash: boolean;
    FText: string;
    FNewLine: boolean;
    FCommentBeforeInLine: string;
    FCommentBefore: string;
    FCommentAfterInLine: string;
    FCommentAfter: string;
    FInlined: boolean;
    FHidden: boolean;
    FItemIndex: Integer;
    FHtmlHelper: IHtmlHelper;
    FAccessKey: char;
    FUID: string;
    FShowEnclosingTag: boolean;
    FHide: boolean;
  private
    function GetLevel: Integer;
    function GetTitle: string;
    function GetId: string;
    function GetOpenTagClass: TFuncOfCssClass;
    function GetStyle: TJanuaCss;
    function GetAutoClose: boolean;
    function GetTerminateSlash: boolean;
    function GetNewLine: boolean;
    function GetCommentBeforeInLine: string;
    function GetCommentBefore: string;
    function GetCommentAfterInLine: string;
    function GetCommentAfter: string;
    function GetInlined: boolean;
    function GetHidden: boolean;
    function GetItemIndex: Integer;
    function GetHtmlHelper: IHtmlHelper;
    function GetAccessKey: char;
    function GetUID: string;
    function GetShowEnclosingTag: boolean;
    function GetHide: boolean;
    function GetSelectedItem: IJanuaHtmlObject;
    function GetOnClick: string;
  protected
    procedure SetStyle(const Value: TJanuaCss);
    procedure SetAutoClose(const Value: boolean);
    procedure SetTerminateSlash(const Value: boolean);
    procedure SetText(const Value: string); virtual;
    function GetText: string; virtual;
  strict protected
    procedure SetId(const Value: string);
    procedure SetOpenTagClass(const Value: TFuncOfCssClass);
    procedure SetTag(const Value: string);
    procedure SetIndent(const Value: Integer); virtual;
  private
    FOnclick: string;
    procedure SetNewLine(const Value: boolean);
    procedure SetCommentAfter(const Value: string);
    procedure SetCommentAfterInLine(const Value: string);
    procedure SetCommentBefore(const Value: string);
    procedure SetCommentBeforeInLine(const Value: string);
    procedure SetInlined(const Value: boolean);
    procedure SetHidden(const Value: boolean);
    procedure SetTitle(const Value: string);
    procedure SetSelectedItem(const Value: IJanuaHtmlObject);
    procedure SeTCustomHtmlHelper(const Value: IHtmlHelper);
    procedure SetAccessKey(const Value: char);
    procedure SetUID(const Value: string);
    procedure SetShowEnclosingTag(const Value: boolean);
    procedure SetHide(const Value: boolean);
    function GetFTag: string;
    procedure SetOnclick(const Value: string);
    function GetItems: IList<IJanuaHtmlObject>;
    procedure SetItems(const Value: IList<IJanuaHtmlObject>);
  strict protected
    FList: IList<IJanuaHtmlObject>;
    FParams: IDictionary<string, string>;
    FClasses: IList<string>;
    FStyles: IDictionary<THtmlStyle, string>;
    function HtmlComment(aComment: string; aInline: boolean): string; inline;
    function GetTag: string; Virtual;
    function SIndent(aIndent: Integer = 0): string;
    function OpenTag: string; virtual;
    function BodyBeforeText: string; virtual;
    // Here goes the Html Code and overriding modification to Text ................
    function BodyText: string; virtual;
    // Here goes the Html Code AFTER the Internal Body Text .......................
    function BodyAfterText: string; virtual;
    function CloseTag: string; virtual;
    function GetParamCount: Integer;
  public
    constructor Create(aHelper: IHtmlHelper); overload; virtual;
  public // Text And Script Managemnt
    procedure SetLineText(aText: string);
    procedure StartLineText(aText: string);
    procedure AddLineText(aText: string);
    procedure EndLineText(aText: string);
  public
    procedure Prepare; virtual;
    procedure Clear;
    constructor Create(aHelper: IHtmlHelper; aTag: string; aClasses: TArray<string>); overload; virtual;
    constructor Create(aHelper: IHtmlHelper; aTag: string; aAutoCloseTag: boolean = False); overload; virtual;
    constructor Create(aHelper: IHtmlHelper; aTag: string; aParams: TJanuaHtmlParams;
      aAutoCloseTag: boolean = False; aTerminateSlash: boolean = False); overload; virtual;
    constructor Create(aHelper: IHtmlHelper; const aTag, aValue: string; aNewLine: boolean = False);
      overload; virtual;
    constructor Create(aHelper: IHtmlHelper; const aTag: string; aStrings: TStrings;
      aNewLine: boolean = True); overload; virtual;
    constructor Create(aHelper: IHtmlHelper; const aTag, aValue: string; aParams: TJanuaHtmlParams;
      aNewLine: boolean = False); overload; virtual;
  public
    procedure AddParam(const aKey, aValue: string);
    procedure DelParam(const aKey: string);
    function GetParamValue(const aKey: string): string;
    procedure AddStyle(const aKey: THtmlStyle; aValue: string);
    procedure AddStyles(const aStyles: THtmlStyles);
    procedure DelStyle(const aKey: THtmlStyle);
    procedure AddClass(const aClassName: string);
    procedure AddClasses(const aClases: TArray<string>);
    procedure DelClass(const aClassName: string);
    procedure DelClasses(const aClasses: TArray<string>);
    function AsHtml: string; Virtual;
    function Count(bRecursive: boolean = False): Integer;
    procedure AddOrReplaceSimpleTag(const aTag, aValue: string; aNewLine: boolean = False); overload; virtual;
    procedure AddOrReplaceSimpleTag(const aTag, aValue: string; aParams: TJanuaHtmlParams;
      aNewLine: boolean = False); overload; virtual;
    function AddSimpleTag(const aTag: string; const aValue: string = ''; const aNewLine: boolean = False;
      aClasses: TArray<string> = []): IJanuaHtmlObject; overload; virtual;
    function AddSimpleTag(const aTag, aValue: string; aParams: TJanuaHtmlParams; aNewLine: boolean = False)
      : IJanuaHtmlObject; overload; virtual;
  public // Object Management
    function FindByUID(aUID: string): boolean;
    function FindByTag(aTag: string): boolean;
    function ClassCount: Integer;
    function Add(aObject: IJanuaHtmlObject): Integer;
    procedure AddOrReplace(aObject: IJanuaHtmlObject);
    procedure Insert(aPos: Integer; aObject: IJanuaHtmlObject);
    procedure Delete(aPos: Integer);
    function GetItem(aID: Integer): IJanuaHtmlObject;
    // Replaced TStringBuilder with its Interface version IStringBuilder (compatible with lazarus).
    procedure AppendHtml(aBuilder: IStringBuilder); virtual;
  public
    property Style: TJanuaCss read GetStyle write SetStyle;
    property AutoClose: boolean read GetAutoClose write SetAutoClose;
    property TerminateSlash: boolean read GetTerminateSlash write SetTerminateSlash;
    property Text: string read GetText write SetText;
    property NewLine: boolean read GetNewLine write SetNewLine;
    property Inlined: boolean read GetInlined write SetInlined;
    property CommentBefore: string read GetCommentBefore write SetCommentBefore;
    property CommentAfter: string read GetCommentAfter write SetCommentAfter;
    property CommentBeforeInLine: string read GetCommentBeforeInLine write SetCommentBeforeInLine;
    property CommentAfterInLine: string read GetCommentAfterInLine write SetCommentAfterInLine;
    // this adds the attribute 'hidden' to the Object .......................................
    property Hidden: boolean read GetHidden write SetHidden;
    property Title: string read GetTitle write SetTitle;
    property SelectedItem: IJanuaHtmlObject read GetSelectedItem write SetSelectedItem;
    property ItemIndex: Integer read GetItemIndex;
    property ParamCount: Integer read GetParamCount;
    property HtmlHelper: IHtmlHelper read GetHtmlHelper write SeTCustomHtmlHelper;
    property AccessKey: char read GetAccessKey write SetAccessKey;
    property UID: string read GetUID write SetUID;
    // if Set to 'False' it hides teh enclosing tags and print out only its content
    property ShowEnclosingTag: boolean read GetShowEnclosingTag write SetShowEnclosingTag;
    // if set to True it hides all the object and its content so set the AsHtml Property to ''
    property Hide: boolean read GetHide write SetHide;
    property Level: Integer read GetLevel write SetIndent;
    property tag: string read GetFTag write SetTag;
    property OpenTagClass: TFuncOfCssClass read GetOpenTagClass write SetOpenTagClass;
    property Id: string read GetId write SetId;
    property Onclick: string read GetOnClick write SetOnclick;
    property Items: IList<IJanuaHtmlObject> read GetItems write SetItems;
  end;

  THtmlHelper = class(TInterfacedObject, IHtmlHelper)
  public
    function FactoryCreate(aTag: string; aAutoCloseTag: boolean = False): IJanuaHtmlObject; overload;
    function FactoryCreate(aTag: string; aParams: TJanuaHtmlParams; aAutoCloseTag: boolean = False;
      aTerminateSlash: boolean = False): IJanuaHtmlObject; overload;
    function FactoryCreate(const aTag, aValue: string; aNewLine: boolean = False): IJanuaHtmlObject; overload;
    function FactoryCreate(const aTag: string; aStrings: TStrings; aNewLine: boolean = True)
      : IJanuaHtmlObject; overload;
    function FactoryCreate(const aTag, aValue: string; aParams: TJanuaHtmlParams; aNewLine: boolean = False)
      : IJanuaHtmlObject; overload;
    function FactoryCreate(aTag: string; aClasses: TArray<string>): IJanuaHtmlObject; overload;
    function FactoryInput(aInputType: THtmlInputType; aPlaceHolder, aName: string): IJanuaHtmlObject;
  private
    FTheme: string;
    function GetTheme: string;
    procedure SetTheme(Value: string);
  public
    property Theme: string read GetTheme write SetTheme;
  end;

  THtmlmenuItem = class(TInterfacedObject, IHtmlmenuItem)
  strict private
    FIcon: string;
    FText: string;
    FUrl: string;
    FSelected: boolean;
  private
    function GetIcon: string;
    function GetText: string;
    function GetUrl: string;
    function GetSelected: boolean;
    procedure SetIcon(const Value: string);
    procedure SetText(const Value: string);
    procedure SetUrl(const Value: string);
    procedure SetSelected(const Value: boolean);
  public
    constructor Create(aIcon, aText, aUrl: string; aSelected: boolean = False); overload; virtual;
  public
    property Icon: string read GetIcon write SetIcon;
    property Text: string read GetText write SetText;
    property Url: string read GetUrl write SetUrl;
    property Selected: boolean read GetSelected write SetSelected;
  end;

  TJanuaCssObject = class(TInterfacedObject, IJanuaCssObject)
  private
    FClasses: IList<string>;
    FTags: IList<string>;
    FStyles: IDictionary<THtmlStyle, string>;
    procedure SetTags(const Value: IList<string>);
  protected
    function GetClasses: IList<string>;
    function GetTags: IList<string>;
    function GetStyles: IDictionary<THtmlStyle, string>;
    procedure SetClasses(const Value: IList<string>);
    procedure SetStyles(const Value: IDictionary<THtmlStyle, string>);
  public
    procedure DelStyle(aStyle: THtmlStyle);
    procedure AddStyle(aStyle: THtmlStyle; aValue: string);
    procedure AddClass(aClass: string);
    procedure AddClasses(aClasses: TArray<string>);
    procedure AddTags(aTags: TArray<string>);
    procedure DelClass(aClass: string);
  public
    constructor Create; overload;
    /// <summary>  A css Object can be create with Tags   </summary>
    /// <param name="aClasses">Array of string classes</param>
    /// <param name="aTags">Array of String 'tags'</param>
    constructor Create(aClasses, aTags: TArray<string>); overload;
    function Generate: string;
  end;

  TJanuaCssMedia = class(TInterfacedObject, IJanuaCssMedia)
  private
    FCss: IList<IJanuaCssObject>;
    FMediaType: TCssMediaType;
    FMediaString: string;
    FMediaUse: TCssMediaTypeUse;
    FFeatures: IList<TCssMediaFeatureRecord>;
    FSelectedCss: IJanuaCssObject;
    procedure SetSelectedCss(const Value: IJanuaCssObject);
    function GetSelectedCss: IJanuaCssObject;
  strict protected
    function GetCss: IList<IJanuaCssObject>;
    function GetMediaType: TCssMediaType;
    function GetMediaString: string;
    function GetMediaUse: TCssMediaTypeUse;
    function GetFeatures: IList<TCssMediaFeatureRecord>;
    procedure SetCss(const Value: IList<IJanuaCssObject>);
    procedure SetFeatures(const Value: IList<TCssMediaFeatureRecord>);
    procedure SetMediaString(const Value: string);
    procedure SetMediaType(const Value: TCssMediaType);
    procedure SetMediaUse(const Value: TCssMediaTypeUse);
  public
    Procedure AddCss(aObject: IJanuaCssObject); overload;
    procedure AddFeature(aFeature: TCssMediaFeature; aValue: string);
    function AddCssByClasses(aClasses: TArray<string>): IJanuaCssObject;
    function AddCssByTags(aClasses: TArray<string>): IJanuaCssObject;
    function Generate: string;
    property Css: IList<IJanuaCssObject> read GetCss write SetCss;
    property Geteatures: IList<TCssMediaFeatureRecord> read GetFeatures write SetFeatures;
    property MediaType: TCssMediaType read GetMediaType write SetMediaType;
    property MediaUse: TCssMediaTypeUse read GetMediaUse write SetMediaUse;
    property MediaString: string read GetMediaString write SetMediaString;
    property SelectedCss: IJanuaCssObject read GetSelectedCss write SetSelectedCss;
  public
    constructor Create(aType: TCssMediaType; aUse: TCssMediaTypeUse = tuNone);
  end;

  TJanuaCssStyle = class(TJanuaHtmlObject, IJanuaCssStyle)
  private
    FMedias: IList<IJanuaCssMedia>;
    FCss: IList<IJanuaCssObject>;
    FSelectedCss: IJanuaCssObject;
    FSelectedMedia: IJanuaCssMedia;
    function GetSelectedCss: IJanuaCssObject;
    procedure SetSelectedCss(const Value: IJanuaCssObject);
  strict protected
    function GetSelectedMedia: IJanuaCssMedia;
    procedure SetSelectedMedia(const Value: IJanuaCssMedia);
    function GetMedias: IList<IJanuaCssMedia>;
    function GetCss: IList<IJanuaCssObject>;
    procedure SetCss(const Value: IList<IJanuaCssObject>);
    procedure SetMedias(const Value: IList<IJanuaCssMedia>);
  protected
    function GetText: string; override;
  public
    constructor Create(aHelper: IHtmlHelper); override;
    procedure AddCss(aObject: IJanuaCssObject);
    procedure AddMedia(aObject: IJanuaCssMedia);
    function AddCssByClasses(aClasses: TArray<string>): IJanuaCssObject;
    function AddCssByTags(aClasses: TArray<string>): IJanuaCssObject;
    function AddMediaByType(aType: TCssMediaType; aUse: TCssMediaTypeUse = tuNone): IJanuaCssMedia;
    function AddMediaByFeature(aType: TCssMediaType; aFeature: TCssMediaFeature; aValue: string)
      : IJanuaCssMedia;
  public
    property Medias: IList<IJanuaCssMedia> read GetMedias write SetMedias;
    property Css: IList<IJanuaCssObject> read GetCss write SetCss;
    property Text read GetText;
    property SelectedCss: IJanuaCssObject read GetSelectedCss write SetSelectedCss;
    property SelectedMedia: IJanuaCssMedia read GetSelectedMedia write SetSelectedMedia;
  end;

  THtmlMenuGroup = class(THtmlmenuItem, IHtmlmenuItem, IHtmlMenuGroup)
  strict private
    FItems: IList<IHtmlmenuItem>;
  private
    function GetItems: IList<IHtmlmenuItem>;
    procedure SetItems(const Value: IList<IHtmlmenuItem>);
  public
    constructor Create; overload;
    constructor Create(aIcon, aText, aUrl: string; aSelected: boolean = False); override;
    procedure AddItem(aIcon, aText, aUrl: string; aSelected: boolean = False); overload; virtual;
    procedure AddItem(aItem: IHtmlmenuItem); overload;
  public
    property Items: IList<IHtmlmenuItem> read GetItems write SetItems;
  end;

  THtmlMenu = class(TInterfacedObject, IHtmlMenu)
  strict private
    FItems: IList<IHtmlMenuGroup>;
    FItemIndex: Integer;
  private
    function GetItems: IList<IHtmlMenuGroup>;
    function GetItemIndex: Integer;
    function GetSelectedItem: IHtmlMenuGroup;
    procedure SetSelectedItem(const Value: IHtmlMenuGroup);
    procedure SetItems(const Value: IList<IHtmlMenuGroup>);
    procedure SetItemIndex(const Value: Integer);
  public
    Constructor Create; overload;
  public
    procedure AddGroup(aGroup: IHtmlMenuGroup);
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    property Items: IList<IHtmlMenuGroup> read GetItems write SetItems;
    property SelectedItem: IHtmlMenuGroup read GetSelectedItem write SetSelectedItem;
  end;

type
  TJanuaHtmlStyle = class(TJanuaHtmlObject, IJanuaHtmlObject, IJanuaStyles)
  strict private
    FStyles: TArray<TJanuaCss>;
  private
    function GetStyles: TArray<TJanuaCss>;
    procedure SetStyles(const Value: TArray<TJanuaCss>);
  protected
    function BodyText: string; override;
  public
    constructor Create(aHelper: IHtmlHelper); override;
    procedure AddStyle(aStyle: TJanuaCss);
  public
    property Styles: TArray<TJanuaCss> read GetStyles write SetStyles;
  end;

type
  TJanuaHtmlImage = class(TJanuaHtmlObject, IJanuaHtmlObject, IJanuaHtmlImage)
  public
    constructor Create(aHelper: IHtmlHelper); override;
  strict private
    FAlt: string;
    FSrc: string;
  private
    function GetAlt: string;
    function GetSrc: string;
    procedure SetAlt(const Value: string);
    procedure SetSrc(const Value: string);
  public
    property Alt: string read GetAlt write SetAlt;
    property Src: string read GetSrc write SetSrc;
  end;

  THtmlSelect = class(TJanuaHtmlObject, IJanuaHtmlObject, IHtmlSelect)
  private
  public
    constructor Create(aHelper: IHtmlHelper); override;
    function AddItem(aValue, aText: string; aSelected: boolean): IJanuaHtmlObject;
  end;

type
  TJanuaHtmlLink = class(TJanuaHtmlObject, IJanuaHtmlObject, IJanuaHtmlLink)
  strict private
    FLinkURL: string;
    FUrl: string;
    FMimeType: TJanuaMimeType;
    FIsCrossOrigin: boolean;
    FRelTypes: TJanuaLinkRelTypes;
    FUseAssetsUrl: boolean;
    FImage: IJanuaHtmlImage;
  private
    function GetLinkURL: string;
    function GetMimeType: TJanuaMimeType;
    function GetIsCrossOrigin: boolean;
    function GetRelTypes: TJanuaLinkRelTypes;
    function GetUseAssetsUrl: boolean;
    function GetImage: IJanuaHtmlImage;
    function GetHasImage: boolean;
    function GetRel: string;
    function GetUrl: string;
    // Setters
    procedure SetLinkURL(const Value: string);
    procedure SetUrl(const Value: string);
    procedure SetMimeType(const Value: TJanuaMimeType);
    procedure SetIsCrossOrigin(const Value: boolean);
    procedure SetRelTypes(const Value: TJanuaLinkRelTypes);
    procedure SetUseAssetsUrl(const Value: boolean);
    procedure SetHasImage(const Value: boolean);
    procedure SetImage(const Value: IJanuaHtmlImage);
  strict protected
    FImageIndex: Integer;
    FHasImage: boolean;
    procedure SetIndent(const Value: Integer); override;
    function BodyAfterText: string; override;
  public
    procedure Prepare; override;
    constructor Create(aHelper: IHtmlHelper); override;
    constructor Create(aHelper: IHtmlHelper; IsLink: boolean; aUrl, aLink: string; aRels: TJanuaLinkRelTypes;
      aCross: boolean = False); overload;
  public
    // indica se gli 'assets' (css, js, images ...) risiedono su una location separata (url)
    property UseAssetsUrl: boolean read GetUseAssetsUrl write SetUseAssetsUrl;
    // URL ? l'url del server che contiene la risorsa di riferimento..........................
    property Url: string read GetUrl write SetUrl;
    // Link Url ? l'url base della risorsa impiegata dalla pagina web generata................
    property LinkUrl: string read GetLinkURL write SetLinkURL;
    // Relazione tipo rel=....
    // MIME Type se specificato da Janua Core Types ..........................................
    property MimeType: TJanuaMimeType read GetMimeType write SetMimeType;
    // a Link to a resource (external resource) should be cross-origin .......................
    property IsCrossOrigin: boolean read GetIsCrossOrigin write SetIsCrossOrigin;
    // Relation Type icon, Author questa relazione ? OBBLIGATORIA !!!!!
    property RelTypes: TJanuaLinkRelTypes read GetRelTypes write SetRelTypes;
    // Image Management
    property HasImage: boolean read GetHasImage write SetHasImage;
    property Image: IJanuaHtmlImage read GetImage write SetImage;
  end;

type
  TJanuaHtmlScript = class(TJanuaHtmlObject, IJanuaHtmlObject)
  private
    FMimeType: TJanuaMimeType;
    FUrl: string;
    procedure SetMimeType(const Value: TJanuaMimeType);
    procedure SetUrl(Value: string);
  public
    constructor Create(aHelper: IHtmlHelper); override;
    constructor Create(aHelper: IHtmlHelper; aIsUrl: boolean; aUrl: string;
      aMimeType: TJanuaMimeType = TJanuaMimeType.jmtUnknown); overload;
  end;

type
  TJanuaHtmlForm = class(TJanuaHtmlObject, IJanuaHtmlObject, IJanuaHtmlForm)
  public
    constructor Create(aHelper: IHtmlHelper); override;
    function AddInput(aInputType: THtmlInputType; aPlaceHolder, aName: string): Integer; virtual;
  end;

type
  TJanuaCustomSection = class(TJanuaHtmlObject, IJanuaHtmlObject, IJanuaCustomSection)
  public
    procedure AddCssRef(aRef: string; aAssetsUrl: boolean = True; CrossOrigin: boolean = False);
    procedure AddScript(aScript: string; aMimeType: TJanuaMimeType = TJanuaMimeType.jmtUnknown);
    procedure AddScriptUrl(aScriptUrl: string; aMimeType: TJanuaMimeType = TJanuaMimeType.jmtUnknown);
  end;

type
  TJanuaCustomScriptSection = class(TJanuaHtmlObject, IJanuaHtmlObject)
  public
    constructor Create(aHelper: IHtmlHelper); override;
  end;

  // ************************* Table  *******************************************************

type
  THtmlTableCell = class(TJanuaHtmlObject, IJanuaHtmlObject, IHtmlTableCell)
  private
    FIsHeader: boolean;
    FHasLabel: boolean;
    Fcolspan: Integer;
    FIndex: Integer;
    Frowspan: Integer;
    FValue: string;
  protected
    function GetIsHeader: boolean;
    function GetHasLabel: boolean;
    function Getcolspan: Integer;
    function GetIndex: Integer;
    function Getrowspan: Integer;
    function GetValue: string;
    procedure Setcolspan(const aValue: Integer);
    procedure SetHasLabel(const aValue: boolean);
    procedure SetIndex(const aValue: Integer);
    procedure SetIsHeader(const aValue: boolean);
    procedure Setrowspan(const aValue: Integer);
    procedure SetValue(const aValue: string);
  public
    constructor Create(aHelper: IHtmlHelper); override;
    constructor Create(aHelper: IHtmlHelper; aValue: string; colspan, rowspan: Integer; Onclick: string;
      aIsHeader: boolean); overload;
  public
    property CellValue: string read GetValue write SetValue;
    property Index: Integer read GetIndex write SetIndex;
    property IsHeader: boolean read GetIsHeader write SetIsHeader;
    property HasLabel: boolean read GetHasLabel write SetHasLabel;
    property colspan: Integer read Getcolspan write Setcolspan;
    property rowspan: Integer read Getrowspan write Setrowspan;
  end;

  THtmlTableRow = class(TJanuaHtmlObject, IJanuaHtmlObject, IHtmlTableRow)
  private
    FIsHeader: boolean;
    FIsSortable: boolean;
  protected
    function GetIsHeader: boolean;
    function GetIsSortable: boolean;
    procedure SetIsHeader(const Value: boolean);
    procedure SetIsSortable(const Value: boolean);
  public
    constructor Create(aHelper: IHtmlHelper); override;
  public
    procedure AddCell(aCell: IHtmlTableCell);
    procedure AddValue(aField: Janua.Orm.Intf.IJanuaField); overload;
    procedure AddValue(aField: IJanuaField; colspan: Integer = 0; rowspan: Integer = 0;
      Onclick: string = ''); overload;
    procedure AddValue(aValue: Integer; colspan: Integer = 0; rowspan: Integer = 0;
      Onclick: string = ''); overload;
    procedure AddValue(aValue: Int64; colspan: Integer = 0; rowspan: Integer = 0;
      Onclick: string = ''); overload;
    procedure AddValue(aValue: smallint; colspan: Integer = 0; rowspan: Integer = 0;
      Onclick: string = ''); overload;
    procedure AddValue(aValue: string; colspan: Integer = 0; rowspan: Integer = 0;
      Onclick: string = ''); overload;
    procedure AddValue(aValue: TDateTime; colspan: Integer = 0; rowspan: Integer = 0;
      Onclick: string = ''); overload;
    procedure AddValue(aValue: Extended; colspan: Integer = 0; rowspan: Integer = 0;
      Onclick: string = ''); overload;
    procedure AddLink(aValue, aUrlLink: string; colspan: Integer = 0; rowspan: Integer = 0;
      Onclick: string = '');
    procedure AddImage(aValue, aUrlImage, aUrlLink: string; colspan: Integer = 0; rowspan: Integer = 0;
      Onclick: string = '');
  public
    property IsHeader: boolean read GetIsHeader write SetIsHeader;
    property IsSortable: boolean read GetIsSortable write SetIsSortable;
  End;

  THtmlTable = class(TJanuaHtmlObject, IJanuaHtmlObject, IHtmlTable)
  protected
    procedure AddRow(aRow: IHtmlTableRow);
  private
    FStriped: boolean;
    FHover: boolean;
    FHasHeader: boolean;
    FBordered: boolean;
    FBody: IJanuaHtmlObject;
    FFooter: IJanuaHtmlObject;
    FHasFooter: boolean;
    FHeader: IJanuaHtmlObject;
    FSortable: boolean;
    procedure SetHeaderSortable;
  protected
    function GetStriped: boolean;
    function GetHover: boolean;
    function GetHeader: IJanuaHtmlObject;
    function GetHasHeader: boolean;
    function GetBordered: boolean;
    function GetBody: IJanuaHtmlObject;
    function GetFooter: IJanuaHtmlObject;
    function GetHasFooter: boolean;
    procedure SetBordered(const Value: boolean);
    procedure SetHasHeader(const Value: boolean);
    procedure SetHeader(const Value: IJanuaHtmlObject);
    procedure SetHover(const Value: boolean);
    procedure SetStriped(const Value: boolean);
    procedure SetBody(const Value: IJanuaHtmlObject);
    procedure SetFooter(const Value: IJanuaHtmlObject);
    procedure SetHasFooter(const Value: boolean);
    function GetSortable: boolean;
    procedure SetSortable(const Value: boolean);
  public
    constructor Create(aHelper: IHtmlHelper); override;
    procedure SetupSortable(aID: string);
  public
    property Header: IJanuaHtmlObject read GetHeader write SetHeader;
    property HasHeader: boolean read GetHasHeader write SetHasHeader;
    property Body: IJanuaHtmlObject read FBody write SetBody;
    property Footer: IJanuaHtmlObject read FFooter write SetFooter;
    property HasFooter: boolean read FHasFooter write SetHasFooter;
    property Bordered: boolean read GetBordered write SetBordered;
    property Striped: boolean read GetStriped write SetStriped;
    property Hover: boolean read GetHover write SetHover;
    property Sortable: boolean read GetSortable write SetSortable;
  End;

type
  TJanuaHeadSection = class(TJanuaCustomSection, IJanuaHtmlObject, IJanuaCustomSection, IJanuaHeadSection)
  strict private
    Fcharset: string;
    // protected
    // function BodyText: string;
  public
    procedure AddMeta(const aParams: TJanuaHtmlParams);
    constructor Create(aHelper: IHtmlHelper); override;
  private
    FPageTitle: IJanuaHtmlObject;
    FPageDescription: IJanuaHtmlObject;
    FCssStyle: IJanuaCssStyle;
  strict protected
    function BodyAfterText: string; override;
    procedure SetIndent(const Value: Integer); override;
  protected
    function GetCharset: string;
    function GEtPageTitle: IJanuaHtmlObject;
    function GetPageDescription: IJanuaHtmlObject;
    procedure SetPageTitle(const Value: IJanuaHtmlObject);
    procedure SetPageDescription(const Value: IJanuaHtmlObject);
    procedure Setcharset(const Value: string);
    procedure SetCssStyle(const Value: IJanuaCssStyle);
    function GetCssStyle: IJanuaCssStyle;
  public
    property charset: string read GetCharset write Setcharset;
    property PageTitle: IJanuaHtmlObject read GEtPageTitle write SetPageTitle;
    property PageDescription: IJanuaHtmlObject read GetPageDescription write SetPageDescription;
    property CssStyle: IJanuaCssStyle read GetCssStyle write SetCssStyle;
  end;

type
  TJanuaFooter = class(TJanuaHtmlObject, IJanuaHtmlObject, IJanuaFooter)
  strict protected
    Fbgcolor: string;
    FColor: string;
  private
    function GetColor: string;
  private
    function Getbgcolor: string;
  protected
    procedure Setbgcolor(const Value: string); virtual;
    procedure SetColor(const Value: string); virtual;
  public
    constructor Create(aHelper: IHtmlHelper); override;
    constructor Create(aHelper: IHtmlHelper; aClasses: TArray<string>); overload; virtual;
  public
    property Color: string read GetColor write SetColor;
    property bgcolor: string read Getbgcolor write Setbgcolor;
  end;

type
  TJanuaBody = class(TJanuaHtmlObject, IJanuaHtmlObject, IJanuaBody)
  strict private
    Fbgcolor: string;
    FColor: string;
  private
    function GetColor: string;
    procedure SetColor(const Value: string);
  public
    property Color: string read GetColor write SetColor;
  private
    function Getbgcolor: string;
  protected
    procedure Setbgcolor(const Value: string); virtual;
  public
    constructor Create(aHelper: IHtmlHelper); override;
    constructor Create(aHelper: IHtmlHelper; aClasses: TArray<string>); overload; virtual;
  public
    procedure AddMenu(aMenu: IJanuaHtmlObject); virtual;
    property bgcolor: string read Getbgcolor write Setbgcolor;
  end;

type
  TJanuaCustomHtmlPage = class(TJanuaHtmlObject, IJanuaHtmlObject)
  strict protected
    FHeadSection: IJanuaHeadSection;
  private
    function GetHeadSection: IJanuaHeadSection;
    procedure SetHeadSection(const Value: IJanuaHeadSection);
  private
    procedure SetAssetsUrl(const Value: string);
    function GetAssetsUrl: string;
  strict private
    FLanguage: TJanuaLanguage;
    FPageDescription: string;
    FPageName: string;
    FViewPort: string;
  protected
    FBody: IJanuaBody;
  private
    // Getters
    function GetLanguage: TJanuaLanguage;
    function GEtPageTitle: string;
    function GetPageDescription: string;
    function GetPageName: string;
    function GetViewPort: string;
    function GetBody: IJanuaBody;
    // Setters
    procedure SetLanguage(const Value: TJanuaLanguage);
    procedure SetPageTitle(const Value: string);
    procedure SetPageDescription(const Value: string);
    procedure SetPageName(const Value: string);
    procedure SetViewPort(const Value: string);
    procedure SetBody(const Value: IJanuaBody);
  protected
    function OpenTag: string; override;
  public
    property HeadSection: IJanuaHeadSection read GetHeadSection write SetHeadSection;
    property Language: TJanuaLanguage read GetLanguage write SetLanguage;
    property PageTitle: string read GEtPageTitle write SetPageTitle;
    property PageName: string read GetPageName write SetPageName;
    property PageDescription: string read GetPageDescription write SetPageDescription;
    property ViewPort: string read GetViewPort write SetViewPort;
    property Body: IJanuaBody read GetBody write SetBody;
    property AssetsUrl: string read GetAssetsUrl write SetAssetsUrl;

  public
    constructor Create(aHelper: IHtmlHelper); override;
  end;

type
  TJanuaHtmlPage = class(TJanuaCustomHtmlPage, IJanuaHtmlPage)
  protected
    FBackGroundColor: string;
    function GetBackGroundColor: string;
    procedure SetBackGroundColor(const Value: string); Virtual;
  public
    property BackGroundColor: string read GetBackGroundColor write SetBackGroundColor;
  public
    // constructor Create(aHelper: IHtmlHelper); override;
    constructor Create(aHelper: IHtmlHelper; aSection: IJanuaHeadSection; aBody: IJanuaBody);
      overload; virtual;
  end;

type
  TJanuaHtmlFactory = class
    class function JsSort(aTableName: string; aLevel: Integer): IJanuaHtmlObject;
    // Newly Added Functions for All Objects.........................................................
    class function CreateHtmlImage(aSrc, aAlt: string): IJanuaHtmlObject;
    class function CreateHeadSection: IJanuaHeadSection;
    class function CreateBody: IJanuaBody;
    class function CreateScriptAsScript(aHelper: IHtmlHelper; aUrl: string; aMimeType: TJanuaMimeType)
      : IJanuaHtmlObject;
    class function CreateScriptAsUrl(aHelper: IHtmlHelper; aUrl: string; aMimeType: TJanuaMimeType)
      : IJanuaHtmlObject;
    class function CreatePage: IJanuaHtmlPage;
    class function CreateForm: IJanuaHtmlObject;
    class function CreateSelect(const aName: string; aRecordset: IJanuaRecordSet;
      aValueField, aTextField: IJanuaField; aSelectedValue: TValue): IHtmlSelect;
    class function CreateObject(aTag, aText: string; aClasses: TArray<string>; aNewLine: boolean = True)
      : IJanuaHtmlObject;
  end;

function TagClass(x: IList<string>): string; inline;

var
  JanuaHtmlHelper: IHtmlHelper;

implementation

uses
  System.StrUtils, Janua.Core.Functions, System.Math, Spring;

function TagClass(x: IList<string>): string;
var
  i: Integer;
begin
  if x.Count > 0 then
    for i := 0 to x.Count - 1 do
      Result := Result + IfThen(i = 0, x[i], ' ' + x[i]);
end;

{ TJanuaHtmlObject }

function TJanuaHtmlObject.Add(aObject: IJanuaHtmlObject): Integer;
begin
  Guard.CheckNotNull(aObject, 'TJanuaHtmlObject.Add Object is Null');
  // Guard.CheckFalse(aObject.tag = '', 'TJanuaHtmlObject.Add Object tag is Null');
  // Imposto il livello di indentazione dell'oggetto a quello del parent + 1
  aObject.Level := self.FLevel + IfThen(self.ShowEnclosingTag, 1, 0);
  // Lo aggiungo alla Object List
  FList.Add(aObject);
  // Imposto ItemIndex per potere ritornare il 'selected Item';
  self.FItemIndex := self.FList.Count - 1;
  Result := self.FItemIndex;
end;

procedure TJanuaHtmlObject.AddClass(const aClassName: string);
begin
  //
  if not self.FClasses.Contains(aClassName.ToLower) then
    FClasses.Add(aClassName.ToLower)
end;

procedure TJanuaHtmlObject.AddClasses(const aClases: TArray<string>);
var
  s: string;
begin
  for s in aClases do
    self.AddClass(s);

end;

procedure TJanuaHtmlObject.AddLineText(aText: string);
begin
  if self.FText <> '' then
    self.FText := self.FText + sLineBreak;
  self.FText := self.FText + aText;
end;

procedure TJanuaHtmlObject.AddOrReplace(aObject: IJanuaHtmlObject);
var
  i, j, k: Integer;
  tmpList: IList<Integer>;
begin
  k := 0;

  if Assigned(aObject) then
  begin
    aObject.OpenTagClass := OpenTagClass;
    j := 0;
    if self.FList.Count > 0 then
    begin
      tmpList := TCollections.CreateList<Integer>;
      for i := 0 to FList.Count - 1 do
        if FList[i].tag = aObject.tag then
        begin
          Inc(j);
          k := i;
          tmpList.Add(i)
        end;

      if (j > 1) or (aObject.Id <> '') then
      begin
        j := 0;
        if tmpList.Count > 0 then
          for i in tmpList do
            if (FList[i].tag = aObject.tag) then
            begin
              Inc(j);
              k := i;
            end;
      end;
    end;

    Assert(j <= 1, 'TJanuaHtmlObject.AddOrReplace more than 1 tag found');

    if j = 0 then
      FList.Add(aObject)
    else if j = 1 then
      FList[k] := aObject
  end;
end;

procedure TJanuaHtmlObject.AddOrReplaceSimpleTag(const aTag, aValue: string; aParams: TJanuaHtmlParams;
  aNewLine: boolean);
begin
  self.AddOrReplace(self.FHtmlHelper.FactoryCreate(aTag, aValue, aParams, aNewLine));
end;

procedure TJanuaHtmlObject.AddOrReplaceSimpleTag(const aTag, aValue: string; aNewLine: boolean);
begin
  AddOrReplace(self.FHtmlHelper.FactoryCreate(aTag, aValue, aNewLine));
end;

procedure TJanuaHtmlObject.AddParam(const aKey, aValue: string);
begin
  if self.FParams.ContainsKey((aKey.ToLower)) then
    FParams.Items[aKey.ToLower] := aValue
  else
    FParams.Add(aKey.ToLower, aValue);
end;

function TJanuaHtmlObject.AddSimpleTag(const aTag: string; const aValue: string; const aNewLine: boolean;
  aClasses: TArray<string>): IJanuaHtmlObject;
begin
  Result := FHtmlHelper.FactoryCreate(aTag, aValue, aNewLine);
  if Length(aClasses) > 0 then
    Result.AddClasses(aClasses);
  self.Add(Result);
end;

function TJanuaHtmlObject.AddSimpleTag(const aTag, aValue: string; aParams: TJanuaHtmlParams;
  aNewLine: boolean): IJanuaHtmlObject;
begin
  Result := FHtmlHelper.FactoryCreate(aTag, aValue, aParams, aNewLine);
  self.Add(Result);
end;

procedure TJanuaHtmlObject.AddStyle(const aKey: THtmlStyle; aValue: string);
begin
  if self.FStyles.ContainsKey((aKey)) then
    FStyles.Items[aKey] := aValue
  else
    FStyles.Add(aKey, aValue);
end;

procedure TJanuaHtmlObject.AddStyles(const aStyles: THtmlStyles);
var
  a: THmtlStyleRecord;
begin
  for a in aStyles do
    self.AddStyle(a.k, a.V);

end;

procedure TJanuaHtmlObject.AppendHtml(aBuilder: IStringBuilder);
var
  s: string;
  i: Integer;
  c: char;
  function Addline: string;
  begin
    if (Length(s) > 0) then
      c := s[Length(s)]
    else
      c := ' ';

    Result := IfThen(c = #10, '', sLineBreak);
  end;

begin
  Guard.CheckNotNull(aBuilder, 'TJanuaHtmlObject.AppendHtml Builder is nil');
  s := '';

  if not self.FHide then
  begin
    if self.CommentBefore <> '' then
      s := s + HtmlComment(self.CommentBefore, True);

    if self.CommentBeforeInLine <> '' then
      s := s + HtmlComment(self.CommentBeforeInLine, False);

    if FShowEnclosingTag then
      s := s + OpenTag + IfThen(NewLine or (FAutoClose and not Inlined), sLineBreak, '');

    // Un elemento 'autoclose non contiene sotto-elementi --------------------------------------------
    if not FAutoClose then
    begin
      if self.BodyBeforeText > '' then
        s := s + (BodyBeforeText + IfThen(self.NewLine, sLineBreak, ''));

      if BodyText > '' then
        s := s + BodyText;

      aBuilder.Append(s);

      s := '';

      if FList.Count > 0 then
        for i := 0 to FList.Count - 1 do
          (FList[i]).AppendHtml(aBuilder);

      if BodyAfterText > '' then
      begin
        s := s + BodyAfterText;
        s := s + IfThen(NewLine, Addline, '');
      end;
    end;

    if FShowEnclosingTag and (not FAutoClose) then
      s := s + CloseTag;

    s := s + IfThen(not Inlined and not FAutoClose and FShowEnclosingTag, Addline, '');

    if self.FCommentAfter <> '' then
      s := s + HtmlComment(CommentAfter, False) + sLineBreak;
    aBuilder.Append(s)
  end;
end;

function TJanuaHtmlObject.BodyAfterText: string;
begin
  Result := '';
end;

function TJanuaHtmlObject.BodyBeforeText: string;
begin
  Result := '';
end;

function TJanuaHtmlObject.BodyText: string;
var
  i: Integer;
begin

  {
    Result := '';
    if Text.Count = 1 then
    Result := Result + IfThen(NewLine, SIndent(1)) + Text[0] + IfThen(NewLine, sLineBreak, '')
    else if Text.Count > 1 then
    for i := 0 to Pred(Text.Count) do
    Result := Result + SIndent(1) + Text[i] + sLineBreak;
  }
  Result := IfThen(GetText = '', '', IfThen(NewLine, SIndent(1)) + GetText + IfThen(NewLine, sLineBreak, ''))
  // Result :=  Result + SIndent(1) + Text + sLineBreak;// self.Text
end;

function TJanuaHtmlObject.ClassCount: Integer;
begin
  Result := self.FClasses.Count;
end;

procedure TJanuaHtmlObject.Clear;
// var
// i: integer;
begin
  {
    if FList.Count > 0 then
    begin
    for i := 0 to self.FList.Count - 1 do
    if Assigned(self.FList[i]) then
    self.FList[i].Free;
    self.FList.Clear;
    end;
  }
  // Disabilitata
end;

function TJanuaHtmlObject.CloseTag: string;
begin
  Result := IfThen(NewLine, SIndent, '') + '</' + self.FTag + '>';
end;

function TJanuaHtmlObject.Count(bRecursive: boolean = False): Integer;
var
  i: Integer;
begin
  Result := self.FList.Count;
  if bRecursive then
    for i := 0 to Pred(FList.Count) do
      Inc(Result, self.FList[i].Count);

end;

procedure TJanuaHtmlObject.DelClass(const aClassName: string);
var
  i: Integer;
begin
  i := FClasses.IndexOf(aClassName);
  if i > -1 then
    self.FClasses.Delete(i);
end;

procedure TJanuaHtmlObject.DelClasses(const aClasses: TArray<string>);
var
  s: string;
begin
  for s in aClasses do
    DelClass(s);

end;

procedure TJanuaHtmlObject.Delete(aPos: Integer);
begin
  self.FList.Delete(aPos);
end;

procedure TJanuaHtmlObject.DelParam(const aKey: string);
begin
  if self.FParams.ContainsKey(aKey.ToLower) then
    FParams.Remove(aKey.ToLower);
end;

procedure TJanuaHtmlObject.DelStyle(const aKey: THtmlStyle);
begin
  if self.FStyles.ContainsKey(aKey) then
    FStyles.Remove(aKey);
end;

procedure TJanuaHtmlObject.EndLineText(aText: string);
begin
  self.Text := self.Text + (aText)
end;

function TJanuaHtmlObject.FindByTag(aTag: string): boolean;
var
  i: Integer;
begin
  Result := False;
  if FList.Count > 0 then
    for i := 0 to FList.Count - 1 do
      if (FList[i]).tag = aTag.ToLower then
      begin
        self.FItemIndex := i;
        Exit(True)
      end;
end;

function TJanuaHtmlObject.FindByUID(aUID: string): boolean;
var
  i: Integer;
begin
  Result := False;
  if FList.Count > 0 then
    for i := 0 to FList.Count - 1 do
      if (FList[i]).UID = aUID then
      begin
        self.FItemIndex := i;
        Exit(True)
      end;

end;

function TJanuaHtmlObject.GetAccessKey: char;
begin
  Result := self.FAccessKey;
end;

function TJanuaHtmlObject.GetAutoClose: boolean;
begin
  Result := FAutoClose
end;

function TJanuaHtmlObject.GetCommentAfter: string;
begin
  Result := FCommentAfter
end;

function TJanuaHtmlObject.GetCommentAfterInLine: string;
begin
  Result := FCommentAfterInLine
end;

function TJanuaHtmlObject.GetCommentBefore: string;
begin
  Result := FCommentBefore
end;

function TJanuaHtmlObject.GetCommentBeforeInLine: string;
begin
  Result := FCommentBeforeInLine
end;

function TJanuaHtmlObject.GetFTag: string;
begin
  Result := self.FTag
end;

function TJanuaHtmlObject.GetHidden: boolean;
begin
  Result := FHidden
end;

function TJanuaHtmlObject.GetHide: boolean;
begin
  Result := FHide
end;

function TJanuaHtmlObject.GetHtmlHelper: IHtmlHelper;
begin
  Result := FHtmlHelper
end;

function TJanuaHtmlObject.GetId: string;
begin
  Result := FId
end;

function TJanuaHtmlObject.GetInlined: boolean;
begin
  Result := FInlined
end;

function TJanuaHtmlObject.GetItem(aID: Integer): IJanuaHtmlObject;
begin
  Result := nil;
  Guard.CheckRangeInclusive(aID, 0, Pred(FList.Count));
  Result := self.FList[aID]

end;

function TJanuaHtmlObject.GetItemIndex: Integer;
begin
  Result := FItemIndex
end;

function TJanuaHtmlObject.GetItems: IList<IJanuaHtmlObject>;
begin
  Result := self.FList;
end;

function TJanuaHtmlObject.GetLevel: Integer;
begin
  Result := FLevel
end;

function TJanuaHtmlObject.GetNewLine: boolean;
begin
  Result := FNewLine
end;

function TJanuaHtmlObject.GetOnClick: string;
begin
  Result := self.FOnclick;
end;

function TJanuaHtmlObject.GetOpenTagClass: TFuncOfCssClass;
begin
  Result := FOpenTagClass
end;

function TJanuaHtmlObject.GetParamCount: Integer;
begin
  Result := self.FParams.Count;
end;

function TJanuaHtmlObject.GetParamValue(const aKey: string): string;
begin
  Result := '';
  FParams.TryGetValue(aKey.ToLower, Result);
end;

function TJanuaHtmlObject.GetSelectedItem: IJanuaHtmlObject;
begin
  try
    if (FItemIndex > -1) and (self.FItemIndex < (self.FList.Count)) then
      Result := self.FList[self.FItemIndex];
    Guard.CheckNotNull(Result, 'SelectedItem is nil');
  except
    on e: exception do
      raise exception.Create(self.ClassName + '.GetSelectedItem ' + self.GetTag);
  end;
end;

function TJanuaHtmlObject.GetShowEnclosingTag: boolean;
begin
  Result := FShowEnclosingTag
end;

function TJanuaHtmlObject.GetStyle: TJanuaCss;
begin
  Result := FStyle
end;

function TJanuaHtmlObject.GetTag: string;
var
  Item: TPair<string, string>;
  ItemStyle: TPair<THtmlStyle, string>;
  // Enumerable: IEnumerable<string, string>;
begin
  Result := FTag;
  if self.FHidden then
    Result := Result + ' hidden';

  for Item in self.FParams do
    Result := Result + ' ' + Item.Key + '="' + Item.Value + '"';

  if self.FStyles.Count > 0 then
  begin
    Result := Result + ' style="';
    for ItemStyle in FStyles do
      Result := Result + HtmlStyle[ItemStyle.Key] + ':' + ItemStyle.Value + ';';
    Result := Result + '" ';
  end;

  if (FClasses.Count > 0) and Assigned(FOpenTagClass) then
    Result := Result + ' class="' + FOpenTagClass(self.FClasses) + '"'

end;

function TJanuaHtmlObject.GetTerminateSlash: boolean;
begin
  Result := FTerminateSlash
end;

function TJanuaHtmlObject.GetText: string;
begin
  Result := FText
end;

function TJanuaHtmlObject.GetTitle: string;
begin
  Result := FTitle
end;

function TJanuaHtmlObject.GetUID: string;
begin
  Result := FUID
end;

function TJanuaHtmlObject.HtmlComment(aComment: string; aInline: boolean): string;
begin
  Result := SIndent + '<!-- ' + aComment + ' -->' + IfThen(aInline, sLineBreak, '');;
end;

procedure TJanuaHtmlObject.Insert(aPos: Integer; aObject: IJanuaHtmlObject);
begin
  if aPos > Pred(self.FList.Count) then
    self.Add(aObject)
  else
  begin
    self.FList.Insert(aPos, aObject);
    self.FList[aPos].Level := self.Level + 1;
    self.FItemIndex := aPos;
  end;
end;

function TJanuaHtmlObject.OpenTag: string;
  function TagSlash: string;
  begin
    Result := IfThen(FTerminateSlash, '/>', '>');
  end;
  function TagAutoClose: string;
  begin
    Result := IfThen(AutoClose, TagSlash, '>');
  end;

begin
  // getTag ritorna come valore esattamente il campo FTag ma potrebbe essere sovrascritto da
  // classi discendenti che possono includere (ad esempio) degli attributi, degli stili e quant'altro.
  self.Prepare;
  Result := SIndent + '<' + GetTag + TagAutoClose;
end;

procedure TJanuaHtmlObject.Prepare;
begin
  Assert(self.FTag <> '', self.ClassName + '.Prepare Tag not set:' + sLineBreak + self.GetTag);
end;

procedure TJanuaHtmlObject.SetAccessKey(const Value: char);
begin
  FAccessKey := Value;
  if self.FAccessKey = '' then
    self.DelParam('accesskey')
  else
    self.AddParam('accesskye', FAccessKey);
end;

procedure TJanuaHtmlObject.SetAutoClose(const Value: boolean);
begin
  FAutoClose := Value;
end;

procedure TJanuaHtmlObject.SetCommentAfter(const Value: string);
begin
  FCommentAfter := Value;
end;

procedure TJanuaHtmlObject.SetCommentAfterInLine(const Value: string);
begin
  FCommentAfterInLine := Value;
end;

procedure TJanuaHtmlObject.SetCommentBefore(const Value: string);
begin
  FCommentBefore := Value;
end;

procedure TJanuaHtmlObject.SetCommentBeforeInLine(const Value: string);
begin
  FCommentBeforeInLine := Value;
end;

procedure TJanuaHtmlObject.SetHidden(const Value: boolean);
begin
  FHidden := Value;
end;

procedure TJanuaHtmlObject.SetHide(const Value: boolean);
begin
  FHide := Value;
end;

procedure TJanuaHtmlObject.SeTCustomHtmlHelper(const Value: IHtmlHelper);
var
  i: Integer;
begin
  FHtmlHelper := Value;
  if self.FList.Count > 0 then
    for i := 0 to FList.Count - 1 do
      (FList[i]).HtmlHelper := self.FHtmlHelper
end;

procedure TJanuaHtmlObject.SetId(const Value: string);
begin
  if Value > '' then
    self.AddParam('id', Value)
  else if self.FId > '' then
    self.DelParam('id');
  FId := Value;
end;

procedure TJanuaHtmlObject.SetIndent(const Value: Integer);
var
  i: Integer;
begin
  if self.FLevel <> Value then
  begin
    FLevel := Value;
    if self.FList.Count > 0 then
      for i := 0 to FList.Count - 1 do
        FList[i].Level := FLevel + IfThen(ShowEnclosingTag, 1, 0);
  end;
end;

procedure TJanuaHtmlObject.SetInlined(const Value: boolean);
begin
  FInlined := Value;
end;

procedure TJanuaHtmlObject.SetItems(const Value: IList<IJanuaHtmlObject>);
begin
  self.FList := Value;
end;

procedure TJanuaHtmlObject.SetLineText(aText: string);
begin
  self.Text := aText;
end;

procedure TJanuaHtmlObject.SetNewLine(const Value: boolean);
begin
  FNewLine := Value;
end;

procedure TJanuaHtmlObject.SetOnclick(const Value: string);
begin
  FOnclick := Value;
  if Value = '' then
    self.DelParam('onclick')
  else
    self.AddParam('onclick', Value);

end;

procedure TJanuaHtmlObject.SetOpenTagClass(const Value: TFuncOfCssClass);
begin
  FOpenTagClass := Value;
end;

procedure TJanuaHtmlObject.SetSelectedItem(const Value: IJanuaHtmlObject);
begin
  if (self.ItemIndex > -1) then
    self.FList[self.ItemIndex] := Value;
end;

procedure TJanuaHtmlObject.SetShowEnclosingTag(const Value: boolean);
begin
  FShowEnclosingTag := Value;
end;

procedure TJanuaHtmlObject.SetStyle(const Value: TJanuaCss);
begin
  FStyle := Value;
end;

procedure TJanuaHtmlObject.SetTag(const Value: string);
begin
  FTag := Value;
end;

procedure TJanuaHtmlObject.SetTerminateSlash(const Value: boolean);
begin
  FTerminateSlash := Value;
end;

procedure TJanuaHtmlObject.SetText(const Value: string);
begin
  self.FText := Value
end;

procedure TJanuaHtmlObject.SetTitle(const Value: string);
begin
  FTitle := Value;
  if Value <> '' then
    self.AddParam('title', Value)
  else
    self.DelParam('title');
end;

procedure TJanuaHtmlObject.SetUID(const Value: string);
begin
  FUID := Value;
end;

function TJanuaHtmlObject.SIndent(aIndent: Integer = 0): string;
begin
  try
    Result := IfThen(self.FInlined, ' ', Indent(CINDENT, FLevel + aIndent - IfThen(ShowEnclosingTag, 0, 1)));
  except
    on e: exception do
      Result := '';
  end;
end;

procedure TJanuaHtmlObject.StartLineText(aText: string);
begin
  self.Text := aText
end;

function TJanuaHtmlObject.AsHtml: string;
var
  Builder: IStringBuilder;
begin
  Result := '';
  if not self.FHide then
  begin
    Builder := TJanuaStringBuilder.Create;
    AppendHtml(Builder);
    Result := Builder.ToString;
  end;
end;

constructor TJanuaHtmlObject.Create(aHelper: IHtmlHelper; aTag: string; aParams: TJanuaHtmlParams;
  aAutoCloseTag, aTerminateSlash: boolean);
// Create 2
var
  aParam: TJanuaHtmlParam;
begin
  Guard.CheckNotNull(aHelper, 'TJanuaHtmlObject.Create 2 aHelper not set');
  Create(aHelper, aTag, aAutoCloseTag);
  for aParam in aParams do
    self.AddParam(aParam.k, aParam.V);
  self.TerminateSlash := aTerminateSlash;
end;

constructor TJanuaHtmlObject.Create(aHelper: IHtmlHelper; aTag: string; aAutoCloseTag: boolean = False);
begin
  // Create 3
  Guard.CheckNotNull(aHelper, 'TJanuaHtmlObject.Create 3 aHelper not set');
  self.Create(aHelper);
  self.FTag := aTag;
  self.FAutoClose := aAutoCloseTag;
end;

constructor TJanuaHtmlObject.Create(aHelper: IHtmlHelper);
begin
  // Create 4
  Guard.CheckNotNull(aHelper, 'TJanuaHtmlObject.Create 4 aHelper not set');
  inherited Create;
  self.FHtmlHelper := aHelper;
  FList := TCollections.CreateList<IJanuaHtmlObject>;
  // FList := TObjectList<IJanuaHtmlObject>.Create;
  FParams := TCollections.CreateDictionary<string, string>;
  // FParams := TDictionary<string, string>.Create;
  FClasses := TCollections.CreateList<string>;
  // FClasses := TList<string>.Create;
  FStyles := TCollections.CreateDictionary<THtmlStyle, string>;
  // FStyles := TDictionary<THtmlStyle, string>.Create;

  // Inject InternalTagClass function .................
  self.FOpenTagClass := TagClass;;
  self.FAutoClose := False;
  FTerminateSlash := False;
  self.FNewLine := True;
  self.FInlined := False;
  self.FHidden := False;
  FShowEnclosingTag := True;
  // Hide defaults to False because (usually) an object is created to be printed in the final HTML document.
  self.FHide := False;
end;

constructor TJanuaHtmlObject.Create(aHelper: IHtmlHelper; const aTag, aValue: string; aNewLine: boolean);
begin
  // Create 5
  Guard.CheckNotNull(aHelper, self.ClassName + '.Create 4 aHelper not set');
  Guard.CheckFalse(aTag = '', self.ClassName + '.Create Tag is null');
  self.Create(aHelper);
  self.tag := aTag.ToLower;
  self.Text := aValue;
  self.FNewLine := aNewLine;
end;

constructor TJanuaHtmlObject.Create(aHelper: IHtmlHelper; const aTag: string; aStrings: TStrings;
  aNewLine: boolean);
begin
  // Create 6
  Guard.CheckNotNull(aHelper, 'TJanuaHtmlObject.Create 6 aHelper not set');
  self.Create(aHelper, aTag);
  self.Text := (aStrings.Text);
  self.NewLine := aNewLine;
end;

constructor TJanuaHtmlObject.Create(aHelper: IHtmlHelper; const aTag, aValue: string;
  aParams: TJanuaHtmlParams; aNewLine: boolean);
begin
  // Create 6
  Guard.CheckNotNull(aHelper, 'TJanuaHtmlObject.Create 6 aHelper not set');
  self.Create(aHelper, aTag, aParams);
  self.NewLine := aNewLine;
  self.Text := aValue;
end;

constructor TJanuaHtmlObject.Create(aHelper: IHtmlHelper; aTag: string; aClasses: TArray<string>);
var
  s: string;
begin
  Guard.CheckNotNull(aHelper, 'TJanuaHtmlObject.Create 6 aHelper not set');
  self.Create(aHelper, aTag);
  for s in aClasses do
    self.AddClass(s);
end;

{ TJanuaCustomHtmlPage }

constructor TJanuaCustomHtmlPage.Create(aHelper: IHtmlHelper);
begin
  inherited Create(aHelper);
  self.tag := 'html';
  self.Language := TJanuaLanguage.jlaItalian;
  // FHeadSection.Level := self.Level + 1;
end;

function TJanuaCustomHtmlPage.OpenTag: string;
begin
  Result := inherited;
  Result := '<!DOCTYPE html>' + sLineBreak + Result;
  Result := Result + sLineBreak + self.FHeadSection.AsHtml;
  Result := Result + sLineBreak + self.FBody.AsHtml;
end;

procedure TJanuaCustomHtmlPage.SetBody(const Value: IJanuaBody);
begin
  FBody := Value;
  if Assigned(self.FBody) then
    self.FBody.Level := self.Level + 1
end;

procedure TJanuaCustomHtmlPage.SetHeadSection(const Value: IJanuaHeadSection);
begin
  FHeadSection := Value;
  if Assigned(self.FHeadSection) then
    self.FHeadSection.Level := self.Level + 1

end;

procedure TJanuaCustomHtmlPage.SetLanguage(const Value: TJanuaLanguage);
begin
  FLanguage := Value;
  if self.FLanguage <> TJanuaLanguage.jlaNone then
    self.AddParam('lang', JanuaLanguageCode[FLanguage]);
end;

procedure TJanuaCustomHtmlPage.SetPageDescription(const Value: string);
begin
  FPageDescription := Value;
  FHeadSection.PageDescription.AddParam('content', Value);
end;

procedure TJanuaCustomHtmlPage.SetPageName(const Value: string);
begin
  FPageName := Value;
end;

procedure TJanuaCustomHtmlPage.SetPageTitle(const Value: string);
begin
  FHeadSection.PageTitle.Text := Value;
end;

procedure TJanuaCustomHtmlPage.SetViewPort(const Value: string);
begin
  FViewPort := Value;
  FHeadSection.AddMeta([TJanuaHtmlParam.Create('name', 'viewport'), TJanuaHtmlParam.Create('content',
    Value)]);

end;

{ TJanuaCustomHeadSection }

procedure TJanuaHeadSection.AddMeta(const aParams: TJanuaHtmlParams);
begin
  self.Add(TJanuaHtmlObject.Create(HtmlHelper, 'meta', aParams, True, False));
end;

{
  function TJanuaCustomHeadSection.BodyText: string;
  begin
  Result := SIndent + '<meta charset="UTF-8">';
  end;
}

function TJanuaHeadSection.BodyAfterText: string;
begin
  Result := inherited;
  Result := Result + self.FCssStyle.AsHtml;
end;

constructor TJanuaHeadSection.Create(aHelper: IHtmlHelper);
begin
  Guard.CheckNotNull(aHelper, 'TJanuaCustomHeadSection.Create aHelper not set');
  inherited Create(aHelper);
  tag := 'head';
  charset := 'utf-8';
  self.AddSimpleTag('title', '', True);
  self.FCssStyle := TJanuaCssStyle.Create(aHelper);
  self.FPageTitle := self.SelectedItem;
  AddMeta([TJanuaHtmlParam.Create('name', 'description'), TJanuaHtmlParam.Create('content', '')]);
  self.FPageDescription := self.SelectedItem;
end;

function TJanuaHeadSection.GetCharset: string;
begin
  Result := self.Fcharset
end;

function TJanuaHeadSection.GetCssStyle: IJanuaCssStyle;
begin
  Result := self.FCssStyle
end;

function TJanuaHeadSection.GetPageDescription: IJanuaHtmlObject;
begin
  Result := self.FPageDescription
end;

function TJanuaHeadSection.GEtPageTitle: IJanuaHtmlObject;
begin
  Result := self.FPageTitle
end;

procedure TJanuaHeadSection.Setcharset(const Value: string);
begin
  Fcharset := Value;
  self.AddMeta([TJanuaHtmlParam.Create('charset', Value)]);
end;

procedure TJanuaHeadSection.SetCssStyle(const Value: IJanuaCssStyle);
begin
  FCssStyle := Value;
end;

procedure TJanuaHeadSection.SetIndent(const Value: Integer);
begin
  inherited;
  FCssStyle.Level := self.Level + 1;
end;

procedure TJanuaHeadSection.SetPageDescription(const Value: IJanuaHtmlObject);
begin
  FPageDescription := Value;
end;

procedure TJanuaHeadSection.SetPageTitle(const Value: IJanuaHtmlObject);
begin
  FPageTitle := Value;
end;

{ TJanuaStyle }

procedure TJanuaHtmlStyle.AddStyle(aStyle: TJanuaCss);
begin
  { TODO : Creare il Body AddStyle del Gestore degli stili .... }
end;

function TJanuaHtmlStyle.BodyText: string;
begin
  { TODO : Creare il Body Text del Gestore degli stili .... }
end;

constructor TJanuaHtmlStyle.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.tag := 'style';
end;

function TJanuaHtmlStyle.GetStyles: TArray<TJanuaCss>;
begin
  Result := FStyles
end;

procedure TJanuaHtmlStyle.SetStyles(const Value: TArray<TJanuaCss>);
begin
  FStyles := Value;
end;

{ TTJanuaHtmlLink }

constructor TJanuaHtmlLink.Create(aHelper: IHtmlHelper);
begin
  inherited;
  FMimeType := TJanuaMimeType.jmtUnknown;
  self.FImageIndex := -1;
  self.FHasImage := False;
  self.NewLine := False;
  self.Inlined := False;
  self.AutoClose := False;
  IsCrossOrigin := False;
  self.FImage := TJanuaHtmlImage.Create(aHelper);
  // Modifica aggiunto self.FImage alla lista
  // self.FImage.Level := self.Level + 1;
  self.FImage.NewLine := False;
end;

function TJanuaHtmlLink.BodyAfterText: string;
begin
  inherited;
  // Result := Result + IfThen(self.HasImage, self.FImage.AsHtml, '');
end;

constructor TJanuaHtmlLink.Create(aHelper: IHtmlHelper; IsLink: boolean; aUrl, aLink: string;
  aRels: TJanuaLinkRelTypes; aCross: boolean);
begin
  Create(aHelper);
  tag := IfThen(IsLink, 'link', 'a');
  if aRels = [] then
    RelTypes := [TJanuaLinkRelType.None]
  else
    RelTypes := aRels;
  Url := aUrl;
  LinkUrl := aLink;
  IsCrossOrigin := aCross;

end;

function TJanuaHtmlLink.GetHasImage: boolean;
begin
  Result := self.FHasImage
end;

function TJanuaHtmlLink.GetImage: IJanuaHtmlImage;
begin
  Result := self.FImage
end;

function TJanuaHtmlLink.GetIsCrossOrigin: boolean;
begin
  Result := self.IsCrossOrigin
end;

function TJanuaHtmlLink.GetLinkURL: string;
begin
  Result := self.FLinkURL
end;

function TJanuaHtmlLink.GetMimeType: TJanuaMimeType;
begin
  Result := self.FMimeType
end;

function TJanuaHtmlLink.GetRel: string;
var
  a: TJanuaLinkRelType;
begin
  for a in self.FRelTypes do
    Result := Result + JanuaLinkRelText[a] + ' ';
end;

function TJanuaHtmlLink.GetRelTypes: TJanuaLinkRelTypes;
begin
  Result := self.FRelTypes
end;

function TJanuaHtmlLink.GetUrl: string;
begin
  // se impostato il Flage Use Assets URL allora l'url viene completato con l'url globale degli Assets
  Result := IfThen(self.FUseAssetsUrl, Janua.Html.Types.AssetsUrl, FUrl) + self.FLinkURL;
end;

function TJanuaHtmlLink.GetUseAssetsUrl: boolean;
begin
  Result := self.FUseAssetsUrl
end;

procedure TJanuaHtmlLink.Prepare;
begin
  inherited;
  if (tag = 'link') then
  begin
    Assert(FRelTypes <> [], 'TJanuaHtmlLink.Prepare Link with no rel (mandatory)');
    AddParam('rel', GetRel);
  end;
  AddParam('href', self.GetUrl);
end;

procedure TJanuaHtmlLink.SetHasImage(const Value: boolean);
begin
  if Value and not self.FHasImage then
  begin
    self.FImageIndex := self.Add(self.FImage);
  end
  else if not Value and self.FHasImage then
  begin
    if self.FImageIndex > -1 then
    begin
      self.Delete(self.FImageIndex);
      FImageIndex := -1
    end;
  end;
  FHasImage := Value;
  self.NewLine := self.FHasImage;
end;

procedure TJanuaHtmlLink.SetImage(const Value: IJanuaHtmlImage);
begin
  FImage := Value;
  // Imposto automaticamente la property HasImage Impiegando il valore di src (se impostato la creo).
  if (FImage <> nil) then
    self.HasImage := (self.FImage.Src <> '');

end;

procedure TJanuaHtmlLink.SetIndent(const Value: Integer);
begin
  inherited;
  self.FImage.Level := self.Level + 1;
end;

procedure TJanuaHtmlLink.SetIsCrossOrigin(const Value: boolean);
begin
  FIsCrossOrigin := Value;
  if FIsCrossOrigin then
    self.AddParam('crossorigin', 'anonymous');
end;

procedure TJanuaHtmlLink.SetLinkURL(const Value: string);
begin
  self.FLinkURL := Value;
end;

procedure TJanuaHtmlLink.SetMimeType(const Value: TJanuaMimeType);
begin
  FMimeType := Value;
  if FMimeType = TJanuaMimeType.jmtUnknown then
    self.DelParam('type')
  else
    AddParam('type', JanuaMimeString[FMimeType]);
end;

procedure TJanuaHtmlLink.SetRelTypes(const Value: TJanuaLinkRelTypes);
begin
  FRelTypes := Value;
end;

procedure TJanuaHtmlLink.SetUrl(const Value: string);
begin
  FUrl := Value;
end;

procedure TJanuaHtmlLink.SetUseAssetsUrl(const Value: boolean);
begin
  FUseAssetsUrl := Value;
end;

{ TJanuaHtmlScript }

constructor TJanuaHtmlScript.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.NewLine := True;
  self.TerminateSlash := False;
  self.tag := 'script';

end;

constructor TJanuaHtmlScript.Create(aHelper: IHtmlHelper; aIsUrl: boolean; aUrl: string;
  aMimeType: TJanuaMimeType);
begin
  self.Create(aHelper);
  if aIsUrl then
  begin
    self.TerminateSlash := False;
    self.NewLine := False;
    self.SetMimeType(aMimeType);
    self.SetUrl(aUrl);
  end
  else
  begin
    self.StartLineText(aUrl);
    self.TerminateSlash := False;
    self.NewLine := True;
  end;
end;

procedure TJanuaHtmlScript.SetMimeType(const Value: TJanuaMimeType);
begin
  FMimeType := Value;
  if FMimeType = TJanuaMimeType.jmtUnknown then
    self.DelParam('type')
  else
    AddParam('type', JanuaMimeString[FMimeType]);
end;

procedure TJanuaHtmlScript.SetUrl(Value: string);
begin
  if Value <> '' then
    self.AddParam('src', Value)
  else
    self.DelParam('src');

  self.FUrl := Value;

end;

{ TJanuaHtmlPage }

function TJanuaCustomHtmlPage.GetAssetsUrl: string;
begin
  Result := Janua.Html.Types.AssetsUrl;
end;

function TJanuaCustomHtmlPage.GetBody: IJanuaBody;
begin
  Result := self.FBody
end;

function TJanuaCustomHtmlPage.GetHeadSection: IJanuaHeadSection;
begin
  Result := self.FHeadSection
end;

function TJanuaCustomHtmlPage.GetLanguage: TJanuaLanguage;
begin
  Result := self.FLanguage
end;

function TJanuaCustomHtmlPage.GetPageDescription: string;
begin
  Result := self.FPageDescription
end;

function TJanuaCustomHtmlPage.GetPageName: string;
begin
  Result := self.FPageName
end;

function TJanuaCustomHtmlPage.GEtPageTitle: string;
begin
  Result := self.FHeadSection.PageTitle.Text
end;

function TJanuaCustomHtmlPage.GetViewPort: string;
begin
  Result := self.FViewPort
end;

procedure TJanuaCustomHtmlPage.SetAssetsUrl(const Value: string);
begin
  Janua.Html.Types.AssetsUrl := Value;
end;

{ TJanuaHtmlPage }

constructor TJanuaHtmlPage.Create(aHelper: IHtmlHelper; aSection: IJanuaHeadSection; aBody: IJanuaBody);
begin
  self.Create(aHelper);
  self.HeadSection := aSection;
  self.Body := aBody;
end;

function TJanuaHtmlPage.GetBackGroundColor: string;
begin
  Result := self.FBackGroundColor;
end;

procedure TJanuaHtmlPage.SetBackGroundColor(const Value: string);
begin
  self.FBackGroundColor := Value;
  Body.bgcolor := Value;
end;

{ THtmlHelper }

function THtmlHelper.FactoryCreate(aTag: string; aParams: TJanuaHtmlParams;
  aAutoCloseTag, aTerminateSlash: boolean): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(self as IHtmlHelper, aTag, aParams, aAutoCloseTag, aTerminateSlash)
end;

function THtmlHelper.FactoryCreate(aTag: string; aAutoCloseTag: boolean): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(self as IHtmlHelper, aTag, aAutoCloseTag)
end;

function THtmlHelper.FactoryCreate(const aTag, aValue: string; aNewLine: boolean): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(self as IHtmlHelper, aTag, aValue, aNewLine)
end;

function THtmlHelper.FactoryCreate(const aTag, aValue: string; aParams: TJanuaHtmlParams; aNewLine: boolean)
  : IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(self as IHtmlHelper, aTag, aValue, aParams, aNewLine)
end;

function THtmlHelper.FactoryCreate(const aTag: string; aStrings: TStrings; aNewLine: boolean)
  : IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(self as IHtmlHelper, aTag, aStrings, aNewLine)
end;

function THtmlHelper.FactoryCreate(aTag: string; aClasses: TArray<string>): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(self as IHtmlHelper, aTag, False);
  Result.AddClasses(aClasses);
end;

function THtmlHelper.FactoryInput(aInputType: THtmlInputType; aPlaceHolder, aName: string): IJanuaHtmlObject;
begin
  // <div class="form-group m-form__group">
  Result := TJanuaHtmlObject.Create(self as IHtmlHelper, 'input', False);
  Result.AddParam('name', aName);
  Result.AddParam('placeholder', aPlaceHolder);
  Result.AddParam('type', HtmlInputText[aInputType]);
end;

function THtmlHelper.GetTheme: string;
begin
  Result := self.FTheme
end;

procedure THtmlHelper.SetTheme(Value: string);
begin
  self.FTheme := Value;
end;

{ TJanuaBody }

constructor TJanuaBody.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.tag := 'body';
  self.NewLine := True;
  self.CommentBefore := 'begin::Body';
  self.CommentAfter := 'end::Body';
end;

procedure TJanuaBody.AddMenu(aMenu: IJanuaHtmlObject);
begin
  // At the moment does nothing 'special' other than adding an IHtmlObject to the child list
  self.Add(aMenu)
end;

constructor TJanuaBody.Create(aHelper: IHtmlHelper; aClasses: TArray<string>);
begin
  self.Create(aHelper);
  self.AddClasses(aClasses);
end;

function TJanuaBody.Getbgcolor: string;
begin
  Result := Fbgcolor
end;

function TJanuaBody.GetColor: string;
begin
  Result := self.FColor
end;

procedure TJanuaBody.Setbgcolor(const Value: string);
begin
  Fbgcolor := Value;
  if Fbgcolor <> '' then
    self.AddStyle(THtmlStyle.BackGroundColor, Fbgcolor)
  else
    self.DelStyle(THtmlStyle.BackGroundColor);
end;

{ TJanuaBody }

procedure TJanuaBody.SetColor(const Value: string);
begin
  Assert(IsHex(FColor), 'not an hex input');
  FColor := Value;
  self.AddStyle(THtmlStyle.BackGroundColor, FColor);
end;

{ TJanuaCustomSection }

procedure TJanuaCustomSection.AddCssRef(aRef: string; aAssetsUrl: boolean = True;
  CrossOrigin: boolean = False);
var
  aObject: IJanuaHtmlLink;
  aHtmlLink: IJanuaHtmlLink;
begin
  aObject := TJanuaHtmlLink.Create(self.HtmlHelper, 'link', True);
  aObject.LinkUrl := aRef;
  aObject.TerminateSlash := True;
  aObject.Inlined := False;
  aObject.MimeType := TJanuaMimeType.jmtTextCss;
  aObject.RelTypes := [TJanuaLinkRelType.stylesheet];
  // 2018-0076 Css e Js da Url Esterni
  if CrossOrigin then
    aObject.AddParam('crossorigin', 'anonymous');

  self.Add(aObject);
end;

procedure TJanuaCustomSection.AddScript(aScript: string; aMimeType: TJanuaMimeType);
begin
  Add(TJanuaHtmlFactory.CreateScriptAsScript(HtmlHelper, aScript, aMimeType));
end;

procedure TJanuaCustomSection.AddScriptUrl(aScriptUrl: string; aMimeType: TJanuaMimeType);
begin
  self.Add(TJanuaHtmlFactory.CreateScriptAsUrl(HtmlHelper, aScriptUrl, aMimeType));
end;

{ TJanuaCustomScriptSection }

constructor TJanuaCustomScriptSection.Create(aHelper: IHtmlHelper);
begin
  inherited;

end;

{ THtmlMenuGroup }

procedure THtmlMenuGroup.AddItem(aIcon, aText, aUrl: string; aSelected: boolean);
begin
  self.AddItem(THtmlmenuItem.Create(aIcon, aText, aUrl, aSelected))
end;

procedure THtmlMenuGroup.AddItem(aItem: IHtmlmenuItem);
begin
  self.Items.Add(aItem)
end;

constructor THtmlMenuGroup.Create(aIcon, aText, aUrl: string; aSelected: boolean);
begin
  inherited;
  self.Create;

end;

constructor THtmlMenuGroup.Create;
begin
  FItems := TCollections.CreateList<IHtmlmenuItem>
end;

function THtmlMenuGroup.GetItems: IList<IHtmlmenuItem>;
begin
  Result := FItems
end;

procedure THtmlMenuGroup.SetItems(const Value: IList<IHtmlmenuItem>);
begin
  FItems := Value;
end;

{ THtmlmenuItem }

constructor THtmlmenuItem.Create(aIcon, aText, aUrl: string; aSelected: boolean);
begin
  self.Icon := aIcon;
  self.Text := aText;
  self.Url := aUrl;
  self.Selected := aSelected;
end;

function THtmlmenuItem.GetIcon: string;
begin
  Result := FIcon
end;

function THtmlmenuItem.GetSelected: boolean;
begin
  Result := FSelected
end;

function THtmlmenuItem.GetText: string;
begin
  Result := FText
end;

function THtmlmenuItem.GetUrl: string;
begin
  Result := FUrl
end;

procedure THtmlmenuItem.SetIcon(const Value: string);
begin
  FIcon := Value;
end;

procedure THtmlmenuItem.SetSelected(const Value: boolean);
begin
  FSelected := Value;
end;

procedure THtmlmenuItem.SetText(const Value: string);
begin
  FText := Value;
end;

procedure THtmlmenuItem.SetUrl(const Value: string);
begin
  FUrl := Value;
end;

{ THtmlMenu }

procedure THtmlMenu.AddGroup(aGroup: IHtmlMenuGroup);
begin
  self.Items.Add(aGroup);
  // Imposto ItemIndex per potere ritornare il 'selected Item';
  self.FItemIndex := self.FItems.Count - 1;
end;

constructor THtmlMenu.Create;
begin
  FItems := TCollections.CreateList<IHtmlMenuGroup>
end;

function THtmlMenu.GetItemIndex: Integer;
begin
  Result := self.FItemIndex
end;

function THtmlMenu.GetItems: IList<IHtmlMenuGroup>;
begin
  Result := self.FItems
end;

function THtmlMenu.GetSelectedItem: IHtmlMenuGroup;
  function ItemNdx: Integer;
  begin
    Result := IfThen(FItemIndex < FItems.Count, FItemIndex, Pred(FItems.Count))
  end;

begin
  // ritorna l'item selezionato a patto che la lista contenga un Item .....
  if FItems.Count > 0 then
    Result := FItems[ItemNdx]
  else
    Result := nil;
end;

procedure THtmlMenu.SetItemIndex(const Value: Integer);
begin
  FItemIndex := Value;
end;

procedure THtmlMenu.SetItems(const Value: IList<IHtmlMenuGroup>);
begin
  FItems := Value;
end;

procedure THtmlMenu.SetSelectedItem(const Value: IHtmlMenuGroup);
  function ItemNdx: Integer;
  begin
    Result := IfThen(FItemIndex < FItems.Count, FItemIndex, Pred(FItems.Count))
  end;

begin
  // ritorna l'item selezionato a patto che la lista contenga un Item .....
  Guard.CheckNotNull(Value, 'THtmlMenu.SetSelectedItem Value is null ');
  if FItems.Count > 0 then
    FItems[ItemNdx] := Value
end;

{ TJanuaHtmlImage }

constructor TJanuaHtmlImage.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.tag := 'img';

end;

function TJanuaHtmlImage.GetAlt: string;
begin
  Result := self.FAlt
end;

function TJanuaHtmlImage.GetSrc: string;
begin
  Result := self.FSrc
end;

procedure TJanuaHtmlImage.SetAlt(const Value: string);
begin
  FAlt := Value;
  self.AddParam('alt', Value);
end;

procedure TJanuaHtmlImage.SetSrc(const Value: string);
begin
  FSrc := Value;
  if Value <> '' then
    self.AddParam('src', FSrc);
end;

{ TJanuaHtmlForm }

function TJanuaHtmlForm.AddInput(aInputType: THtmlInputType; aPlaceHolder, aName: string): Integer;
begin
  Result := self.Add(self.HtmlHelper.FactoryInput(aInputType, aPlaceHolder, aName));
end;

constructor TJanuaHtmlForm.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.tag := 'form';
end;

{ TJanuaHtmlFactory }

class function TJanuaHtmlFactory.CreateBody: IJanuaBody;
begin
  Result := TJanuaBody.Create(JanuaHtmlHelper, 'body');
  Result.UID := 'BODY';
end;

class function TJanuaHtmlFactory.CreateForm: IJanuaHtmlObject;
begin
  Result := TJanuaHtmlForm.Create(JanuaHtmlHelper);
end;

class function TJanuaHtmlFactory.CreateHeadSection: IJanuaHeadSection;
begin
  Result := TJanuaHeadSection.Create(JanuaHtmlHelper);
  Result.CommentBefore := 'begin::Head';
  Result.CommentAfter := 'end::Head';
end;

class function TJanuaHtmlFactory.CreateHtmlImage(aSrc, aAlt: string): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlImage.Create(JanuaHtmlHelper);
  (Result as IJanuaHtmlImage).Src := aSrc;
  (Result as IJanuaHtmlImage).Alt := aAlt;
end;

class function TJanuaHtmlFactory.CreateObject(aTag, aText: string; aClasses: TArray<string>;
  aNewLine: boolean): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, aTag, aText, aNewLine);
  Result.AddClasses(aClasses);
end;

class function TJanuaHtmlFactory.CreatePage: IJanuaHtmlPage;
begin
  // aSection: IJanuaHeadSection; aBody: IJanuaBody
  Result := TJanuaHtmlPage.Create(JanuaHtmlHelper, CreateHeadSection, CreateBody);
end;

class function TJanuaHtmlFactory.CreateScriptAsScript(aHelper: IHtmlHelper; aUrl: string;
  aMimeType: TJanuaMimeType): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlScript.Create(aHelper, False, aUrl, aMimeType);
end;

class function TJanuaHtmlFactory.CreateScriptAsUrl(aHelper: IHtmlHelper; aUrl: string;
  aMimeType: TJanuaMimeType): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlScript.Create(aHelper, True, aUrl, aMimeType);
end;

class function TJanuaHtmlFactory.CreateSelect(const aName: string; aRecordset: IJanuaRecordSet;
  aValueField, aTextField: IJanuaField; aSelectedValue: TValue): IHtmlSelect;
var
  LSelected: boolean;
begin
  Guard.CheckTrue(aName <> '', 'CreateSelect aName is nil');

  Guard.CheckNotNull(aRecordset, 'CreateSelect aRecordset is nil');
  Guard.CheckNotNull(aValueField, 'CreateSelect aValueField is nil');
  Guard.CheckNotNull(aTextField, 'CreateSelect aTextField is nil');

  Result := THtmlSelect.Create(JanuaHtmlHelper);
  Result.AddParam('name', aName.ToLower);

  if aRecordset.RecordCount > 0 then
  begin
    aRecordset.First;
    while not aRecordset.Eof do
    begin
      LSelected := (not aSelectedValue.IsEmpty and aValueField.Value.Equals(aSelectedValue)) or
        (aSelectedValue.IsEmpty and (aRecordset.ItemIndex = 0));

      Result.AddItem(aValueField.AsString, aTextField.AsString, LSelected);
      aRecordset.Next;
    end;
  end;

end;

class function TJanuaHtmlFactory.JsSort(aTableName: string; aLevel: Integer): IJanuaHtmlObject;
var
  s: string;
  function BreakIndent: string;
  begin
    Result := sLineBreak + Janua.Core.Functions.Indent(2, aLevel);
  end;

begin
  s := BreakIndent + //
    'function sortTable(n, tp = 0) { ' + BreakIndent + //
    '  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0; ' + BreakIndent + //
    '  table = document.getElementById("' + aTableName + '"); ' + BreakIndent + //
    '  switching = true; ' + BreakIndent + //
    '  // Set the sorting direction to ascending: ' + BreakIndent + //
    '  dir = "asc"; ' + BreakIndent + //
    '  /* Make a loop that will continue until ' + BreakIndent + //
    '  no switching has been done: */  ' + BreakIndent + //
    '  while (switching) {    ' + BreakIndent + //
    '    // Start by saying: no switching is done:  ' + BreakIndent + //
    '    switching = false;  ' + BreakIndent + //
    '    rows = table.rows;   ' + BreakIndent + //
    '    /* Loop through all table rows (except the   ' + BreakIndent + //
    '    first, which contains table headers): */  ' + BreakIndent + //
    '    for (i = 1; i < (rows.length - 1); i++) {  ' + BreakIndent + //
    '      // Start by saying there should be no switching:  ' + BreakIndent + //
    '      shouldSwitch = false;  ' + BreakIndent + //
    '      /* Get the two elements you want to compare,  ' + BreakIndent + //
    '      one from current row and one from the next: */  ' + BreakIndent + //
    '      x = rows[i].getElementsByTagName("TD")[n];  ' + BreakIndent + //
    '      y = rows[i + 1].getElementsByTagName("TD")[n]; ' + BreakIndent + //
    '      /* Check if the two rows should switch place,   ' + BreakIndent + //
    '      based on the direction, asc or desc: */   ' + BreakIndent + //
  // --------------------------- swittch ...............................................................
    '    if (tp = 0) {          ' + BreakIndent + // ----- inizio tp = 0
    '      if (dir == "asc") {   ' + BreakIndent + // ----- inizio dir = asc
    '         if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {  ' + BreakIndent + // if >
    '          // If so, mark as a switch and break the loop:   ' + BreakIndent + //
    '          shouldSwitch = true;  ' + BreakIndent + //
    '          break;    ' + BreakIndent + //
    '        }    ' + BreakIndent + // --------------- chiudo if >
    '      } else if (dir == "desc") {   ' + BreakIndent + // ----- chiudo asc inizio desc
    '        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {   ' + BreakIndent + // if <
    '          // If so, mark as a switch and break the loop: ' + BreakIndent + //
    '          shouldSwitch = true;   ' + BreakIndent + //
    '          break; ' + BreakIndent + //
    '        }  ' + BreakIndent + // -- chiudo if <
    '      }  ' + BreakIndent + // chiudo desc
    '     }  ' + BreakIndent + // chiudo tp = 0
  // ------------------------ fine tp = 0 -------------------------------------------------------
    '    else if (tp = 1) {          ' + BreakIndent + // ----- inizio tp = 0
    '      if (dir == "asc") {   ' + BreakIndent + // ----- inizio dir = asc
    '         if (Number(x.innerHTML) > Number(y.innerHTML)) {  ' + BreakIndent + // if >
    '          // If so, mark as a switch and break the loop:   ' + BreakIndent + //
    '          shouldSwitch = true;  ' + BreakIndent + //
    '          break;    ' + BreakIndent + //
    '        }    ' + BreakIndent + // --------------- chiudo if >
    '      } else if (dir == "desc") {   ' + BreakIndent + // ----- chiudo asc inizio desc
    '        if (Number(x.innerHTML) < Number(y.innerHTML)) {   ' + BreakIndent + // if <
    '          // If so, mark as a switch and break the loop: ' + BreakIndent + //
    '          shouldSwitch = true;   ' + BreakIndent + //
    '          break; ' + BreakIndent + //
    '        }  ' + BreakIndent + // -- chiudo if <
    '      }  ' + BreakIndent + // chiudo desc
    '     }  ' + BreakIndent + // chiudo tp = 0
  // ------------------------ fine tp = 1 -------------------------------------------------------

    '    }   ' + BreakIndent + // chiudo loop -----------------------------------------------------
    '    if (shouldSwitch) {  ' + BreakIndent + //
    '      /* If a switch has been marked, make the switch  ' + BreakIndent + //
    '      and mark that a switch has been done: */   ' + BreakIndent + //
    '      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);  ' + BreakIndent + //
    '      switching = true;    ' + BreakIndent + //
    '      // Each time a switch is done, increase this count by 1:  ' + BreakIndent + //
    '      switchcount ++;   ' + BreakIndent + //
    '    } else {  ' + BreakIndent + //
    '      /* If no switching has been done AND the direction is "asc",  ' + BreakIndent + //
    '      set the direction to "desc" and run the while loop again. */  ' + BreakIndent + //
    '      if (switchcount == 0 && dir == "asc") {  ' + BreakIndent + //
    '        dir = "desc";  ' + BreakIndent + //
    '        switching = true; ' + BreakIndent + //
    '      } ' + BreakIndent + //
    '    }   ' + BreakIndent + //
    '  }   ' + BreakIndent + //
    '}   ';
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'script', s, True);
end;

{ THtmlTableCell }

constructor THtmlTableCell.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.tag := 'td';
end;

constructor THtmlTableCell.Create(aHelper: IHtmlHelper; aValue: string; colspan, rowspan: Integer;
  Onclick: string; aIsHeader: boolean);
begin
  self.Create(aHelper);
  self.IsHeader := aIsHeader;
  self.CellValue := aValue;
  self.colspan := colspan;
  self.rowspan := rowspan;
  self.Onclick := Onclick;
  self.tag := IfThen(aIsHeader, 'th', 'td');
end;

function THtmlTableCell.Getcolspan: Integer;
begin
  Result := self.Fcolspan
end;

function THtmlTableCell.GetHasLabel: boolean;
begin
  Result := self.FHasLabel
end;

function THtmlTableCell.GetIndex: Integer;
begin
  Result := self.FIndex
end;

function THtmlTableCell.GetIsHeader: boolean;
begin
  Result := self.FIsHeader
end;

function THtmlTableCell.Getrowspan: Integer;
begin
  Result := self.Frowspan;
end;

function THtmlTableCell.GetValue: string;
begin
  Result := self.FValue;
end;

procedure THtmlTableCell.Setcolspan(const aValue: Integer);
begin
  Fcolspan := aValue;
  if aValue > 0 then
    self.AddParam('colspan', aValue.ToString)
  else
    self.DelParam('colspan');
  // CellClass := CellClass + ifThen(self.colspan > 0, ' colspan="' + self.colspan.ToString + '"', '');
end;

procedure THtmlTableCell.SetHasLabel(const aValue: boolean);
begin
  FHasLabel := aValue;
end;

procedure THtmlTableCell.SetIndex(const aValue: Integer);
begin
  FIndex := aValue;
end;

procedure THtmlTableCell.SetIsHeader(const aValue: boolean);
begin
  FIsHeader := aValue;
  self.tag := IfThen(aValue, 'th', 'td');

end;

procedure THtmlTableCell.Setrowspan(const aValue: Integer);
begin
  Frowspan := aValue;
  // CellClass := CellClass + ifThen(self.rowspan > 0, ' rowspan="' + self.rowspan.ToString + '"', '');
  if aValue > 0 then
    self.AddParam('rowspan', aValue.ToString)
  else
    self.DelParam('rowspan');

end;

procedure THtmlTableCell.SetValue(const aValue: string);
begin
  FValue := aValue;
  self.Text := aValue;
end;

{ THtmlTableRow }

procedure THtmlTableRow.AddCell(aCell: IHtmlTableCell);
var
  LPos: Integer;
begin
  LPos := Add(aCell);
  aCell.tag := IfThen(self.FIsHeader, 'th', 'td');
  if (aCell.Onclick = '') and self.FIsHeader and self.FIsSortable then
    aCell.Onclick := 'sortTable(' + LPos.ToString + ')';
end;

procedure THtmlTableRow.AddImage(aValue, aUrlImage, aUrlLink: string; colspan, rowspan: Integer;
  Onclick: string);
var
  aImage: IJanuaHtmlImage;
begin
  aImage := TJanuaHtmlImage.Create(self.HtmlHelper);

end;

procedure THtmlTableRow.AddLink(aValue, aUrlLink: string; colspan, rowspan: Integer; Onclick: string);
begin

end;

procedure THtmlTableRow.AddValue(aValue: smallint; colspan, rowspan: Integer; Onclick: string);
begin
  self.AddValue(aValue.ToString, colspan, rowspan, Onclick);
end;

procedure THtmlTableRow.AddValue(aValue: Int64; colspan, rowspan: Integer; Onclick: string);
begin
  self.AddValue(aValue.ToString, colspan, rowspan, Onclick);
end;

procedure THtmlTableRow.AddValue(aValue, colspan, rowspan: Integer; Onclick: string);
begin
  self.AddValue(aValue.ToString, colspan, rowspan, Onclick);
end;

procedure THtmlTableRow.AddValue(aValue: Extended; colspan, rowspan: Integer; Onclick: string);
begin
  self.AddValue(aValue.ToString, colspan, rowspan, Onclick);
end;

procedure THtmlTableRow.AddValue(aField: IJanuaField; colspan, rowspan: Integer; Onclick: string);
begin
  self.AddValue(aField.AsString, colspan, rowspan, Onclick);
end;

procedure THtmlTableRow.AddValue(aField: IJanuaField);
begin

  self.AddValue(aField.AsString, 0, 0, IfThen(self.FIsSortable, 'sortTable(0)', ''));
end;

constructor THtmlTableRow.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.tag := 'tr';
end;

function THtmlTableRow.GetIsHeader: boolean;
begin
  Result := self.FIsHeader;
end;

function THtmlTableRow.GetIsSortable: boolean;
begin
  Result := self.FIsSortable
end;

procedure THtmlTableRow.SetIsHeader(const Value: boolean);
var
  i: Integer;
begin
  if Value <> self.FIsHeader then
  begin
    FIsHeader := Value;
    // for i := 0 to Pred(self.Count) do
    // aCell.tag := IfThen(self.FIsHeader, 'th', 'td');
  end;
end;

procedure THtmlTableRow.SetIsSortable(const Value: boolean);
var
  i: Integer;
begin
  FIsSortable := Value;
  if Value and self.FIsHeader then
  begin
    for i := 0 to Pred(self.Count(False)) do
      self.Items[i].Onclick := 'sortTable(' + i.ToString + ')'
  end;
end;

procedure THtmlTableRow.AddValue(aValue: TDateTime; colspan, rowspan: Integer; Onclick: string);
begin
  AddValue(FormatDateTime('dd/mm/yyyy', aValue), colspan, rowspan, Onclick);
end;

procedure THtmlTableRow.AddValue(aValue: string; colspan, rowspan: Integer; Onclick: string);
begin
  self.AddCell(THtmlTableCell.Create(self.HtmlHelper, aValue, colspan, rowspan, Onclick, self.IsHeader));
end;

{ THtmlTable }

procedure THtmlTable.AddRow(aRow: IHtmlTableRow);
begin
  self.Add(aRow)
end;

constructor THtmlTable.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.tag := 'table';
  // table table-bordered table-striped table-hover
  self.AddClass('table');
  Striped := False;
  Hover := False;
  HasHeader := True;
  Bordered := True;
  AddSimpleTag('thead');
  FHeader := self.SelectedItem;
  self.AddSimpleTag('tbody');
  FBody := self.SelectedItem;
  self.AddSimpleTag('tfoot');
  FFooter := self.SelectedItem;
  // IJanuaHtmlObject;
  self.FSortable := False;
  HasFooter := False;
end;

function THtmlTable.GetBody: IJanuaHtmlObject;
begin
  Result := self.FBody
end;

function THtmlTable.GetBordered: boolean;
begin
  Result := self.FBordered
end;

function THtmlTable.GetFooter: IJanuaHtmlObject;
begin
  Result := self.FFooter
end;

function THtmlTable.GetHasFooter: boolean;
begin
  Result := self.FHasFooter
end;

function THtmlTable.GetHasHeader: boolean;
begin
  Result := self.FHasHeader
end;

function THtmlTable.GetHeader: IJanuaHtmlObject;
begin
  Result := self.FHeader
end;

function THtmlTable.GetHover: boolean;
begin
  Result := self.FHover
end;

function THtmlTable.GetSortable: boolean;
begin
  Result := self.FSortable
end;

function THtmlTable.GetStriped: boolean;
begin
  Result := self.FStriped
end;

procedure THtmlTable.SetBody(const Value: IJanuaHtmlObject);
begin
  FBody := Value;
end;

procedure THtmlTable.SetBordered(const Value: boolean);
begin
  // table table-bordered table-striped table-hover
  FBordered := Value;
  if self.FStriped then
    self.AddClass('table-bordered')
  else
    self.DelClass('table-bordered');
end;

procedure THtmlTable.SetFooter(const Value: IJanuaHtmlObject);
begin
  FFooter := Value;
end;

procedure THtmlTable.SetHasFooter(const Value: boolean);
begin
  FHasFooter := Value;
  if Assigned(self.FFooter) then
    FFooter.Hide := not Value;
end;

procedure THtmlTable.SetHasHeader(const Value: boolean);
begin
  FHasHeader := Value;
end;

procedure THtmlTable.SetHeader(const Value: IJanuaHtmlObject);
begin
  FHeader := Value;
  if self.FSortable then
    self.SetHeaderSortable;

end;

procedure THtmlTable.SetHover(const Value: boolean);
begin
  // table table-bordered table-striped table-hover
  FHover := Value;
  if self.FStriped then
    self.AddClass('table-hover')
  else
    self.DelClass('table-hover');
end;

procedure THtmlTable.SetSortable(const Value: boolean);
begin
  FSortable := Value;
  if Value then
  begin
    Guard.CheckTrue(self.Id <> '', self.ClassName + '.SetSortable ID is nil');
    Guard.CheckTrue(self.HasHeader, self.ClassName + '.SetSortable HasHeader is false');
    SetHeaderSortable;
  end;
end;

procedure THtmlTable.SetStriped(const Value: boolean);
begin
  FStriped := Value;
  // table table-bordered table-striped table-hover
  if self.FStriped then
    self.AddClass('table-striped')
  else
    self.DelClass('table-striped');
end;

procedure THtmlTable.SetupSortable(aID: string);
begin
  self.Id := aID.ToLower;
  self.Sortable := True;
end;

procedure THtmlTable.SetHeaderSortable;
var
  Lr: IHtmlTableRow;
begin
  if Assigned(Header.SelectedItem) and supports(Header.SelectedItem, IHtmlTableRow, Lr) then
    Lr.IsSortable := True;
end;

{ THtmlSelect }

function THtmlSelect.AddItem(aValue, aText: string; aSelected: boolean): IJanuaHtmlObject;
begin
  self.AddSimpleTag('option', aText, True);
  self.SelectedItem.AddParam('value', aValue);
  if aSelected then
    SelectedItem.AddParam('selected', 'selected');
end;

constructor THtmlSelect.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.tag := 'select';
end;

{ TJanuaFooter }

constructor TJanuaFooter.Create(aHelper: IHtmlHelper);
begin
  inherited Create(aHelper);
  self.tag := 'footer';
  self.NewLine := True;
  self.CommentBefore := 'begin::Footer';
  self.CommentAfter := 'end::Footer';
end;

constructor TJanuaFooter.Create(aHelper: IHtmlHelper; aClasses: TArray<string>);
begin
  self.Create(aHelper);
end;

function TJanuaFooter.Getbgcolor: string;
begin
  Result := self.Fbgcolor
end;

function TJanuaFooter.GetColor: string;
begin
  Result := self.FColor
end;

procedure TJanuaFooter.Setbgcolor(const Value: string);
begin
  if Fbgcolor <> Value then
    DelStyle(THtmlStyle.BackGroundColor);

  if Fbgcolor <> '' then
    self.AddStyle(THtmlStyle.BackGroundColor, Fbgcolor)

end;

procedure TJanuaFooter.SetColor(const Value: string);
begin
  self.FColor := Value;
  if FColor <> '' then
    self.AddStyle(THtmlStyle.Color, FColor)
  else
    self.DelStyle(THtmlStyle.Color);
end;

{ TJanuaCssMedia }

procedure TJanuaCssMedia.AddCss(aObject: IJanuaCssObject);
begin
  if Assigned(aObject) then
  begin
    self.FCss.Add(aObject);
    self.FSelectedCss := aObject;
  end;
end;

function TJanuaCssMedia.AddCssByClasses(aClasses: TArray<string>): IJanuaCssObject;
begin
  Result := TJanuaCssObject.Create(aClasses, []);
  self.AddCss(Result);
end;

function TJanuaCssMedia.AddCssByTags(aClasses: TArray<string>): IJanuaCssObject;
begin
  Result := TJanuaCssObject.Create([], aClasses);
  self.AddCss(Result);
end;

procedure TJanuaCssMedia.AddFeature(aFeature: TCssMediaFeature; aValue: string);
begin
  self.FFeatures.Add(TCssMediaFeatureRecord.Create(aFeature, aValue));
end;

constructor TJanuaCssMedia.Create(aType: TCssMediaType; aUse: TCssMediaTypeUse);
begin
  FMediaType := aType;
  FMediaUse := aUse;
  FCss := TCollections.CreateList<IJanuaCssObject>;
  FFeatures := TCollections.CreateList<TCssMediaFeatureRecord>;
end;

function TJanuaCssMedia.Generate: string;
  function GenerateCss: string;
  var
    i: Integer;
  begin
    for i := 0 to Pred(FCss.Count) do
      Result := Result + self.FCss[i].Generate;
  end;
  function GenerateFeatures: string;
  var
    i: Integer;
  begin
    Result := '';
    for i := 0 to Pred(FFeatures.Count) do
      Result := IfThen(i = 0, '', 'and ') + FFeatures[i].AsText
  end;
  function GenerateMedia: string;
  begin
    Result := '@media ' + IfThen(FMediaUse <> tuNone, CssMediaTypeUse[FMediaUse] + ' ', '') +
      CssMediaTypes[self.FMediaType] + ' ' + GenerateFeatures;
  end;

begin
  Result := IfThen(FMediaString = '', GenerateMedia, FMediaString) + '{' + GenerateCss + '}';
end;

function TJanuaCssMedia.GetCss: IList<IJanuaCssObject>;
begin
  Result := self.FCss
end;

function TJanuaCssMedia.GetFeatures: IList<TCssMediaFeatureRecord>;
begin
  Result := self.FFeatures
end;

function TJanuaCssMedia.GetMediaString: string;
begin
  Result := self.FMediaString
end;

function TJanuaCssMedia.GetMediaType: TCssMediaType;
begin
  Result := self.FMediaType
end;

function TJanuaCssMedia.GetMediaUse: TCssMediaTypeUse;
begin
  Result := self.FMediaUse
end;

function TJanuaCssMedia.GetSelectedCss: IJanuaCssObject;
begin
  Result := self.FSelectedCss;
end;

procedure TJanuaCssMedia.SetCss(const Value: IList<IJanuaCssObject>);
begin
  FCss := Value;
end;

procedure TJanuaCssMedia.SetFeatures(const Value: IList<TCssMediaFeatureRecord>);
begin
  FFeatures := Value;
end;

procedure TJanuaCssMedia.SetMediaString(const Value: string);
begin
  FMediaString := Value;
end;

procedure TJanuaCssMedia.SetMediaType(const Value: TCssMediaType);
begin
  FMediaType := Value;
end;

procedure TJanuaCssMedia.SetMediaUse(const Value: TCssMediaTypeUse);
begin
  FMediaUse := Value;
end;

procedure TJanuaCssMedia.SetSelectedCss(const Value: IJanuaCssObject);
begin
  FSelectedCss := Value;
end;

{ TJanuaCssObject }

procedure TJanuaCssObject.AddClass(aClass: string);
var
  Enumerable: IEnumerable<string>;
begin
  Enumerable := self.FClasses;
  if not Enumerable.Contains(aClass.ToLower) then
    self.FClasses.Add(aClass.ToLower)
end;

procedure TJanuaCssObject.AddClasses(aClasses: TArray<string>);
var
  LClass: string;
begin
  for LClass in aClasses do
    AddClass(LClass)
end;

procedure TJanuaCssObject.AddStyle(aStyle: THtmlStyle; aValue: string);
begin
  if self.FStyles.ContainsKey((aStyle)) then
    FStyles.Items[aStyle] := aValue
  else
    FStyles.Add(aStyle, aValue);
end;

procedure TJanuaCssObject.AddTags(aTags: TArray<string>);
var
  LTag: string;
begin
  if Length(aTags) > 0 then
    for LTag in aTags do
      self.FTags.Add(LTag)
end;

constructor TJanuaCssObject.Create;
begin
  self.FClasses := TCollections.CreateList<string>;
  self.FTags := TCollections.CreateList<string>;
  self.FStyles := TCollections.CreateDictionary<THtmlStyle, string>;
end;

constructor TJanuaCssObject.Create(aClasses, aTags: TArray<string>);
begin
  self.Create;
  AddClasses(aClasses);
  AddTags(aTags);
end;

procedure TJanuaCssObject.DelClass(aClass: string);
var
  Enumerable: IEnumerable<string>;
begin
  Enumerable := self.FClasses;
  if not Enumerable.Contains(aClass.ToLower) then
    self.FClasses.Remove(aClass.ToLower)
end;

procedure TJanuaCssObject.DelStyle(aStyle: THtmlStyle);
begin
  if self.FStyles.ContainsKey(aStyle) then
    FStyles.Remove(aStyle);
end;

function TJanuaCssObject.Generate: string;
var
  ItemStyle: TPair<THtmlStyle, string>;
  i: Integer;
begin
  Result := '';

  if self.FTags.Count > 0 then
    for i := 0 to Pred(FTags.Count) do
      Result := Result + FTags[i] + ' ';

  if self.FClasses.Count > 0 then
    for i := 0 to Pred(FClasses.Count) do
      Result := Result + '.' + FClasses[i] + ' ';

  if self.FStyles.Count > 0 then
  begin
    Result := Result + ' {';
    for ItemStyle in FStyles do
      Result := Result + HtmlStyle[ItemStyle.Key] + ':' + ItemStyle.Value + ';';
    Result := Result + '} ';
  end;
end;

function TJanuaCssObject.GetClasses: IList<string>;
begin
  Result := self.FClasses
end;

function TJanuaCssObject.GetStyles: IDictionary<THtmlStyle, string>;
begin
  Result := self.FStyles
end;

function TJanuaCssObject.GetTags: IList<string>;
begin
  Result := self.FTags
end;

procedure TJanuaCssObject.SetClasses(const Value: IList<string>);
begin
  FClasses := Value;
end;

procedure TJanuaCssObject.SetStyles(const Value: IDictionary<THtmlStyle, string>);
begin
  FStyles := Value;
end;

procedure TJanuaCssObject.SetTags(const Value: IList<string>);
begin
  FTags := Value;
end;

{ TJanuaCssStyle }

procedure TJanuaCssStyle.AddCss(aObject: IJanuaCssObject);
begin
  if Assigned(aObject) then
  begin
    self.FCss.Add(aObject);
    self.FSelectedCss := aObject;
  end;

end;

function TJanuaCssStyle.AddCssByClasses(aClasses: TArray<string>): IJanuaCssObject;
begin
  Result := TJanuaCssObject.Create(aClasses, []);
  self.AddCss(Result);
end;

function TJanuaCssStyle.AddCssByTags(aClasses: TArray<string>): IJanuaCssObject;
begin
  Result := TJanuaCssObject.Create([], aClasses);
  self.AddCss(Result);
end;

procedure TJanuaCssStyle.AddMedia(aObject: IJanuaCssMedia);
begin
  if Assigned(aObject) then
  begin
    self.FMedias.Add(aObject);
    self.FSelectedMedia := aObject
  end;
end;

function TJanuaCssStyle.AddMediaByFeature(aType: TCssMediaType; aFeature: TCssMediaFeature; aValue: string)
  : IJanuaCssMedia;
begin
  Result := TJanuaCssMedia.Create(aType);
  Result.AddFeature(aFeature, aValue);
  self.AddMedia(Result);
end;

function TJanuaCssStyle.AddMediaByType(aType: TCssMediaType; aUse: TCssMediaTypeUse): IJanuaCssMedia;
begin
  Result := TJanuaCssMedia.Create(aType, aUse);
  self.AddMedia(Result);
end;

constructor TJanuaCssStyle.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.tag := 'style';
  self.AddParam('type', 'text/css');
  self.AutoClose := False;
  FCss := TCollections.CreateList<IJanuaCssObject>;
  FMedias := TCollections.CreateList<IJanuaCssMedia>
end;

function TJanuaCssStyle.GetCss: IList<IJanuaCssObject>;
begin
  Result := self.FCss
end;

function TJanuaCssStyle.GetMedias: IList<IJanuaCssMedia>;
begin
  Result := self.FMedias
end;

function TJanuaCssStyle.GetSelectedCss: IJanuaCssObject;
begin
  Result := self.FSelectedCss
end;

function TJanuaCssStyle.GetSelectedMedia: IJanuaCssMedia;
begin
  Result := self.FSelectedMedia
end;

function TJanuaCssStyle.GetText: string;
var
  i: Integer;
begin
  // sovrascrivo completamente il metodo originale ....
  for i := 0 to Pred(FCss.Count) do
    Result := Result + self.FCss[i].Generate + ' ';

  for i := 0 to Pred(FMedias.Count) do
    Result := Result + self.FMedias[i].Generate + ' ';
end;

procedure TJanuaCssStyle.SetCss(const Value: IList<IJanuaCssObject>);
begin
  FCss := Value;
end;

procedure TJanuaCssStyle.SetMedias(const Value: IList<IJanuaCssMedia>);
begin
  FMedias := Value;
end;

procedure TJanuaCssStyle.SetSelectedCss(const Value: IJanuaCssObject);
begin
  FSelectedCss := Value;
end;

procedure TJanuaCssStyle.SetSelectedMedia(const Value: IJanuaCssMedia);
begin
  FSelectedMedia := Value;
end;

initialization

Janua.Core.Functions.ExecProc(
  procedure
  begin
    { Insert Procedures ............................... }
    JanuaHtmlHelper := THtmlHelper.Create;
  end, 'Janua.Html.Impl.initialization');

finalization

JanuaHtmlHelper := nil;

end.

