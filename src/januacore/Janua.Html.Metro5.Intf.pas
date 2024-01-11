unit Janua.Html.Metro5.Intf;

interface

uses System.Classes, System.SysUtils, Janua.Html.Types, System.JSON, Data.DB, Janua.Orm.Types,
  Spring.Collections, Spring, Janua.Core.Types, Janua.Html.Intf, Janua.Html.Metro5.Types, Janua.Orm.Intf;

type
  IMetro5HtmlObject = Interface(IJanuaHtmlObject)
    ['{E811042B-D8D1-4085-901E-E7BEDEB69914}']
    function GetBaseClass: TM5SClassType;
    procedure SetBaseClass(const Value: TM5SClassType);
    procedure AddMetroClass(aClass: TM5SClassType);
    procedure DelMetroClass(aClass: TM5SClassType);
    property BaseClass: TM5SClassType read GetBaseClass write SetBaseClass;
    function GetBaseColor: TM5StateColorsStyle;
    procedure SetBaseColor(const Value: TM5StateColorsStyle);
    property BaseColor: TM5StateColorsStyle read GetBaseColor write SetBaseColor;
    function AddMetro5Object(aTag: string; aBaseClass: TM5SClassType; aClasses: TArray<string>): IMetro5HtmlObject;
  end;

type
  IMetro5HtmlColorObject = Interface(IMetro5HtmlObject)
    ['{78560441-29EA-4537-ACA1-D1FFFB8E8523}']
    function GetStateColor: TM5StateColorsStyle;
    function GetFontColor: TM5StateColorsStyle;
    procedure SetStateColor(const Value: TM5StateColorsStyle);
    procedure SetFontColor(const Value: TM5StateColorsStyle);
    property StateColor: TM5StateColorsStyle read GetStateColor write SetStateColor;
    property FontColor: TM5StateColorsStyle read GetFontColor write SetFontColor;
  end;

type
  // Horizontal Stack
  // m-stack m-stack--hor m-stack--general m-stack--demo
  // Vertical Stack
  // m-stack m-stack--ver m-stack--general m-stack--demo
  IMetro5StackItem = Interface(IMetro5HtmlObject)
    ['{26706B9D-F20A-4877-8B6E-73F8B02C23B1}']
    function GetVerAlign: TMetro5VerAlign;
    function GetHorAlign: TMetro5HorAlign;
    function GetFluid: Boolean;
    procedure SetHorAlign(const Value: TMetro5HorAlign);
    procedure SetVerAlign(const Value: TMetro5VerAlign);
    procedure SetFluid(const Value: Boolean);
    property HorAlign: TMetro5HorAlign read GetHorAlign write SetHorAlign;
    property VerAlign: TMetro5VerAlign read GetVerAlign write SetVerAlign;
    property Fluid: Boolean read GetFluid write SetFluid;
  end;

type
  IMetro5QuickAction = Interface(IMetro5HtmlObject)
    ['{73492560-7E83-432F-AF37-53E440217F72}']
    procedure AddItem(const aTitle, aIcon, aHref: string);
  End;

type
  IMetro5Icon = Interface(IMetro5HtmlColorObject)
    ['{2B9497CA-2141-4156-8188-E15D6E9C6552}']
    function GetIconType: TMetro5IconType;
    procedure SetIconType(const Value: TMetro5IconType);
    property IconType: TMetro5IconType read GetIconType write SetIconType;
  end;

  IMetro5Badge = Interface(IMetro5HtmlColorObject)
    ['{8A936A36-D712-4D38-A13A-9862C253F5E9}']
    function GetBadgeType: TMetro5BadgeType;
    procedure SetBadgeType(const Value: TMetro5BadgeType);
    property BadgeType: TMetro5BadgeType read GetBadgeType write SetBadgeType;
  end;

