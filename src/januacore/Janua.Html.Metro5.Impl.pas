unit Janua.Html.Metro5.Impl;

interface

uses System.SysUtils, System.Classes, System.StrUtils, System.SysConst,
  System.JSON, System.Math, System.Rtti,
  System.JSONConsts, System.Generics.Collections, Spring.Collections,
  // Spring
  Spring,
  // Janua Project
  Janua.Core.Types,
  Janua.Html.Impl, Janua.Html.Intf, Janua.Html.Types, Janua.Html.Metro5.Types, Janua.Orm.Intf,
  Janua.Html.Metro5.Intf;

type
  TMetro5HtmlObject = class(TJanuaHtmlObject, IJanuaHtmlObject, IMetro5HtmlObject)
  strict private
    FMetroClasses: MetroClasses;
    FBaseClass: TM5SClassType;
    FBaseColor: TM5StateColorsStyle;
  protected
    function GetBaseClass: TM5SClassType;
    procedure SetBaseClass(const Value: TM5SClassType);
    function GetBaseColor: TM5StateColorsStyle;
    procedure SetBaseColor(const Value: TM5StateColorsStyle); virtual;
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    Constructor Create(aHelper: IHtmlHelper; aTag: string; aBaseClass: TM5SClassType); overload;
  public
    procedure AddMetroClass(aClass: TM5SClassType);
    procedure DelMetroClass(aClass: TM5SClassType);
    function AddMetro5Object(aTag: string; aBaseClass: TM5SClassType; aClasses: TArray<string>): IMetro5HtmlObject;
  public
    property BaseClass: TM5SClassType read GetBaseClass write SetBaseClass;
    property BaseColor: TM5StateColorsStyle read GetBaseColor write SetBaseColor;
  end;

type
  TMetro5HtmlColorObject = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5HtmlColorObject)
  strict private
    FStateColor: TM5StateColorsStyle;
    FFontColor: TM5StateColorsStyle;
  private
    function GetStateColor: TM5StateColorsStyle;
    function GetFontColor: TM5StateColorsStyle;
    procedure SetStateColor(const Value: TM5StateColorsStyle);
    procedure SetFontColor(const Value: TM5StateColorsStyle);
  public
    Constructor Create(aHelper: IHtmlHelper); override;
  public
    property StateColor: TM5StateColorsStyle read GetStateColor write SetStateColor;
    property FontColor: TM5StateColorsStyle read GetFontColor write SetFontColor;
  end;

type
  TMetro5Icon = class(TMetro5HtmlColorObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5HtmlColorObject, IMetro5Icon)
  strict private
    FIconType: TMetro5IconType;
  private
    function GetIconType: TMetro5IconType;
    procedure SetIconType(const Value: TMetro5IconType);
    /// Classe Icona usa l'attributo Type di TMetroIcon ed il testo corrispondente (classe) da Array
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper; aIconType: TMetro5IconType); overload;
    property IconType: TMetro5IconType read GetIconType write SetIconType;
  end;

  /// ******************************* Metro5 Elements *******************************************

  TMetro5Badge = class(TMetro5HtmlColorObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5HtmlColorObject,
    IMetro5Badge)
  private
    FBadgeType: TMetro5BadgeType;
  private
    function GetBadgeType: TMetro5BadgeType;
    procedure SetBadgeType(const Value: TMetro5BadgeType);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    property BadgeType: TMetro5BadgeType read GetBadgeType write SetBadgeType;
  end;

type
  TMetro5NavItem = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5NavItem)
  strict private
    FA: IJanuaHtmlLink;
    FIcon: IJanuaHtmlObject;
    FT: IJanuaHtmlObject;
    FB: IMetro5Badge;
  strict private
    FBadgeColor: TM5StateColorsStyle;
    FIconType: TMetro5IconType;
    FHadBadge: Boolean;
    FBadgeText: string;
    FText: string;
    FUrl: string;
  private
    function GetBadgeColor: TM5StateColorsStyle;
    function GetIconType: TMetro5IconType;
    function GetHadBadge: Boolean;
    function GetBadgeText: string;
    { TODO -cIndy : GetText GetUrl Override Virtual Verificare }
    function GetText: string; override;
    function GetUrl: string; // override;
    procedure SetBadgeColor(const Value: TM5StateColorsStyle);
    procedure SetBadgeText(const Value: string);
    procedure SetHadBadge(const Value: Boolean);
    procedure SetIconType(const Value: TMetro5IconType);
    { TODO -cIndy : SetText Override Virtual Verificare }
    procedure SetText(const Value: string); override;
    procedure SetUrl(const Value: string);
  public
    constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  public
    property Text: string read GetText write SetText;
    property Url: string read GetUrl write SetUrl;
    property HasBadge: Boolean read GetHadBadge write SetHadBadge;
    property BadgeText: string read GetBadgeText write SetBadgeText;
    property BadgeColor: TM5StateColorsStyle read GetBadgeColor write SetBadgeColor;
    property IconType: TMetro5IconType read GetIconType write SetIconType;
  end;

type
  TMetro5MenuItem = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5MenuItem)
  strict private
    FSelected: Boolean;
    FMenuText: string;
    FIcon: string;
    FUrl: string;
    FAMenuItem: IHtmlMenuItem;
  private
    function GetSelected: Boolean;
    function GetMenuText: string;
    function GetIcon: string;
    function GetUrl: string;
    function GetAMenuItem: IHtmlMenuItem;
    procedure SetSelected(const Value: Boolean);
    procedure SetIcon(const Value: string);
    procedure SetMenuText(const Value: string);
    procedure SetUrl(const Value: string);
    procedure SetAMenuItem(const Value: IHtmlMenuItem);
  public
    Constructor Create(aHelper: IHtmlHelper; aMenuItem: IHtmlMenuItem); overload;
    constructor Create(aHelper: IHtmlHelper); override;
    property HtmlMenuItem: IHtmlMenuItem read GetAMenuItem write SetAMenuItem;
    property Selected: Boolean read GetSelected write SetSelected;
    property MenuText: string read GetMenuText write SetMenuText;
    property Url: string read GetUrl write SetUrl;
    property Icon: string read GetIcon write SetIcon;
  end;

type
  TMetro5MenuGroup = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5MenuGroup)
  strict private
    FSelected: Boolean;
    FMenuText: string;
    FIcon: string;
    FUrl: string;
  protected
    FA: IJanuaHtmlLink;
    FSpanTitle: IJanuaHtmlObject;
  private
    function GetSelected: Boolean;
    function GetMenuText: string;
    function GetIcon: string;
    function GetUrl: string;
    procedure SetSelected(const Value: Boolean);
    procedure SetIcon(const Value: string);
    procedure SetMenuText(const Value: string);
    procedure SetUrl(const Value: string);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    Constructor Create(aHelper: IHtmlHelper; aMenuItem: IHtmlMenuGroup); overload;
    property Selected: Boolean read GetSelected write SetSelected;
    property MenuText: string read GetMenuText write SetMenuText;
    property Url: string read GetUrl write SetUrl;
    property Icon: string read GetIcon write SetIcon;
  end;

type
  TMetro5HorizontalMenu = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5HorizontalMenu)
  strict private
    FSelected: Boolean;
  private
    function GetSelected: Boolean;
    procedure SetSelected(const Value: Boolean);
  protected
    FULMenu: IJanuaHtmlObject;
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    Constructor Create(aHelper: IHtmlHelper; aMenu: IHtmlMenu); overload;
    property Selected: Boolean read GetSelected write SetSelected;
  end;

type
  // Horizontal Stack
  // m-stack m-stack--hor m-stack--general m-stack--demo
  // Vertical Stack
  // m-stack m-stack--ver m-stack--general m-stack--demo
  TMetro5StackItem = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5StackItem)
  strict private
    FVerAlign: TMetro5VerAlign;
    FHorAlign: TMetro5HorAlign;
    FFluid: Boolean;
  private
    function GetVerAlign: TMetro5VerAlign;
    function GetHorAlign: TMetro5HorAlign;
    function GetFluid: Boolean;
    procedure SetHorAlign(const Value: TMetro5HorAlign);
    procedure SetVerAlign(const Value: TMetro5VerAlign);
    procedure SetFluid(const Value: Boolean);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    property HorAlign: TMetro5HorAlign read GetHorAlign write SetHorAlign;
    property VerAlign: TMetro5VerAlign read GetVerAlign write SetVerAlign;
    property Fluid: Boolean read GetFluid write SetFluid;
  end;

type
  //
  TMetro5Container = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  end;

type
  // Horizontal Stack
  // m-stack m-stack--hor m-stack--general m-stack--demo
  // Vertical Stack
  // m-stack m-stack--ver m-stack--general m-stack--demo
  TMetro5Stack = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5Stack)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  strict private
    FDemo: Boolean;
    FStackAlignType: TMetro5StackAlignType;
    FStackDispType: TMetro5StackDispType;
  private
    function GetDemo: Boolean;
    function GetStackAlignType: TMetro5StackAlignType;
    function GetStackDispType: TMetro5StackDispType;
    procedure SetDemo(const Value: Boolean);
    procedure SetStackAlignType(const Value: TMetro5StackAlignType);
    procedure SetStackDispType(const Value: TMetro5StackDispType);
  public
    property StackDispType: TMetro5StackDispType read GetStackDispType write SetStackDispType;
    property StackAlignType: TMetro5StackAlignType read GetStackAlignType write SetStackAlignType;
    property Demo: Boolean read GetDemo write SetDemo;
  end;

  TMetro5PortletHead = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5PortletHead)
  protected
    FPortletTitle: IMetro5HtmlColorObject;
    FPortletSubTitle: IMetro5HtmlColorObject;
    FPortletIcon: IMetro5Icon;
  strict private
    FSubTitle: string;
    FTitle: string;
    FIcon: TMetro5IconType;
    FCaption: IMetro5HtmlColorObject;
    FIconColor: TM5StateColorsStyle;
  private
    function GetSubTitle: string;
    function GetTitle: string;
    function GetIcon: TMetro5IconType;
    function GetCaption: IMetro5HtmlColorObject;
    function GetIconColor: TM5StateColorsStyle;
    procedure SetCaption(const Value: IMetro5HtmlColorObject);
    procedure SetIcon(const Value: TMetro5IconType);
    procedure SetSubTitle(const Value: string);
    procedure SetTitle(const Value: string);
    procedure SetIconColor(const Value: TM5StateColorsStyle);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  public
    property Caption: IMetro5HtmlColorObject read GetCaption write SetCaption;
    property Title: string read GetTitle write SetTitle;
    property SubTitle: string read GetSubTitle write SetSubTitle;
    property Icon: TMetro5IconType read GetIcon write SetIcon;
    property IconColor: TM5StateColorsStyle read GetIconColor write SetIconColor;
  end;

  TMetro5PortletBody = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5PortletBody)
  strict private
    FPadded: Boolean;
  private
    function GetPadded: Boolean;
    procedure SetPadded(const Value: Boolean);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    property Padded: Boolean read GetPadded write SetPadded;
  end;

  TMetro5Portlet = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5Portlet)
  strict private
    FRounded: Boolean;
    FWidgetFit: Boolean;
    FFullHeight: Boolean;
    FBordered: Boolean;
    FPadded: Boolean;
  private
    function GetRounded: Boolean;
    function GetWidgetFit: Boolean;
    function GetFullHeight: Boolean;
    function GetBordered: Boolean;
    function GetPadded: Boolean;
    function GetPortletBody: IMetro5PortletBody;
    procedure SetBordered(const Value: Boolean);
    procedure SetFullHeight(const Value: Boolean);
    procedure SetRounded(const Value: Boolean);
    procedure SetWidgetFit(const Value: Boolean);
    procedure SetPortletBody(const Value: IMetro5PortletBody);
    function GetPortletHead: IMetro5PortletHead;
    procedure SetPortletHead(const Value: IMetro5PortletHead);
  private
    procedure SetPadded(const Value: Boolean);
  protected
    FPortletBody: IMetro5PortletBody;
    FPortletHead: IMetro5PortletHead;
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    Constructor Create(aHelper: IHtmlHelper; aHead: IMetro5PortletHead); overload; virtual;
  end;

type
  TMetro5Logo = class(TJanuaHtmlLink, IJanuaHtmlObject, IJanuaHtmlLink, IMetro5Logo)
  strict private
    FMobileImg: IJanuaHtmlImage;
    FHasMobileImg: Boolean;
  private
    function GetMobileImg: IJanuaHtmlImage;
    function GetHasMobileImg: Boolean;
    procedure SetHasMobileImg(const Value: Boolean);
    procedure SetMobileImg(const Value: IJanuaHtmlImage);
  strict protected
    FMobileImgIndex: integer;
    procedure SetIndent(const Value: integer); override;
    function BodyAfterText: string; override;
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  public
    property MobileImg: IJanuaHtmlImage read GetMobileImg write SetMobileImg;
    property HasMobileImg: Boolean read GetHasMobileImg write SetHasMobileImg;
  end;

Type
  TMetro5QuickAction = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5HtmlObject, IMetro5QuickAction)
  private
    FAText: IJanuaHtmlObject;
    FUL: IJanuaHtmlObject;
  protected
    procedure SetText(const Value: string); override;
    function GetText: string; override;
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    procedure AddItem(const aTitle, aIcon, aHref: string);
  end;

Type
  TMetro5BrandTools = class(TMetro5StackItem, IMetro5BrandTools)
  private
    FQuickActionsMenu: IMetro5QuickAction;
    function GetQuickActionsMenu: IMetro5QuickAction;
    procedure SetQuickActionsMenu(const Value: IMetro5QuickAction);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    property QuickActionsMenu: IMetro5QuickAction read GetQuickActionsMenu write SetQuickActionsMenu;
  end;

type
  TMetro5Brand = class(TMetro5StackItem, IJanuaHtmlObject, IMetro5StackItem, IMetro5Brand)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  strict private
    FImageLogo: IMetro5Logo;
    FBrandTools: IMetro5BrandTools;
  private
    function GetBrandTools: IMetro5BrandTools;
    function GetImageLogo: IMetro5Logo;
    procedure SetImageLogo(const Value: IMetro5Logo);
    procedure SetBrandTools(const Value: IMetro5BrandTools);
  public
    property ImageLogo: IMetro5Logo read GetImageLogo write SetImageLogo;
    property BrandTools: IMetro5BrandTools read GetBrandTools write SetBrandTools;
  end;

type
  TMetro5DropDown = class(TJanuaHtmlObject, IJanuaHtmlObject, IMetro5DropDown)
  strict protected
    FA: IJanuaHtmlLink;
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    Constructor Create(aHelper: IHtmlHelper; aColor: TM5StateColorsStyle; aToggle: TMetro5DropDownToggleType;
      aSize: TM5DropDownSize; aPosition: TJanuaHtmlPosition); overload;
  strict private
    FColorStyle: TM5StateColorsStyle;
    FToggle: TMetro5DropDownToggleType;
    FSize: TM5DropDownSize;
    FAlign: TJanuaHtmlPosition;
    FPersistant: Boolean;
  private
    function GetColorStyle: TM5StateColorsStyle;
    function GetToggle: TMetro5DropDownToggleType;
    function GetSize: TM5DropDownSize;
    function GetAlign: TJanuaHtmlPosition;
    function GetPersistant: Boolean;
    procedure SetColorStyle(const Value: TM5StateColorsStyle);
    procedure SetToggle(const Value: TMetro5DropDownToggleType);
    procedure SetSize(const Value: TM5DropDownSize);
    procedure SetAlign(const Value: TJanuaHtmlPosition);
    procedure SetPersistant(const Value: Boolean);
  public
    Property ColorStyle: TM5StateColorsStyle read GetColorStyle write SetColorStyle;
    Property Toggle: TMetro5DropDownToggleType read GetToggle write SetToggle;
    Property Size: TM5DropDownSize read GetSize write SetSize;
    property Align: TJanuaHtmlPosition read GetAlign write SetAlign;
    property Persistent: Boolean read GetPersistant write SetPersistant;
  end;

type
  TMetro5DropDownSearch = class(TMetro5DropDown, IMetro5DropDown, IJanuaHtmlObject)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  end;

type
  TMetro5DropDownAlert = class(TMetro5DropDown, IJanuaHtmlObject, IMetro5DropDown, IMetro5DropDownAlert)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  public
    function AddTab(aText, aName: string): IJanuaHtmlObject;
    function SearchTab(aUID: string): Boolean;
    procedure AddItem(const aTabName: string; aText, aBadgeText: string; aBadgeColor: TM5StateColorsStyle;
      const aRead: Boolean; const aUrl: string);
  strict protected
    FTabs: IList<IJanuaHtmlObject>;
  strict private
    FTabContainer: IJanuaHtmlObject;
    FTabHeader: IJanuaHtmlObject;
    FTabIndex: integer;
  private
    function GetTabContainer: IJanuaHtmlObject;
    function GetTabHeader: IJanuaHtmlObject;
    function GetTabIndex: integer;
    function GetSelectedTab: IJanuaHtmlObject;
    procedure SetTabContainer(const Value: IJanuaHtmlObject);
    procedure SetTabHeader(const Value: IJanuaHtmlObject);
    procedure SetSelectedTab(const Value: IJanuaHtmlObject);
    procedure SetTabIndex(const Value: integer);
  public
    property TabContainer: IJanuaHtmlObject read GetTabContainer write SetTabContainer;
    property TabHeader: IJanuaHtmlObject read GetTabHeader write SetTabHeader;
    property TabIndex: integer read GetTabIndex write SetTabIndex;
    property SelectedTab: IJanuaHtmlObject read GetSelectedTab write SetSelectedTab;
  end;

type
  TMetro5DropDownUser = class(TMetro5DropDown, IJanuaHtmlObject, IMetro5DropDown)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  end;

type
  TMetro5TopBar = class(TMetro5StackItem, IJanuaHtmlObject, IMetro5StackItem, IMetro5TopBar)
  private
    FContainer: IJanuaHtmlObject;
  private
    function GetContainer: IJanuaHtmlObject;
    procedure SetContainer(const Value: IJanuaHtmlObject);
  public
    procedure AddDropDown(aDrop: IMetro5DropDown);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    property Container: IJanuaHtmlObject read GetContainer write SetContainer;
  end;

type
  TMetro5GridItem = class(TMetro5HtmlObject, IJanuaHtmlObject)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  end;

type
  TMetro5Grid = class(TMetro5HtmlColorObject, IJanuaHtmlObject)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  end;

type

  // Horizontal Stack
  // m-stack m-stack--hor m-stack--general m-stack--demo
  // Vertical Stack
  // m-stack m-stack--ver m-stack--general m-stack--demo
  TMetro5HorMenu = class(TMetro5HtmlObject, IJanuaHtmlObject)
  public
    constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper; aMenu: IHtmlMenu); overload;
  end;