type
  IMetro5NavItem = Interface(IMetro5HtmlObject)
    ['{E5D1AF67-0C96-48EE-AA6D-91117A9F9EEF}']
    function GetBadgeColor: TM5StateColorsStyle;
    function GetIconType: TMetro5IconType;
    function GetHadBadge: Boolean;
    function GetBadgeText: string;
    function GetText: string;
    function GetUrl: string;
    procedure SetBadgeColor(const Value: TM5StateColorsStyle);
    procedure SetBadgeText(const Value: string);
    procedure SetHadBadge(const Value: Boolean);
    procedure SetIconType(const Value: TMetro5IconType);
    procedure SetText(const Value: string);
    procedure SetUrl(const Value: string);
    property Text: string read GetText write SetText;
    property Url: string read GetUrl write SetUrl;
    property HasBadge: Boolean read GetHadBadge write SetHadBadge;
    property BadgeText: string read GetBadgeText write SetBadgeText;
    property BadgeColor: TM5StateColorsStyle read GetBadgeColor write SetBadgeColor;
    property IconType: TMetro5IconType read GetIconType write SetIconType;
  end;

type
  IMetro5MenuItem = Interface(IMetro5HtmlObject)
    ['{85DF1DC5-BE7B-4C29-9C93-A0AF47CB571A}']
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
    property HtmlMenuItem: IHtmlMenuItem read GetAMenuItem write SetAMenuItem;
    property Selected: Boolean read GetSelected write SetSelected;
    property MenuText: string read GetMenuText write SetMenuText;
    property Url: string read GetUrl write SetUrl;
    property Icon: string read GetIcon write SetIcon;
  end;

type
  IMetro5MenuGroup = Interface(IMetro5HtmlObject)
    ['{AC1601E9-A509-4ED6-9B24-D81D30DC0C77}']
    function GetSelected: Boolean;
    function GetMenuText: string;
    function GetIcon: string;
    function GetUrl: string;
    procedure SetSelected(const Value: Boolean);
    procedure SetIcon(const Value: string);
    procedure SetMenuText(const Value: string);
    procedure SetUrl(const Value: string);
    property Selected: Boolean read GetSelected write SetSelected;
    property MenuText: string read GetMenuText write SetMenuText;
    property Url: string read GetUrl write SetUrl;
    property Icon: string read GetIcon write SetIcon;
  end;

type
  IMetro5HorizontalMenu = Interface(IMetro5HtmlObject)
    ['{F7C5DC3C-E4AA-4BCA-9AB3-295933FCC747}']
    function GetSelected: Boolean;
    procedure SetSelected(const Value: Boolean);
    property Selected: Boolean read GetSelected write SetSelected;
  end;

type
  // Horizontal Stack
  // m-stack m-stack--hor m-stack--general m-stack--demo
  // Vertical Stack
  // m-stack m-stack--ver m-stack--general m-stack--demo
  IMetro5Stack = Interface(IMetro5HtmlObject)
    function GetDemo: Boolean;
    function GetStackAlignType: TMetro5StackAlignType;
    function GetStackDispType: TMetro5StackDispType;
    procedure SetDemo(const Value: Boolean);
    procedure SetStackAlignType(const Value: TMetro5StackAlignType);
    procedure SetStackDispType(const Value: TMetro5StackDispType);
    property StackDispType: TMetro5StackDispType read GetStackDispType write SetStackDispType;
    property StackAlignType: TMetro5StackAlignType read GetStackAlignType write SetStackAlignType;
    property Demo: Boolean read GetDemo write SetDemo;
  end;

  IMetro5PortletHead = Interface(IMetro5HtmlObject)
    ['{4A1659E3-0BFD-447D-8D60-8E3ED4E802DD}']

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
    property Caption: IMetro5HtmlColorObject read GetCaption write SetCaption;
    property Title: string read GetTitle write SetTitle;
    property SubTitle: string read GetSubTitle write SetSubTitle;
    property Icon: TMetro5IconType read GetIcon write SetIcon;
    property IconColor: TM5StateColorsStyle read GetIconColor write SetIconColor;
  end;

  IMetro5PortletBody = interface(IMetro5HtmlObject)
    ['{B692F99B-FF01-4C85-9ACF-920DD0B838C8}']
    function GetPadded: Boolean;
    procedure SetPadded(const Value: Boolean);
    property Padded: Boolean read GetPadded write SetPadded;
  end;

  IMetro5Portlet = interface(IMetro5HtmlObject)
    ['{52E59789-A5DC-4598-8707-79FC7B5D1EC0}']
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
    procedure SetPadded(const Value: Boolean);
    property Rounded: Boolean read GetRounded write SetRounded;
    property Bordered: Boolean read GetBordered write SetBordered;
    property FullHeight: Boolean read GetFullHeight write SetFullHeight;
    property WidgetFit: Boolean read GetWidgetFit write SetWidgetFit;
    property Content: IMetro5PortletBody read GetPortletBody write SetPortletBody;
    property Padded: Boolean read GetPadded write SetPadded;
    function GetPortletHead: IMetro5PortletHead;
    procedure SetPortletHead(const Value: IMetro5PortletHead);
    property Head: IMetro5PortletHead read GetPortletHead write SetPortletHead;
  end;

type
  IMetro5Logo = interface(IJanuaHtmlLink)
    ['{898FF5C8-7C2A-4CE3-BE55-6FC163731380}']
    function GetMobileImg: IJanuaHtmlImage;
    function GetHasMobileImg: Boolean;
    procedure SetHasMobileImg(const Value: Boolean);
    procedure SetMobileImg(const Value: IJanuaHtmlImage);
    property MobileImg: IJanuaHtmlImage read GetMobileImg write SetMobileImg;
    property HasMobileImg: Boolean read GetHasMobileImg write SetHasMobileImg;
  end;

type
  IMetro5BrandTools = interface(IMetro5StackItem)
    ['{48BDFFC0-F200-44D8-B0A6-5C71B80CC000}']
    function GetQuickActionsMenu: IMetro5QuickAction;
    procedure SetQuickActionsMenu(const Value: IMetro5QuickAction);
    property QuickActionsMenu: IMetro5QuickAction read GetQuickActionsMenu write SetQuickActionsMenu;
  end;

type
  IMetro5Brand = interface(IMetro5StackItem)
    ['{D2BAED35-2A17-478E-B9FC-0D265BE5BBB3}']
    function GetImageLogo: IMetro5Logo;
    procedure SetImageLogo(const Value: IMetro5Logo);
    property ImageLogo: IMetro5Logo read GetImageLogo write SetImageLogo;
    function GetBrandTools: IMetro5BrandTools;
    procedure SetBrandTools(const Value: IMetro5BrandTools);
    property BrandTools: IMetro5BrandTools read GetBrandTools write SetBrandTools;
  end;

type
  IMetro5DropDown = interface(IJanuaHtmlObject)
    ['{A4E84D79-C1AA-488A-A047-9644513F54DF}']
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
    Property ColorStyle: TM5StateColorsStyle read GetColorStyle write SetColorStyle;
    Property Toggle: TMetro5DropDownToggleType read GetToggle write SetToggle;
    Property Size: TM5DropDownSize read GetSize write SetSize;
    property Align: TJanuaHtmlPosition read GetAlign write SetAlign;
    property Persistent: Boolean read GetPersistant write SetPersistant;
  end;

type
  IMetro5DropDownAlert = interface(IMetro5DropDown)
    ['{E1164819-1303-469F-9604-165373A992BF}']
    function AddTab(aText, aName: string): IJanuaHtmlObject;
    function SearchTab(aUID: string): Boolean;
    procedure AddItem(const aTabName: string; aText, aBadgeText: string; aBadgeColor: TM5StateColorsStyle;
      const aRead: Boolean; const aUrl: string);
    function GetTabContainer: IJanuaHtmlObject;
    function GetTabHeader: IJanuaHtmlObject;
    function GetTabIndex: integer;
    function GetSelectedTab: IJanuaHtmlObject;
    procedure SetTabContainer(const Value: IJanuaHtmlObject);
    procedure SetTabHeader(const Value: IJanuaHtmlObject);
    procedure SetSelectedTab(const Value: IJanuaHtmlObject);
    procedure SetTabIndex(const Value: integer);
    property TabContainer: IJanuaHtmlObject read GetTabContainer write SetTabContainer;
    property TabHeader: IJanuaHtmlObject read GetTabHeader write SetTabHeader;
    property TabIndex: integer read GetTabIndex write SetTabIndex;
    property SelectedTab: IJanuaHtmlObject read GetSelectedTab write SetSelectedTab;
  end;