type
  TMetro5PageLoader = class(TJanuaHtmlObject, IJanuaHtmlObject, IMetro5PageLoader)
  strict private
    FLoadMessage: string;
    FLoadingText: string;
    FLoading: Boolean;
    FBLKU: IJanuaHtmlObject;
  private
    function GetLoadMessage: string;
    function GetLoadingText: string;
    function GetLoading: Boolean;
    procedure SetLoadMessage(const Value: string);
    procedure SetLoading(const Value: Boolean);
    procedure SetLoadingText(const Value: string);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    property LoadMessage: string read GetLoadMessage write SetLoadMessage;
    property Loading: Boolean read GetLoading write SetLoading;
    property LoadingText: string read GetLoadingText write SetLoadingText;
    function AsHtml: string; override;
  end;

type
  TMetro5HeaderTop = class(TMetro5HtmlObject, IMetro5HtmlObject, IJanuaHtmlObject, IMetro5HeaderTop)
  strict private
    FContainer: IJanuaHtmlObject;
    FHasMenu: Boolean;
    FBrand: IMetro5Brand;
  private
    function GetContainer: IJanuaHtmlObject;
    function GetHasMenu: Boolean;
    function GetLogo: IMetro5Brand;
    procedure SetContainer(const Value: IJanuaHtmlObject);
    procedure SetHasMenu(const Value: Boolean);
    procedure SetLogo(const Value: IMetro5Brand);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    procedure AddMenu(aMenu: IJanuaHtmlObject);
    property ContainerMenu: IJanuaHtmlObject read GetContainer write SetContainer;
    property HasMenu: Boolean read GetHasMenu write SetHasMenu;
    property Brand: IMetro5Brand read GetLogo write SetLogo;
  end;

type
  TMetro5HeaderBottom = class(TMetro5HtmlObject, IMetro5HtmlObject, IJanuaHtmlObject, IMetro5HeaderBottom)
  strict private
    FContainer: IJanuaHtmlObject;
  private
    function GetContainer: IJanuaHtmlObject;
    procedure SetContainer(const Value: IJanuaHtmlObject);
  public
    procedure AddMenu(aMenu: IJanuaHtmlObject);
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    destructor Destroy; override;
    property Container: IJanuaHtmlObject read GetContainer write SetContainer;
  end;

type
  // Questa parte pu? eventualmente contenere un menu, ci? non ? necessario
  TMetro5ContentHeader = class(TMetro5HtmlObject, IMetro5HtmlObject, IJanuaHtmlObject, IMetro5ContentHeader)
  strict private
    FHeaderTop: IMetro5HeaderTop;
    FHeaderBottom: IMetro5HeaderBottom;
    FHasBottom: Boolean;
    FHasTop: Boolean;
    FBackGroundColor: string;
  private
    function GetBackGroundColor: string;
    function GetHeaderTop: IMetro5HeaderTop;
    function GetHeaderBottom: IMetro5HeaderBottom;
    function GetHasBottom: Boolean;
    function GetHasTop: Boolean;
    procedure SetHeaderBottom(const Value: IMetro5HeaderBottom);
    procedure SetHeaderTop(const Value: IMetro5HeaderTop);
    procedure SetHasBottom(const Value: Boolean);
    procedure SetHasTop(const Value: Boolean);
    procedure SetBackGroundColor(const Value: string);
  strict protected
    procedure SetIndent(const Value: integer); override;
    function BodyBeforeText: string; override;
    function BodyText: string; override;
    function BodyAfterText: string; override;
  public
    procedure AddMenu(aMenu: IJanuaHtmlObject);
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    Destructor Destroy; override;
    property HeaderTop: IMetro5HeaderTop read GetHeaderTop write SetHeaderTop;
    property HeaderBottom: IMetro5HeaderBottom read GetHeaderBottom write SetHeaderBottom;
    property HasTop: Boolean read GetHasTop write SetHasTop;
    property HasBottom: Boolean read GetHasBottom write SetHasBottom;
    property BackGroundColor: string read GetBackGroundColor write SetBackGroundColor;
  end;

type
  TMetro5FooterNav = class(TMetro5HtmlObject, IMetro5HtmlObject, IMetro5FooterNav)
  private
    FList: IJanuaHtmlObject;
    FIsInline: Boolean;
    procedure SetList(const Value: IJanuaHtmlObject);
    function GetList: IJanuaHtmlObject;
    procedure SetIsInline(const Value: Boolean);
    function GetIsInline: Boolean;
  public
    constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    procedure AddNavItem(aUrl, aText: string; aIcon: TMetro5IconType = TMetro5IconType.jmiNone; aTitle: string = '';
      aTarget: Boolean = False);
    property List: IJanuaHtmlObject read FList write SetList;
    property IsInline: Boolean read FIsInline write SetIsInline;
  end;

type
  TMetro5PortletSettings = record
    Title: string;
    BaseColor: TM5StateColorsStyle;

  end;

type
  TMetro5PortletWidget = class(TMetro5HtmlObject, IMetro5HtmlObject)
  public
    constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper; aSettings: TMetro5PortletSettings); overload;
  private
    FTitle: string;
    FTitleColor: TM5StateColorsStyle;
    FTitleObject: IMetro5HtmlObject;
    procedure SetTitle(const Value: string);
    procedure SetTitleColor(const Value: TM5StateColorsStyle);
  protected
    procedure SetBaseColor(const Value: TM5StateColorsStyle); override;
  public
    property Title: string read FTitle write SetTitle;
    property TitleColor: TM5StateColorsStyle read FTitleColor write SetTitleColor;

  end;

type
  TMetro5ContentFooter = class(TJanuaFooter, IJanuaHtmlObject, IJanuaFooter, IMetro5Footer)
  protected
    FWidgetRight: IJanuaHtmlObject;
    FWidgetLeft: IJanuaHtmlObject;
    FContainer: IJanuaHtmlObject;
  protected
    procedure Setbgcolor(const Value: string); override;
    function GetWidgetRight: IJanuaHtmlObject;
    function GetWidgetLeft: IJanuaHtmlObject;
    procedure SetWidgetLeft(const Value: IJanuaHtmlObject);
    procedure SetWidgetRight(const Value: IJanuaHtmlObject);
  public
    constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  end;

type
  TMetro5Content = class(TMetro5Grid, IMetro5HtmlObject, IJanuaHtmlObject, IMetro5Content)
  strict private
    FMetro5ContentHeader: IMetro5ContentHeader;
    FMetro5Footer: IMetro5Footer;
    FBody: IJanuaHtmlObject;
    FBodyWrapper: IJanuaHtmlObject;
  private
    function GetFooter: IMetro5Footer;
    procedure SetFooter(const Value: IMetro5Footer);
    //
    function GetMetro5ContentHeader: IMetro5ContentHeader;
    function GetBody: IJanuaHtmlObject;
    function GetBodyWrapper: IJanuaHtmlObject;
    procedure SetMetro5ContentHeader(const Value: IMetro5ContentHeader);
    procedure SetBody(const Value: IJanuaHtmlObject);
    procedure SetBodyWrapper(const Value: IJanuaHtmlObject);
  public
    procedure AddMenu(aMenu: IJanuaHtmlObject);
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    Destructor Destroy; override;
    property Header: IMetro5ContentHeader read GetMetro5ContentHeader write SetMetro5ContentHeader;
    property Body: IJanuaHtmlObject read GetBody write SetBody;
    property BodyWrapper: IJanuaHtmlObject read GetBodyWrapper write SetBodyWrapper;
    property Footer: IMetro5Footer read GetFooter write SetFooter;
  end;

  // IMetro5FrameContent
type
  TMetro5FrameContent = class(TMetro5Grid, IMetro5HtmlObject, IJanuaHtmlObject, IMetro5FrameContent)
  strict private
    FBody: IJanuaHtmlObject;
    FBodyWrapper: IJanuaHtmlObject;
  private
    function GetBody: IJanuaHtmlObject;
    function GetBodyWrapper: IJanuaHtmlObject;
    procedure SetBody(const Value: IJanuaHtmlObject);
    procedure SetBodyWrapper(const Value: IJanuaHtmlObject);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    Destructor Destroy; override;
    property Body: IJanuaHtmlObject read GetBody write SetBody;
    property BodyWrapper: IJanuaHtmlObject read GetBodyWrapper write SetBodyWrapper;
  end;

type
  TMetro5Article = class(TMetro5HtmlColorObject, IMetro5HtmlObject, IJanuaHtmlObject, IMetro5Article)
  strict private
    FImage: IJanuaHtmlImage;
    FTitleUrl: IJanuaHtmlLink;
    FAuthor: IMetro5HtmlObject;
    FAuthorLabel: IMetro5HtmlObject;
    FAuthorName: IMetro5HtmlObject;
    FDateLabel: IMetro5HtmlObject;
    FDescription: IMetro5HtmlObject;
    FReleaseDate: IMetro5HtmlObject;
    FTitleObject: IMetro5HtmlObject;
    FImageContainer: IJanuaHtmlObject;
    FColor: Janua.Html.Metro5.Types.TM5StateColorsStyle;
    FIcon: Janua.Html.Metro5.Types.TMetro5IconType;
    FIConClass: string;
    FColorClass: string;
    FColorButtonClass: string;
    FButton: IJanuaHtmlLink;
    FHasImage: Boolean;
    FLinkUrl: string;
    FPrintDate: Boolean;
  private
    function GetButton: IJanuaHtmlLink;
    function GetHasImage: Boolean;
    function GetLinkUrl: string;
    function GetImage: IJanuaHtmlImage;
    function GetTitleUrl: IJanuaHtmlLink;
    function GetAuthor: string;
    function GetAuthorLabel: string;
    function GetAuthorName: string;
    function GetDateLabel: string;
    function GetDescription: string;
    function GetReleaseDate: string;
    function GetTitle: String;
    function GetImageContainer: IJanuaHtmlObject;
    function GetColor: Janua.Html.Metro5.Types.TM5StateColorsStyle;
    function GetIcon: Janua.Html.Metro5.Types.TMetro5IconType;
    function GetIConClass: string;
    function GetColorClass: string;
    function GetColorButtonClass: string;
    procedure SetAuthor(const Value: string);
    procedure SetAuthorLabel(const Value: string);
    procedure SetAuthorName(const Value: string);
    procedure SetDateLabel(const Value: string);
    procedure SetDescription(const Value: string);
    procedure SetReleaseDate(const Value: string);
    procedure SetTitle(const Value: string);
    procedure SetButton(const Value: IJanuaHtmlLink);
    function GetImageUrl: string;
    procedure SetImageUrl(const Value: string);
    procedure SetHasImage(const Value: Boolean);
    procedure SetImageContainer(const Value: IJanuaHtmlObject);
    procedure SetLinkUrl(const Value: string);
    function GetPrintDate: Boolean;
    procedure SetPrintDate(const Value: Boolean);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    Destructor Destroy; override;
    property Title: string read GetTitle write SetTitle;
    property Description: string read GetDescription write SetDescription;
    property Author: string read GetAuthor write SetAuthor;
    property AuthorLabel: string read GetAuthorLabel write SetAuthorLabel;
    property AuthorName: string read GetAuthorName write SetAuthorName;
    property DateLabel: string read GetDateLabel write SetDateLabel;
    property ReleaseDate: string read GetReleaseDate write SetReleaseDate;
    property Button: IJanuaHtmlLink read GetButton write SetButton;
    property ImageUrl: string read GetImageUrl write SetImageUrl;
    property HasImage: Boolean read GetHasImage write SetHasImage;
    property ImageContainer: IJanuaHtmlObject read GetImageContainer write SetImageContainer;
    property LinkUrl: string read GetLinkUrl write SetLinkUrl;
    property PrintDate: Boolean read GetPrintDate write SetPrintDate;
  end;

type
  TMetro5Articles = class(TMetro5PortletBody, IMetro5PortletBody, IMetro5HtmlObject, IJanuaHtmlObject, IMetro5Articles)
  strict private
    FDescriptionField: IJanuaField;
    FUrlField: IJanuaField;
    FLimit: integer;
    FAuthorField: IJanuaField;
    FDateField: IJanuaField;
    FAuthorNameField: IJanuaField;
    FRecordSet: IJanuaRecordSet;
    FImageField: IJanuaField;
    FIDField: IJanuaField;
    FTitleField: IJanuaField;
  private
    function GetDescriptionField: IJanuaField;
    function GetUrlField: IJanuaField;
    function GetLimit: integer;
    function GetAuthorField: IJanuaField;
    function GetDateField: IJanuaField;
    function GetAuthorNameField: IJanuaField;
    function GetRecordSet: IJanuaRecordSet;
    function GetImageField: IJanuaField;
    function GetIDField: IJanuaField;
    function GetTitleField: IJanuaField;
    procedure SetAuthorField(const Value: IJanuaField);
    procedure SetAuthorNameField(const Value: IJanuaField);
    procedure SetDateField(const Value: IJanuaField);
    procedure SetDescriptionField(const Value: IJanuaField);
    procedure SetIDField(const Value: IJanuaField);
    procedure SetImageField(const Value: IJanuaField);
    procedure SetUrlField(const Value: IJanuaField);
    procedure SetLimit(const Value: integer);
    procedure SetRecordSet(const Value: IJanuaRecordSet);
    procedure SetTitleField(const Value: IJanuaField);
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    procedure Generate;
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
    property UrlField: IJanuaField read GetUrlField write SetUrlField;
    property AuthorField: IJanuaField read GetAuthorField write SetAuthorField;
    property AuthorNameField: IJanuaField read GetAuthorNameField write SetAuthorNameField;
    property DateField: IJanuaField read GetDateField write SetDateField;
    property TitleField: IJanuaField read GetTitleField write SetTitleField;
    property DescriptionField: IJanuaField read GetDescriptionField write SetDescriptionField;
    property IDField: IJanuaField read GetIDField write SetIDField;
    property ImageField: IJanuaField read GetImageField write SetImageField;
    property Limit: integer read GetLimit write SetLimit;
  end;

type
  TJanuaMetro5Form = class(TJanuaHtmlForm, IJanuaHtmlForm, IJanuaHtmlObject, IJanuaMetro5Form)
    constructor Create(aHelper: IHtmlHelper); override;
    function AddGroupInput(aInputType: THtmlInputType; aPlaceHolder, aName: string): IJanuaHtmlObject;
  end;

type
  TMetro5HtmlHelper = class(TInterfacedObject, IHtmlHelper)
  public
    function FactoryCreate(aTag: string; aAutoCloseTag: Boolean = False): IJanuaHtmlObject; overload;
    function FactoryCreate(aTag: string; aParams: TJanuaHtmlParams; aAutoCloseTag: Boolean = False;
      aTerminateSlash: Boolean = False): IJanuaHtmlObject; overload;
    function FactoryCreate(const aTag, aValue: string; aNewLine: Boolean = False): IJanuaHtmlObject; overload;
    function FactoryCreate(const aTag: string; aStrings: TStrings; aNewLine: Boolean = True): IJanuaHtmlObject;
      overload;
    function FactoryCreate(const aTag, aValue: string; aParams: TJanuaHtmlParams; aNewLine: Boolean = False)
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

type
  TMetro5Factory = class
  public
    class function CreateMetro5Select(const aName: string; aRecordset: IJanuaRecordSet;
      aValueField, aTextField: IJanuaField; aSelectedValue: TValue): IJanuaHtmlObject;
    class function CreateMetro5Badge(aBadgeType: TMetro5BadgeType; aStateColor: TM5StateColorsStyle = m5sDanger;
      aValue: string = ''): IJanuaHtmlObject;
    class function CreateMetro5Icon(aIconType: TMetro5IconType; Color: TM5StateColorsStyle): IJanuaHtmlObject;
    class function CreateMetro5PortletHead(aTitle, aSubTitle: string; aIconType: TMetro5IconType = jmiNone;
      aIconColor: TM5StateColorsStyle = m5sNone): IJanuaHtmlObject;
    class function CreatePortlet(aHead: IMetro5PortletHead): IJanuaHtmlObject;
    // TMetro5Portlet.Create(aHelper: IHtmlHelper; aHead: TMetro5PortletHead);
    class function CreateArticle(aLang: TJanuaLanguage; aTitle, aDes, aAuth, aImgUrl, aUrl: string; aDate: TDateTime)
      : IJanuaHtmlObject;
    class function CreateDropDownSearch: IJanuaHtmlObject;
    class function CreateTopBar(aDropDowns: array of IMetro5DropDown): IJanuaHtmlObject;
    class function CreateHtmlHelper: Janua.Html.Intf.IHtmlHelper;
    class function CreateNavItem(aHasBadge: Boolean; aBadgeColor: TM5StateColorsStyle; aIconType: TMetro5IconType;
      aText, aUrl, aBadgeText: string): IJanuaHtmlObject;
    class function CreateBrand: IJanuaHtmlObject; // TMetro5Brand
    {
      r:= TMetro5Factory.CreateArticle(TJanuaLanguage.jlaItalian,  'CDM Genova Arrivano le prime anticipazioni' ,
      'Le conferme della rosa per il prossimo anno.', 'Dilettantissimo', Date(), 'http://www.ergomercator.com');
    }
  end;

type
  TMetro5LoginBody = class(TMetro5HtmlObject, IJanuaHtmlObject, IMetro5LoginBody)
  public
    constructor Create(aHelper: IHtmlHelper); override;
  strict private
    FLoginForm: IJanuaMetro5Form;
    FRegisterForm: IJanuaMetro5Form;
  private
    function GetLoginForm: IJanuaMetro5Form;
    function GetRegisterForm: IJanuaMetro5Form;
    procedure SetLoginForm(const Value: IJanuaMetro5Form);
    procedure SetRegisterForm(const Value: IJanuaMetro5Form);
  public
    property LoginForm: IJanuaMetro5Form read GetLoginForm write SetLoginForm;
    property RegisterForm: IJanuaMetro5Form read GetRegisterForm write SetRegisterForm;
  end;

var
  // Variabile Globale di Html5 Metro Helper
  Metro5Helper: Janua.Html.Intf.IHtmlHelper;

implementation

uses Janua.Core.Functions, Janua.Mocks.Helpers, Janua.Application.Framework;

function FontClass(aFontType: TM5StateColorsStyle): String; inline;
begin
  // m--font-success
  Result := 'm--font-' + M5StateColors[aFontType]
end;

{ TMetro5HtmlHelper }

function TMetro5HtmlHelper.FactoryCreate(aTag: string; aParams: TJanuaHtmlParams;
  aAutoCloseTag, aTerminateSlash: Boolean): IJanuaHtmlObject;
begin
  Result := TMetro5HtmlObject.Create(self as IHtmlHelper, aTag, aParams, aAutoCloseTag, aTerminateSlash)
end;

function TMetro5HtmlHelper.FactoryCreate(aTag: string; aAutoCloseTag: Boolean): IJanuaHtmlObject;
begin
  Result := TMetro5HtmlObject.Create(self as IHtmlHelper, aTag, aAutoCloseTag)
end;

function TMetro5HtmlHelper.FactoryCreate(const aTag, aValue: string; aNewLine: Boolean): IJanuaHtmlObject;
begin
  Result := TMetro5HtmlObject.Create(self as IHtmlHelper, aTag, aValue, aNewLine)
end;

function TMetro5HtmlHelper.FactoryCreate(const aTag, aValue: string; aParams: TJanuaHtmlParams; aNewLine: Boolean)
  : IJanuaHtmlObject;
begin
  Result := TMetro5HtmlObject.Create(self as IHtmlHelper, aTag, aValue, aParams, aNewLine)
end;

function TMetro5HtmlHelper.FactoryCreate(const aTag: string; aStrings: TStrings; aNewLine: Boolean): IJanuaHtmlObject;
begin
  Result := TMetro5HtmlObject.Create(self as IHtmlHelper, aTag, aStrings, aNewLine)
end;

function TMetro5HtmlHelper.FactoryCreate(aTag: string; aClasses: TArray<string>): IJanuaHtmlObject;
var
  s: string;
begin
  Result := TMetro5HtmlObject.Create(self as IHtmlHelper, aTag, False);
  for s in aClasses do
    (Result as TMetro5HtmlObject).AddClass(s);
end;

function TMetro5HtmlHelper.FactoryInput(aInputType: THtmlInputType; aPlaceHolder, aName: string): IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(self as IHtmlHelper, 'div', ['form-group', 'm-form__group']);
  Result.Add(TJanuaHtmlObject.Create(self as IHtmlHelper, 'input', False));
  Result.SelectedItem.AddParam('name', aName);
  Result.SelectedItem.AddParam('placeholder', aPlaceHolder);
  Result.SelectedItem.AddParam('type', HtmlInputText[aInputType]);
  if not(aInputType in [THtmlInputType.Inputcheckbox]) then
    Result.AddClasses(['form-control', 'm-input']);
end;

function TMetro5HtmlHelper.GetTheme: string;
begin
  Result := FTheme;
end;

procedure TMetro5HtmlHelper.SetTheme(Value: string);
begin
  FTheme := Value;
end;

{ TMetro5HtmlObject }

function TMetro5HtmlObject.AddMetro5Object(aTag: string; aBaseClass: TM5SClassType; aClasses: TArray<string>)
  : IMetro5HtmlObject;
begin
  Result := TMetro5HtmlObject.Create(self.HtmlHelper, aTag, aBaseClass);
  Result.AddClasses(aClasses);
  self.Add(Result);
end;

procedure TMetro5HtmlObject.AddMetroClass(aClass: TM5SClassType);
begin
  if not(aClass in self.FMetroClasses) then
  begin
    FMetroClasses := self.FMetroClasses + [aClass];
    AddClass(M5SClasses[aClass]);
  end;
end;

constructor TMetro5HtmlObject.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  FBaseClass := TM5SClassType.None;
  self.FBaseColor := TM5StateColorsStyle.m5sNone;
end;

constructor TMetro5HtmlObject.Create(aHelper: IHtmlHelper; aTag: string; aBaseClass: TM5SClassType);
begin
  self.Create(aHelper, aTag, False);
  self.BaseClass := aBaseClass;
end;

procedure TMetro5HtmlObject.DelMetroClass(aClass: TM5SClassType);
begin
  if aClass in self.FMetroClasses then
  begin
    DelClass(M5SClasses[aClass]);
    self.FMetroClasses := self.FMetroClasses - [aClass];
  end;
end;

function TMetro5HtmlObject.GetBaseClass: TM5SClassType;
begin
  Result := self.FBaseClass
end;

function TMetro5HtmlObject.GetBaseColor: TM5StateColorsStyle;
begin
  Result := self.FBaseColor
end;

procedure TMetro5HtmlObject.SetBaseClass(const Value: TM5SClassType);
begin
  if Value <> self.FBaseClass then
  begin
    if Value <> TM5SClassType.None then
      AddMetroClass(Value);
    if FBaseClass <> TM5SClassType.None then
      DelClass(M5SClasses[FBaseClass]);
    FBaseClass := Value;
  end;
end;

procedure TMetro5HtmlObject.SetBaseColor(const Value: TM5StateColorsStyle);
begin
  if FBaseColor <> Value then
  begin
    if Value = TM5StateColorsStyle.m5sNone then
      AddClass('m--font-' + M5StateColors[Value]);
    if FBaseColor = TM5StateColorsStyle.m5sNone then
      DelClass('m--font-' + M5StateColors[FBaseColor]);
    FBaseColor := Value;
  end;
end;

{ TMetro5PageLoader }

function TMetro5PageLoader.AsHtml: string;
begin
  if self.FLoading then
    Result := inherited
  else
    Result := '';

end;

constructor TMetro5PageLoader.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited Create(aHelper);
  self.CommentBefore := 'begin::Page Loader';
  self.CommentAfter := 'end::Page Loader';
  self.tag := 'div';
  self.AddClasses(['m-page-loader', 'm-page-loader--base']);
  self.Id := 'pageloader';
  // singleton .................................................................
  self.UID := 'TM5PL';
  Add(self.HtmlHelper.FactoryCreate('div', ['m-blockui']));
  SelectedItem.UID := 'BLKU';
  self.FBLKU := SelectedItem;
  self.LoadMessage := 'Attendere Prego';
  SelectedItem.Add(HtmlHelper.FactoryCreate('span'));
  SelectedItem.SelectedItem.Add(HtmlHelper.FactoryCreate('div', ['m-loader', 'm-loader-brand']));
  SelectedItem.SelectedItem.SelectedItem.NewLine := False;
end;

function TMetro5PageLoader.GetLoading: Boolean;
begin
  Result := self.FLoading
end;

function TMetro5PageLoader.GetLoadingText: string;
begin
  Result := self.FLoadingText
end;

function TMetro5PageLoader.GetLoadMessage: string;
begin
  Result := self.FLoadMessage
end;

procedure TMetro5PageLoader.SetLoading(const Value: Boolean);
begin
  FLoading := Value;
end;

procedure TMetro5PageLoader.SetLoadingText(const Value: string);
begin
  FLoadingText := Value;
end;

procedure TMetro5PageLoader.SetLoadMessage(const Value: string);
begin
  FLoadMessage := Value;
  if Assigned(self.FBLKU) then
  begin
    if FBLKU.Count = 0 then
      FBLKU.Add(HtmlHelper.FactoryCreate('span'));
    FBLKU.SelectedItem.SetLineText('Attendere Prego ...');
  end;
  {
    if FList[0].UID = 'BLKU' then
    begin
    if FList[0].Count = 0 then
    SelectedItem.Add(HtmlHelper.FactoryCreate('span'));
    FList[0].SelectedItem.SetLineText('Attendere Prego ...');
    end;
  }
end;

{ TMetro5CustomFooter }

constructor TMetro5ContentFooter.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  LItem: IJanuaHtmlObject;
begin
  inherited;
  // <footer class="m-grid__item m-footer " style="background-color:#000">
  // il background color ? legato ad una propriet? BackgroundColor.
  AddClasses(['m-grid__item', 'm-footer']);
  // <div class="m-container m-container--fluid m-container--full-height m-page__container">
  // sostituito da Div senza Classi aggiunte ..................................................................
  // AddSimpleTag('div', '', True, ['m-container m-container--fluid', 'm-container--full-height', 'm-page__container']);
  self.AddSimpleTag('div', '', True, []);
  LItem := SelectedItem;
  // FContainer ? fondamentale per impostare colori e stili
  self.FContainer := LItem;
  // <div class="m-container m-container--fluid m-container--full-height m-page__container">
  LItem.AddSimpleTag('div', '', True, ['m-container', 'm-container--fluid', 'm-container--full-height',
    'm-page__container']);
  // <div class="m-footer__wrapper">
  LItem := LItem.SelectedItem;
  LItem.AddSimpleTag('div', '', True, ['m-footer__wrapper']);
  // <div class="m-stack m-stack--flex-tablet-and-mobile m-stack--ver m-stack--desktop">
  LItem := LItem.SelectedItem;
  LItem.AddSimpleTag('div', '', True, ['m-stack', 'm-stack--flex-tablet-and-mobile', 'm-stack--ver',
    'm-stack--desktop']);
  LItem := LItem.SelectedItem;
  // l'ultimo livello ? dato dai Widget di sinistra e di Destra.

  // Widget Sinistra FWidgetLeft .....................................................................
  // <div class="m-stack__item m-stack__item--left m-stack__item--middle m-stack__item--first">
  LItem.AddSimpleTag('div', '', True, ['m-stack__item', 'm-stack__item--left', 'm-stack__item--middle',
    'm-stack__item--last']);
  FWidgetLeft := LItem.SelectedItem;

  // Widget Destra FWidgetRight .....................................................................
  // <div class="m-stack__item m-stack__item--right m-stack__item--middle m-stack__item--first">
  LItem.AddSimpleTag('div', '', True, ['m-stack__item', 'm-stack__item--right', 'm-stack__item--middle',
    'm-stack__item--first']);
  FWidgetRight := LItem.SelectedItem;

  {

    **  <div class="m-container m-container--fluid m-container--full-height m-page__container">
    **   <div class="m-footer__wrapper">
    ** <div class="m-stack m-stack--flex-tablet-and-mobile m-stack--ver m-stack--desktop">
    ** <div class="m-stack__item m-stack__item--left m-stack__item--middle m-stack__item--last">
    <span class="m-footer__copyright">
    2017 ? Metronic theme by <a href="https://keenthemes.com" class="m-link">Keenthemes</a>
    </span>
    </div>
    <div class="m-stack__item m-stack__item--right m-stack__item--middle m-stack__item--first">
    <ul class="m-footer__nav m-nav m-nav--inline m--pull-right">
    <li class="m-nav__item">
    <a href="#" class="m-nav__link">
    <span class="m-nav__link-text">About</span>
    </a>
    </li>
    <li class="m-nav__item">
    <a href="#" class="m-nav__link">
    <span class="m-nav__link-text">Privacy</span>
    </a>
    </li>
    <li class="m-nav__item">
    <a href="#" class="m-nav__link">
    <span class="m-nav__link-text">T&amp;C</span>
    </a>
    </li>
    <li class="m-nav__item">
    <a href="#" class="m-nav__link">
    <span class="m-nav__link-text">Purchase</span>
    </a>
    </li>
    <li class="m-nav__item">
    <a href="#" class="m-nav__link" data-toggle="m-tooltip" title="" data-placement="left" data-original-title="Support Center">
    <i class="m-nav__link-icon flaticon-info m--icon-font-size-lg3"></i>
    </a>
    </li>
    </ul>
    </div>
    </div>
    </div>
    </div>
  }
end;

function TMetro5ContentFooter.GetWidgetLeft: IJanuaHtmlObject;
begin
  Result := self.FWidgetLeft
end;

function TMetro5ContentFooter.GetWidgetRight: IJanuaHtmlObject;
begin
  Result := self.FWidgetRight
end;

procedure TMetro5ContentFooter.Setbgcolor(const Value: string);
begin
  inherited;
  if Assigned(self.FContainer) and (Value <> '') then
    self.FContainer.AddStyle(THtmlStyle.BackGroundColor, Value);

end;

procedure TMetro5ContentFooter.SetWidgetLeft(const Value: IJanuaHtmlObject);
begin
  FWidgetLeft := Value;
end;

procedure TMetro5ContentFooter.SetWidgetRight(const Value: IJanuaHtmlObject);
begin
  FWidgetRight := Value;
end;

{ TMetro5Content }

procedure TMetro5Content.AddMenu(aMenu: IJanuaHtmlObject);
begin
  if Assigned(FMetro5ContentHeader) then
    FMetro5ContentHeader.AddMenu(aMenu)
  else
    self.Add(aMenu);
end;

constructor TMetro5Content.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  // Creo il Content che ? un Div di classe Grid Page Root
  self.tag := 'div';
  self.AddClasses(['m-grid', 'm-grid--hor', 'm-grid--root', 'm-page']);
  self.CommentBefore := 'begin:: Page';
  self.CommentAfter := 'end:: Page';

  // Aggiungo l'Header
  self.FMetro5ContentHeader := TMetro5ContentHeader.Create(self.HtmlHelper);
  self.Add(self.FMetro5ContentHeader); // nella prima parte va il Metro Content Header ...........

  // il Boby deve essere 'racchiuso' in un Wrapper -----------------------------------------------
  self.AddSimpleTag('div', '', True, ['m-grid__item m-grid__item--fluid', 'm-grid']);
  FBodyWrapper := self.SelectedItem;
  FBodyWrapper.CommentBefore := 'begin::Body';
  FBodyWrapper.CommentAfter := 'end::Body';
  self.FBody := TMetro5GridItem.Create(self.HtmlHelper);
  self.FBody.AddClasses(['m-grid__item--fluid', 'm-wrapper']);
  // self.FBody.AddStyle(THtmlStyle.BackgroundColor, '#3E5062');
  FBodyWrapper.Add(self.FBody);

  // Termino con il Footer........................................................................
  self.FMetro5Footer := TMetro5ContentFooter.Create(aHelper);
  self.Add(self.FMetro5Footer);
end;

destructor TMetro5Content.Destroy;
begin
  inherited;
end;

function TMetro5Content.GetBody: IJanuaHtmlObject;
begin
  Result := self.FBody
end;

function TMetro5Content.GetBodyWrapper: IJanuaHtmlObject;
begin
  Result := self.FBodyWrapper
end;

function TMetro5Content.GetFooter: IMetro5Footer;
begin
  Result := self.FMetro5Footer
end;

function TMetro5Content.GetMetro5ContentHeader: IMetro5ContentHeader;
begin
  Result := self.FMetro5ContentHeader
end;

procedure TMetro5Content.SetBody(const Value: IJanuaHtmlObject);
begin
  FBody := Value;
end;

procedure TMetro5Content.SetBodyWrapper(const Value: IJanuaHtmlObject);
begin
  FBodyWrapper := Value;
end;

procedure TMetro5Content.SetFooter(const Value: IMetro5Footer);
begin
  self.FMetro5Footer := Value;
end;

procedure TMetro5Content.SetMetro5ContentHeader(const Value: IMetro5ContentHeader);
begin
  FMetro5ContentHeader := Value;
end;

{ TMetro5ContentHeader }

procedure TMetro5ContentHeader.AddMenu(aMenu: IJanuaHtmlObject);
begin
  if self.FHasBottom then
    self.FHeaderBottom.AddMenu(aMenu)
  else if self.FHasTop then
    self.FHeaderTop.AddMenu(aMenu)
  else
    self.Add(aMenu);

end;

function TMetro5ContentHeader.BodyAfterText: string;
begin
  Result := inherited + self.FHeaderBottom.AsHtml;
end;

function TMetro5ContentHeader.BodyBeforeText: string;
begin
  Result := inherited + self.FHeaderTop.AsHtml;
end;

function TMetro5ContentHeader.BodyText: string;
begin
  Result := inherited
end;

constructor TMetro5ContentHeader.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  // Header fa parte del grid system
  self.BaseClass := TM5SClassType.GridItem;
  self.tag := 'div';
  self.Id := 'm_header';
  self.AddClasses(['m-grid__item', 'm-header']);
  self.AddParam('m-minimize', 'minimize');
  self.AddParam('m-minimize-mobile', 'minimize');
  self.AddParam('m-minimize-offset', '10');
  self.AddParam('m-minimize-mobile-offset', '10');
  FHeaderBottom := TMetro5HeaderBottom.Create(self.HtmlHelper);
  FHeaderTop := TMetro5HeaderTop.Create(self.HtmlHelper);
  FHasTop := True;
  FHasBottom := True;
  self.CommentBefore := 'begin::Header';
  self.CommentAfter := 'end::Header';
end;

destructor TMetro5ContentHeader.Destroy;
begin
  inherited;
end;

function TMetro5ContentHeader.GetBackGroundColor: string;
begin
  Result := self.FBackGroundColor
end;

function TMetro5ContentHeader.GetHasBottom: Boolean;
begin
  Result := self.FHasBottom
end;

function TMetro5ContentHeader.GetHasTop: Boolean;
begin
  Result := self.FHasTop
end;

function TMetro5ContentHeader.GetHeaderBottom: IMetro5HeaderBottom;
begin
  Result := self.FHeaderBottom
end;

function TMetro5ContentHeader.GetHeaderTop: IMetro5HeaderTop;
begin
  Result := self.FHeaderTop
end;

procedure TMetro5ContentHeader.SetBackGroundColor(const Value: string);
begin
  FBackGroundColor := Value;
  if FBackGroundColor <> '' then
  begin
    // background:#3E5062
    self.AddStyle(THtmlStyle.BackGroundColor, Value);
  end;

end;

procedure TMetro5ContentHeader.SetHasBottom(const Value: Boolean);
begin
  FHasBottom := Value;
end;

procedure TMetro5ContentHeader.SetHasTop(const Value: Boolean);
begin
  FHasTop := Value;
end;

procedure TMetro5ContentHeader.SetHeaderBottom(const Value: IMetro5HeaderBottom);
begin
  FHeaderBottom := Value;
end;

procedure TMetro5ContentHeader.SetHeaderTop(const Value: IMetro5HeaderTop);
begin
  FHeaderTop := Value;
end;

procedure TMetro5ContentHeader.SetIndent(const Value: integer);
begin
  inherited;
  self.FHeaderTop.Level := self.Level + 1;
  self.FHeaderBottom.Level := self.Level + 1;
end;

{ TMetro5Badge }

constructor TMetro5Badge.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'span';
  self.NewLine := False;
  self.BaseClass := TM5SClassType.Badge;
  self.StateColor := TM5StateColorsStyle.m5sDanger;
  FBadgeType := TMetro5BadgeType.Default;
end;

function TMetro5Badge.GetBadgeType: TMetro5BadgeType;
begin
  Result := self.FBadgeType
end;

procedure TMetro5Badge.SetBadgeType(const Value: TMetro5BadgeType);
begin
  if FBadgeType <> Value then
  begin
    case FBadgeType of
      Rounded:
        begin
          self.AddClass('m-badge--wide');
          self.AddClass('m-badge--rounded');
        end;
      Wide:
        self.DelClass('m-badge--wide');
    end;

    case Value of
      Rounded:
        begin
          self.AddClass('m-badge--wide');
          self.AddClass('m-badge--rounded');
        end;
      Wide:
        self.AddClass('m-badge--wide');
    end;
    FBadgeType := Value
  end;