type
  IMetro5TopBar = interface(IMetro5StackItem)
    ['{5B1D9E16-E839-49C9-B2E8-9FAB2179C03C}']
    function GetContainer: IJanuaHtmlObject;
    procedure SetContainer(const Value: IJanuaHtmlObject);
    procedure AddDropDown(aDrop: IMetro5DropDown);
    property Container: IJanuaHtmlObject read GetContainer write SetContainer;
  end;

type
  IMetro5PageLoader = interface(IJanuaHtmlObject)
    ['{68713423-0AD4-426E-A74A-BF242CB593D8}']
    function GetLoadMessage: string;
    function GetLoadingText: string;
    function GetLoading: Boolean;
    procedure SetLoadMessage(const Value: string);
    procedure SetLoading(const Value: Boolean);
    procedure SetLoadingText(const Value: string);
    property LoadMessage: string read GetLoadMessage write SetLoadMessage;
    property Loading: Boolean read GetLoading write SetLoading;
    property LoadingText: string read GetLoadingText write SetLoadingText;
  end;

type
  IMetro5HeaderTop = interface(IJanuaHtmlObject)
    ['{AFB60681-E406-4192-9505-83C072C8ADAB}']
    function GetContainer: IJanuaHtmlObject;
    function GetHasMenu: Boolean;
    function GetLogo: IMetro5Brand;
    procedure SetContainer(const Value: IJanuaHtmlObject);
    procedure SetHasMenu(const Value: Boolean);
    procedure SetLogo(const Value: IMetro5Brand);
    procedure AddMenu(aMenu: IJanuaHtmlObject);
    property ContainerMenu: IJanuaHtmlObject read GetContainer write SetContainer;
    property HasMenu: Boolean read GetHasMenu write SetHasMenu;
    property Brand: IMetro5Brand read GetLogo write SetLogo;
  end;

type
  IMetro5HeaderBottom = interface(IJanuaHtmlObject)
    ['{8EF358E3-C1B3-4BD7-8D2C-4077754F060C}']
    function GetContainer: IJanuaHtmlObject;
    procedure SetContainer(const Value: IJanuaHtmlObject);
    procedure AddMenu(aMenu: IJanuaHtmlObject);
    property Container: IJanuaHtmlObject read GetContainer write SetContainer;
  end;

type
  // Questa parte può eventualmente contenere un menu, ciò non è necessario
  IMetro5ContentHeader = interface(IJanuaHtmlObject)
    ['{1CAFA782-273A-486B-B75C-F84B5427D872}']
    function GetHeaderTop: IMetro5HeaderTop;
    function GetHeaderBottom: IMetro5HeaderBottom;
    function GetHasBottom: Boolean;
    function GetHasTop: Boolean;
    procedure SetHeaderBottom(const Value: IMetro5HeaderBottom);
    procedure SetHeaderTop(const Value: IMetro5HeaderTop);
    procedure SetHasBottom(const Value: Boolean);
    procedure SetHasTop(const Value: Boolean);
    procedure AddMenu(aMenu: IJanuaHtmlObject);
    property HeaderTop: IMetro5HeaderTop read GetHeaderTop write SetHeaderTop;
    property HeaderBottom: IMetro5HeaderBottom read GetHeaderBottom write SetHeaderBottom;
    property HasTop: Boolean read GetHasTop write SetHasTop;
    property HasBottom: Boolean read GetHasBottom write SetHasBottom;
    function GetBackGroundColor: string;
    procedure SetBackGroundColor(const Value: string);
    property BackGroundColor: string read GetBackGroundColor write SetBackGroundColor;
  end;

type
  IMetro5FooterNav = interface(IMetro5HtmlObject)
    ['{4A5EEA2B-C7F5-4033-A446-8A46A0829076}']
    procedure SetList(const Value: IJanuaHtmlObject);
    function GetList: IJanuaHtmlObject;
    procedure SetIsInline(const Value: Boolean);
    function GetIsInline: Boolean;
    procedure AddNavItem(aUrl, aText: string; aIcon: TMetro5IconType = TMetro5IconType.jmiNone; aTitle: string = '';
      aTarget: Boolean = False);
    property List: IJanuaHtmlObject read GetList write SetList;
    property IsInline: Boolean read GetIsInline write SetIsInline;
  end;

type
  IMetro5Footer = interface(IJanuaFooter)
    ['{C439F9BD-2A3E-4AE9-AC07-51F476761E0F}']
    function GetWidgetRight: IJanuaHtmlObject;
    function GetWidgetLeft: IJanuaHtmlObject;
    procedure SetWidgetLeft(const Value: IJanuaHtmlObject);
    procedure SetWidgetRight(const Value: IJanuaHtmlObject);
    property WidgetLeft: IJanuaHtmlObject read GetWidgetLeft write SetWidgetLeft;
    property WidgetRight: IJanuaHtmlObject read GetWidgetRight write SetWidgetRight;
  end;

type
  IMetro5Content = interface(IMetro5HtmlObject)
    ['{9EA5EE27-AB6E-4D8C-A63D-5987D3B4DE2A}']
    function GetMetro5ContentHeader: IMetro5ContentHeader;
    function GetBody: IJanuaHtmlObject;
    function GetBodyWrapper: IJanuaHtmlObject;
    procedure SetMetro5ContentHeader(const Value: IMetro5ContentHeader);
    procedure SetBody(const Value: IJanuaHtmlObject);
    procedure SetBodyWrapper(const Value: IJanuaHtmlObject);
    procedure AddMenu(aMenu: IJanuaHtmlObject);
    property Header: IMetro5ContentHeader read GetMetro5ContentHeader write SetMetro5ContentHeader;
    property Body: IJanuaHtmlObject read GetBody write SetBody;
    property BodyWrapper: IJanuaHtmlObject read GetBodyWrapper write SetBodyWrapper;
    function GetFooter: IMetro5Footer;
    procedure SetFooter(const Value: IMetro5Footer);
    property Footer: IMetro5Footer read GetFooter write SetFooter;
  end;

type
  IMetro5FrameContent = interface(IMetro5HtmlObject)
    ['{4DF61D42-7112-4130-8DA5-1A2FDBE5DD51}']
    function GetBody: IJanuaHtmlObject;
    function GetBodyWrapper: IJanuaHtmlObject;
    procedure SetBody(const Value: IJanuaHtmlObject);
    procedure SetBodyWrapper(const Value: IJanuaHtmlObject);
    property Body: IJanuaHtmlObject read GetBody write SetBody;
    property BodyWrapper: IJanuaHtmlObject read GetBodyWrapper write SetBodyWrapper;
  end;

type
  ICustomMetro5Body = interface(IJanuaBody)
    ['{0F61ECE2-A376-429A-A0EC-361C75EBFE7A}']
    function GetPageLoader: IMetro5PageLoader;
    function GetScripts: IJanuaHtmlObject;
    procedure SetPageLoader(const Value: IMetro5PageLoader);
    procedure SetScripts(const Value: IJanuaHtmlObject);
    procedure SetLoading(const Value: Boolean);
    procedure SetLoadingText(const Value: string);
    function GetLoading: Boolean;
    function GetLoadingText: string;
    property PageLoader: IMetro5PageLoader read GetPageLoader write SetPageLoader;
    property Scripts: IJanuaHtmlObject read GetScripts write SetScripts;
    property Loading: Boolean read GetLoading write SetLoading;
    property LoadingText: string read GetLoadingText write SetLoadingText;
  end;