end;

{ TMetro5Factory }

class function TMetro5Factory.CreateArticle(aLang: TJanuaLanguage; aTitle, aDes, aAuth, aImgUrl, aUrl: string;
  aDate: TDateTime): IJanuaHtmlObject;
begin
  Result := TMetro5Article.Create(Metro5Helper);
  Result.Title := aTitle;
  (Result as IMetro5Article).Description := aDes;
  (Result as IMetro5Article).AuthorLabel := 'di:';
  (Result as IMetro5Article).Author := 'Autore';
  (Result as IMetro5Article).AuthorName := aAuth;
  (Result as IMetro5Article).DateLabel := 'Data: ';
  (Result as IMetro5Article).ReleaseDate := DateTimeToStr(aDate);
  (Result as IMetro5Article).PrintDate := not(aDate <= 0.0);
  // Result.Button.Text.Text := 'Leggi';
  (Result as IMetro5Article).Button.LinkUrl := aUrl;
  (Result as IMetro5Article).LinkUrl := aUrl;
end;

class function TMetro5Factory.CreateBrand: IJanuaHtmlObject;
begin
  Result := TMetro5Brand.Create(Metro5Helper);
end;

class function TMetro5Factory.CreateDropDownSearch: IJanuaHtmlObject;
begin
  Result := TMetro5DropDownSearch.Create(Metro5Helper);
end;

class function TMetro5Factory.CreateHtmlHelper: Janua.Html.Intf.IHtmlHelper;
begin
  Result := TMetro5HtmlHelper.Create;
end;

class function TMetro5Factory.CreateMetro5Select(const aName: string; aRecordset: IJanuaRecordSet;
  aValueField, aTextField: IJanuaField; aSelectedValue: TValue): IJanuaHtmlObject;
var
  LSelected: Boolean;
  LSelect: IHtmlSelect;
begin
  Guard.CheckTrue(aName <> '', 'CreateSelect aName is nil');
  Guard.CheckNotNull(aRecordset, 'CreateSelect aRecordset is nil');
  Guard.CheckNotNull(aValueField, 'CreateSelect aValueField is nil');
  Guard.CheckNotNull(aTextField, 'CreateSelect aTextField is nil');
  // form-group m-form__group row
  Result := TJanuaHtmlObject.Create(Metro5Helper, 'div', ['form-group', 'm-form__group row']);

  LSelect := THtmlSelect.Create(JanuaHtmlHelper);
  LSelect.AddParam('name', aName.ToLower);

  if aRecordset.RecordCount > 0 then
  begin
    aRecordset.First;
    while not aRecordset.Eof do
    begin
      LSelected := (not aSelectedValue.IsEmpty and aValueField.Value.Equals(aSelectedValue)) or
        (aSelectedValue.IsEmpty and (aRecordset.ItemIndex = 0));
      LSelect.AddItem(aValueField.AsString, aTextField.AsString, LSelected);
      aRecordset.Next;
    end;
  end;

  (*
    <span class="select2 select2-container select2-container--default select2-container--below"
    dir="ltr" data-select2-id="1" style="width: 529.503662109375px;">
    <span class="selection">
    <span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true"
    aria-expanded="false" tabindex="0" aria-labelledby="select2-m_select2_1-container">
    <span class="select2-selection__rendered" id="select2-m_select2_1-container" role="textbox"
    aria-readonly="true" title="Alaska">Alaska</span>
    <span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span>
    </span></span><span class="dropdown-wrapper" aria-hidden="true">
    </span></span>
  *)

end;

class function TMetro5Factory.CreateMetro5Badge(aBadgeType: TMetro5BadgeType; aStateColor: TM5StateColorsStyle;
  aValue: string): IJanuaHtmlObject; // TMetro5Badge;
begin
  Result := TMetro5Badge.Create(Metro5Helper);
  (Result as IMetro5Badge).StateColor := aStateColor;
  (Result as IMetro5Badge).StartLineText(aValue);
  (Result as IMetro5Badge).BadgeType := aBadgeType;
end;

class function TMetro5Factory.CreateMetro5Icon(aIconType: TMetro5IconType; Color: TM5StateColorsStyle)
  : IJanuaHtmlObject;
begin
  Result := TMetro5Icon.Create(Metro5Helper, aIconType);
  (Result as IMetro5Icon).FontColor := Color;

  //
end;

class function TMetro5Factory.CreateMetro5PortletHead(aTitle, aSubTitle: string; aIconType: TMetro5IconType = jmiNone;
  aIconColor: TM5StateColorsStyle = m5sNone): IJanuaHtmlObject;
begin
  Result := TMetro5PortletHead.Create(Metro5Helper);
  Result.Title := aTitle;
  (Result as IMetro5PortletHead).SubTitle := aSubTitle;
  (Result as IMetro5PortletHead).Icon := aIconType;
  (Result as IMetro5PortletHead).IconColor := aIconColor;
end;

class function TMetro5Factory.CreateNavItem(aHasBadge: Boolean; aBadgeColor: TM5StateColorsStyle;
  aIconType: TMetro5IconType; aText, aUrl, aBadgeText: string): IJanuaHtmlObject;
begin
  Result := TMetro5NavItem.Create(Metro5Helper);
  (Result as IMetro5NavItem).HasBadge := aHasBadge;
  (Result as IMetro5NavItem).BadgeColor := aBadgeColor;
  (Result as IMetro5NavItem).IconType := aIconType;
  (Result as IMetro5NavItem).Text := aText;
  (Result as IMetro5NavItem).Url := aUrl;
  (Result as IMetro5NavItem).BadgeText := aBadgeText;
end;

class function TMetro5Factory.CreatePortlet(aHead: IMetro5PortletHead): IJanuaHtmlObject;
begin
  Result := TMetro5Portlet.Create(Metro5Helper, aHead);
end;

class function TMetro5Factory.CreateTopBar(aDropDowns: array of IMetro5DropDown): IJanuaHtmlObject;
var
  aDropDown: IMetro5DropDown;
begin
  Result := TMetro5TopBar.Create(Metro5Helper);
  if Length(aDropDowns) > 0 then
    for aDropDown in aDropDowns do
      (Result as IMetro5TopBar).AddDropDown(aDropDown);

end;

{ TMetro5HtmlColorObject }

constructor TMetro5HtmlColorObject.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.FontColor := TM5StateColorsStyle.m5sNone;
end;

function TMetro5HtmlColorObject.GetFontColor: TM5StateColorsStyle;
begin
  Result := self.FFontColor
end;

function TMetro5HtmlColorObject.GetStateColor: TM5StateColorsStyle;
begin
  Result := self.FStateColor
end;

procedure TMetro5HtmlColorObject.SetFontColor(const Value: TM5StateColorsStyle);
  function InternalFontClass: string;
  begin
    Result := 'm--font-' + M5StateColors[Value]
  end;

  function InternalOldClass: string;
  begin
    Result := 'm--font-' + M5StateColors[FFontColor]
  end;

begin
  if Value <> self.FFontColor then
  begin
    if self.FFontColor <> TM5StateColorsStyle.m5sNone then
      self.DelClass(InternalOldClass);
    if Value <> TM5StateColorsStyle.m5sNone then
      self.AddClass(InternalFontClass);
    FFontColor := Value;
  end;
end;

procedure TMetro5HtmlColorObject.SetStateColor(const Value: TM5StateColorsStyle);
begin
  if self.FStateColor <> Value then
  begin
    if FStateColor <> TM5StateColorsStyle.m5sNone then
      self.DelClass(m5sc(self.BaseClass, self.FStateColor));
    FStateColor := Value;
    if FStateColor <> TM5StateColorsStyle.m5sNone then
      AddClass(m5sc(self.BaseClass, FStateColor));
  end;
end;

{ TMetro5Stack }

constructor TMetro5Stack.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'div';
  self.StackDispType := TMetro5StackDispType.General;
  self.StackAlignType := TMetro5StackAlignType.saVertical;
  self.BaseClass := TM5SClassType.Stack;
  Demo := False;
end;

function TMetro5Stack.GetDemo: Boolean;
begin
  Result := self.FDemo
end;

function TMetro5Stack.GetStackAlignType: TMetro5StackAlignType;
begin
  Result := self.FStackAlignType
end;

function TMetro5Stack.GetStackDispType: TMetro5StackDispType;
begin
  Result := self.FStackDispType
end;

procedure TMetro5Stack.SetDemo(const Value: Boolean);
begin
  // La propriet? demo serve per visualizzare bordi e contenuto evidenziati in grigetto
  if FDemo <> Value then
  begin
    if self.FDemo <> False then
      self.DelClass('m-stack--demo');
    if Value <> False then
      AddClass('m-stack--demo');
    FDemo := Value;
  end;
end;

procedure TMetro5Stack.SetStackAlignType(const Value: TMetro5StackAlignType);
begin
  if FStackAlignType <> Value then
  begin
    if self.FStackAlignType <> saNone then
      self.DelClass(Metro5StackAlignType[FStackAlignType]);
    if Value <> saNone then
      AddClass(Metro5StackAlignType[Value]);
    FStackAlignType := Value;
  end;
end;

procedure TMetro5Stack.SetStackDispType(const Value: TMetro5StackDispType);
begin
  if FStackDispType <> Value then
  begin
    if self.FStackDispType <> sdNone then
      self.DelClass(Metro5StackDispType[FStackDispType]);
    if Value <> sdNone then
      AddClass(Metro5StackDispType[Value]);
    FStackDispType := Value;
  end;
end;

{ TMetro5StackItem }

constructor TMetro5StackItem.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'div';
  self.BaseClass := TM5SClassType.StackItem;
  self.HorAlign := haNone;
  self.VerAlign := vaNone;
  self.Fluid := False;
end;

function TMetro5StackItem.GetFluid: Boolean;
begin
  Result := self.FFluid
end;

function TMetro5StackItem.GetHorAlign: TMetro5HorAlign;
begin
  Result := self.FHorAlign
end;

function TMetro5StackItem.GetVerAlign: TMetro5VerAlign;
begin
  Result := self.FVerAlign
end;

procedure TMetro5StackItem.SetFluid(const Value: Boolean);
begin
  if FFluid <> Value then
  begin
    if self.FFluid then
      self.DelClass('m-stack__item--fluid');
    if Value then
      AddClass('m-stack__item--fluid');
  end;

end;

procedure TMetro5StackItem.SetHorAlign(const Value: TMetro5HorAlign);
begin
  FHorAlign := Value;
  if FHorAlign <> Value then
  begin
    if self.FHorAlign <> haNone then
      self.DelClass(Metro5HorAlign[FHorAlign]);
    if Value <> haNone then
      AddClass(Metro5HorAlign[Value]);
    FHorAlign := Value;
  end;
end;

procedure TMetro5StackItem.SetVerAlign(const Value: TMetro5VerAlign);
begin
  FVerAlign := Value;
end;

{ TMetro5GridItem }

constructor TMetro5GridItem.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  tag := 'div';
  BaseClass := GridItem
end;

{ TMetro5Grid }

constructor TMetro5Grid.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  tag := 'div';
  BaseClass := Grid;
end;

{ TMetro5HeaderTop }

procedure TMetro5HeaderTop.AddMenu(aMenu: IJanuaHtmlObject);
begin
  if self.HasMenu then
    self.ContainerMenu.Add(aMenu);

end;

constructor TMetro5HeaderTop.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'div';
  self.AddClass('m-header__top');
  self.CommentBefore := 'begin::Header Top';
  self.CommentAfter := 'end::Header Top';
  self.FContainer := TMetro5Container.Create(aHelper);
  self.FContainer.AddClasses(['m-container--fluid', 'm-page__container']);
  self.FContainer.Add(TMetro5Stack.Create(aHelper));
  // Logo Visibile solo su Dekstop..................................................................
  (self.FContainer.SelectedItem as TMetro5Stack).StackDispType := TMetro5StackDispType.Desktop;
  // qui uso il Factory per Creare il Corretto 'Brand' da inserire nel menu Top della Schermata....
  self.FBrand := TMetro5Factory.CreateBrand as IMetro5Brand; // TMetro5Brand.Create(aHelper);
  self.FContainer.SelectedItem.Add(self.FBrand);
  self.Add(self.FContainer);
  // m-stack m-stack--ver m-stack--desktop
end;

function TMetro5HeaderTop.GetContainer: IJanuaHtmlObject;
begin
  Result := self.FContainer
end;

function TMetro5HeaderTop.GetHasMenu: Boolean;
begin
  Result := self.FHasMenu
end;

function TMetro5HeaderTop.GetLogo: IMetro5Brand;
begin
  Result := self.FBrand
end;

procedure TMetro5HeaderTop.SetContainer(const Value: IJanuaHtmlObject);
begin
  FContainer := Value;
end;

procedure TMetro5HeaderTop.SetHasMenu(const Value: Boolean);
begin
  FHasMenu := Value;
end;

procedure TMetro5HeaderTop.SetLogo(const Value: IMetro5Brand);
begin
  FBrand := Value;
end;

{ TMetro5HeaderBottom }

procedure TMetro5HeaderBottom.AddMenu(aMenu: IJanuaHtmlObject);
begin
  // Aggiunge il Menu all'oggetto Container del Header Bottom ....................................
  self.Container.Add(aMenu);
end;

constructor TMetro5HeaderBottom.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'div';
  self.BaseClass := TM5SClassType.HeaderBottom;
  // **** impostare margin-top -80px
  // self.AddStyle(THtmlStyle.MarginTop, '40px');
  AddStyle(THtmlStyle.MarginTop, '5px');
  // self.AddClass('m-header__bottom');
  self.CommentBefore := 'begin::Header Bottom';
  self.CommentAfter := 'end::Header Bottom';
  FContainer := TMetro5Container.Create(aHelper);
  self.Add(self.FContainer);
end;

destructor TMetro5HeaderBottom.Destroy;
begin
  FContainer := nil;
  // imposto la variabile FContainer a nil mentre l'oggetto FContainer verr? distrutto dal distruttore.
  inherited;
end;

function TMetro5HeaderBottom.GetContainer: IJanuaHtmlObject;
begin
  Result := self.FContainer
end;

procedure TMetro5HeaderBottom.SetContainer(const Value: IJanuaHtmlObject);
begin
  FContainer := Value;
end;

{ TMetro5Container }

constructor TMetro5Container.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'div';
  self.BaseClass := Container;
  self.AddClasses(['m-container--fluid', 'm-container--full-height', 'm-page__container']);
end;

{ TMetro5HorMenu }

constructor TMetro5HorMenu.Create(aHelper: Janua.Html.Intf.IHtmlHelper; aMenu: IHtmlMenu);
begin
  self.Create(aHelper);

end;

{ TMetro5MenuItem }

constructor TMetro5MenuItem.Create(aHelper: IHtmlHelper; aMenuItem: IHtmlMenuItem);
begin
  Guard.CheckNotNull(aMenuItem, 'TMetro5MenuItem.Create aMenuItem is Null');
  Guard.CheckNotNull(aHelper, 'TMetro5MenuItem.Create aHelper is Null');
  self.Create(aHelper);
  SetAMenuItem(aMenuItem);
end;

constructor TMetro5MenuItem.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.tag := 'li';
  self.BaseClass := MenuItem;
  self.AddParam('m-menu-link-redirect', '1');
  self.AddParam('aria-haspopup', 'true');
end;

function TMetro5MenuItem.GetAMenuItem: IHtmlMenuItem;
begin
  Result := self.FAMenuItem
end;

function TMetro5MenuItem.GetIcon: string;
begin
  Result := self.FIcon
end;

function TMetro5MenuItem.GetMenuText: string;
begin
  Result := self.FMenuText
end;

function TMetro5MenuItem.GetSelected: Boolean;
begin
  Result := self.FSelected
end;

function TMetro5MenuItem.GetUrl: string;
begin
  Result := self.FUrl
end;

procedure TMetro5MenuItem.SetAMenuItem(const Value: IHtmlMenuItem);
begin
  FAMenuItem := Value;
  if Assigned(Value) then
  begin
    SetUrl(IfThen(Value.Url = '', '#', Value.Url));
    if Value.Icon <> '' then
      self.SetIcon(Value.Icon);
    if Value.Text <> '' then
      self.SetMenuText(Value.Text);
  end;
end;

procedure TMetro5MenuItem.SetIcon(const Value: string);
begin
  if Value <> '' then
  begin
    if self.FindByTag('a') then
    begin
      self.SelectedItem.Add(TJanuaHtmlObject.Create(self.HtmlHelper));
      with SelectedItem.SelectedItem do
      begin
        tag := 'i';
        Inlined := False;
        AddClass(Value.ToLower);
        NewLine := False;
      end;
    end;
  end;
  FIcon := Value;
end;

procedure TMetro5MenuItem.SetMenuText(const Value: string);
begin
  if Value <> '' then
  begin
    if self.FindByTag('a') then
    begin
      self.SelectedItem.Add(TJanuaHtmlObject.Create(self.HtmlHelper));
      with SelectedItem.SelectedItem do
      begin
        tag := 'span';
        AddClass('m-menu__link-text');
        Inlined := False;
        StartLineText(Value);
        NewLine := False;
      end;
    end;
  end;
  FMenuText := Value;
end;

procedure TMetro5MenuItem.SetSelected(const Value: Boolean);
begin
  if Value then
    self.AddClass('m-menu__item--active')
  else
    self.DelClass('m-menu__item--active');

  self.FSelected := Value;
end;

procedure TMetro5MenuItem.SetUrl(const Value: string);
begin
  if (FUrl <> Value) then
  begin
    if FUrl = '' then
      self.Add(TMetro5HtmlObject.Create(self.HtmlHelper));
    (SelectedItem as TMetro5HtmlObject).BaseClass := MenuLink;
    SelectedItem.AddParam('href', Value);
    SelectedItem.tag := 'a';
  end;
  FUrl := Value;
end;

{ TMetro5MenuGroup }

constructor TMetro5MenuGroup.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'li';
  self.BaseClass := MenuItem;
  AddClasses(['m-menu__item--submenu', 'm-menu__item--tabs', 'm-menu__item--open-dropdown']);
  // m-menu__item m-menu__item--submenu m-menu__item--tabs m-menu__item--open-dropdown
  self.AddParam('m-menu-submenu-toggle', 'tab');
  self.AddParam('aria-haspopup', 'true');
  // Aggiungo il Tag 'a' per il link ad url ma nache per il Toogle
  FA := TJanuaHtmlLink.Create(self.HtmlHelper, False, '', '#', [], False);
  FA.NewLine := True;
  FA.AddClasses(['m-menu__link', 'm-menu__toggle']);
  FA.AddSimpleTag('span', '', False, ['m-menu__link-text']);
  FSpanTitle := FA.SelectedItem;
  FA.AddSimpleTag('i', '', False, ['m-menu__hor-arrow', 'la la-angle-down']);
  FA.AddSimpleTag('i', '', False, ['m-menu__hor-arrow', 'la la-angle-right']);
  self.Add(FA);
end;

constructor TMetro5MenuGroup.Create(aHelper: IHtmlHelper; aMenuItem: IHtmlMenuGroup);
var
  i: integer;
  // tmp: TJanuaHtmlObject;
  FA: IJanuaHtmlObject;
begin
  // m-menu__item
  self.Create(aHelper);
  self.SetUrl(aMenuItem.Url);
  self.FSpanTitle.Text := aMenuItem.Text;
  self.Add(TMetro5HtmlObject.Create(aHelper, 'div'));
  SelectedItem.AddClasses(['m-menu__submenu', 'm-menu__submenu--classic', 'm-menu__submenu--left',
    'm-menu__submenu--tabs']);
  SelectedItem.Add(TJanuaHtmlObject.Create(aHelper, 'span'));
  SelectedItem.SelectedItem.AddClasses(['m-menu__arrow', 'm-menu__arrow--adjust']);
  SelectedItem.SelectedItem.AddStyle(Left, '102px');
  // inserisco UL
  SelectedItem.Add(TJanuaHtmlObject.Create(aHelper, 'ul'));
  SelectedItem.SelectedItem.AddClasses(['m-menu__subnav']);
  self.Selected := aMenuItem.Selected;
  for i := 0 to Pred(aMenuItem.Items.Count) do
    SelectedItem.SelectedItem.Add(TMetro5MenuItem.Create(aHelper, aMenuItem.Items[i]));

end;

function TMetro5MenuGroup.GetIcon: string;
begin
  Result := self.FIcon
end;

function TMetro5MenuGroup.GetMenuText: string;
begin
  Result := self.FMenuText
end;

function TMetro5MenuGroup.GetSelected: Boolean;
begin
  Result := self.FSelected
end;

function TMetro5MenuGroup.GetUrl: string;
begin
  Result := self.FUrl
end;

procedure TMetro5MenuGroup.SetIcon(const Value: string);
begin
  FIcon := Value;
end;

procedure TMetro5MenuGroup.SetMenuText(const Value: string);
begin
  FMenuText := Value;
end;

procedure TMetro5MenuGroup.SetSelected(const Value: Boolean);
begin
  if FSelected <> Value then
  begin
    // 'm-menu__item--hover'
    if Value then
      AddClasses(['m-menu__item--active', 'm-menu__item--hover'])
    else
      self.DelClasses(['m-menu__item--active', 'm-menu__item--hover']);
    self.FSelected := Value;
  end;
end;

procedure TMetro5MenuGroup.SetUrl(const Value: string);
begin
  FA.Url := Value;
end;

{ TMetro5Menu }

constructor TMetro5HorizontalMenu.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  tmp: IJanuaHtmlObject;
begin
  inherited;
  {
    0    <div class="m-stack m-stack--ver m-stack--desktop">
    <!-- begin::Horizontal Menu -->
    1      <div class="m-stack__item m-stack__item--fluid m-header-menu-wrapper">
    1.2      <button class="m-aside-header-menu-mobile-close  m-aside-header-menu-mobile-close--skin-light " id="m_aside_header_menu_mobile_close_btn">
    1.2.3          <i class="la la-close"></i>
    1.2      </button>
    1.2      <div id="m_header_menu" class="m-header-menu m-aside-header-menu-mobile m-aside-header-menu-mobile--offcanvas  m-header-menu--skin-dark m-header-menu--submenu-skin-light m-aside-header-menu-mobile--skin-light m-aside-header-menu-mobile--submenu-skin-light ">
    1.2.3      <ul class="m-menu__nav  m-menu__nav--submenu-arrow ">

  }
  self.tag := 'div';
  CommentBefore := 'begin::MENU BUILDER ##############################################################';
  CommentAfter := 'end::MENU BUILDER ##############################################################';
  self.HtmlHelper := aHelper;
  self.AddClasses(['m-stack m-stack--ver', 'm-stack--desktop']);
  // Menu Wrapper
  self.AddSimpleTag('div', '', True, ['m-stack__item m-stack__item--fluid', 'm-header-menu-wrapper']);
  self.SelectedItem.CommentBefore := 'begin::Horizontal Menu';
  self.SelectedItem.CommentAfter := 'end::Horizontal Menu';
  // Button
  tmp := TJanuaHtmlObject.Create(self.HtmlHelper, 'button', ['m-aside-header-menu-mobile-close',
    'm-aside-header-menu-mobile-close--skin-light']);
  tmp.Id := 'm_aside_header_menu_mobile_close_btn';
  tmp.AddSimpleTag('i', '', False, ['la la-close']);
  self.SelectedItem.Add(tmp);
  // container Menu Header
  tmp := nil;
  tmp := TJanuaHtmlObject.Create(HtmlHelper, 'div', ['m-header-menu', 'm-aside-header-menu-mobile',
    'm-aside-header-menu-mobile--offcanvas', 'm-header-menu--skin-dark', 'm-header-menu--submenu-skin-light',
    'm-aside-header-menu-mobile--skin-light', 'm-aside-header-menu-mobile--submenu-skin-light']);
  tmp.Id := 'm_header_menu';
  FULMenu := TJanuaHtmlObject.Create(HtmlHelper, 'ul', ['m-menu__nav', 'm-menu__nav--submenu-arrow']);
  tmp.Add(self.FULMenu);
  self.SelectedItem.Add(tmp);
  tmp := nil;
end;

constructor TMetro5HorizontalMenu.Create(aHelper: IHtmlHelper; aMenu: IHtmlMenu);
var
  i: integer;
begin
  Guard.CheckNotNull(aHelper, 'TMetro5HorizontalMenu.Create aHelper is Null');
  Guard.CheckNotNull(aMenu, 'TMetro5HorizontalMenu.Create aMenu is Null');
  self.Create(aHelper);
  for i := 0 to Pred(aMenu.Items.Count) do
    FULMenu.Add(TMetro5MenuGroup.Create(self.HtmlHelper, aMenu.Items[i]));
end;

function TMetro5HorizontalMenu.GetSelected: Boolean;
begin
  Result := self.FSelected
end;

procedure TMetro5HorizontalMenu.SetSelected(const Value: Boolean);
begin
  self.FSelected := Value;
  // implementare la proedura di Selected della voce di Hor Menu ....
end;

{ TMetro5Brand }

constructor TMetro5Brand.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  tmp: IJanuaHtmlLink;
begin
  ExecProc(
    procedure
    begin
      inherited;
      // <div class="m-stack__item m-brand m-stack__item--left"> stack inherited
      self.AddClasses(['m-brand', 'm-stack__item--left']);
      // BackGround Color LND
      self.AddStyle(THtmlStyle.BackGroundColor, '#214a8d');
      self.FImageLogo := TMetro5Logo.Create(aHelper, False, '', '', [], False);
      self.CommentBefore := 'begin::Brand';
      self.CommentAfter := 'end::Brand';
      // Container: <div class="m-stack m-stack--ver m-stack--general m-stack--inline">
      self.Add(TMetro5Stack.Create(aHelper));
      self.SelectedItem.AddClass('m-stack--inline');
      self.SelectedItem.Add(TMetro5StackItem.Create(aHelper));
      self.SelectedItem.SelectedItem.AddClasses(['m-stack__item--middle', 'm-brand__logo']);
      self.SelectedItem.SelectedItem.Add(self.FImageLogo);

      // Brand Tools
      {
        <a id="m_aside_header_menu_mobile_toggle" href="javascript:;"
        class="m-brand__icon m-brand__toggler m--visible-tablet-and-mobile-inline-block">
        <span></span>
        </a>
      }

      // ---------------------------------------------------------- Brand Tools ---------------------------------
      self.FBrandTools := TMetro5BrandTools.Create(aHelper);
      self.SelectedItem.Add(FBrandTools);
    end, 'Create', self);
end;

function TMetro5Brand.GetBrandTools: IMetro5BrandTools;
begin
  Result := self.FBrandTools
end;

function TMetro5Brand.GetImageLogo: IMetro5Logo;
begin
  Result := self.FImageLogo
end;

procedure TMetro5Brand.SetBrandTools(const Value: IMetro5BrandTools);
begin
  FBrandTools := Value;
end;

procedure TMetro5Brand.SetImageLogo(const Value: IMetro5Logo);
begin
  FImageLogo := Value;
end;

{ TMetro5Logo }