type
  IMetro5Body = interface(ICustomMetro5Body)
    ['{B46F4FB0-2B4D-4F38-A48D-6E256F1AD17A}']
    function GetContent: IMetro5Content;
    procedure SetContent(const Value: IMetro5Content);
    property Content: IMetro5Content read GetContent write SetContent;
    function GetFooter: IMetro5Footer;
    procedure SetFooter(const Value: IMetro5Footer);
    property Footer: IMetro5Footer read GetFooter write SetFooter;
  end;

  //
type
  IMetro5FrameBody = interface(ICustomMetro5Body)
    ['{382705D9-07C2-40C2-812C-0126F155ED04}']
    function GetContent: IMetro5FrameContent;
    procedure SetContent(const Value: IMetro5FrameContent);
    property Content: IMetro5FrameContent read GetContent write SetContent;
  end;

type
  IMetro5Article = interface(IMetro5HtmlObject)
    ['{9A04F1DA-C98A-4353-9FC5-19D9750196AE}']
    function GetButton: IJanuaHtmlLink;
    function GetHasImage: Boolean;
    function GetLinkUrl: string;
    function GetImage: IJanuaHtmlImage;
    function GetTitleUrl: IJanuaHtmlLink;
    function GetAuthor: String;
    function GetAuthorLabel: String;
    function GetAuthorName: String;
    function GetDateLabel: String;
    function GetDescription: String;
    function GetReleaseDate: String;
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
    function GetPrintDate: Boolean;
    procedure SetPrintDate(const Value: Boolean);
    property PrintDate: Boolean read GetPrintDate write SetPrintDate;
  end;

type
  IMetro5Articles = interface(IMetro5PortletBody)
    ['{35F09A97-1A54-46E6-A38B-7E24619DE929}']
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
  IJanuaMetro5Form = interface(IJanuaHtmlForm)
    ['{9E97B4D3-A24F-4188-A7CB-5F8AB869558C}']
    function AddGroupInput(aInputType: THtmlInputType; aPlaceHolder, aName: string): IJanuaHtmlObject;
  end;

type
  IMetro5LoginBody = interface(IJanuaHtmlObject)
    ['{11312715-FA1B-4763-BF8E-597BA1B28F2D}']
    function GetLoginForm: IJanuaMetro5Form;
    function GetRegisterForm: IJanuaMetro5Form;
    procedure SetLoginForm(const Value: IJanuaMetro5Form);
    procedure SetRegisterForm(const Value: IJanuaMetro5Form);
    property LoginForm: IJanuaMetro5Form read GetLoginForm write SetLoginForm;
    property RegisterForm: IJanuaMetro5Form read GetRegisterForm write SetRegisterForm;
  end;

type
  IMetro5Page = interface(IJanuaHtmlPage)
    ['{56AC0581-0E78-4BC8-B323-E48E3E6B4903}']
    function GetContentHeader: IMetro5ContentHeader;
    function GetContentBody: IJanuaHtmlObject;
    procedure SetContentHeader(const Value: IMetro5ContentHeader);
    procedure SetContentBody(const Value: IJanuaHtmlObject);
    Property ContentHeader: IMetro5ContentHeader read GetContentHeader write SetContentHeader;
    procedure SetContentFooter(const Value: IMetro5Footer);
    function GetContentFooter: IMetro5Footer;
    property ContentFooter: IMetro5Footer read GetContentFooter write SetContentFooter;
    Property ContentBody: IJanuaHtmlObject read GetContentBody write SetContentBody;
  end;

type
  IMetro5Frame = interface(IJanuaHtmlPage)
    ['{8E63F158-73E7-4CE2-92AF-FD79719109E6}']
    function GetContentBody: IJanuaHtmlObject;
    procedure SetContentBody(const Value: IJanuaHtmlObject);
    Property ContentBody: IJanuaHtmlObject read GetContentBody write SetContentBody;
  end;

implementation

end.