function TMetro5Logo.BodyAfterText: string;
begin
  Result := inherited;
  // Result := Result + IfThen(self.FHasMobileImg, self.FMobileImg.AsHtml, '');
  {
    {
    <a href="index.html" class="">
    <img alt="" src="assets/demo/demo10/media/img/logo/logo.png" class="m-brand__logo-desktop"/>
    <img alt="" src="assets/demo/demo10/media/img/logo/logo_mini.png" class="m-brand__logo-mobile"/>
    </a>
  }

end;

constructor TMetro5Logo.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  AddClasses(['m-brand__logo-wrapper']);
  self.Image.AddClass('m-brand__logo-desktop');
  FHasMobileImg := False;
  self.FMobileImgIndex := -1;
  FMobileImg := TJanuaHtmlImage.Create(aHelper);
  self.FMobileImg.NewLine := False;
  self.FMobileImg.AddClass('m-brand__logo-mobile');
  // Di Default imposto l'immagine ................ anche se vuota.
  self.HasImage := True;
end;

function TMetro5Logo.GetHasMobileImg: Boolean;
begin
  Result := self.FHasMobileImg
end;

function TMetro5Logo.GetMobileImg: IJanuaHtmlImage;
begin
  Result := self.FMobileImg
end;

procedure TMetro5Logo.SetHasMobileImg(const Value: Boolean);
begin
  if Value and not self.FHasMobileImg then
  begin
    self.FMobileImgIndex := self.Add(self.FMobileImg);
  end
  else if not Value and self.FHasMobileImg then
  begin
    if self.FMobileImgIndex > -1 then
    begin
      self.Delete(self.FMobileImgIndex);
      FMobileImgIndex := -1
    end;
  end;
  FHasMobileImg := Value;
  self.NewLine := (self.FHasImage or self.FHasMobileImg);
end;

procedure TMetro5Logo.SetIndent(const Value: integer);
begin
  inherited;
  FMobileImg.Level := self.Level + 1;
end;

procedure TMetro5Logo.SetMobileImg(const Value: IJanuaHtmlImage);
begin
  FMobileImg := Value;
end;

{ TMetro5Portlet }

constructor TMetro5Portlet.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'div';
  self.BaseClass := Portlet;
  self.SetBordered(True);
  self.SetRounded(False);
  self.FPortletBody := TMetro5PortletBody.Create(self.HtmlHelper);
  self.Add(FPortletBody);
end;

constructor TMetro5Portlet.Create(aHelper: IHtmlHelper; aHead: IMetro5PortletHead);
begin
  self.Create(aHelper);
  self.FPortletHead := aHead;
  FPortletHead.CommentBefore := 'begin::Head';
  FPortletHead.CommentAfter := 'end::Head';
  self.Insert(0, aHead);

  // self.FPortletBody := self.SelectedItem;
end;

function TMetro5Portlet.GetBordered: Boolean;
begin
  Result := self.FBordered
end;

function TMetro5Portlet.GetFullHeight: Boolean;
begin
  Result := self.FFullHeight
end;

function TMetro5Portlet.GetPadded: Boolean;
begin
  Result := self.FPadded
end;

function TMetro5Portlet.GetPortletBody: IMetro5PortletBody;
begin
  Result := self.FPortletBody
end;

function TMetro5Portlet.GetPortletHead: IMetro5PortletHead;
begin
  Result := self.FPortletHead
end;

function TMetro5Portlet.GetRounded: Boolean;
begin
  Result := self.FRounded
end;

function TMetro5Portlet.GetWidgetFit: Boolean;
begin
  Result := self.FWidgetFit
end;

procedure TMetro5Portlet.SetBordered(const Value: Boolean);
begin
  FBordered := Value;
  if Value then
    self.AddClass('m-portlet--bordered-semi')
  else
    self.DelClass('m-portlet--bordered-semi');

end;

procedure TMetro5Portlet.SetFullHeight(const Value: Boolean);
begin
  FFullHeight := Value;
  if Value then
    self.AddClass('m-portlet--full-height')
  else
    self.DelClass('m-portlet--full-height');
end;

procedure TMetro5Portlet.SetPadded(const Value: Boolean);
begin
  FPadded := Value;
end;

procedure TMetro5Portlet.SetPortletBody(const Value: IMetro5PortletBody);
begin
  FPortletBody := Value;
end;

procedure TMetro5Portlet.SetPortletHead(const Value: IMetro5PortletHead);
begin
  self.FPortletHead := Value;
end;

procedure TMetro5Portlet.SetRounded(const Value: Boolean);
begin
  FRounded := Value;
  if Value then
    self.AddClass('m-portlet--rounded-force')
  else
    self.DelClass('m-portlet--rounded-force');
end;

procedure TMetro5Portlet.SetWidgetFit(const Value: Boolean);
begin
  FWidgetFit := Value;
  if Value then
    self.AddClass('m-portlet--widget-fit')
  else
    self.DelClass('m-portlet--widget-fit');
end;

{ TMetro5PortletHead }

constructor TMetro5PortletHead.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  tmp: TMetro5HtmlObject;
begin
  inherited;
  self.tag := 'div';
  self.CommentBefore := 'Begin::Head';
  self.CommentAfter := 'End::Head';
  self.BaseClass := PortletHead;
  self.FPortletTitle := TMetro5HtmlColorObject.Create(aHelper, 'h3', TM5SClassType.PortleHeadText);
  FPortletTitle.Id := self.Id + 'title';
  FPortletTitle.NewLine := False;
  self.FPortletTitle.AddClasses(['m--font-accent']);
  self.FPortletSubTitle := TMetro5HtmlColorObject.Create(aHelper, 'small', TM5SClassType.None);
  FPortletSubTitle.NewLine := False;
  FPortletSubTitle.Inlined := True;
  self.FPortletTitle.Add(self.FPortletSubTitle);
  // Icon ..........................................................................
  FPortletIcon := TMetro5Icon.Create(self.HtmlHelper);
  FPortletIcon := TMetro5Factory.CreateMetro5Icon(jmiNone, m5sNone) as IMetro5Icon;
  // Caption ........................................................................
  tmp := TMetro5HtmlObject.Create(aHelper, 'div', TM5SClassType.PortletHeadCaption);
  self.Add(tmp);
  // Caption - Title .................................................................
  tmp := TMetro5HtmlObject.Create(aHelper, 'div', TM5SClassType.PortletHeadTitle);
  tmp.AddSimpleTag('span', '', True, ['m-portlet__head-icon']);
  tmp.SelectedItem.Add(self.FPortletIcon);
  tmp.Add(self.FPortletTitle);

  self.SelectedItem.Add(tmp);
  // self.SelectedItem.SelectedItem = Portlet Title.

end;

function TMetro5PortletHead.GetCaption: IMetro5HtmlColorObject;
begin
  Result := self.FCaption
end;

function TMetro5PortletHead.GetIcon: TMetro5IconType;
begin
  Result := self.FIcon
end;

function TMetro5PortletHead.GetIconColor: TM5StateColorsStyle;
begin
  Result := self.FIconColor
end;

function TMetro5PortletHead.GetSubTitle: string;
begin
  Result := self.FSubTitle
end;

function TMetro5PortletHead.GetTitle: string;
begin
  Result := self.FTitle
end;

procedure TMetro5PortletHead.SetCaption(const Value: IMetro5HtmlColorObject);
begin
  FCaption := Value;
end;

procedure TMetro5PortletHead.SetIcon(const Value: TMetro5IconType);
begin
  FIcon := Value;
  self.FPortletIcon.IconType := Value;
end;

procedure TMetro5PortletHead.SetIconColor(const Value: TM5StateColorsStyle);
begin
  FIconColor := Value;
  FPortletIcon.FontColor := Value;
  self.FPortletTitle.StateColor := Value;
end;

procedure TMetro5PortletHead.SetSubTitle(const Value: string);
begin
  FSubTitle := Value;
  self.FPortletSubTitle.Text := Value;
end;

procedure TMetro5PortletHead.SetTitle(const Value: string);
begin
  FTitle := Value;
  self.FPortletTitle.Text := Value;
end;

{ TMetro5Icon }

constructor TMetro5Icon.Create(aHelper: Janua.Html.Intf.IHtmlHelper; aIconType: TMetro5IconType);
begin
  self.Create(aHelper);
  self.tag := 'i';
  self.NewLine := False;
  self.FIconType := TMetro5IconType.jmiNone;
  self.IconType := aIconType;
end;

function TMetro5Icon.GetIconType: TMetro5IconType;
begin
  Result := self.FIconType
end;

procedure TMetro5Icon.SetIconType(const Value: TMetro5IconType);
begin
  if Value <> FIconType then
  begin
    self.DelClass(Metro5Icons[FIconType]);
    self.AddClass(Metro5Icons[Value]);
    FIconType := Value;
  end;
end;

{ TMetro5Article }

constructor TMetro5Article.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  tmp: IJanuaHtmlObject;
begin
  inherited;
  self.CommentBefore := 'begin:: Article';
  self.CommentAfter := 'end:: Article';
  self.tag := 'div';
  self.BaseClass := Widget5;
  self.AddSimpleTag('div', '', True, ['m-widget5__item']);
  self.SelectedItem.AddSimpleTag('div', '', True, ['m-widget5__pic']);
  FImageContainer := self.SelectedItem.SelectedItem;
  self.FImage := TJanuaHtmlImage.Create(self.HtmlHelper);
  FImageContainer.Add(FImage);
  // *********************** aggiunta parte di hiding *************************************
  FImageContainer.Hide := True;
  // ***************************************************************************************
  // m-widget5__content
  self.SelectedItem.AddSimpleTag('div', '', True, ['m-widget5__content']);
  // text-align: left; padding-left: 7px;
  self.SelectedItem.AddStyle(THtmlStyle.TextAlign, 'left');
  self.SelectedItem.AddStyle(THtmlStyle.PaddingLeft, '7px');
  // IsLink: boolean; aUrl, aLink: string; aRels: TJanuaLinkRelTypes; aCross: boolean
  FTitleUrl := TJanuaHtmlLink.Create(HtmlHelper, False, '', '', []);
  self.FTitleObject := (aHelper.FactoryCreate('h4', ['m-widget5__title']) as TMetro5HtmlObject);
  self.FTitleUrl.Add(self.FTitleObject);
  self.SelectedItem.SelectedItem.Add(self.FTitleUrl);
  self.FDescription := (aHelper.FactoryCreate('span', ['m-widget5__desc']) as TMetro5HtmlObject);
  self.SelectedItem.SelectedItem.Add(self.FDescription);
  self.SelectedItem.SelectedItem.AddSimpleTag('div', '', True, ['m-widget5__info']);
  tmp := self.SelectedItem.SelectedItem.SelectedItem;
  self.FAuthorLabel := (aHelper.FactoryCreate('span', ['m-widget5__info-label']) as TMetro5HtmlObject);
  tmp.Add(self.FAuthorLabel);
  self.FAuthor := (aHelper.FactoryCreate('span', ['m-widget5__author']) as TMetro5HtmlObject);
  tmp.Add(self.FAuthor);
  self.FAuthorName := (aHelper.FactoryCreate('span', ['m-widget5__info-author-name']) as TMetro5HtmlObject);
  tmp.Add(self.FAuthorName);
  {
    // indagare sull'orignale questo info_label in quanto
    tmp.Add(self.FDateLabel);
  }
  self.FDateLabel := (aHelper.FactoryCreate('span', ['m-widget5__info-label']) as TMetro5HtmlObject);
  self.FReleaseDate := (aHelper.FactoryCreate('span', ['m-widget5__info-date m--font-info']) as TMetro5HtmlObject);
  tmp.Add(self.FDateLabel);
  // Release Date ..................................
  tmp.Add(FReleaseDate);
  // Button ... il bottone si trova allo stesso livello del 'content' e del 'pic'.
  self.SelectedItem.AddSimpleTag('div', '', True, ['m-widget5__stats1']);
  // Allineamento del pulsante a DX che non si sa mai
  tmp := self.SelectedItem.SelectedItem;
  tmp.AddParam('align', 'right');
  FButton := TJanuaHtmlLink.Create(self.HtmlHelper, False, '', '#', [TJanuaLinkRelType.None]);
  FButton.AddClasses(['btn', 'btn-accent', 'm-btn m-btn--custom', 'm-btn--icon', 'm-btn--pill', 'm-btn--air']);
  FButton.NewLine := True;
  FButton.AddSimpleTag('span', 'Leggi', True);
  tmp.Add(FButton);
end;

destructor TMetro5Article.Destroy;
begin
  FImage := nil;
  FTitleUrl := nil;
  FAuthor := nil;
  FAuthorLabel := nil;
  FAuthorName := nil;
  FDateLabel := nil;
  FDescription := nil;
  FReleaseDate := nil;
  self.FTitleObject := nil;
  FImageContainer := nil;
  inherited;
end;

function TMetro5Article.GetAuthor: string;
begin
  Result := self.FAuthor.Text
end;

function TMetro5Article.GetAuthorLabel: string;
begin
  Result := self.FAuthorLabel.Text
end;

function TMetro5Article.GetAuthorName: string;
begin
  Result := self.FAuthorName.Text
end;

function TMetro5Article.GetButton: IJanuaHtmlLink;
begin
  Result := self.FButton
end;

function TMetro5Article.GetColor: Janua.Html.Metro5.Types.TM5StateColorsStyle;
begin
  Result := self.FColor
end;

function TMetro5Article.GetColorButtonClass: string;
begin
  Result := self.FColorButtonClass
end;

function TMetro5Article.GetColorClass: string;
begin
  Result := self.FColorClass
end;

function TMetro5Article.GetDateLabel: string;
begin
  Result := self.FDateLabel.Text
end;

function TMetro5Article.GetDescription: string;
begin
  Result := self.FDescription.Text
end;

function TMetro5Article.GetHasImage: Boolean;
begin
  Result := self.FHasImage
end;

function TMetro5Article.GetIcon: Janua.Html.Metro5.Types.TMetro5IconType;
begin
  Result := self.FIcon
end;

function TMetro5Article.GetIConClass: string;
begin
  Result := self.FIConClass
end;

function TMetro5Article.GetImage: IJanuaHtmlImage;
begin
  Result := self.FImage
end;

function TMetro5Article.GetImageContainer: IJanuaHtmlObject;
begin
  Result := self.FImageContainer
end;

function TMetro5Article.GetImageUrl: string;
begin
  Result := self.FImage.Src;
end;

function TMetro5Article.GetLinkUrl: string;
begin
  Result := self.FLinkUrl
end;

function TMetro5Article.GetPrintDate: Boolean;
begin
  Result := self.FPrintDate;
end;

function TMetro5Article.GetReleaseDate: string;
begin
  Result := self.FReleaseDate.Text
end;

function TMetro5Article.GetTitle: string;
begin
  Result := self.FTitleObject.Text
end;

function TMetro5Article.GetTitleUrl: IJanuaHtmlLink;
begin
  Result := self.FTitleUrl
end;

procedure TMetro5Article.SetAuthor(const Value: string);
begin
  self.FAuthor.Text := Value;
end;

procedure TMetro5Article.SetAuthorLabel(const Value: string);
begin
  self.FAuthorLabel.Text := Value;
end;

procedure TMetro5Article.SetAuthorName(const Value: string);
begin
  self.FAuthorName.Text := Value
end;

procedure TMetro5Article.SetButton(const Value: IJanuaHtmlLink);
begin
  FButton := Value;
end;

procedure TMetro5Article.SetDateLabel(const Value: string);
begin
  self.FDateLabel.Text := Value
end;

procedure TMetro5Article.SetDescription(const Value: string);
begin
  self.FDescription.Text := Value
end;

procedure TMetro5Article.SetHasImage(const Value: Boolean);
begin
  FHasImage := Value;
  self.FImageContainer.Hide := not FHasImage;
end;

procedure TMetro5Article.SetImageContainer(const Value: IJanuaHtmlObject);
begin
  FImageContainer := Value;
end;

procedure TMetro5Article.SetImageUrl(const Value: string);
begin
  self.FImage.Src := Value;
  self.SetHasImage(Value <> '');
end;

procedure TMetro5Article.SetLinkUrl(const Value: string);
begin
  FLinkUrl := Value;
  if Assigned(self.FTitleUrl) then
    self.FTitleUrl.Url := Value;
end;

procedure TMetro5Article.SetPrintDate(const Value: Boolean);
begin
  FPrintDate := Value;
  FReleaseDate.Hide := not Value;
  FReleaseDate.Hidden := not Value;
end;

procedure TMetro5Article.SetReleaseDate(const Value: string);
begin
  self.FReleaseDate.Text := Value;
end;

procedure TMetro5Article.SetTitle(const Value: string);
begin
  self.FTitleObject.Text := Value;
  self.FImage.Alt := Value;
end;

{ TMetro5PortletBody }

constructor TMetro5PortletBody.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'div';
  self.CommentBefore := 'begin::Content';
  self.CommentAfter := 'end::Content';
  self.BaseClass := PortletBody;
end;

function TMetro5PortletBody.GetPadded: Boolean;
begin
  Result := self.FPadded
end;

procedure TMetro5PortletBody.SetPadded(const Value: Boolean);
begin
  FPadded := Value;
  if self.FPadded then
    BaseClass := PortletBody
  else
    self.BaseClass := TM5SClassType.None;

end;

{ TMetro5Articles }

constructor TMetro5Articles.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.FLimit := High(integer);
end;

procedure TMetro5Articles.Generate;
var
  i: integer;
  Title, Description, Author, ImgUrl, Url: string;
  aDate: TDateTime;
begin
  Guard.CheckNotNull(self.FRecordSet, 'TMetro5Articles.Generate Recorset is nil');
  self.Clear;
  FRecordSet.First;
  i := 0;
  while not(FRecordSet.Eof or (i = self.FLimit)) do
  begin
    Title := IfThen(Assigned(self.FTitleField), self.FTitleField.AsString, '');
    Description := IfThen(Assigned(self.FDescriptionField), self.FDescriptionField.AsString, '');
    Author := IfThen(Assigned(self.FAuthorField), self.FAuthorField.AsString, '');
    ImgUrl := IfThen(Assigned(self.ImageField), self.ImageField.AsString, '');
    Url := IfThen(Assigned(self.FUrlField), self.FUrlField.AsString, '');
    aDate := IfThen(Assigned(self.FDateField), self.FDateField.AsDateTime, 0.0);
    self.Add(TMetro5Factory.CreateArticle(TJanuaLanguage.jlaItalian, Title, Description, Author, ImgUrl, Url, aDate));
    FRecordSet.Next;
  end;
end;

function TMetro5Articles.GetAuthorField: IJanuaField;
begin
  Result := self.FAuthorField
end;

function TMetro5Articles.GetAuthorNameField: IJanuaField;
begin
  Result := self.FAuthorNameField
end;

function TMetro5Articles.GetDateField: IJanuaField;
begin
  Result := self.FDateField
end;

function TMetro5Articles.GetDescriptionField: IJanuaField;
begin
  Result := self.FDescriptionField
end;

function TMetro5Articles.GetIDField: IJanuaField;
begin
  Result := self.FIDField
end;

function TMetro5Articles.GetImageField: IJanuaField;
begin
  Result := self.FImageField
end;

function TMetro5Articles.GetLimit: integer;
begin
  Result := self.FLimit
end;

function TMetro5Articles.GetRecordSet: IJanuaRecordSet;
begin
  Result := self.FRecordSet
end;

function TMetro5Articles.GetTitleField: IJanuaField;
begin
  Result := self.FTitleField
end;

function TMetro5Articles.GetUrlField: IJanuaField;
begin
  Result := self.FUrlField
end;

procedure TMetro5Articles.SetAuthorField(const Value: IJanuaField);
begin
  FAuthorField := Value;
end;

procedure TMetro5Articles.SetAuthorNameField(const Value: IJanuaField);
begin
  FAuthorNameField := Value;
end;

procedure TMetro5Articles.SetDateField(const Value: IJanuaField);
begin
  FDateField := Value;
end;

procedure TMetro5Articles.SetDescriptionField(const Value: IJanuaField);
begin
  FDescriptionField := Value;
end;

procedure TMetro5Articles.SetIDField(const Value: IJanuaField);
begin
  FIDField := Value;
end;

procedure TMetro5Articles.SetImageField(const Value: IJanuaField);
begin
  FImageField := Value;
end;

procedure TMetro5Articles.SetUrlField(const Value: IJanuaField);
begin
  FUrlField := Value;
end;

procedure TMetro5Articles.SetLimit(const Value: integer);
begin
  FLimit := Value;
end;

procedure TMetro5Articles.SetRecordSet(const Value: IJanuaRecordSet);
begin
  FRecordSet := Value;
end;

procedure TMetro5Articles.SetTitleField(const Value: IJanuaField);
begin
  FTitleField := Value;
end;

{ TJanuaMetro5Form }

function TJanuaMetro5Form.AddGroupInput(aInputType: THtmlInputType; aPlaceHolder, aName: string): IJanuaHtmlObject;
begin
  /// <div class="form-group m-form__group">
  /// <input class="form-control m-input" type="text" placeholder="Fullname" name="fullname">
  // </div>
  // const aTag, aValue: string; aNewLine: boolean = False; aClasses: TArray<string> = []
  Result := AddSimpleTag('div', '', True, ['form-group', 'm-form__group']);
end;

constructor TJanuaMetro5Form.Create(aHelper: IHtmlHelper);
begin
  inherited;
  self.AddClass('m-form');
end;

{ TMetro5LoginBody }

constructor TMetro5LoginBody.Create(aHelper: IHtmlHelper);
begin
  inherited;

end;

function TMetro5LoginBody.GetLoginForm: IJanuaMetro5Form;
begin
  Result := self.FLoginForm
end;

function TMetro5LoginBody.GetRegisterForm: IJanuaMetro5Form;
begin
  Result := self.FRegisterForm
end;

procedure TMetro5LoginBody.SetLoginForm(const Value: IJanuaMetro5Form);
begin
  FLoginForm := Value;
end;

procedure TMetro5LoginBody.SetRegisterForm(const Value: IJanuaMetro5Form);
begin
  FRegisterForm := Value;
end;

{ TMetro5TopBar }

procedure TMetro5TopBar.AddDropDown(aDrop: IMetro5DropDown);
begin
  self.FContainer.Add(aDrop)
end;

constructor TMetro5TopBar.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.Id := 'm_header_nav';
  self.AddClasses(['m-stack__item', 'm-stack__item--right m-header-head']);
  // <div id="m_header_topbar" class="m-topbar  m-stack m-stack--ver m-stack--general">
  self.AddSimpleTag('div', '', True, ['m-topbar', 'm-stack m-stack--ver', 'm-stack--general']);
  self.SelectedItem.Id := 'm_header_topbar';
  // <div class="m-stack__item m-topbar__nav-wrapper">
  self.SelectedItem.AddSimpleTag('div', '', True, ['m-stack__item', 'm-topbar__nav-wrapper']);
  // Container: <ul class="m-topbar__nav m-nav m-nav--inline">
  self.FContainer := TJanuaHtmlObject.Create(aHelper, 'ul', ['m-topbar__nav', 'm-nav m-nav--inline']);
  self.SelectedItem.SelectedItem.Add(self.FContainer);
end;

function TMetro5TopBar.GetContainer: IJanuaHtmlObject;
begin
  Result := self.FContainer
end;

procedure TMetro5TopBar.SetContainer(const Value: IJanuaHtmlObject);
begin
  FContainer := Value;
end;

{ TMetro5DropDown }

constructor TMetro5DropDown.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'li';
  self.AddClasses(['m-nav__item', 'm-dropdown']);
  FColorStyle := TM5StateColorsStyle.m5sNone;
  FA := TJanuaHtmlLink.Create(aHelper, False, '', '#', [], True);
  self.Add(FA);
  FToggle := TMetro5DropDownToggleType.ttClick;
  self.AddParam('m-dropdown-toggle', 'click');
  // by Default is a Drop-Down Large
  self.FSize := TM5DropDownSize.dsLarge;
  self.AddClass(DropDownSize[self.FSize]);
  // aria-expanded="true"
  self.AddParam('aria-expanded', 'true');

  // m-dropdown m-dropdown--large m-dropdown--arrow m-dropdown--align-center
  // m-dropdown--mobile-full-width m-dropdown--skin-light	m-list-search m-list-search--skin-light
end;

constructor TMetro5DropDown.Create(aHelper: IHtmlHelper; aColor: TM5StateColorsStyle;
aToggle: TMetro5DropDownToggleType; aSize: TM5DropDownSize; aPosition: TJanuaHtmlPosition);
begin
  self.Create(aHelper);
  self.ColorStyle := aColor;
  self.Toggle := aToggle;
  self.Size := aSize;
  self.Align := aPosition;
end;

function TMetro5DropDown.GetAlign: TJanuaHtmlPosition;
begin
  Result := self.FAlign
end;

function TMetro5DropDown.GetColorStyle: TM5StateColorsStyle;
begin
  Result := self.FColorStyle
end;

function TMetro5DropDown.GetPersistant: Boolean;
begin
  Result := self.FPersistant
end;

function TMetro5DropDown.GetSize: TM5DropDownSize;
begin
  Result := self.FSize
end;

function TMetro5DropDown.GetToggle: TMetro5DropDownToggleType;
begin
  Result := self.FToggle
end;

procedure TMetro5DropDown.SetAlign(const Value: TJanuaHtmlPosition);
begin
  // m-nav__item--focus
  if FAlign <> Value then
  begin
    if self.FAlign <> TJanuaHtmlPosition.jpNone then
      self.DelClass('m-dropdown--align-' + JanuaHtmlPosition[FAlign]);
    if Value <> TJanuaHtmlPosition.jpNone then
      self.AddClass('m-dropdown--align-' + JanuaHtmlPosition[Value]);
    FAlign := Value
  end;
end;

procedure TMetro5DropDown.SetColorStyle(const Value: TM5StateColorsStyle);
begin
  // m-nav__item--focus
  if FColorStyle <> Value then
  begin
    if self.FColorStyle <> TM5StateColorsStyle.m5sNone then
      self.DelClass('m-nav__item--' + M5StateColors[FColorStyle]);
    if Value <> TM5StateColorsStyle.m5sNone then
      self.AddClass('m-nav__item--' + M5StateColors[Value]);
    FColorStyle := Value
  end;

end;

procedure TMetro5DropDown.SetPersistant(const Value: Boolean);
begin
  if FPersistant <> Value then
  begin
    // m-dropdown-persistent="1"
    if self.FPersistant then
      self.DelParam('m-dropdown-persistent')
    else
      self.AddParam('m-dropdown-persistent', '1');
    FPersistant := Value
  end;
end;

procedure TMetro5DropDown.SetSize(const Value: TM5DropDownSize);
begin
  if FSize <> Value then
  begin
    // TM5DropDownSize DropDownSize
    if self.FSize <> TM5DropDownSize.dsStandard then
      self.DelClass(DropDownSize[FSize]);
    if Value <> TM5DropDownSize.dsStandard then
      self.AddClass(DropDownSize[Value]);
    FSize := Value
  end;
end;

procedure TMetro5DropDown.SetToggle(const Value: TMetro5DropDownToggleType);
begin
  if FToggle <> Value then
  begin
    if self.FToggle <> TMetro5DropDownToggleType.ttNone then
      self.DelParam('m-dropdown-toggle');
    if Value <> TMetro5DropDownToggleType.ttNone then
      self.AddParam('m-dropdown-toggle', Metro5DropDownToggle[Value]);
    self.FToggle := Value;
  end;
end;

{ TMetro5DropDownSearch }

constructor TMetro5DropDownSearch.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  tmp, t1, t2, t3: IJanuaHtmlObject;
begin
  inherited;
  // m-dropdown--large m-dropdown--arrow m-dropdown--align-center
  // m-dropdown--mobile-full-width m-dropdown--skin-light	m-list-search m-list-search--skin-light"
  // m-dropdown-persistent="1" id="m_quicksearch" m-quicksearch-mode="dropdown">
  self.Toggle := TMetro5DropDownToggleType.ttClick;
  self.Size := TM5DropDownSize.dsLarge;
  self.ColorStyle := TM5StateColorsStyle.m5sFocus;
  self.Align := TJanuaHtmlPosition.jpCenter;
  self.Persistent := True;

  self.AddClasses(['m-dropdown--arrow', 'm-dropdown--mobile-full-width', 'm-dropdown--skin-light', 'm-list-search',
    'm-list-search--skin-light']);

  self.Id := 'm_quicksearch';
  /// some 'javascript' hint about quick search?
  self.AddParam('m-quicksearch-mode', 'dropdown');

  // DropDown link Definition
  self.FA.AddSimpleTag('span', '', False, ['m-nav__link-badge', 'm-badge m-badge--dot', 'm-badge--info', 'm--hide']);
  self.FA.AddSimpleTag('span', '', True, ['m-nav__link-icon']);
  self.FA.SelectedItem.AddSimpleTag('span', '', True, ['m-nav__link-icon-wrapper']);
  self.FA.SelectedItem.SelectedItem.AddSimpleTag('i', '', False, ['flaticon-search-1"']);
  // Inizia il Div del Dropdown Wrapper (nel nostro caso la vera e propria Search Box):
  // <div class="m-dropdown__wrapper">
  self.AddSimpleTag('div', '', True, ['m-dropdown__wrapper']);
  // <span class="m-dropdown__arrow m-dropdown__arrow--center"></span>
  self.SelectedItem.AddSimpleTag('span', '', False, ['m-dropdown__arrow', 'm-dropdown__arrow--center']);
  // <div class="m-dropdown__inner ">
  self.SelectedItem.AddSimpleTag('div', '', True, ['dropdown__inner']);
  // tmp = DropDown Inner ......................................................................................
  tmp := self.SelectedItem.SelectedItem;
  // ..<div class="m-dropdown__header">
  tmp.AddSimpleTag('div', '', True, ['m-dropdown__header']);
  // ....<form  class="m-list-search__form">
  tmp.SelectedItem.AddSimpleTag('form', '', True, ['m-list-search__form']);
  // ......<div class="m-list-search__form-wrapper">
  tmp.SelectedItem.SelectedItem.AddSimpleTag('div', '', True, ['m-list-search__form-wrapper']);
  // ........<span class="m-list-search__form-input-wrapper">
  tmp.SelectedItem.SelectedItem.SelectedItem.AddSimpleTag('span', '', True, ['m-list-search__form-input-wrapper']);
  // ..........<input id="m_quicksearch_input" autocomplete="off" type="text" name="q" class="m-list-search__form-input" value="" placeholder="Search...">
  t1 := HtmlHelper.FactoryInput(THtmlInputType.Inputtext, 'cerca', 'q');
  t1.AddParam('autocomplete', 'off');
  t1.NewLine := False;
  t1.AddClasses(['m-list-search__form-input']);
  t1.AddParam('value', '');
  tmp.SelectedItem.SelectedItem.SelectedItem.SelectedItem.Add(t1);
  // ........</span>
  // ........<span class="m-list-search__form-icon-close" id="m_quicksearch_close">
  // ..........<i class="la la-remove"></i>
  t2 := self.HtmlHelper.FactoryCreate('span', ['m-list-search__form-icon-close']);
  t2.Id := 'm_quicksearch_close';
  t2.AddSimpleTag('i', '', False, ['la la-remove']);
  tmp.SelectedItem.SelectedItem.SelectedItem.Add(t2);
  t1 := nil;
  t2 := nil;
  // ..<div class="m-dropdown__body">
  tmp.AddSimpleTag('div', '', True, ['m-dropdown__body']);
  // ....<div class="m-dropdown__scrollable m-scrollable" data-scrollable="true" data-max-height="300" data-mobile-max-height="200">
  t1 := HtmlHelper.FactoryCreate('div', ['m-dropdown__scrollable', 'm-scrollable']);
  t1.AddParam('data-scrollable', 'true');
  t1.AddParam('data-max-heigh', '300');
  t1.AddParam('data-mobile-max-height', '200');
  // ......<div class="m-dropdown__content"></div>
  t1.AddSimpleTag('div', '', False, ['m-dropdown__content']);
  tmp.SelectedItem.Add(t1);

end;

{ TMetro5DropDownAlert }

procedure TMetro5DropDownAlert.AddItem(const aTabName: string; aText, aBadgeText: string;
aBadgeColor: TM5StateColorsStyle; const aRead: Boolean; const aUrl: string);
var
  tmp, t1: IJanuaHtmlObject;
begin
  // Implementare il metodo qui ..........................................................................
  tmp := TJanuaHtmlObject.Create(self.HtmlHelper, 'div', False);
  tmp.AddClass('m-list-timeline__item');
  if aRead then
    tmp.AddClass('m-list-timeline__item--read');
  // <span class="m-list-timeline__badge"></span> il 'puntino' della Time Line
  // Casi differenti di Badge
  // 1 m-list-timeline__badge
  // 2 m-list-timeline__badge -m-list-timeline__badge--state-success
  tmp.AddSimpleTag('span', '', False, ['m-list-timeline__badge']);
  // Se ? impostato un URL allora imposto il testo evidenziato come un link come riportato in URL:
  if aUrl <> '' then
  begin
    t1 := TJanuaHtmlLink.Create(self.HtmlHelper, False, '', aUrl, [], False);
    t1.AddClasses(['m-link', 'm-list-timeline__text']);
    t1.Text := aText;
    tmp.Add(t1);
  end
  else
  begin
    // <span class="m-list-timeline__text">
    tmp.AddSimpleTag('span', aText, False, ['m-list-timeline__text']);
  end;

  // <span class="m-badge m-badge--success m-badge--wide">
  // se Badge Text ? attivo allora sistemo anche il badge Color.
  if aBadgeText <> '' then
    tmp.AddSimpleTag('span', aBadgeText, False, ['m-badge', 'm-badge--wide',
      'm-badge m-badge--' + M5StateColors[aBadgeColor]]);

end;

function TMetro5DropDownAlert.AddTab(aText, aName: string): IJanuaHtmlObject;
var
  lnk: IJanuaHtmlLink;
  tmp: IJanuaHtmlObject;
begin
  Guard.CheckNotNull(self.FTabContainer, 'TMetro5DropDownAlert.AddTab Tab Container is null');
  Guard.CheckNotNull(self.FTabs, 'TMetro5DropDownAlert.AddTab FTabs is null');
  Guard.CheckFalse(aText = '', 'TMetro5DropDownAlert.AddTab aText not set');
  Guard.CheckFalse(aName = '', 'TMetro5DropDownAlert.AddTab aName not set');

  { <ul class="nav nav-tabs m-tabs m-tabs-line m-tabs-line--brand" role="tablist">
    ..<li class="nav-item m-tabs__item">
    ....<a class="nav-link m-tabs__link active" data-toggle="tab" href="#topbar_notifications_notifications" role="tab">
    ....Alerts
    ....</a>
    ..</li>
    ......................................
    </ul> }

  self.FTabHeader.AddSimpleTag('li', '', True, ['nav-item m-tabs__item']);
  // tmp ? il Tab Header che verr? usato una sola volta al momento della sua creazioen eventualmente si potrebbe
  // tenere una Header List ....................................................................................
  tmp := self.FTabHeader.SelectedItem;
  // IsLink: boolean; aUrl, aLink: string; aRels: TJanuaLinkRelTypes; aCross: boolean
  lnk := TJanuaHtmlLink.Create(HtmlHelper, False, '', '#topbar_notifications_' + LowerCase(aName), [], False);
  lnk.Text := aText;
  lnk.AddParam('role', 'tab');
  tmp.Add(lnk);

  { <div class="tab-pane active" id="topbar_notifications_notifications" role="tabpanel">
    ..<div class="m-scrollable" data-scrollable="true" data-height="250" data-mobile-height="200">
    ....<div class="m-list-timeline m-list-timeline--skin-light">
    ......<div class="m-list-timeline__items">
    ........<div class="m-list-timeline__item">
    ..........<span class="m-list-timeline__badge -m-list-timeline__badge--state-success"></span>
    ..........<span class="m-list-timeline__text">
    ...........12 new users registered
    ..........</span>
    ..........<span class="m-list-timeline__time">
    ..........Just now
    ..........</span>
    </div> }
  tmp := nil;

  self.FTabContainer.AddSimpleTag('div', '', True, ['tab-pane']);
  if self.FTabs.Count = 0 then
    self.FTabContainer.SelectedItem.AddClass('active');
  tmp := self.FTabContainer.SelectedItem;
  // ..<div class="m-scrollable" data-scrollable="true" data-height="250" data-mobile-height="200"
  tmp.AddSimpleTag('div', '', True, ['m-scrollable']);
  tmp.SelectedItem.AddParam('data-scrollable', 'true');
  tmp.SelectedItem.AddParam('data-height', '200');
  tmp.SelectedItem.AddParam('data-mobile-height', '250');
  // ....<div class="m-list-timeline m-list-timeline--skin-light">
  tmp.SelectedItem.AddSimpleTag('div', '', True, ['m-list-timeline', 'm-list-timeline--skin-light']);
  // ......<div class="m-list-timeline__items"> Tab[i] .....
  tmp.SelectedItem.SelectedItem.AddSimpleTag('div', '', True, ['m-list-timeline__items']);
  Result := tmp.SelectedItem.SelectedItem.SelectedItem;
  // per 'ritrovarlo' uso un UID.
  Result.UID := aName.ToLower;
  self.FTabs.Add(Result);
  self.FTabIndex := Pred(self.FTabs.Count);
end;

constructor TMetro5DropDownAlert.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  tmp, t1, t2, t3: IJanuaHtmlObject;
begin
  inherited;
  self.FTabIndex := -1;
  self.FTabs := Spring.Collections.TCollections.CreateList<IJanuaHtmlObject>;
  // m-dropdown--large m-dropdown--arrow m-dropdown--align-center
  // m-dropdown--mobile-full-width m-dropdown--skin-light	m-list-search m-list-search--skin-light"
  // m-dropdown-persistent="1" id="m_quicksearch" m-quicksearch-mode="dropdown">
  self.Toggle := TMetro5DropDownToggleType.ttClick;
  self.Size := TM5DropDownSize.dsLarge;
  self.ColorStyle := TM5StateColorsStyle.m5sAccent;
  self.Align := TJanuaHtmlPosition.jpCenter;
  self.Persistent := True;
  self.AddClasses(['m-dropdown--arrow', 'm-dropdown--mobile-full-width']);
  // <a href="#" class="m-nav__link m-dropdown__toggle" id="m_topbar_notification_icon">
  // ..<span class="m-nav__link-badge m-badge m-badge--dot m-badge--dot-small m-badge--danger"></span>
  // ..<span class="m-nav__link-icon">
  // ....<span class="m-nav__link-icon-wrapper">
  // ......<i class="flaticon-music-2"></i>
  // ....</span>
  // ..</span>
  // </a>
  FA.AddClasses(['m-nav__link', 'm-dropdown__toggle']);
  FA.Id := 'm_topbar_notification_icon';
  FA.AddSimpleTag('span', '', False, ['m-nav__link-badge', 'm-badge m-badge--dot', 'm-badge--dot-small',
    'm-badge--danger']);
  FA.AddSimpleTag('span', '', True, ['m-nav__link-icon']);
  FA.SelectedItem.AddSimpleTag('span', '', True, ['m-nav__link-icon-wrapper']);
  FA.SelectedItem.SelectedItem.AddSimpleTag('i', '', False, ['flaticon-music-2']);
  self.AddSimpleTag('div', '', True, ['m-dropdown__wrapper']);
  tmp := self.SelectedItem;
  // <span class="m-dropdown__arrow m-dropdown__arrow--center"></span>
  // <div class="m-dropdown__inner">
  tmp.AddSimpleTag('span', '', False, ['m-dropdown__arrow', 'm-dropdown__arrow--center']);
  tmp.AddSimpleTag('div', '', True, ['m-dropdown__inner']);
  t1 := tmp.SelectedItem; // dropdown Inner.
  t1.AddSimpleTag('div', '', True, ['m-dropdown__header', 'm--align-center']);
  t2 := t1.SelectedItem; // T2 DropDown Header
  t2.AddSimpleTag('span', '9 Nuove', True, ['m-dropdown__header-title']);
  t2.AddSimpleTag('span', ' Notifiche', True, ['m-dropdown__header-subtitle']);
  t1.AddSimpleTag('div', '', True, ['dropdown__body']);
  t1.SelectedItem.SelectedItem.AddSimpleTag('div', '', True, ['m-dropdown__content']);
  // <ul class="nav nav-tabs m-tabs m-tabs-line m-tabs-line--brand" role="tablist">
  t1.SelectedItem.SelectedItem.SelectedItem.AddSimpleTag('ul', '', True, ['nav nav-tabs', 'm-tabs', 'm-tabs-line',
    'm-tabs-line--brand']);
  self.FTabHeader := t1.SelectedItem.SelectedItem.SelectedItem.SelectedItem;
  self.FTabHeader.AddParam('role', 'tablist');
  // <div class="tab-content">
  t1.SelectedItem.SelectedItem.SelectedItem.AddSimpleTag('div', '', True, ['tab-content']);
  self.FTabContainer := t1.SelectedItem.SelectedItem.SelectedItem.SelectedItem;

end;

function TMetro5DropDownAlert.GetSelectedTab: IJanuaHtmlObject;
begin
  if FTabIndex > -1 then
    Result := self.FTabs[self.FTabIndex]
  else
    Result := nil;
end;

function TMetro5DropDownAlert.GetTabContainer: IJanuaHtmlObject;
begin
  Result := self.FTabContainer
end;

function TMetro5DropDownAlert.GetTabHeader: IJanuaHtmlObject;
begin
  Result := self.FTabHeader
end;

function TMetro5DropDownAlert.GetTabIndex: integer;
begin
  Result := self.FTabIndex
end;

function TMetro5DropDownAlert.SearchTab(aUID: string): Boolean;
var
  i: integer;
begin
  Result := False;
  if self.FTabs.Count > 0 then
  begin
    for i := 0 to Pred(self.FTabs.Count) do
      if (self.FTabs[i].UID = aUID.ToLower) then
      begin
        self.FTabIndex := i;
        Exit(True)
      end;

  end;

end;

procedure TMetro5DropDownAlert.SetSelectedTab(const Value: IJanuaHtmlObject);
begin
  if FTabIndex > -1 then
    self.FTabs[self.FTabIndex] := Value

end;

procedure TMetro5DropDownAlert.SetTabContainer(const Value: IJanuaHtmlObject);
begin
  FTabContainer := Value;
end;

procedure TMetro5DropDownAlert.SetTabHeader(const Value: IJanuaHtmlObject);
begin
  FTabHeader := Value;
end;

procedure TMetro5DropDownAlert.SetTabIndex(const Value: integer);
begin
  FTabIndex := Value;
end;

{ TMetro5DropDownUser }

constructor TMetro5DropDownUser.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  tmp, t1, t2, t3: IJanuaHtmlObject;
begin
  inherited;
  // <li class="m-nav__item m-dropdown m-dropdown--medium m-dropdown--arrow
  // m-dropdown--align-right m-dropdown--mobile-full-width m-dropdown--skin-light" m-dropdown-toggle="click">
  self.Toggle := TMetro5DropDownToggleType.ttClick;
  self.Size := TM5DropDownSize.dsLarge;
  self.ColorStyle := TM5StateColorsStyle.m5sBrand;
  self.Align := TJanuaHtmlPosition.jpRight;
  self.Persistent := True;
  self.AddClasses(['m-dropdown--arrow', 'm-dropdown--mobile-full-width', 'm-dropdown--skin-light']);
  // Utente non Registrato
  { <span class="m-nav__link-icon">
    <span class="m-nav__link-icon-wrapper">
    <i class="flaticon-music-2"></i>
    </span>
    </span>
  }
  // Se Utente Registrato .......... e con una immagine che lo identifichi ......................................
  { <span class="m-topbar__userpic">
    <img src="assets/app/media/img/users/user4.jpg" class="m--img-rounded m--marginless m--img-centered" alt=""/>
    </span> }

  self.FA.AddSimpleTag('span', '', True, ['m-nav__link-icon']);
  self.FA.SelectedItem.AddSimpleTag('span', '', True, ['m-nav__link-icon-wrapper']);
  // uso una grossa icona flaticon-user
  self.FA.SelectedItem.SelectedItem.AddSimpleTag('i', '', True, ['flaticon-user']);
  // <a href="#" class="m-nav__link m-dropdown__toggle">
  FA.AddClasses(['m-nav__link', 'm-dropdown__toggle']);
  // ..<span class="m-nav__link-icon m-topbar__usericon  m--hide">
  FA.AddSimpleTag('span', '', True, ['m-nav__link-icon', 'm-topbar__usericon', 'm--hide']);
  // ....<span class="">
  FA.SelectedItem.AddSimpleTag('span', '', True, ['m-nav__link-icon-wrapper']);
  // <i class="flaticon-user-ok"></i>
  FA.SelectedItem.SelectedItem.AddSimpleTag('i', '', False, ['flaticon-user-ok']);
  // <span class="m-topbar__username m--hide"> Mark  </span>
  FA.AddSimpleTag('span', 'Utente non Registrato', True, ['m-topbar__username m--hide']);
  // DropDown Wrapper
  self.AddSimpleTag('div', '', True, ['m-dropdown__wrapper']);
  // <span class="m-dropdown__arrow m-dropdown__arrow--right m-dropdown__arrow--adjust"></span>
  self.SelectedItem.AddSimpleTag('span', '', True, ['m-dropdown__arrow', 'm-dropdown__arrow--right',
    'm-dropdown__arrow--adjust']);
  // <div class="m-dropdown__inner">
  self.SelectedItem.AddSimpleTag('div', '', True, ['m-dropdown__inner']);
  tmp := self.SelectedItem.SelectedItem; // DropDown Inner (contenitore di Body e Header);
  // < div class = "m-dropdown__header m--Align-center " >
  tmp.AddSimpleTag('div', '', True, ['m-dropdown__header', 'm--Align-center']);
  t1 := tmp.SelectedItem; // t1 = dropdown Header ..................................................
  { ..<div class="m-card-user m-card-user--skin-light">
    ....<div class="m-card-user__pic">
    ......<img src="assets/app/media/img/users/user4.jpg" class="m--img-rounded m--marginless" alt=""/>
    ....</div>
    ....<div class="m-card-user__details">
    ......<span class="m-card-user__name m--font-weight-500">
    ......Mark Andre
    ......</span>
    ......<a href="" class="m-card-user__email m--font-weight-300 m-link">
    ......mark.andre@gmail.com
    ......</a>
    ....</div>
    ..</div> }
  t1.AddSimpleTag('div', '', True, ['m-card-user', 'm-card-user--skin-light']);
  t2 := t1.SelectedItem;
  t2.AddSimpleTag('div', '', True, ['m-card-user__pic']);
  t3 := TJanuaHtmlImage.Create(HtmlHelper);
  (t3 as IJanuaHtmlImage).Src := 'assets/app/media/img/users/user4.jpg';
  t3.AddClasses(['m--img-rounded', 'm--marginless']);
  t2.SelectedItem.Add(t3);
  t1.AddSimpleTag('div', '', True, ['m-card-user__details']);
  t1.SelectedItem.AddSimpleTag('span', 'Nome Utente', True, ['m-card-user__name', 'm--font-weight-500']);
  t3 := nil;
  t3 := TJanuaHtmlLink.Create(HtmlHelper, False, '', '', [], False);
  t3.AddClasses(['m-card-user__email', 'm--font-weight-300 m-link']);
  t3.Text := 'nobody@mail.com';
  t1.SelectedItem.Add(t3);

  // ***************** body development ***********************************************************************

end;

{ TMetro5NavItem }

constructor TMetro5NavItem.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.BaseClass := TM5SClassType.NavItem;
  self.tag := 'li';
  // Creo un Link <a> di default
  self.FA := TJanuaHtmlLink.Create(HtmlHelper, False, '', '#', [], False);
  // <a href="profile.html" class="m-nav__link">
  self.FA.AddClass('m-nav__link');
  // <i class="m-nav__link-icon flaticon-profile-1"></i>
  self.FA.AddSimpleTag('i', '', False, ['m-nav__link-icon']);
  self.Add(FA);
  self.FIcon := self.FA.SelectedItem;
  self.FIconType := TMetro5IconType.jmiNone;
  self.FIcon.Hide := True;
  // ..<span class="m-nav__link-title">
  self.FA.AddSimpleTag('span', '', True, ['m-nav__link-title']);
  // ....<span class="m-nav__link-wrap">
  self.FA.SelectedItem.AddSimpleTag('span', '', True, ['m-nav__link-wrap']);
  // ......<span class="m-nav__link-text">
  self.FA.SelectedItem.SelectedItem.AddSimpleTag('span', '', True, ['m-nav__link-text']);
  self.FT := FA.SelectedItem.SelectedItem.SelectedItem;
  // <span class="m-nav__link-badge">
  self.FA.SelectedItem.SelectedItem.AddSimpleTag('span', '', True, ['m-nav__link-badge']);
  self.FB := TMetro5Badge.Create(HtmlHelper);
  FA.SelectedItem.SelectedItem.SelectedItem.Add(FB);
end;

function TMetro5NavItem.GetBadgeColor: TM5StateColorsStyle;
begin
  Result := self.FBadgeColor
end;

function TMetro5NavItem.GetBadgeText: string;
begin
  Result := self.FBadgeText
end;

function TMetro5NavItem.GetHadBadge: Boolean;
begin
  Result := self.FHadBadge
end;

function TMetro5NavItem.GetIconType: TMetro5IconType;
begin
  Result := self.FIconType
end;

function TMetro5NavItem.GetText: string;
begin
  Result := self.FText
end;

function TMetro5NavItem.GetUrl: string;
begin
  Result := self.FUrl
end;

procedure TMetro5NavItem.SetBadgeColor(const Value: TM5StateColorsStyle);
begin
  if FBadgeColor <> Value then
  begin
    self.FB.StateColor := Value;
    self.FBadgeColor := Value;
  end;
end;

procedure TMetro5NavItem.SetBadgeText(const Value: string);
begin
  FBadgeText := Value;
  self.FB.Text := Value;
end;

procedure TMetro5NavItem.SetHadBadge(const Value: Boolean);
begin
  FHadBadge := Value;
  self.FB.Hide := not Value;
end;

procedure TMetro5NavItem.SetIconType(const Value: TMetro5IconType);
begin
  if FIconType <> Value then
  begin
    if self.FIconType <> jmiNone then
      self.FIcon.DelClass(Metro5Icons[self.FIconType]);
    self.FIconType := Value;
    if self.FIconType <> jmiNone then
      self.FIcon.AddClass(Metro5Icons[self.FIconType]);

    self.FIcon.Hide := self.FIconType <> jmiNone;
  end;
end;

procedure TMetro5NavItem.SetText(const Value: string);
begin
  FText := Value;
  self.FT.Text := Value;
end;

procedure TMetro5NavItem.SetUrl(const Value: string);
begin
  FUrl := Value;
  if Assigned(self.FA) then
    self.FA.LinkUrl := FUrl;

end;

{ TMetro5FrameContent }

constructor TMetro5FrameContent.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'div';
  (* self.AddClasses(['m-grid', 'm-grid--hor', 'm-grid--root', 'm-page']); *)
  self.CommentBefore := 'begin:: Page';
  self.CommentAfter := 'end:: Page';

  // self.AddSimpleTag('div', '', True, ['m-grid__item m-grid__item--fluid', 'm-grid', 'm-grid--ver-desktop',
  // 'm-grid--desktop', 'm-page__container m-body']);
  self.AddSimpleTag('div', '', True);

  FBodyWrapper := self.SelectedItem;
  FBodyWrapper.CommentBefore := 'begin::Body';
  FBodyWrapper.CommentAfter := 'end::Body';
  FBodyWrapper.AddSimpleTag('div', '', True);
  FBody := FBodyWrapper.SelectedItem;
  (* self.FBody := TMetro5GridItem.Create(self.HtmlHelper);
    self.FBody.AddClasses(['m-grid__item--fluid', 'm-wrapper']);
    // self.FBody.AddStyle(THtmlStyle.BackgroundColor, '#3E5062');
    FBodyWrapper.Add(self.FBody);
  *)
end;

destructor TMetro5FrameContent.Destroy;
begin

  inherited;
end;

function TMetro5FrameContent.GetBody: IJanuaHtmlObject;
begin
  Result := self.FBody
end;

function TMetro5FrameContent.GetBodyWrapper: IJanuaHtmlObject;
begin
  Result := self.FBodyWrapper
end;

procedure TMetro5FrameContent.SetBody(const Value: IJanuaHtmlObject);
begin
  self.FBody := Value
end;

procedure TMetro5FrameContent.SetBodyWrapper(const Value: IJanuaHtmlObject);
begin
  self.FBodyWrapper := Value
end;

{ TMetro5FooterNav }

procedure TMetro5FooterNav.AddNavItem(aUrl, aText: string; aIcon: TMetro5IconType; aTitle: string; aTarget: Boolean);
var
  aItem: IJanuaHtmlObject;
begin
  {
    // standard nav Item
    <li class="m-nav__item">
    <a href="" class="m-nav__link">
    <i class="m-nav__link-icon flaticon-share"></i>
    <span class="m-nav__link-text">Human Resources</span>
    </a>
    </li>
    // **** Footer Nav Item ******************************************
    <a href="#" class="m-nav__link">
    <span class="m-nav__link-text">About</span>
    </a>
    </li>

    <a href="?page=header/actions&amp;demo=default" class="m-menu__link ">
    <i class="m-menu__link-icon flaticon-map"></i>
    <span class="m-menu__link-text">Annual Reports</span></a>

  }

  self.FList.AddSimpleTag('li', '', True, ['m-nav__item']);
  aItem := FList.SelectedItem;
  if aUrl <> '' then
  begin
    aItem.AddSimpleTag('a', '', True, ['m-nav__link']);
    aItem := aItem.SelectedItem;
    if aTarget then
      aItem.AddParam('target', '_blank');
    if aTitle <> '' then
      aItem.AddParam('title', aTitle);
  end;
  if aIcon <> TMetro5IconType.jmiNone then
    aItem.AddSimpleTag('i', '', False, ['m-menu__link-icon', Metro5Icons[aIcon]]);
  aItem.AddSimpleTag('span', aText, False, ['m-nav__link-text']);
end;

constructor TMetro5FooterNav.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  // FList := TCollections.CreateList<IJanuaHtmlObject>;
  // <div class="m-stack__item m-stack__item--right m-stack__item--middle m-stack__item--first">
  self.BaseClass := TM5SClassType.StackItem;
  self.tag := 'div';
  self.AddClasses(['m-stack__item--right', 'm-stack__item--middle', 'm-stack__item--first', 'janua_footer_nav']);
  self.AddStyle(THtmlStyle.MarginTop, '-0px');
  self.AddSimpleTag('ul', '', True, ['m-footer__nav', 'm-nav', 'm-nav--inline', 'm--pull-right']);
  self.SelectedItem.AddStyle(THtmlStyle.LineHeigth, '8px');
  FList := self.SelectedItem;
  {
    <ul class="m-footer__nav m-nav m-nav--inline m--pull-right">
    <li class="m-nav__item">
    <a href="#" class="m-nav__link">
    <span class="m-nav__link-text">About</span>
    </a>
    </li>
    <li class="m-nav__item">
    <a href="#" class="m-nav__link">
    <span class="m-nav__link-text">Privacy</span>
    </a>
    </li>
    <li class="m-nav__item">
    <a href="#" class="m-nav__link">
    <span class="m-nav__link-text">T&amp;C</span>
    </a>
    </li>
  }
end;

function TMetro5FooterNav.GetIsInline: Boolean;
begin
  Result := self.FIsInline
end;

function TMetro5FooterNav.GetList: IJanuaHtmlObject;
begin
  Result := self.FList
end;

procedure TMetro5FooterNav.SetIsInline(const Value: Boolean);
begin
  FIsInline := Value;
  if self.FIsInline then
  begin
    FList.AddClass('m-nav--inline');
    FList.DelStyle(THtmlStyle.TextAlign);
  end
  else
  begin
    FList.DelClass('m-nav--inline');
    FList.AddStyle(THtmlStyle.TextAlign, 'center');
  end;
end;

procedure TMetro5FooterNav.SetList(const Value: IJanuaHtmlObject);
begin
  FList := Value;
end;

{ TMetro5PortletWidget }

constructor TMetro5PortletWidget.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  // LObject: IJanuaHtmlObject;
  LMObject: IMetro5HtmlObject;
begin
  inherited;
  {
    <div class="m-portlet m-portlet--head-overlay m-portlet--half-height   m-portlet--rounded-force">
    <div class="m-portlet__head m-portlet__head--fit">
    <div class="m-portlet__head-caption">
    <div class="m-portlet__head-title">
    <h3 class="m-portlet__head-text m--font-light">
    LND Liguria &nbsp; &nbsp;&nbsp;</h3>
    </div>
    </div>
  }

  // <div class="m-portlet m-portlet--head-overlay m-portlet--half-height   m-portlet--rounded-force">
  tag := 'div';
  BaseClass := TM5SClassType.Portlet;
  BaseColor := TM5StateColorsStyle.m5sLight;
  AddClasses(['m-portlet--head-overlay', 'm-portlet--half-height', 'm-portlet--rounded-force']);
  // ..<div class="m-portlet__head m-portlet__head--fit">
  LMObject := self.AddMetro5Object('div', TM5SClassType.PortletHead, ['m-portlet__head--fit']);
  // ....<div class="m-portlet__head-caption">
  LMObject := LMObject.AddMetro5Object('div', TM5SClassType.PortletHeadCaption, []);
  // ......<div class="m-portlet__head-title">
  LMObject := LMObject.AddMetro5Object('div', TM5SClassType.PortletHeadTitle, []);
  // ........<h3 class="m-portlet__head-text m--font-light">
  FTitleObject := LMObject.AddMetro5Object('h3', TM5SClassType.PortleHeadText, []);
  FTitleObject.BaseColor := BaseColor;

end;

constructor TMetro5PortletWidget.Create(aHelper: Janua.Html.Intf.IHtmlHelper; aSettings: TMetro5PortletSettings);
begin
  self.Create(aHelper);
  self.Title := aSettings.Title;
  self.BaseColor := aSettings.BaseColor;
end;

procedure TMetro5PortletWidget.SetBaseColor(const Value: TM5StateColorsStyle);
begin
  inherited;
  self.FTitleObject.BaseColor := Value;
end;

procedure TMetro5PortletWidget.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

procedure TMetro5PortletWidget.SetTitleColor(const Value: TM5StateColorsStyle);
begin
  FTitleColor := Value;
end;

{ TMetro5BrandTools }

constructor TMetro5BrandTools.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  tmp: IJanuaHtmlObject;
begin
  inherited;
  ExecProc(
    procedure
    begin
      self.AddClasses(['m-stack__item--middle', 'm-brand__tools']);
      // Quick Actions ..............................................
      self.FQuickActionsMenu := TMetro5QuickAction.Create(self.HtmlHelper);
      self.Add(FQuickActionsMenu);
      // Header Menu Toggler
      tmp := TJanuaHtmlLink.Create(aHelper, False, '', 'javascript:;', [], False);
      tmp.NewLine := True;
      tmp.CommentBefore := 'begin::Responsive Header Menu Toggler';
      tmp.CommentAfter := 'end::Responsive Header Menu Toggler';
      tmp.AddClasses(['m-brand__icon', 'm-brand__toggler', 'm--visible-tablet-and-mobile-inline-block']);
      tmp.AddSimpleTag('span', '');
      tmp.Id := 'm_aside_header_menu_mobile_toggle';
      // style="margin-top:18px"
      // tmp.AddStyle(THtmlStyle.MarginTop, '18px');
      self.Add(tmp);
      // Topbar Toggler
      tmp := TJanuaHtmlLink.Create(aHelper, False, '', 'javascript:;', [], False);
      tmp.Id := 'm_aside_header_topbar_mobile_toggle';
      tmp.AddClasses(['m-brand__icon', 'm--visible-tablet-and-mobile-inline-block']);
      tmp.NewLine := True;
      tmp.CommentBefore := 'begin::Topbar Toggler';
      tmp.CommentAfter := 'end::Topbar Toggler';
      // flaticon-more
      tmp.Add(TMetro5Icon.Create(aHelper, TMetro5IconType.FlaticonMore));
      self.Add(tmp);

      Guard.CheckNotNull(FQuickActionsMenu, 'FQuickActionsMenu is nil');
    end, 'Create', self);
end;

function TMetro5BrandTools.GetQuickActionsMenu: IMetro5QuickAction;
begin
  Result := self.FQuickActionsMenu
end;

procedure TMetro5BrandTools.SetQuickActionsMenu(const Value: IMetro5QuickAction);
begin
  FQuickActionsMenu := Value;
end;

{ TMetro5QuickAction }

procedure TMetro5QuickAction.AddItem(const aTitle, aIcon, aHref: string);
var
  LO: IJanuaHtmlObject;
begin
  LO := self.FUL.AddSimpleTag('li', '', True, ['m-nav__item', 'j-quick-nav_item']);
  // LO.AddStyle(THtmlStyle.MarginTop, '15px');
  // <a href="" class="m-nav__link">
  LO := LO.AddSimpleTag('a', '', True, ['m-nav__link']);
  LO.AddParam('href', aHref);
  if aIcon <> '' then
    LO.AddSimpleTag('i', '', False, ['m-nav__link-icon', aIcon.ToLower]);
  LO.AddSimpleTag('span', aTitle, False, ['m-nav__link-text']);
end;

constructor TMetro5QuickAction.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  LO: IJanuaHtmlObject;
  a: IJanuaHtmlLink;
begin
  inherited;
  {
    <div class="m-dropdown m-dropdown--inline m-dropdown--arrow m-dropdown--align-left m-dropdown--align-push"
    m-dropdown-toggle="click" aria-expanded="true">
    ..<a href="#" class="dropdown-toggle m-dropdown__toggle btn btn-outline-metal m-btn  m-btn--icon m-btn--pill">
    ....<span>Dashboard</span>
    ..</a>
    ..<div class="m-dropdown__wrapper" style="z-index: 101;">
    ....<span class="m-dropdown__arrow m-dropdown__arrow--left m-dropdown__arrow--adjust" style="right: auto; left: 80px;"></span>
    <div class="m-dropdown__inner">
    <div class="m-dropdown__body">
    <div class="m-dropdown__content">
    <ul class="m-nav">
  }
  ExecProc(
    procedure
    begin
      self.tag := 'div';
      self.BaseClass := TM5SClassType.DropDown;
      self.AddClasses(['m-dropdown--inline', 'm-dropdown--arrow', 'm-dropdown--align-left', 'm-dropdown--align-push']);
      self.AddParam('m-dropdown-toggle', 'click');
      self.AddParam('aria-expanded', 'true');
      // TJanuaHtmlLink.Create(aHelper: IHtmlHelper; IsLink: boolean; aUrl, aLink: string; aRels: TJanuaLinkRelTypes; aCross: boolean);
      a := TJanuaHtmlLink.Create(self.HtmlHelper, False, '#', '', [TJanuaLinkRelType.None]);
      // 'dropdown-toggle',
      a.AddClasses(['m-dropdown__toggle', 'btn btn-outline-metal', 'm-btn', 'm-btn--icon', 'm-btn--pill']);
      a.AddSimpleTag('span', 'Comitati');
      a.AddSimpleTag('i', '', False, ['fas', 'fa-angle-down']);
      FAText := a.SelectedItem;
      self.Add(a);

      { <div class="m-dropdown__wrapper" style="z-index: 101;">
        ..<span class="m-dropdown__arrow m-dropdown__arrow--left m-dropdown__arrow--adjust" style="right: auto; left: 80px;"></span>
        ..<div class="m-dropdown__inner">
        ....<div class="m-dropdown__body">
        ......<div class="m-dropdown__content">
        ........<ul class="m-nav">
        ..........<li class="m-nav__section m-nav__section--first m--hide">
        ............<span class="m-nav__section-text">Quick Menu</span>
        ..........</li>
        ..........<li class="m-nav__item">
        ............<a href="" class="m-nav__link">
        ............<i class="m-nav__link-icon flaticon-share"></i>
        ............<span class="m-nav__link-text">Human Resources</span>
        ............</a>
        ..........</li> }
      LO := self.AddSimpleTag('div', '', True, ['m-dropdown__wrapper']);
      LO.AddStyle(THtmlStyle.ZIndex, '101');
      LO.AddSimpleTag('span', '', False, ['m-dropdown__arrow m-dropdown__arrow--left m-dropdown__arrow--adjust']);
      LO.SelectedItem.AddStyle(THtmlStyle.Right, 'auto');
      LO.SelectedItem.AddStyle(THtmlStyle.Left, '80px');
      LO := LO.AddSimpleTag('div', '', True, ['m-dropdown__inner']);
      LO := LO.AddSimpleTag('div', '', True, ['m-dropdown__body']);
      LO := LO.AddSimpleTag('div', '', True, ['m-dropdown__content']);
      FUL := LO.AddSimpleTag('ul', '', True, ['m-nav']);
      FUL.AddSimpleTag('li', '', True, ['m-nav__section', 'm-nav__section--first', 'm--hide']);
      FUL.SelectedItem.AddSimpleTag('span', 'Quick Menu', False, ['"m-nav__section-text']);
    end, 'Create', self);
end;

function TMetro5QuickAction.GetText: string;
begin
  Result := self.FAText.Text
end;

procedure TMetro5QuickAction.SetText(const Value: string);
begin
  self.FAText.Text := Value
end;

initialization

try
  Metro5Helper := TMetro5HtmlHelper.Create;
except
  on e: exception do
    RaiseException('Janua.Html.Metro5.initialization', e);
end;

finalization

Metro5Helper := nil;

end.
