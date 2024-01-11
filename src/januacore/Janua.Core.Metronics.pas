unit Janua.Core.Metronics;

interface

{$I JANUACORE.INC}

uses
  System.Classes, System.SysUtils, System.Json, System.Math, System.StrUtils,
  // Indy
  IdURI, HTTPUtil,
  // DB - Devart
  Data.DB,
  // Janua
  Janua.Core.Entities, Janua.Core.Classes, Janua.Core.Types, Janua.Http.Types, Janua.Html.Types;

type
  TMetronicColor = (jmcWhite, jmcDark,
    // **************************************** Blue *******************************************************************
    jmcBlue, jmcBlueMadison, jmcBlueEbony, jmcBlueChambray,
    // **************************** Purple Classes *********************************************************************
    jmcPurple, jmcPurplesoft, jmcPurpleplum, jmcPurpleintense, jmcPurplesharp,
    // **************************************** Red ********************************************************************
    jmcRed, jmcRedThunderbird, jmcRedFlamingo, jmcRedMint, jmcRedPink,
    // **************************************** Green ******************************************************************
    jmcGreen,
    // *************************************** Default *****************************************************************
    jmcDefault, jmcNone);

const
  MetronicColorClass: array [TMetronicColor] of string = ('white', 'dark',
    // **************************** Blue Classes ***********************************************************************
    'blue', 'blue-madison', 'blue-ebonyclay', 'blue-chambray',
    // **************************** Purple Classes *********************************************************************
    'purple', 'purple-soft', 'purple-plum', 'purple-intense', 'purple-sharp',
    // **************************************** Red Classes ************************************************************
    'red', 'red-thunderbird', 'red-flamingo', 'red-mint', 'red-pink',
    // **************************************** Green Classes **********************************************************
    'green',

    // *************************** Default *****************************************************************************
    'default', '');

  MetronicColorHex: array [jmcWhite .. jmcDefault] of string = ('#FFFFFF', '#E1E5EC',
    // **************************** Blue Classes ***********************************************************************
    '#3598DC', '#FFFFFF', '#FFFFFF', '#FFFFFF',
    // **************************** Purple Classes *********************************************************************
    '#FFFFFF', '#FFFFFF', 'purple-plum', 'purple-intense', 'purple-sharp',
    // **************************************** Red Classes ************************************************************
    'red', 'red-thunderbird', 'red-flamingo', 'red-mint', 'red-pink',
    // **************************************** Green Classes ************************************************************
    'green',
    // *************************** Default *****************************************************************************
    'default');

type
  TMetroButtonPosition = (jmpRight, jmpLeft);

const
  MetroButtonPosition: array [TMetroButtonPosition] of string = ('left', 'right');

type
  TBoostrapStyle = (jbtsNone, jbtsDefault, jbtsSuccess, jbtsWarning, jbtsDanger, jbtsInfo, jbtsActive);
  // success, warning, danger, info, and active;

const
  BoostrapStyle: array [TBoostrapStyle] of string = ('', 'default', 'success,', 'warning', 'danger', 'info', 'active');

type
  TBootstrapButtonStyle = (jbbNone, jbbDefault, jbbPrimary, jbbSuccess, jbbInfo, jbbWarning, jbbDanger, jbbLink);

const
  BootstrapButtonStyle: array [TBootstrapButtonStyle] of string = ('', 'btn-default', 'btn-primary', 'btn-success',
    'btn-info', 'btn-warning', 'btn-danger', 'btn-link');

type
  TJanuaMetroColor = record
    MetroColor: TMetronicColor;
  public
    function IsSet: boolean;
    function ColorClass: string; overload;
    function ColorClass(aColor: TMetronicColor): string; overload;
    function ColorValue: integer;
    function ColorHexString: string;
    constructor Create(aColor: TMetronicColor);
  end;

type
  // sono tutti i tipi di 'Input' Gestiti dal sistema, probabilmente farò un oggetto Control che conterrà Input e altro
  TMetroInputType = (jmtText, jmtCheckBox, jmtRadioGroup, jmtMemo, jmtDate, jmtDateRange);
  TMetroInput = (jmtStandard, jmtPassword, jmtEmail);
  TMetroPos = (mbpLeft, mbpRight, mpbTop, mbpBottom, mbpFit);

const
  JanuaMetroInputs: array [jmtStandard .. jmtEmail] of string = ('text', 'password', 'email');

type
  TMetroState = (jmsEnabled, jmsReadOnly, JmsDisabled);
  TMetroLabel = (jmlLeft, jmlTop, jmlNone);

  // ***************************** All Metronic and Boostrap Icons *******************************************************
type
  TTMetroIconPos = (jmpNoIcon, jmpLeftInline, jmpLeftBoxed, jmpRightInline, jmpRigthBoxed);

  TMetroIcon = (jmiNone, jmiEnvelope, jmiMobilePhone, jmiPhone, jmiLock, jmiPassword, jmiUser, jmiName, jmiAddressCard,
    jmiAddressCardOutline, jmiCalendar, jmiBell, jmiBellOutline, jmiMap, jmiCreditCard, jmiIDCard, jmiMapMarker,
    jmlSocialDribble, jmiList, jmiBarChart, jmiRssFeed, jmiSocialDribble, jmiInfo, jmiIconUser, jmiGeoMarker, jmiGlobe,
    jmiPhotoCamera, jmiAngleLeft, jmiAngleRight, jmiIconBell, jmiIconKey, jmiCheck);

const
  MetroIcons: array [TMetroIcon] of string = ('', 'fa fa-envelope', 'fa fa-mobile', 'fa fa-phone', 'fa fa-lock',
    'fa fa-lock', 'fa fa-user', 'fa fa-user', 'fa fa-address-card', 'fa fa-address-card-o', 'fa fa-calendar',
    'fa fa-bell', 'fa fa-bell-o', 'fa fa-map-o', 'credit-car', 'fa fa-id-card', 'fa fa-map-marker', 'fa fa-dribbble',
    'fa fa-list', 'icon-bar-chart', 'icon-feed', 'icon-social-dribbble', 'icon-info', 'icon-user', 'icon-pointer',
    'icon-globe', 'icon-camera', 'fa fa-angle-left', 'fa fa-angle-right', 'icon-bell', 'icon-key', 'fa fa-check');

function MetroIcon(aIcon: TMetroIcon): string;
function MetroIconHtml(aIcon: TMetroIcon): string;

type
  TMetroFontSize = (jmtBold, jmtUnderline, jmtItalic, jmtNone);

type
  TMetroFontCase = (mfsUppercase, mfsNormal);

const
  MetroFontSizes: array [jmtBold .. jmtNone] of string = ('bold', 'underline', 'italic', '');
  MetroFontCases: array [TMetroFontCase] of string = ('uppercase', '');

type
  TJanuaMetroFont = record
    Size: TMetroFontSize;
    FontCase: TMetroFontCase;
    Color: TJanuaMetroColor;
  public
    function HtmlText: string;
    function Active: boolean;
    procedure Clear;
    constructor Create(aMetroColor: TMetronicColor); overload;
    constructor Create(aMetroCase: TMetroFontCase); overload;
    constructor Create(aMetroColor: TMetronicColor; aMetroCase: TMetroFontCase; aSize: TMetroFontSize); overload;
  end;

type
  TJanuaMetroIcon = record
  strict private
    FIconType: TMetroIcon;
  private
    Color: TJanuaMetroColor;
    function HtmlText: string; overload;
    function FontAwesome: string;
    procedure SetFontAwesome(aValue: string);
    procedure SetIconType(const Value: TMetroIcon);
  public
    procedure Clear;
    function IsSet: boolean;
    constructor Create(aIconType: TMetroIcon);
    function HtmlText(aType: TMetroIcon): string; overload;
    property IconType: TMetroIcon read FIconType write SetIconType;
    property Font: string read FontAwesome;
  end;

  { Labels & Badges Styles

    Class	Labels	Badges	Roundless Badges
    Default	Default	5	3
    Primary	Primary	4	Hot
    Info	Info	6	New
    Success	Success	1	2
    Danger	Danger	3	5
    Warning	Warning	12	3
  }

type
  TMetroBadgeStyle = (jbsDefault, jbsPrimary, jbsInfo, jbsSuccess, jbsDanger, jbsWarning);

var
  JanuaBadgeStyle: array [Low(TMetroBadgeStyle) .. High(TMetroBadgeStyle)] of string = ('default', 'primary', 'info',
    'success', 'danger', 'warning');

type
  TJanuaOption = record
    Option: string;
    Value: string;
  public
    Constructor Create(aOption, aValue: string);
    function HtmlText: string;
  end;

type
  TJanuaInputRadio = record
    Name: string;
    ID: string;
    sLabel: string;
    Value: string;
    Checked: boolean;
    Enabled: boolean;
  public
    constructor Create(aName, aID, aLable, aValue: string);
    function HtmlText(i: integer = 0): string;
    procedure Clear;

  end;

  // ***************************** portlet definitions *******************************************************************

type
  TJanuaInputConf = record
    IconPos: TTMetroIconPos;
    IconType: TMetroIcon;
    IconColor: TMetronicColor;
    LabelType: TMetroLabel;
    InputType: TMetroInput;
    InputState: TMetroState;
    Size: integer;
    Checked: boolean;
    Lines: integer;
    WidthPurcent: integer;
  public
    constructor Create(aType: TMetroInputType);
    procedure SetDefault;
  end;

type
  TJanuaMetroTextArea = record
    WidthPurcent: integer;
    Name: string;
    ID: string;
    Title, Caption: string;
    Text: string;
    Lines: integer;
    Size: integer;
  public
    procedure Clear;
    function HtmlText(i: integer): string;
    constructor Create(aName, aID, aTitle, aCaption: string; aLines: integer = 8; aSize: integer = 8);
  end;

function FormGroup(aText: string; i: integer = 0): string;
function InputWrapper(aLabel, aHtml: string; i: integer; InputBoxConf: TJanuaInputConf): string;
function InputDate(aName, aTitle, aLabel, aSuggestion: string; aValue: TDateTime; InputBoxConf: TJanuaInputConf;
  i: integer = 0): string;
function InputMemo(aName, aTitle, aLabel, aText: string; InputBoxConf: TJanuaInputConf; i: integer = 0): string;
function InputBox(aName, aText, aSuggestion, aLabel, aLink: string; InputBoxConf: TJanuaInputConf; i: integer = 0;
  aValue: string = ''): string; overload;
function InputAutoComplete(aName, aText, aSuggestion, aLabel, aLink: string; InputBoxConf: TJanuaInputConf)
  : string; overload;
function InputCheckBox(aName, aLabel: string; aChecked: boolean = False; i: integer = 0): string;
function InputRadio(aName, aLabel: string; aOptions: array of TJanuaInputRadio; InputBoxConf: TJanuaInputConf;
  i: integer = 0): string;

type
  TJanuaOptionValue = record
    Name, Value: string;
  public
    constructor Create(aName, aValue: string);
    function HtmlText: string;
  end;

type
  /// 2017-10-10 KB 2017-0021 TMetroList Pagination
  TMetroListType = (mlDefault, mlPagination, mlSidebarNav);

type
  TJanuaMetroListRow = record
    Title: string;
    Url: string;
    Icon: TJanuaMetroIcon;
    Disabled: boolean;
    Opened: boolean;
    Start: boolean;
    Active: boolean;
    Badge: smallint;
    FI: smallint;
    FL: smallint;
    BadgeStyle: TMetroBadgeStyle;
    /// 2017-10-10 KB 2017-0021 TMetroList Pagination
    ListType: TMetroListType;
  public
    constructor Create(aI, aL: smallint; aTitle, aUrl: string; aIcon: TJanuaMetroIcon;
      aBadgeStyle: TMetroBadgeStyle = TMetroBadgeStyle.jbsDefault; aBadge: smallint = 0);
    function AsString: string;
  end;

type
  TJanuaMetroList = record
    Title: string;
    Icon: TJanuaMetroIcon;
    Opened: boolean;
    Selected: boolean;
    Items: TArray<TJanuaMetroListRow>;
    ListType: TMetroListType;
    PrevVisible: boolean;
    PrevEnabled: boolean;
    PrevURL: string;
    PrevData: string;
    NextVisible: boolean;
    NextEnabled: boolean;
    NextURL: string;
    NextData: string;
  private
    FI: smallint;
    FL: smallint;
  public
    procedure Clear;
    constructor Create(aI, aL: smallint; aType: TMetroListType = TMetroListType.mlDefault);
    function Count: integer;
    function AsString: string;
    procedure Add(aRow: TJanuaMetroListRow);
  end;

type
  TJanuaUrlParam = record
    Name: string;
    Value: string;
  public
    function AsHtml: string;
  end;

type
  TJanuaMetroLink = record
    BaseUrl: string;
    Params: array of TJanuaUrlParam;
    ItemIndex: integer;
    Color: TJanuaMetroColor;
    Icon: TJanuaMetroIcon;
    Font: TJanuaMetroFont;
    IsButton: boolean;
    ButtonStyle: TBootstrapButtonStyle;
    Text: string;
  public
    constructor Create(aUrl, aText: string);
  public
    function Count: integer;
    procedure Clear;
    function HasClass: boolean;
    function AsHtml: string;
    procedure Add(aName, aValue: string); overload;
    procedure Add(aParam: TJanuaUrlParam); overload;
  end;

type
  TJanuaMetroSocialButton = record
    Link: TJanuaMetroLink;

  end;

type
  TJanuaMetroLabel = record
    Name: string;
    Text: string;
    Color: TJanuaMetroColor;
    Font: TJanuaMetroFont;
    Icon: TJanuaMetroIcon;
    Link: TJanuaMetroLink;
  public
    procedure Clear;
    function AsHtml: string;
  end;

type
  TJanuaMetroTableCell = record
    Value: string;
    Index: integer;
    IsHeader: boolean;
    HasLabel: boolean;
    MetroLabel: TJanuaMetroLabel;
    Indent: smallint;
    colspan: integer;
    rowspan: integer;
    Onclick: string;
  public
    constructor Create(aValue: string; aHeader: boolean = False; aLevel: smallint = 0; aColSpan: integer = 0;
      aRowSpan: integer = 0; aOnclick: string = '');
    function AsHtml(aHeader: boolean = False): string;
  private
    FLevel: smallint;
    procedure SetLevel(const Value: smallint);
  public
    property Level: smallint read FLevel write SetLevel;
  end;

type
  TJanuaMetroTableRow = record
    Index: integer;
    ItemIndex: integer;
    Values: array of TJanuaMetroTableCell;
    IsHeader: boolean;
    Style: TBoostrapStyle;
  private
    FLevel: smallint;
    FSimpleCss: string;
    FSimpleStyle: string;
    procedure SetLevel(const Value: smallint);
    procedure SetSimpleCss(const Value: string);
    procedure SetSimpleStyle(const Value: string);
  public
    Constructor Create(aHeader: boolean; aLevel: smallint = 0);
    function Count: integer;
    procedure Add(aCell: TJanuaMetroTableCell);
    procedure AddItem(aItem: TJanuaMetroTableCell);
    procedure AddValue(aValue: integer; colspan: integer = 0; rowspan: integer = 0; Onclick: string = ''); overload;
    procedure AddValue(aValue: Int64; colspan: integer = 0; rowspan: integer = 0; Onclick: string = ''); overload;
    procedure AddValue(aValue: smallint; colspan: integer = 0; rowspan: integer = 0; Onclick: string = ''); overload;
    procedure AddValue(aValue: string; colspan: integer = 0; rowspan: integer = 0; Onclick: string = ''); overload;
    procedure AddValue(aValue: TDateTime; colspan: integer = 0; rowspan: integer = 0; Onclick: string = ''); overload;
    procedure AddValue(aValue: Extended; colspan: integer = 0; rowspan: integer = 0; Onclick: string = ''); overload;
    procedure AddLink(aValue, aUrlLink: string; colspan: integer = 0; rowspan: integer = 0; Onclick: string = '');
    function AsHtml: string;
    function Indent: string;
  public
    property Level: smallint read FLevel write SetLevel;
    property SimpleStyle: string read FSimpleStyle write SetSimpleStyle;
    property SimpleCss: string read FSimpleCss write SetSimpleCss;
  end;

type
  TJanuaHtmlTable = record
    Index: integer;
    ItemIndex: integer;
    Values: array of TJanuaMetroTableRow;
    Header: TJanuaMetroTableRow;
    HasHeader: boolean;
    Bordered: boolean;
    Striped: boolean;
    Hover: boolean;
  public
    Constructor Create(aHeader: boolean);
    procedure Add(aRow: TJanuaMetroTableRow);
    function AsHtml: string;
    function Count: integer;
  end;

type
  TJanuaMetroTable = record
    Index: integer;
    ItemIndex: integer;
    HeaderIndex: integer;
    Headers: array of TJanuaMetroTableRow;
    Values: array of TJanuaMetroTableRow;
    Bordered: boolean;
    Striped: boolean;
    Hover: boolean;
  private
    FLevel: integer;
    FHasHeader: boolean;
    function Indent: string;
    function GetHeader: TJanuaMetroTableRow;
    procedure SetHeader(const Value: TJanuaMetroTableRow);
    procedure SetHasHeader(const Value: boolean);
    procedure SetLevel(const Value: integer);
    function GetSelectedItem: TJanuaMetroTableRow;
    procedure SetSelectedItem(const Value: TJanuaMetroTableRow);
  public
    Constructor Create(aHeader: boolean);
    procedure Add(aRow: TJanuaMetroTableRow);
    procedure AddHeader(aRow: TJanuaMetroTableRow);
    function AsHtml: string;
    function Count: integer;
  public
    property Header: TJanuaMetroTableRow read GetHeader write SetHeader;
    property HasHeader: boolean read FHasHeader write SetHasHeader;
    property Level: integer read FLevel write SetLevel;
    property SelectedItem: TJanuaMetroTableRow read GetSelectedItem Write SetSelectedItem;
  end;

type
  TJanuaMetroTables = record

  end;

type
  TJanuaMetroButton = record
    Name: string;
    ID: string;
    Caption: string;
    Hint: string;
    Color: TJanuaMetroColor;
    Font: TJanuaMetroFont;
    Icon: TJanuaMetroIcon;
    IsSubmit: boolean;
    Pos: TMetroPos;
  public
    constructor Create(aName, aID, aCaption: string);
    function HtmlText: string;

  end;

type
  TJanuaMetroFormInput = record
    Name, Text, Suggestion, sLabel, Title, Link: string;
    Date: TDateTime;
    fromDate, toDate: TDateTime;
    MetroType: TMetroInputType;
    Values: array of TJanuaOptionValue;
    Radios: array of TJanuaInputRadio;
    InputConf: TJanuaInputConf;
    Checked: boolean;
    Size: smallint;
    StringValue: string;
  public
    function ValuesCount: integer;
    function RadioCount: integer;
    procedure AddValue(aValue: TJanuaOptionValue);
    procedure AddRadio(aRadio: TJanuaInputRadio);
    procedure ValuesClear;
    procedure Clear;
    function HtmlText(i: integer = 0): string;
    function Javascript: string;
    constructor Create(aName, aText, aSuggestion, aLabel, aLink: string; aInputConf: TJanuaInputConf); overload;
    constructor Create(aName, aText, aSuggestion, aLabel, aLink: string; aValues: array of TJanuaOptionValue;
      aInputConf: TJanuaInputConf; aMetroType: TMetroInputType = TMetroInputType.jmtText); overload;
  end;

type
  TMetronicControlType = (mctInput, mctGMap, mctChart, mctGrid, mctList, mctTable, mctJumboTron, mctPaypalButton);

type
  TMetroScreenSize = (mssXS, mssSM, mssMD, mssLG);

const
  MetroScreenSize: array [TMetroScreenSize] of string = ('xs', 'sm', 'md', 'lg');

type
  TMetroColumnSize = record
    ScreenSize: TMetroScreenSize;
    Size: Byte;
    Offset: Byte;
  public
    function AsClass: string;
    constructor Create(aScreenSize: TMetroScreenSize; aSize: Byte; aOffest: Byte = 0);
  end;

type
  TJanuaMetroColumn = record
    IsSet: boolean;
    Clearfix: boolean;
    Sizes: TArray<TMetroColumnSize>;
  public
    function WrapControl(sControl: string): string;
    procedure AddSize(aSize: TMetroScreenSize; Size: Byte; Offset: Byte = 0);
  end;

type
  TJanuaMetroControl = record
    ControlType: TMetronicControlType;
    Input: TJanuaMetroFormInput;
    Text: string;
    ID: string;
    PaypalButtonID: string;
    Column: TJanuaMetroColumn;
  private
    function GetSize: integer;
    procedure SetSize(const Value: integer);
    procedure Clear;
  public
    function HtmlText(i: integer = 0): string;
    constructor Create(aInput: TJanuaMetroFormInput; aSize: Byte = 12); overload;
    constructor Create(aName, aText, aSuggestion, aLabel, aLink: string; aInputConf: TJanuaInputConf); overload;
    constructor Create(aID, aText: string; aType: TMetronicControlType = mctJumboTron); overload;
    property Size: integer read GetSize write SetSize;
  end;

type
  TJanuaNotificationBadgeType = (jbtNotification, jbtCalendar, jbtMessages, jbtToDoList, jbtShoppingCart, jbtNone);

  TJanuaNotificationType = (jntNotificationSuccess, jntNotificationDanger, jntNotificationWarning,
    jntNotificationInfo, jntNone);

  TJanuaNotificationConst = record
    Icon: string;
    Font: string;
    slug: string;
    ID: smallint;
  end;

const
  NotificationClasses: array [jntNotificationSuccess .. jntNone] of string = ('label label-sm label-icon label-success',
    'label label-sm label-icon label-danger', 'label label-sm label-icon label-warning',
    'label label-sm label-icon label-info', '');

  NotificationSlugs: array [jntNotificationSuccess .. jntNone] of string = ('fa fa-plus', 'fa fa-bolt', 'fa fa-bell-o',
    'fa fa-bullhorn', 'none');

  NotificationIcons: array [jntNotificationSuccess .. jntNone] of string = ('notifications', 'notifications',
    'notifications', 'notifications', 'none');

  NotificationBadgeID: array [1 .. 5] of TJanuaNotificationBadgeType = (jbtNotification, jbtCalendar, jbtMessages,
    jbtToDoList, jbtShoppingCart);

  NotificationBadgeConsts: array [jbtNotification .. jbtNone] of TJanuaNotificationConst = ((Icon: 'icon-bell';
    Font: 'icon-bell'; slug: 'notification'; ID: 1), (Icon: 'icon-calendar'; Font: 'fa fa-calendar-check-o';
    slug: 'calendar'; ID: 2), (Icon: 'icon-envelope'; Font: 'icon-envelope'; slug: 'inbox'; ID: 3),
    (Icon: 'fa fa-list-alt'; Font: 'fa fa-list-alt'; slug: 'todolist'; ID: 4), (Icon: 'fa fa-shopping-cart';
    Font: 'fa fa-shopping-cart'; slug: 'shoppingcart'; ID: 5), (Icon: ''; Font: ''; slug: 'none'; ID: - 1));

  NotificationBadgeIcons: array [jbtNotification .. jbtNone] of string = ('icon-bell', 'icon-calendar', 'icon-envelope',
    'fa fa-list-alt', 'fa fa-shopping-cart', '');

  NotificationBadgeFonts: array [jbtNotification .. jbtNone] of string = ('icon-bell', 'fa fa-calendar-check-o',
    'icon-envelope', 'fa fa-list-alt', 'fa fa-shopping-cart', '');

  NotificationBadgeSlugs: array [jbtNotification .. jbtNone] of string = ('notification', 'tasks', 'inbox', 'todolist',
    'shoppingcart', 'none');

type
  TJanuaNotification = record
    Url: string;
    ID: integer;
    time: TDateTime;
    aMessage: string;
    NotificationType: TJanuaNotificationType;
  public
    function CssClass: string;
    function CssFont: string;
    function AsHtml: string;
    procedure LoadFromDataset(aDataset: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJson: string;
  end;

type
  TJanuaNotificationBadge = record
  private
    Fslug: string;
  public
    Hint: string;
    NotificationType: TJanuaNotificationBadgeType;
    visible: boolean;
    ID: integer;
    Url: string;
    Notifications: array of TJanuaNotification;
    NotificatinCount: integer;
    function Count: integer;
    function slug: string;
    function Icon: string;
    function Font: string;
  public
    constructor Create(sSlug, sID, sUrl: string; aType: TJanuaNotificationBadgeType);
    function AsHtml: string;
    procedure LoadFromDataset(aDataset: TDataset);
    procedure LoadNotifications(aDataset: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJson: string;
    procedure Add(aNotification: TJanuaNotification);

  end;

type
  TJanuaNotifications = record
    Count: integer;
    Url: string;
    Badges: array of TJanuaNotificationBadge;
  public
    function AsHtml: string;
    procedure LoadFromDataset(aDataset: TDataset);
    procedure AddBadge(sSlug, sID, sUrl: string);
  end;

Type
  TJanuaMetroUserDropDownMenu = record
    Login: boolean;
    LoginUrl: string;
    LoginText: string;
    LoginIcon: TJanuaMetroIcon;
    DashBoard: boolean;
    DashBoardUrl: string;
    DashBoardText: string;
    DashBoardIcon: TJanuaMetroIcon;
    Notifications: boolean; // jmiIconBell
    NotificationsUrl: string;
    NotificationsText: string;
    NotificationsIcon: TJanuaMetroIcon;
    LogOut: boolean;
    LogOutUrl: string;
    LogOutText: string;
    LogOutIcon: TJanuaMetroIcon;
    IsLoggedIn: boolean;
    LockScreen: boolean;
    LockScreenText: string;
    LockScreenUrl: string;
    LockScreenIcon: TJanuaMetroIcon;
  public
    procedure Clear;
    constructor Create(aLoggedIn: boolean); overload;
    constructor Create(aUser: TJanuaRecordUserProfile); overload;
    function AsHtmlText: string;
  end;

Type
  TJanuaMetroControlArray = TArray<TJanuaMetroControl>;

Type
  TJanuaMetroFormRow = record
    Items: TJanuaMetroControlArray;
    Conf: TJanuaInputConf;
  public
    procedure ItemsClear;
    function HtmlText(i: integer = 0): string;
    function sIndent: string;
    function Count: integer;
    function Size: smallint;
    procedure Add(aControl: TJanuaMetroControl);
    constructor Create(aItems: TJanuaMetroControlArray; aConf: TJanuaInputConf); overload;
    constructor Create(aConf: TJanuaInputConf); overload;
  end;

type
  TMetroPortletType = (mptBox, mptLightNoBorder, mptLigthBordered, mptLightSolidInverse);

const
  MetroPortletTypes: array [mptBox .. mptLightSolidInverse] of string = ('box ', 'light ', 'light bordered ',
    'light bg-inverse');

type
  TJanuaMetroPortletType = record
    PortletType: TMetroPortletType;
  public
    constructor Create(aPortletType: TMetroPortletType);
    function HtmlText: string;
  end;

type
  TJanuaFormActions = record
    Buttons: array of TJanuaMetroButton;
    Position: TMetroButtonPosition;
  private
    procedure IncButtons;
  public
    constructor Create(aPosition: TMetroButtonPosition);
    function ButtonsCount: integer;
    function HtmlText(i: integer): string;
    procedure AddButton(aButton: TJanuaMetroButton); overload;
    procedure AddButton(aCaption, aID: string; isSumbit: boolean = False; aIconType: TMetroIcon = TMetroIcon.jmiNone;
      aColor: TMetronicColor = TMetronicColor.jmcBlue); overload;
  end;

type
  TJanuaMetroPortlet = record
    Name: string;
    Title: string;
    Caption: string;
    TitleFont: TJanuaMetroFont;
    TitleBackgroud: TJanuaMetroColor;
    PortletType: TJanuaMetroPortletType;
    Icon: TJanuaMetroIcon;
    Fit: boolean;
    ContentFit: boolean;
    ContentScrollable: boolean;
    IsForm: boolean;
    Buttons: array of TJanuaMetroButton;
  private
    procedure IncButtons;
  public
    function ButtonsCount: integer;
    function HasButtons: boolean;
    function HtmlText(aHtml: string; i: integer = 0): string;
    constructor Create(aName, aTitle, aCaption: string);
    procedure Clear;
    procedure AddButton(aButton: TJanuaMetroButton); overload;
    procedure AddButton(aCaption, aID: string; isSumbit: boolean = False; aIconType: TMetroIcon = TMetroIcon.jmiNone;
      aColor: TMetronicColor = TMetronicColor.jmcBlue); overload;
  end;

type
  MetroArrangement = (maNone, maDefaultTabs, maDefaultPills, maAccordion);

type
  TMetroFormType = (mftHorizontal, mftVertical, mftFlow);

type
  TJanuaMetroForm = record
    Action: string;
    ActionType: TJanuaHttpMethod;
    Bordered: boolean;
    ID: string;
    FormType: TMetroFormType;
    Actions: TJanuaFormActions;
  public
    procedure Clear;
    constructor Create(aID, aAction: string; aActionType: TJanuaHttpMethod = jhmPost;
      aFormType: TMetroFormType = mftVertical);
    function HasActions: boolean;
    function HtmlText(const aHtml: string; k: integer = 0): string;
  end;

type
  TJanuaMetroFrame = record
    Items: array of TJanuaMetroFormRow;
    Frames: array of TJanuaMetroFrame;
    Title: string;
    Caption: string;
    Name: string;
    Conf: TJanuaInputConf;
    IsPortlet: boolean;
    Portlet: TJanuaMetroPortlet;
    Size: smallint;
    Arrangement: MetroArrangement;
    Test: boolean;
  public
    constructor Create(aName, aTitle, aCaption: string);
    function HtmlText(i: integer = 0): string;
    function Count: integer;
    function InputsCount: integer;
    procedure Add(aRow: TJanuaMetroFormRow);
  end;

type
  TJanuaMetroContainer = record
    ID: string;
    IsPortlet: boolean;
    Portlet: TJanuaMetroPortlet;
    Size: smallint;
    Arrangement: MetroArrangement;
    IsForm: boolean;
    Form: TJanuaMetroForm;
    Frames: array of TJanuaMetroFrame;
    Containers: array of TJanuaMetroContainer;
  public
    function FrameCount: smallint;
    function RowCount: smallint;
    function ItemsCount: smallint;
  public
    function HtmlText(k: integer = 0): string;
    procedure Add(aFramte: TJanuaMetroFrame);
    function Count: smallint;
    constructor Create(aID: string; aArrangement: MetroArrangement; aIsPortlet, aIsForm: boolean; aSize: integer = 12);
  end;

type
  TJanuaMetroContainerRow = record
    Forms: array of TJanuaMetroContainer;
    Indent: smallint;
  public
    function HtmlText: string;
    function sIndent: string;
    function Count: integer;
    function Size: smallint;
    procedure Add(aInput: TJanuaMetroContainer);
  end;

type
  TJanuaMetroPageContainer = record
    Rows: array of TJanuaMetroContainerRow;
    Indent: smallint;
  public
    function HtmlText: string;
    function sIndent: string;
    function Count: integer;
    function Size: smallint;
    procedure Add(aInput: TJanuaMetroContainerRow);
  end;

type
  TJanuaMetroPage = record
    Title: string;
    Containers: array of TJanuaMetroContainer;
    ContainerIndex: integer;
    // Language: TJanuaIsoLanguage;
  public
    function HtmlText: string;
    function sIndent: string;
    function ContainersCount: integer;
    function Size: smallint;
    procedure Add(aContainer: TJanuaMetroContainer);
  end;

function TestForm: string;

function Tag(aTag, aString, aColor: string; aClasses: string = ''): string;

function MetroPortletHeader(aIcon: TMetroIcon; aCaption, aEmbedHtml: string; aFontColor: TMetronicColor; L: integer = 0;
  aUpperCase: boolean = True; aBold: boolean = True; aPortletContainer: boolean = True): string;

function MetroHtmlTable(aTable: string; L: integer = 0): string;

implementation

uses Janua.Core.Functions, Janua.Core.Json;

function Tag(aTag, aString, aColor: string; aClasses: string = ''): string;
var
  aStyle: string;
begin
  aStyle := '';
  aStyle := aStyle + ifThen(aColor = '', '', ' color: ' + aColor + ';');
  Result := '<' + aTag + ifThen(aStyle = '', '', 'style="' + aStyle + '"') + '>' + aString + '</' + aTag + '>';
end;

function MetroIcon(aIcon: TMetroIcon): string;
// funzione che ritorna il codice html dell'icona scelta
begin
  Result := MetroIcons[aIcon]
end;

function MetroIconHtml(aIcon: TMetroIcon): string;
begin
  Result := '<i class="' + MetroIcons[aIcon] + '"></i>';
end;

function MetroPortletHeader(aIcon: TMetroIcon; aCaption, aEmbedHtml: string; aFontColor: TMetronicColor; L: integer = 0;
  aUpperCase: boolean = True; aBold: boolean = True; aPortletContainer: boolean = True): string;
var
  aList: TStrings;
  sBold, sUpperCase, sPortletContainer: string;
begin
  // The simple Idea is to open a Div portlet splitted into odds and pairs at first I can make the Odd columns
  // then I can add the pairs columns ... but on smartphones this should sound 'odd' because mathes should not
  // be displayed in the correct way I should, Instead, split my calendar in first round second round
  // literally Andata and Ritorno in ca classical girone all'Italiana.

  sBold := ifThen(aBold, 'bold ', '');
  sUpperCase := ifThen(aUpperCase, 'uppercase ', '');
  sPortletContainer := ifThen(aPortletContainer, 'portlet ', '');

  aList := TStringList.Create;
  try
    aList.Add(Indent(2, L) + '<div class="' + sPortletContainer + 'light bordered">');
    aList.Add(Indent(2, L + 1) + '<div class="portlet-title">');
    aList.Add(Indent(2, L + 2) + '<div class="caption">');
    aList.Add(Indent(2, L + 3) + '<i class="' + MetroIcons[aIcon] + ' font-' + MetronicColorClass[aFontColor] +
      '"></i>');
    aList.Add(Indent(2, L + 3) + '<span class="caption-subject font-' + MetronicColorClass[aFontColor] + ' ' + sBold +
      sUpperCase + '">' + aCaption + '</span>');
    aList.Add(Indent(2, L + 2) + '</div>');
    aList.Add(Indent(2, L + 1) + '</div>');
    aList.Add(Indent(2, L + 1) + '<div class="portlet-body">');
    // Table after the portlet .........................................................................................
    aList.Add(aEmbedHtml);
    aList.Add(Indent(2, L + 1) + '</div>'); // end  portlet-body
    aList.Add(Indent(2, L) + '</div>'); // end   portlet light bordered
    Result := aList.Text
  finally
    aList.Free;
  end;

end;

function MetroHtmlTable(aTable: string; L: integer = 0): string;
var
  aList: TStrings;
begin
  // The simple Idea is to open a Div portlet splitted into odds and pairs at first I can make the Odd columns
  // then I can add the pairs columns ... but on smartphones this should sound 'odd' because mathes should not
  // be displayed in the correct way I should, Instead, split my calendar in first round second round
  // literally Andata and Ritorno in ca classical girone all'Italiana.
  aList := TStringList.Create;
  try
    aList.Add(Indent(2, L) + '    <div class="table-scrollable">');
    aList.Add(aTable);
    aList.Add(Indent(2, L) + '    </div>'); // end table-scrollable
    Result := aList.Text;
  finally
    aList.Free;
  end;

end;

function FormGroup(aText: string; i: integer = 0): string;
var
  a: TStrings;
  o: TJanuaInputRadio;
begin
  a := TStringList.Create;
  try
    // container is always a form-group class .............................................................
    a.Add(Indent(3, i) + '<div class="form-group">  <!-- apro form Group -->');
    // apro il div form-group
    a.Add(aText);
    a.Add(Indent(3, i) + '</div>  <!-- chiudo form Group -->');
    // apro il div form-group
    Result := a.Text;
  finally
    a.Free
  end;
end;

function InputRadio(aName, aLabel: string; aOptions: array of TJanuaInputRadio; InputBoxConf: TJanuaInputConf;
  i: integer = 0): string;
var
  a: TStrings;
  o: TJanuaInputRadio;
  j, k: integer;
begin
  a := TStringList.Create;
  try
    k := i;
    // Verifica se la Label è a Sinistra o Sopra Left o Top
    if InputBoxConf.LabelType = TMetroLabel.jmlTop then
      a.Add(Indent(3, k + 1) + '<label>' + aLabel + '</label>')
    else if InputBoxConf.LabelType = TMetroLabel.jmlLeft then
      a.Add(Indent(3, k + 1) + '<label class="col-md-3 control-label">' + aLabel + '</label>');

    // Inserimento della Box di Testo ....................................................................

    // se Label è Left devo inserire un div container di classe md-9 affiancato alla label md-3
    if InputBoxConf.LabelType = TMetroLabel.jmlLeft then
    begin
      Inc(k);
      a.Add(Indent(3, k) + '<div class="col-md-9">  <!-- apro div-col-md-9 -->');
      // apro il il div col-md-9
    end;


    // if InputType = TMetroInput.jmtStandard then
    // controllo del tipo di controllo eliminato in quanto il controllo lo fa la 'classe' di appartenenza

    a.Add(Indent(3, k + 1) + '<div class="mt-radio-inline"> <!-- apro mt-radio-inline -->');
    for j := 0 to Length(aOptions) - 1 do
    begin
      a.Add(aOptions[j].HtmlText(k + 1));
    end;
    a.Add(Indent(3, k + 1) + '</div>  <!-- mt-radio-inline --> <!-- chiudo mt-radio-inline -->');
    // mt-radio-inline

    if InputBoxConf.LabelType = TMetroLabel.jmlLeft then
      a.Add(Indent(3, k) + '</div>  <!-- chiudo div-col-md-9 -->');
    // div col-md-9

    Result := FormGroup(a.Text, i);
  finally
    JanuaFree(TObject(a));
  end;
end;

function InputCheckBox(aName, aLabel: string; aChecked: boolean = False; i: integer = 0): string;
var
  a: TStrings;
  s: string;
begin
  s := 'value="true"';
  s := s + ifThen(aName <> '', ' name="' + aName + '"');
  s := s + ifThen(aChecked, ' checked');

  a := TStringList.Create;
  try
    a.Add(Indent(3, i) + '<label class="mt-checkbox">' + aLabel);
    a.Add(Indent(3, i + 1) + '<input type="checkbox" ' + s + ' />');
    a.Add(Indent(3, i + 1) + '<span></span> ');
    a.Add(Indent(3, i) + '</label>');

    Result := FormGroup(a.Text, i);
  finally
    a.Free;
  end;
end;

function InputDate(aName, aTitle, aLabel, aSuggestion: string; aValue: TDateTime; InputBoxConf: TJanuaInputConf;
  i: integer = 0): string;
var
  s: string;
begin
  // Controllo input date del framework Metronics.
  // <input class="form-control form-control-inline input-medium date-picker" size="16" type="text" value="">

  // if InputType = TMetroInput.jmtStandard then
  // controllo del tipo di controllo eliminato in quanto il controllo lo fa la 'classe' di appartenenza
  s := ' <input ';
  // ....................................  Start Input ...........................................
  s := s + ifThen(aName <> '', 'name="' + aName + '"');
  s := s + ' class="form-control form-control-inline input-medium date-picker"';
  s := s + ' size="16"';
  s := s + ' type="text"';
  s := s + ' value="' + ifThen(aValue > 0.0, FormatDateTime('dd/mm/yyyy', aValue)) + '"';
  s := s + ifThen(aSuggestion <> '', ' placeholder="' + aSuggestion + '"');
  s := s + ' />';

  Result := FormGroup(InputWrapper(aLabel, Indent(3, i + 2) + s, i + 1, InputBoxConf), i);
end;

function InputMemo(aName, aTitle, aLabel, aText: string; InputBoxConf: TJanuaInputConf; i: integer = 0): string;
var
  a: TJanuaMetroTextArea;
begin
  a.Create(aName, aName.ToLower, aTitle, aLabel, InputBoxConf.Lines, InputBoxConf.Size);
  a.WidthPurcent := InputBoxConf.WidthPurcent;
  Result := a.HtmlText(i)
end;

function InputWrapper(aLabel, aHtml: string; i: integer; InputBoxConf: TJanuaInputConf): string;
var
  a: TStrings;
  ic: TJanuaMetroIcon;
begin
  ic.Create(TMetroIcon.jmiNone);
  a := TStringList.Create;
  try
    // Verifica se la Label è a Sinistra o Sopra Left o Top
    if InputBoxConf.LabelType = TMetroLabel.jmlTop then
      a.Add(Indent(3, i) + '<label>' + aLabel + '</label>')
    else if InputBoxConf.LabelType = TMetroLabel.jmlLeft then
    begin
      if InputBoxConf.Size = 12 then
        a.Add(Indent(3, i) + '<label class="col-md-2 control-label">' + aLabel + '</label>')
      else
        a.Add(Indent(3, i) + '<label class="col-md-3 control-label">' + aLabel + '</label>');

      a.Add(Indent(3, i) + '<div class="col-md-9">  <!-- apro col-md-9 -->');
      // chiudo il divo col-md-9
    end;

    // imposto il colore dell'icona del controllo di base dovrebbe essere None
    ic.Color.MetroColor := InputBoxConf.IconColor;

    // Inserisco il Icona Input ............................................................................
    Case InputBoxConf.IconPos of
      TTMetroIconPos.jmpLeftInline:
        begin
          a.Add(Indent(3, i) + '<div class="input-icon">  <!-- apro input-icon-left-inline -->');
          a.Add(Indent(3, i + 1) + ic.HtmlText(InputBoxConf.IconType))
        end;
      TTMetroIconPos.jmpLeftBoxed:
        begin
          a.Add(Indent(3, i) + '<div class="input-group"> <!-- apro input-group-leftboxed -->');
          a.Add(Indent(3, i + 1) + '<span class="input-group-addon">');
          a.Add(Indent(3, i + 2) + ic.HtmlText(InputBoxConf.IconType));
          a.Add(Indent(3, i + 1) + '</span>');
        end;
      TTMetroIconPos.jmpRigthBoxed:
        begin
          a.Add(Indent(3, i) + '<div class="input-group"> <!-- apro input-group-rightboxed -->');
        end;
    End;
    a.Add(aHtml);
    Case InputBoxConf.IconPos of
      TTMetroIconPos.jmpLeftInline:
        begin
          a.Add(Indent(3, i) + '</div> <!-- chiudo input-icon-left-inline -->');
        end;
      TTMetroIconPos.jmpLeftBoxed:
        begin
          a.Add(Indent(3, i) + '</div> <!-- chiudo input-group-leftboxed -->');
        end;
      TTMetroIconPos.jmpRigthBoxed:
        begin
          a.Add(Indent(3, i + 1) + '<span class="input-group-addon">');
          a.Add(Indent(3, i + 2) + ic.HtmlText(InputBoxConf.IconType));
          a.Add(Indent(3, i + 1) + '</span>');
          a.Add(Indent(3, i) + '</div>  <!-- chiudo input-group-rightboxed -->');
        end;
    End;

    if InputBoxConf.LabelType = TMetroLabel.jmlLeft then
      a.Add(Indent(3, i) + '</div> <!-- chiudo col-md-9 -->');
    // chiudo il divo col-md-9

    Result := a.Text;
  finally
    a.Free;
  end;

end;

function InputAutoComplete(aName, aText, aSuggestion, aLabel, aLink: string; InputBoxConf: TJanuaInputConf)
  : string; overload;
var
  a: TStrings;
  ic: TJanuaMetroIcon;
begin
  // Auto Complete simple version from Metronics .....................................................................
  // http://keenthemes.com/preview/metronic/theme/admin_1/components_typeahead.html
  // url of keenthemes page for component.............................................................................
  ic.Create(TMetroIcon.jmiNone);
  a := TStringList.Create;
  try
    // if InputType = TMetroInput.jmtStandard then
    // controllo del tipo di controllo eliminato in quanto il controllo lo fa la 'classe' di appartenenza

    a.Add('<span class="twitter-typeahead" style="position: relative; display: inline-block;">' +
      '<input type="text" class="form-control tt-hint" readonly="" autocomplete="off" spellcheck="false"' +
      'tabindex="-1" dir="ltr" style="position: absolute; top: 0px; left: 0px; border-color: transparent;' +
      'box-shadow: none; opacity: 1; background-attachment: scroll; background-clip: border-box;' +
      'background-color: rgb(255, 255, 255); background-image: none; background-origin: padding-box;' +
      'background-size: auto; background-position: 0% 0%; background-repeat: repeat repeat;">');

    a.Add('<input type="text" id="typeahead_example_2" name="typeahead_example_2" class="form-control tt-input"' +
      'autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top;' +
      'background-color: transparent;"> ');

    a.Add('<pre aria-hidden="true" style="position: absolute; visibility: hidden;' + 'white-space: pre; font-family:' +
      QuotedStr('Open Sans') + ', sans-serif; font-size: 14px; font-style: normal;' +
      'font-variant-ligatures: normal; font-variant-position: normal; font-variant-caps: normal;' +
      'font-variant-numeric: normal; font-variant-alternates: normal; font-variant-east-asian: normal;' +
      'font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto;' +
      'text-transform: none;">');

    Result := FormGroup(InputWrapper(aLabel, a.Text, 0, InputBoxConf));
  finally
    FreeAndNil(a);
  end;
end;

function InputBox(aName, aText, aSuggestion, aLabel, aLink: string; InputBoxConf: TJanuaInputConf; i: integer = 0;
  aValue: string = ''): string; overload;
var
  s: string;
  ic: TJanuaMetroIcon;
begin
  // if InputType = TMetroInput.jmtStandard then
  // controllo del tipo di controllo eliminato in quanto il controllo lo fa la 'classe' di appartenenza
  ic.Create(TMetroIcon.jmiNone);
  s := Indent(3, i + 2)
  // ----------------------- indent here -------------------------------------
    + ' <input '
  // ....................................  Start Input ...........................................
    + 'name="' + aName + '"' + System.StrUtils.ifThen(aValue <> '', 'value = "' + aValue + '" ', '')
  // ............................ Input Name mandatory .................................
    + ' type="' + JanuaMetroInputs[InputBoxConf.InputType] + '"'
  // ..... Input Type mandatory .................................
    + ' class="form-control"'
  // ........................... Input Class mandatory ................................
    + ' placeholder="' + aSuggestion + '"'
  // ............ Input Name mandatory .................................
    + ' />'; // ............................................  End Input ............................................
  Result := FormGroup(InputWrapper(aLabel, s, i + 1, InputBoxConf), i);
end;

{ TJanuaInputConf }

constructor TJanuaInputConf.Create(aType: TMetroInputType);
begin
  self.IconPos := TTMetroIconPos.jmpLeftBoxed;
  self.IconType := TMetroIcon.jmiNone;
  self.LabelType := TMetroLabel.jmlLeft;
  self.InputType := TMetroInput.jmtStandard;
  self.InputState := TMetroState.jmsEnabled;
  self.Checked := False;

end;

procedure TJanuaInputConf.SetDefault;
begin
  IconPos := TTMetroIconPos.jmpLeftBoxed;
  IconType := TMetroIcon.jmiAddressCard;
  IconColor := TMetronicColor.jmcNone;
  LabelType := TMetroLabel.jmlLeft;
  InputType := TMetroInput.jmtStandard;
  InputState := TMetroState.jmsEnabled;
  Size := 12;
  Checked := False;
  Lines := 8;
  WidthPurcent := 80;
end;

{ TJanuaMetroFormRow }

procedure TJanuaMetroFormRow.Add(aControl: TJanuaMetroControl);
begin
  SetLength(self.Items, self.Count + 1);
  self.Items[self.Count - 1] := aControl;

  if self.Items[self.Count - 1].Size = 0 then
    self.Items[self.Count - 1].Size := self.Size;

  if self.Size > 12 then
  begin
    raise Exception.Create('Columns Size Exceed Row limit of 12 units');
  end;

end;

function TJanuaMetroFormRow.Count: integer;
begin
  Result := Length(self.Items)
end;

constructor TJanuaMetroFormRow.Create(aConf: TJanuaInputConf);
begin
  self := Default (TJanuaMetroFormRow);
  self.Conf := aConf;
end;

constructor TJanuaMetroFormRow.Create(aItems: TJanuaMetroControlArray; aConf: TJanuaInputConf);
var
  i: integer;
begin
  SetLength(self.Items, Length(aItems));
  for i := Low(aItems) to High(aItems) do
    self.Items[i] := aItems[i];
end;

function TJanuaMetroFormRow.HtmlText(i: integer = 0): string;
var
  a: TStrings;
  aControl: TJanuaMetroControl;
begin
  a := TStringList.Create;
  try
    a.Add(Indent(3, i) + '<div class="row"> <!-- Start Row -->'); // md-row
    for aControl in self.Items do
    begin
      // m-grid-col m-grid-col-middle m-grid-col-center  ---- altri controlli abilitabili ma da studiare un secondo ..
      // m-grid-
      if (aControl.ControlType = TMetronicControlType.mctInput) and
        (aControl.Input.MetroType = TMetroInputType.jmtCheckBox) then
        a.Add(Indent(3, i) + '<div class="col-md-offset-1 col-md-' + IntToStr(aControl.Size - 1) + '"' +
          '> <!-- start Column ' + aControl.Size.ToString + ' --> ')
      else
        a.Add(Indent(3, i) + '<div class="col-md-' + aControl.Size.ToString + '"' + '> <!-- start Column ' +
          aControl.Size.ToString + ' --> ');
      a.Add(aControl.HtmlText(i + 1));
      a.Add(Indent(3, i) + '</div>  <!-- end Column ' + aControl.Size.ToString + ' --> ');
    end;
    a.Add(Indent(3, i) + '</div> <!-- End Row -->');
    Result := a.Text;
  finally
    a.Free;
  end;
end;

procedure TJanuaMetroFormRow.ItemsClear;
begin
  SetLength(self.Items, 0);
end;

function TJanuaMetroFormRow.sIndent: string;
var
  i: smallint;
begin
  Result := '';
end;

function TJanuaMetroFormRow.Size: smallint;
var
  aInput: TJanuaMetroControl;
begin
  Result := 0;
  for aInput in self.Items do
    Inc(Result, aInput.Size);

end;

{ TJanuaMetroForm }

procedure TJanuaMetroContainer.Add(aFramte: TJanuaMetroFrame);
begin
  SetLength(self.Frames, self.Count + 1);
  self.Frames[self.Count - 1] := aFramte;
end;

function TJanuaMetroContainer.Count: smallint;
begin
  Result := self.FrameCount;
end;

constructor TJanuaMetroContainer.Create(aID: string; aArrangement: MetroArrangement; aIsPortlet, aIsForm: boolean;
  aSize: integer);
begin
  self := Default (TJanuaMetroContainer);
  self.ID := aID.ToLower;
  self.Arrangement := aArrangement;
  self.IsPortlet := aIsPortlet;
  self.IsForm := aIsForm;
end;

function TJanuaMetroContainer.FrameCount: smallint;
begin
  Result := Length(self.Frames);
end;

function TJanuaMetroContainer.HtmlText(k: integer = 0): string;
var
  a: IStringBuilder;
  i: TJanuaMetroFrame;
  j: integer;
  f: string; // form style;
  L: integer;
begin
  L := k; // inizialmente l'indentazione di l = k se non ho 'rientri'

  a := TJanuaStringBuilder.Create;
  // ******* Form preparation ***************************************************************
  if self.IsForm then
  begin
    self.Portlet.IsForm := True;
    L := L + 2;
  end
  else
    self.Portlet.IsForm := False;

  case self.Arrangement of
    maNone:
      begin
        for i in self.Frames do
        begin
          a.Append(Indent(3, 2 + k) + '<div class="row">');
          a.Append(i.HtmlText);
          a.Append(Indent(3, 2 + k) + '</div>');
        end;
      end;
    maDefaultTabs:
      begin
      end;
    maDefaultPills:
      begin
      end;
    maAccordion:
      begin
        a.Append(Indent(3, 2 + L) + '<div class="panel-group accordion" id="accordion_' + self.ID + '">');
        j := 0;
        for i in self.Frames do
        begin
          a.Append(Indent(3, 3 + L) + '<div class="panel panel-default">');
          a.Append(Indent(3, 4 + L) + '<div class="panel-heading">');
          a.Append(Indent(3, 5 + L) + '<h4 class="panel-title">');

          if j = 0 then
            a.Append(Indent(3, 6 + L) + '<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion_' +
              self.ID + '" href="#collapse_' + self.ID + '_' + i.Name + '" aria-expanded="true">' + i.Title + '</a>')
          else
            a.Append(Indent(3, 6 + L) +
              '<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion_' + self.ID +
              '" href="#collapse_' + self.ID + '_' + i.Name + '" aria-expanded="false">' + i.Title + '</a>');

          a.Append(Indent(3, 5 + L) + '</h4>');
          a.Append(Indent(3, 4 + L) + '</div> <!-- end panel-heading -->');

          if j = 0 then
            a.Append(Indent(3, 4 + L) + '<div id="collapse_' + self.ID + '_' + i.Name + '" class="panel-collapse in">')
          else
            a.Append(Indent(3, 4 + L) + '<div id="collapse_' + self.ID + '_' + i.Name +
              '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">');

          a.Append(Indent(3, 5 + L) + '<div class="panel-body">');
          a.Append(i.HtmlText(6 + L));
          a.Append(Indent(3, 5 + L) + '</div> <!-- end panel-body -->');
          a.Append(Indent(3, 4 + L) + '</div> <!-- end panel-collapse -->');
          a.Append(Indent(3, 3 + L) + '</div> <!-- end panel -->');
          Inc(j);
        end;
        a.Append(Indent(3, 2 + L) + '</div>');
      end;
  end;

  if self.IsForm then
    Result := Form.HtmlText(a.ToString, L)
  else
    Result := a.ToString;

  // se è un portlet allora includo il contenuto dentroun portlet altrimenti no .....................................
  if self.IsPortlet then
    Result := self.Portlet.HtmlText(Result, k);
end;

function TJanuaMetroContainer.ItemsCount: smallint;
begin
  Result := self.Count
  { TODO : Implement MetroContainer. ItemsCount or Replace it }
end;

function TJanuaMetroContainer.RowCount: smallint;
begin
  Result := -1;
  { TODO : Implement MetroContainer. RowCount or Replace it }
end;

{ TJanuaMetroForm }

procedure TJanuaMetroForm.Clear;
begin
  self := Default (TJanuaMetroForm);
end;

constructor TJanuaMetroForm.Create(aID, aAction: string; aActionType: TJanuaHttpMethod; aFormType: TMetroFormType);
begin
  self.ID := aID;
  self.Action := aAction;
  self.ActionType := aActionType;
  self.FormType := aFormType;
end;

function TJanuaMetroForm.HasActions: boolean;
begin
  // se il conteggio dei buttons è > 0 allora ci sono delle azioni ed andrà aggiunta la sezione corrispondente
  // al Form di Riferimento ..................................................................................
  Result := self.Actions.ButtonsCount > 0;
end;

function TJanuaMetroForm.HtmlText(const aHtml: string; k: integer = 0): string;
var
  f: string;
  a: IStringBuilder;
begin
  a := TJanuaStringBuilder.Create;

  f := '<form ';
  f := f + ' action="' + self.Action + '" ';
  f := f + ' method="' + JanuaHttpMethodString[ActionType] + '" ';
  f := f + ' role="form" ';
  f := f + ' class="';
  if self.Bordered then
    f := f + ' form-bordered ';

  case self.FormType of
    TMetroFormType.mftHorizontal:
      f := f + 'form-horizontal';
    TMetroFormType.mftVertical:
      f := f + 'form-vertical';
  end;

  a.Append(Indent(3, k) + f + '"> <!-- Start Form -->'); // Start Form
  a.Append(Indent(3, k + 1) + '<div class="form-body"> <!-- Start Form Body -->'); // Start Form Body
  a.Append(aHtml); // Form Body
  a.Append(Indent(3, k + 1) + '</div> <!-- End Form Body -->'); // End Form Body
  if self.HasActions then
    a.Append(self.Actions.HtmlText(k + 1));
  a.Append(Indent(3, k) + '</form> <!-- End Form -->'); // End Form Body
  // terminato imposta a come valore del Form.
  Result := a.ToString;

end;

{ TJanuaMetroFrame }

procedure TJanuaMetroFrame.Add(aRow: TJanuaMetroFormRow);
begin
  SetLength(self.Items, self.Count + 1);
  self.Items[self.Count - 1] := aRow;
end;

function TJanuaMetroFrame.Count: integer;
begin
  Result := Length(self.Items);
end;

constructor TJanuaMetroFrame.Create(aName, aTitle, aCaption: string);
begin
  SetLength(self.Items, 0);
  SetLength(self.Frames, 0);
  self.IsPortlet := False;
  self.Name := aName;
  self.Title := aTitle;
  self.Caption := aCaption;
  self.Size := 12;
  self.Arrangement := MetroArrangement.maNone;
  self.Conf.SetDefault;
end;

function TJanuaMetroFrame.HtmlText(i: integer = 0): string;
var
  a: TStrings;
  Item: TJanuaMetroFormRow;
  frame: TJanuaMetroFrame;
  j: integer;
begin
  a := TStringList.Create;
  try
    case self.Arrangement of
      maNone:
        begin
          a.Add(Indent(3, i) + '<div class="form-body">'); // start grid
          j := 0;
          for Item in Items do
          begin
            a.Add(Item.HtmlText(1 + i));
          end;
          a.Add(Indent(3, i) + '</div>'); // end grid
        end;
      maDefaultTabs:
        ;
      maDefaultPills:
        ;
      maAccordion:
        ;
    end;

    Result := a.Text;
  finally
    a.Free;
  end;

  if self.IsPortlet then
  begin
    Result := self.Portlet.HtmlText(Result)
  end;

end;

function TJanuaMetroFrame.InputsCount: integer;
begin
  Result := Conf.Lines
end;

{ TJanuaMetroColor }

function TJanuaMetroColor.ColorClass: string;
begin
  Result := MetronicColorClass[self.MetroColor];
end;

function TJanuaMetroColor.ColorClass(aColor: TMetronicColor): string;
begin
  self.MetroColor := aColor;
  Result := self.ColorClass;
end;

function TJanuaMetroColor.ColorHexString: string;
begin
  Result := MetronicColorHex[self.MetroColor];
end;

function TJanuaMetroColor.ColorValue: integer;
begin
  Result := StrToInt(MetronicColorHex[self.MetroColor]);
end;

constructor TJanuaMetroColor.Create(aColor: TMetronicColor);
begin
  self := Default (TJanuaMetroColor);
  self.MetroColor := aColor;
end;

function TJanuaMetroColor.IsSet: boolean;
begin
  Result := self.MetroColor <> TMetronicColor.jmcNone
end;

{ TJanuaMetroIcon }

procedure TJanuaMetroIcon.Clear;
begin
  self := Default (TJanuaMetroIcon);
  self.FIconType := TMetroIcon.jmiNone;
  self.Color.MetroColor := TMetronicColor.jmcNone;
end;

constructor TJanuaMetroIcon.Create(aIconType: TMetroIcon);
begin
  self.Clear;
  self.IconType := aIconType;
end;

function TJanuaMetroIcon.FontAwesome: string;
begin
  Result := MetroIcons[self.IconType]
end;

function TJanuaMetroIcon.HtmlText: string;
begin
  Result := '<i class="' + MetroIcons[IconType];
  if self.Color.MetroColor <> jmcNone then
    Result := Result + ' font-' + self.Color.ColorClass;
  Result := Result + '"></i>';
end;

function TJanuaMetroIcon.HtmlText(aType: TMetroIcon): string;
begin
  self.IconType := aType;
  Result := self.HtmlText;
end;

function TJanuaMetroIcon.IsSet: boolean;
begin
  Result := self.FIconType <> TMetroIcon.jmiNone
end;

procedure TJanuaMetroIcon.SetFontAwesome(aValue: string);
begin

end;

procedure TJanuaMetroIcon.SetIconType(const Value: TMetroIcon);
begin
  FIconType := Value;
end;

{ TJanuaMetroFormInput }

procedure TJanuaMetroFormInput.AddRadio(aRadio: TJanuaInputRadio);
begin
  SetLength(self.Radios, self.RadioCount + 1);
  self.Radios[self.RadioCount - 1] := aRadio;
end;

procedure TJanuaMetroFormInput.AddValue(aValue: TJanuaOptionValue);
begin
  SetLength(self.Values, self.ValuesCount + 1);
  self.Values[self.ValuesCount - 1] := aValue;
end;

procedure TJanuaMetroFormInput.Clear;
begin
  self := Default (TJanuaMetroFormInput);
  self.StringValue := '';
  self.Name := '';
  self.Text := '';
  self.Suggestion := '';
  self.sLabel := '';
  self.Link := '';
  self.MetroType := TMetroInputType.jmtText;
  self.ValuesClear;
  SetLength(self.Radios, 0);
  SetLength(self.Values, 0);
  self.Checked := False;
end;

constructor TJanuaMetroFormInput.Create(aName, aText, aSuggestion, aLabel, aLink: string; aInputConf: TJanuaInputConf);
begin
  self.Name := aName;
  self.Text := aText;
  self.Suggestion := aSuggestion;
  self.InputConf := aInputConf;
end;

procedure TJanuaMetroFormInput.ValuesClear;
begin
  SetLength(self.Values, 0);
end;

function TJanuaMetroFormInput.ValuesCount: integer;
begin
  Result := Length(self.Values);
end;

constructor TJanuaMetroFormInput.Create(aName, aText, aSuggestion, aLabel, aLink: string;
  aValues: array of TJanuaOptionValue; aInputConf: TJanuaInputConf;
  aMetroType: TMetroInputType = TMetroInputType.jmtText);
begin
  self.Name := aName;
  self.Text := aText;
  self.Suggestion := aSuggestion;

end;

function TJanuaMetroFormInput.HtmlText(i: integer = 0): string;
begin
  case MetroType of
    jmtText:
      Result := InputBox(self.Name, Text, Suggestion, sLabel, Link, self.InputConf, i, StringValue);
    jmtCheckBox:
      Result := InputCheckBox(Name, sLabel, self.Checked, i);
    jmtRadioGroup:
      Result := InputRadio(Name, sLabel, self.Radios, self.InputConf, i);
    jmtDate:
      Result := InputDate(Name, Title, sLabel, Suggestion, Date, InputConf, i);
    TMetroInputType.jmtMemo:
      Result := InputMemo(self.Name, self.Title, self.sLabel, self.Text, self.InputConf, i);
  end;
end;

function TJanuaMetroFormInput.Javascript: string;
begin
  Result := '';
  // all'inizio non ho controlli con Javascript collegati (all'inizio))
end;

function TJanuaMetroFormInput.RadioCount: integer;
begin
  Result := Length(self.Radios);
end;

{ TJanuaMetroPortlet }

procedure TJanuaMetroPortlet.AddButton(aButton: TJanuaMetroButton);
begin
  IncButtons;
  self.Buttons[self.ButtonsCount - 1] := aButton;
end;

procedure TJanuaMetroPortlet.AddButton(aCaption, aID: string; isSumbit: boolean; aIconType: TMetroIcon;
  aColor: TMetronicColor);
var
  aButton: TJanuaMetroButton;
begin
  aButton.Name := aID;
  aButton.ID := aID;
  aButton.Caption := aCaption;
  aButton.Color.MetroColor := aColor;
  aButton.IsSubmit := isSumbit;
  aButton.Icon.IconType := aIconType;
  self.AddButton(aButton);

end;

function TJanuaMetroPortlet.ButtonsCount: integer;
begin
  Result := Length(self.Buttons);
end;

procedure TJanuaMetroPortlet.Clear;
begin
  self.Icon.IconType := TMetroIcon.jmiNone;
  self.Name := '';
  self.Title := '';
  self.Caption := '';
  TitleFont.Size := TMetroFontSize.jmtBold;
  TitleFont.FontCase := TMetroFontCase.mfsNormal;
  TitleFont.FontCase := TMetroFontCase.mfsNormal;
  TitleFont.Color.MetroColor := TMetronicColor.jmcBlueEbony;
  TitleBackgroud.MetroColor := TMetronicColor.jmcWhite;
  Icon.IconType := Janua.Core.Metronics.TMetroIcon.jmiNone;
  self.Fit := False;
  IsForm := False;
  SetLength(self.Buttons, 0);
end;

constructor TJanuaMetroPortlet.Create(aName, aTitle, aCaption: string);
begin
  self.Clear;
  self.Name := aName;
  self.Title := aTitle;
  self.Caption := aCaption;
  self.Icon.Create(TMetroIcon.jmiNone);
end;

function TJanuaMetroPortlet.HasButtons: boolean;
begin
  Result := self.ButtonsCount > 0;
end;

function TJanuaMetroPortlet.HtmlText(aHtml: string; i: integer = 0): string;
var
  a: IStringBuilder;
  p: string;
  f: string;
begin
  // portlet-fit full-height-content full-height-content-scrollable

  a := TJanuaStringBuilder.Create;

  p := self.PortletType.HtmlText + ' ' + TitleBackgroud.ColorClass;

  if self.Fit then
    p := p + ' portlet-fit ';
  if self.ContentFit then
    p := p + ' full-height-content ';
  if self.ContentScrollable then
    p := p + ' full-height-content-scrollable ';

  a.Append(Indent(3, 1 + i) + '<div class="portlet ' + p + '">');
  // *** start portlet ***
  a.Append(Indent(3, 2 + i) + '<div class="portlet-title">');
  // *** Start Title ****
  a.Append(Indent(3, 3 + i) + '<div class="caption">'); // *** Caption-Title ****

  if self.Icon.IconType <> jmiNone then
  begin
    self.Icon.Color.MetroColor := self.TitleFont.Color.MetroColor;
    a.Append(Indent(3, 4 + i) + self.Icon.HtmlText);
  end;

  // '<i class="icon-social-dribbble font-purple-soft"></i>'); // icon
  a.Append(Indent(3, 4 + i) + '<span class="caption-subject ' + self.TitleFont.HtmlText + '">' + self.Title +
    '</span>');
  a.Append(Indent(3, 3 + i) + '</div>'); // *** End Caption ****
  a.Append(Indent(3, 2 + i) + '</div>'); // *** end Title ***

  f := '';
  if self.IsForm then
    f := f + 'form ';

  a.Append(Indent(3, 2 + i) + '<div class="portlet-body ' + f + '">');
  // *** start portlet Body ***
  a.Append(aHtml);
  a.Append(Indent(3, 2 + i) + '</div>'); // *** end portlet Body ***
  a.Append(Indent(3, 1 + i) + '</div>'); // *** end portlet  ****
  Result := a.ToString;

end;

procedure TJanuaMetroPortlet.IncButtons;
begin
  SetLength(self.Buttons, self.ButtonsCount + 1);
end;

{ TJanuaMetroPortletType }

constructor TJanuaMetroPortletType.Create(aPortletType: TMetroPortletType);
begin
  self.PortletType := aPortletType;
end;

function TJanuaMetroPortletType.HtmlText: string;
begin
  Result := MetroPortletTypes[self.PortletType];
end;

{ TJanuaMetroFont }

function TJanuaMetroFont.Active: boolean;
begin
  Result := (self.FontCase <> TMetroFontCase.mfsNormal) or (self.Color.MetroColor <> TMetronicColor.jmcNone) or
    (self.Size <> TMetroFontSize.jmtNone);
end;

procedure TJanuaMetroFont.Clear;
begin
  self := Default (TJanuaMetroFont);
  self.FontCase := TMetroFontCase.mfsNormal;
  self.Color.MetroColor := TMetronicColor.jmcNone;
  self.Size := TMetroFontSize.jmtNone;
end;

constructor TJanuaMetroFont.Create(aMetroColor: TMetronicColor; aMetroCase: TMetroFontCase; aSize: TMetroFontSize);
begin
  self := Default (TJanuaMetroFont);
  self.FontCase := aMetroCase;
  self.Color.MetroColor := aMetroColor;
  self.Size := aSize;
end;

constructor TJanuaMetroFont.Create(aMetroColor: TMetronicColor);
begin
  self.Color.MetroColor := aMetroColor
end;

constructor TJanuaMetroFont.Create(aMetroCase: TMetroFontCase);
begin
  self.FontCase := aMetroCase;
end;

function TJanuaMetroFont.HtmlText: string;
begin
  Result := 'font-' + self.Color.ColorClass + ' ' + MetroFontSizes[self.Size] + ' ' + MetroFontCases[self.FontCase];
end;

{ TJanuaMetroPage }

procedure TJanuaMetroPage.Add(aContainer: TJanuaMetroContainer);
begin
  self.ContainerIndex := self.ContainersCount;
  SetLength(self.Containers, Succ(self.ContainersCount));
  self.Containers[self.ContainerIndex] := aContainer;
end;

function TJanuaMetroPage.ContainersCount: integer;
begin
  Result := Length(self.Containers)
end;

function TJanuaMetroPage.HtmlText: string;
var
  a: TStrings;
  sUrl: string;
begin
  sUrl := 'http://keenthemes.com/preview/metronic/theme/';

  a := TStringList.Create;
  try
    a.Add('<!DOCTYPE html>');
    a.Add('<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->');
    a.Add('<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->');
    a.Add('<!--[if !IE]><!-->');
    a.Add('<html lang="en">');
    a.Add('<!--< ![endif] --> ');
    a.Add(Indent(3, 1) + '<!-- BEGIN HEAD -->');
    a.Add('');
    // ***************************** head ************************************
    a.Add(Indent(3, 1) + '<head>');

    a.Add(Indent(3, 1) + '</head>');

    // ***************************** body **************************************

    a.Add(Indent(3, 1) + '<body>');

    a.Add(Indent(3, 1) + '</body>');

  finally
    a.Free;
  end;
end;

function TJanuaMetroPage.sIndent: string;
begin
  Result := ' ';
end;

function TJanuaMetroPage.Size: smallint;
begin
  { TODO -cMetronics : Implement TJanuaMetroPage.Size }
  Result := -1;
end;

{ TJanuaMetroContainerRow }

procedure TJanuaMetroContainerRow.Add(aInput: TJanuaMetroContainer);
begin
  { TODO -cMetronics : Implement MetroContainerRow Add }
end;

function TJanuaMetroContainerRow.Count: integer;
begin
  Result := -1;
  { TODO -cMetronics : Implement MetroContainerRow Count }
end;

function TJanuaMetroContainerRow.HtmlText: string;
begin
  Result := '';
  { TODO -cMetronics : Implement MetroContainerRow HtmlText }
end;

function TJanuaMetroContainerRow.sIndent: string;
begin
  Result := '';
  { TODO -cMetronics : Implement MetroContainerRow sIndent }
end;

function TJanuaMetroContainerRow.Size: smallint;
begin
  Result := -1;
  { TODO -cMetronics : Implement MetroContainerRow Size }
end;

// ******************** Test Application ********************

function TestForm: string;
var
  Container: Janua.Core.Metronics.TJanuaMetroContainer;
  Row: Janua.Core.Metronics.TJanuaMetroFormRow;
  frame: TJanuaMetroFrame;
  Input: TJanuaMetroFormInput;
  Value: TJanuaOptionValue;
  aControl: TJanuaMetroControl;
  Radio: TJanuaInputRadio;
  Conf: TJanuaInputConf;
begin

end;

{ TJanuaOptionValue }

constructor TJanuaOptionValue.Create(aName, aValue: string);
begin
  self.Name := aName;
  self.Value := aValue;
end;

function TJanuaOptionValue.HtmlText: string;
begin
  Result := ''
end;

{ TJanuaMetroPageContainer }

procedure TJanuaMetroPageContainer.Add(aInput: TJanuaMetroContainerRow);
begin

end;

function TJanuaMetroPageContainer.Count: integer;
begin
  Result := -1
end;

function TJanuaMetroPageContainer.HtmlText: string;
begin
  Result := ''
end;

function TJanuaMetroPageContainer.sIndent: string;
begin
  Result := ''
end;

function TJanuaMetroPageContainer.Size: smallint;
begin
  Result := -1
end;

{ TJanuaMetroButton }

constructor TJanuaMetroButton.Create(aName, aID, aCaption: string);
begin
  self := Default (TJanuaMetroButton);
  self.Name := aName;
  self.ID := aID;
  self.Caption := aCaption;
  self.Font.Size := TMetroFontSize.jmtNone;
  self.Font.Color.MetroColor := TMetronicColor.jmcWhite;
  self.Color.MetroColor := TMetronicColor.jmcBlue;
  self.Icon.Create(TMetroIcon.jmiNone);
  self.Pos := TMetroPos.mbpRight;
end;

function TJanuaMetroButton.HtmlText: string;
begin
  Result := '<button ';
  if self.IsSubmit then
    Result := Result + 'type="submit" '
  else
    Result := Result + 'type="button" ';
  Result := Result + 'class="btn ' + self.Color.ColorClass + '" ';
  Result := Result + '>';
  if self.Icon.IconType <> TMetroIcon.jmiNone then
  begin
    Result := Result + self.Icon.HtmlText;
  end;
  Result := Result + self.Caption + '</button>';
end;

{ TJanuaMetroControl }

constructor TJanuaMetroControl.Create(aName, aText, aSuggestion, aLabel, aLink: string; aInputConf: TJanuaInputConf);
begin
  self.Clear;
  self.ControlType := TMetronicControlType.mctInput;
  self.Input.Create(aName, aText, aSuggestion, aLabel, aLink, aInputConf);
end;

constructor TJanuaMetroControl.Create(aInput: TJanuaMetroFormInput; aSize: Byte = 12);
begin
  self.Clear;
  self.Size := aSize;
  self.ControlType := TMetronicControlType.mctInput;
  self.Input := aInput;
end;

procedure TJanuaMetroControl.Clear;
begin
  self := Default (TJanuaMetroControl);
  self.Column := Default (TJanuaMetroColumn);
end;

constructor TJanuaMetroControl.Create(aID, aText: string; aType: TMetronicControlType = mctJumboTron);
begin
  self.Clear;
  self.ID := aID;
  self.Text := aText;
  self.ControlType := aType;
end;

function TJanuaMetroControl.GetSize: integer;
begin
  Result := 12;
  case self.ControlType of
    mctInput:
      Result := self.Input.Size;
    mctGMap:
      Result := 12;
    mctChart:
      Result := 12;
    mctGrid:
      Result := 12;
    mctList:
      Result := 12;
  else
    Result := 12;
  end;

end;

function TJanuaMetroControl.HtmlText(i: integer = 0): string;
begin
  {

    <input type="hidden" name="cmd" value="_s-xclick">
    <input type="hidden" name="hosted_button_id" value="64DDEY648G6KQ">
    <input type="image" src="https://www.paypalobjects.com/it_IT/IT/i/btn/btn_buynowCC_LG.gif" border="0" name="submit"
    alt="PayPal è il metodo rapido e sicuro per pagare e farsi pagare online.">
    <img alt="" border="0" src="https://www.paypalobjects.com/it_IT/i/scr/pixel.gif" width="1" height="1">
    </form>

    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
    <input type="hidden" name="cmd" value="_s-xclick">
    <input type="hidden" name="hosted_button_id" value="PVXF9L3SBAEY8">
    <input type="image" src="https://www.paypalobjects.com/it_IT/IT/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal è il metodo rapido e sicuro per pagare e farsi pagare online.">
    <img alt="" border="0" src="https://www.paypalobjects.com/it_IT/i/scr/pixel.gif" width="1" height="1">
    </form>

    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
    <input type="hidden" name="cmd" value="_s-xclick">
    <input type="hidden" name="hosted_button_id" value="W7CUFDPXFRTYY">
    <input type="image" src="https://www.paypalobjects.com/it_IT/IT/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal è il metodo rapido e sicuro per pagare e farsi pagare online.">
    <img alt="" border="0" src="https://www.paypalobjects.com/it_IT/i/scr/pixel.gif" width="1" height="1">
    </form>
  }
  case self.ControlType of
    TMetronicControlType.mctInput:
      Result := self.Input.HtmlText(i);
    mctGMap:
      Result := '';
    mctChart:
      Result := '';
    mctGrid:
      Result := '';
    mctList:
      Result := '';
    mctJumboTron:
      begin
        Result := '<div class="jumbotron" ' + 'id="' + self.ID + '"' + '>';
        Result := Result + sLineBreak + self.Text;
        Result := Result + sLineBreak + '</div>';
      end;
    TMetronicControlType.mctPaypalButton:
      begin
        Assert(PaypalButtonID <> '', 'TJanuaMetroControl.HtmlText PaypalButtonID not Set');
        Result := '<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">';
        Result := Result + sLineBreak;
        Result := Result + '<input type="hidden" name="cmd" value="_s-xclick">';
        Result := Result + sLineBreak;
        Result := Result + '<input type="hidden" name="hosted_button_id" value="' + self.PaypalButtonID + '">';
        Result := Result + sLineBreak;
        Result := Result +
          '<input type="image" src="https://www.paypalobjects.com/it_IT/IT/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal è il metodo rapido e sicuro per pagare e farsi pagare online.">';
        Result := Result + sLineBreak;
        Result := Result +
          '<img alt="" border="0" src="https://www.paypalobjects.com/it_IT/i/scr/pixel.gif" width="1" height="1">';
        Result := Result + sLineBreak;
        Result := Result + '</form>';
      end;
  end;

  if self.Column.IsSet then
  begin
    Result := self.Column.WrapControl(Result);
  end;

end;

procedure TJanuaMetroControl.SetSize(const Value: integer);
begin
  self.Input.Size := Value;
end;

{ TJanuaInputParameter }

procedure TJanuaInputRadio.Clear;
begin
  self.Name := '';
  self.ID := '';
  self.sLabel := '';
  self.Value := '';
  self.Checked := False;
  self.Enabled := True;
end;

constructor TJanuaInputRadio.Create(aName, aID, aLable, aValue: string);
begin
  self.Clear;
  self.Name := aName;
  self.ID := aID;
  self.sLabel := aLable;
  self.Value := aValue;
end;

{ TJanuaOption }

constructor TJanuaOption.Create(aOption, aValue: string);
begin
  self.Option := aOption;
  self.Value := aValue;
end;

function TJanuaInputRadio.HtmlText(i: integer = 0): string;
var
  a: TStrings;
  f: string;
begin
  a := TStringList.Create;
  try
    f := '<label class="mt-radio ';

    if not self.Enabled then
      f := f + 'mt-radio-disabled">'
    else
      f := f + '">';

    a.Add(Indent(3, i) + f);

    f := '<input type="radio" name="' + self.Name.ToLower + '"';
    f := f + ' id="' + self.ID.ToLower + '"';
    f := f + ' value="' + self.Value.ToLower + '"';
    if not self.Enabled then
      f := f + ' disabled />'
    else
      f := f + ' />';
    a.Add(Indent(3, i + 1) + f + self.sLabel);
    a.Add(Indent(3, i + 1) + '<span></span>');
    a.Add(Indent(3, i) + '</label>');

    Result := a.Text;

  finally
    a.Free;
  end;

end;

function TJanuaOption.HtmlText: string;
begin

end;

{ TJanuaFormActions }

procedure TJanuaFormActions.AddButton(aButton: TJanuaMetroButton);
begin
  IncButtons;
  self.Buttons[self.ButtonsCount - 1] := aButton;
end;

procedure TJanuaFormActions.AddButton(aCaption, aID: string; isSumbit: boolean; aIconType: TMetroIcon;
  aColor: TMetronicColor);
var
  aButton: TJanuaMetroButton;
begin
  aButton.Create(aID, aID, aCaption);
  aButton.Color.Create(aColor);
  aButton.IsSubmit := isSumbit;
  aButton.Icon.Create(aIconType);
  self.AddButton(aButton);
end;

function TJanuaFormActions.ButtonsCount: integer;
begin
  Result := Length(self.Buttons);
end;

constructor TJanuaFormActions.Create(aPosition: TMetroButtonPosition);
begin
  self := Default (TJanuaFormActions);
  self.Position := aPosition;
end;

function TJanuaFormActions.HtmlText(i: integer): string;
var
  a: TStrings;
  b: TJanuaMetroButton;
begin
  { <div class="form-actions">
    <div class="row">
    <div class="col-md-offset-3 col-md-9">
    <button type="submit" class="btn green">Submit</button>
    <button type="button" class="btn grey-salsa btn-outline">Cancel</button>
    </div>
    </div>
    </div> }

  a := TStringList.Create;
  try
    a.Add(Indent(3, i) + '<div class="form-actions ' + MetroButtonPosition[Position] + '">' +
      '<!-- start form-actions -->');
    a.Add(Indent(3, i + 1) + '<div class="row">  <!-- start actions row -->');
    a.Add(Indent(3, i + 2) + '<div class="col-md-offset-4 col-md-8">  <!-- start actions col -->');

    for b in self.Buttons do
      a.Add(Indent(3, i + 3) + b.HtmlText);

    a.Add(Indent(3, i + 2) + '</div>  <!-- end actions col -->');
    a.Add(Indent(3, i + 1) + '</div>  <!-- end actions row -->');
    a.Add(Indent(3, i) + '</div>  <!-- end form-actions -->');
    Result := a.Text;
  finally
    a.Free;
  end;

end;

procedure TJanuaFormActions.IncButtons;
begin
  SetLength(self.Buttons, self.ButtonsCount + 1);
end;

{ TJanuaMetroTextArea }

procedure TJanuaMetroTextArea.Clear;
begin
  self.Name := '';
  self.Title := '';
  self.Caption := '';
  self.ID := '';
  self.Text := '';
  self.Lines := 8;
  self.Size := 12;
end;

constructor TJanuaMetroTextArea.Create(aName, aID, aTitle, aCaption: string; aLines: integer = 8; aSize: integer = 8);
begin
  self.Name := aName;
  self.ID := aID;
  self.Title := aTitle;
  self.Caption := aCaption;
  self.Lines := aLines;
  self.Size := aSize;
end;

function TJanuaMetroTextArea.HtmlText(i: integer): string;
var
  a: TStrings;
  margin: integer;
begin
  a := TStringList.Create;
  try
    if self.WidthPurcent < 100 then
    begin
      margin := Trunc((100 - self.WidthPurcent) / 2);
    end;
    a.Add(Indent(3, i) + '<h3>' + self.Title);
    a.Add(Indent(3, i + 1) + '<small>' + self.Caption + '</small>');
    a.Add(Indent(3, i) + '</h3>');
    a.Add(Indent(3, i) + '<div>');
    a.Add(Indent(3, i + 1) + '<textarea id="console" rows="' + self.Lines.ToString + '" style="' + ' width: ' +
      self.WidthPurcent.ToString + '%;' + ' margin-left: ' + margin.ToString + '%;' + '" class="form-control">');
    if self.Text <> '' then
      a.Add(Indent(3, i + 2) + self.Text);
    a.Add(Indent(3, i + 1) + '</textarea>');
    a.Add(Indent(3, i) + '</div >');

    Result := a.Text;
  finally
    a.Free;
  end;
end;

{ TJanuaMetroList }

procedure TJanuaMetroList.Add(aRow: TJanuaMetroListRow);
begin
  /// 2017-10-10 Spec. 2017-0021 TMetroList Pagination
  aRow.ListType := self.ListType;
  self.Items := self.Items + [aRow];
end;

function TJanuaMetroList.AsString: string;
var
  aList: IStringBuilder;
  aRow, sRow: TJanuaMetroListRow;
  aIcon: TJanuaMetroIcon;
begin
  aList := TJanuaStringBuilder.Create;

  case self.ListType of
    mlDefault:
      begin

      end;
    mlPagination:
      begin
        aList.AppendLine(Indent(FI, FL + 0) + '<ul class="pagination bootpag">');
        // <li data-lp="1" class="prev disabled"><a href="javascript:void(0);">
        // <i class="fa fa-angle-left"></i></a></li>
        if self.PrevVisible then
        begin
          aList.AppendLine(Indent(FI, FL + 1) + '<li data-lp="' + self.PrevData + '" class="prev ');
          aList.Append(ifThen(self.PrevEnabled, '">', 'disabled">'));
          aList.AppendLine(Indent(FI, FL + 2) + '<a href="' + self.PrevURL + '">');
          aIcon.Clear;
          aList.AppendLine(Indent(FI, FL + 3) + aIcon.HtmlText(TMetroIcon.jmiAngleLeft));
          aList.AppendLine(Indent(FI, FL + 2) + '</a>');
          aList.AppendLine(Indent(FI, FL + 1) + '</li>');
        end;
      end;
    mlSidebarNav:
      begin
        aList.AppendLine(Indent(FI, FL + 0) + ifThen(Opened, '<li class="nav-item start active open">',
          '<li class="nav-item">'));
        aList.AppendLine(Indent(FI, FL + 1) + '<a href="javascript:;" class="nav-link nav-toggle">');
        aList.AppendLine(Indent(FI, FL + 2) + '<i class="' + self.Icon.Font + '"></i>'); //
        aList.AppendLine(Indent(FI, FL + 2) + '<span class="title">' + self.Title + ' </span>');
        if self.Selected then
          aList.AppendLine(Indent(FI, FL + 2) + '<span class="selected"></span>');
        aList.AppendLine(Indent(FI, FL + 2) + ifThen(Opened, '<span class="arrow open"></span>',
          '<span class="arrow"></span>'));
        aList.AppendLine(Indent(FI, FL + 1) + '</a>');
        aList.AppendLine(Indent(FI, FL + 2) + ifThen(Opened, '<ul class="sub-menu" style="display: block;">',
          '<ul class="sub-menu" style="display: none;">'));
      end;
  end;

  for aRow in self.Items do
  begin
    sRow := aRow;
    sRow.FI := self.FI;
    sRow.FL := self.FL + 3;
    aList.AppendLine(sRow.AsString);
  end;

  aList.AppendLine(Indent(FI, FL + 2) + '</ul>');

  case self.ListType of
    mlDefault:
      aList.AppendLine(Indent(FI, FL + 0) + '<!-- end List -->');
    mlPagination:
      aList.AppendLine(Indent(FI, FL + 0) + '<!-- end List -->');
    mlSidebarNav:
      aList.AppendLine(Indent(FI, FL + 0) + '</li>');
  end;

  Result := aList.ToString;

end;

procedure TJanuaMetroList.Clear;
begin
  self.Items := nil;
  self.Title := '';
  self.Icon.Create(TMetroIcon.jmiNone);
  self.Opened := False;
  self.Selected := False;
  self.ListType := TMetroListType.mlDefault;
  self.FI := 0;
  self.FL := 0;
  PrevVisible := False;
  PrevEnabled := False;
  NextVisible := False;
  NextEnabled := False;
end;

function TJanuaMetroList.Count: integer;
begin
  Result := Length(self.Items);
end;

constructor TJanuaMetroList.Create(aI, aL: smallint; aType: TMetroListType = TMetroListType.mlDefault);
begin
  self.Clear;
  self.FI := aI;
  self.FL := aL;
  case aType of
    mlDefault:
      ;
    mlPagination:
      ;
    mlSidebarNav:
      begin
        PrevVisible := True;
        PrevEnabled := True;
        NextVisible := True;
        NextEnabled := True;
      end;
  end;
end;

{ TJanuaMetroListRow }

function TJanuaMetroListRow.AsString: string;
var
  aList: IStringBuilder;
  aAttr: string;
begin
  // standard ------------------------------------------------------------------------------------------------------------
  { <li class="nav-item  ">
    <a href="ui_metronic_grid.html" class="nav-link ">
    <span class="title">Metronic Grid System</span>
    </a>
    </li>
  }

  // Start Badge ---------------------------------------------------------------------------------------------------------
  {
    <li class="nav-item start active open">
    <a href="dashboard_2.html" class="nav-link ">
    <i class="icon-bulb"></i>
    <span class="title">Dashboard 2</span>
    <span class="selected"></span>
    <span class="badge badge-success">1</span>
    </a>
    </li>
  }

  { <li data-lp="1" class="disabled"><a href="javascript:void(0);">1</a></li> }

  aList := TJanuaStringBuilder.Create;

  case self.ListType of
    mlDefault:
      aAttr := '';
    /// 2017-10-10 KB 2017-0021 TMetroList Pagination
    mlPagination:
      aAttr := '';
    mlSidebarNav:
      aAttr := 'nav-item';
  end;

  aAttr := aAttr + ifThen(Disabled, ' disabled', '') + ifThen(Start, ' start', '') + ifThen(Opened, ' open', '') +
    ifThen(Active, ' active', '');
  aList.AppendLine(Indent(FI, FL + 0) + '<li  data-lp="' + self.Title + '" class="' + aAttr + '">');
  aList.AppendLine(Indent(FI, FL + 1) + '<a href="' + Url + '" ');
  /// 2017-10-10 KB 2017-0021 TMetroList Pagination
  aList.Append(ifThen(ListType in [mlSidebarNav], 'class="nav-link "', '') + ' >');

  /// 2017-10-10 KB 2017-0021 TMetroList Pagination
  if self.ListType in [mlSidebarNav] then
    aList.AppendLine(Indent(FI, FL + 2) + '<span class="title">' + self.Title + '</span>')
  else if self.ListType in [mlPagination, mlDefault] then
    aList.AppendLine(Indent(FI, FL + 2) + self.Title)
  else
    aList.AppendLine(Indent(FI, FL + 2) + self.Title);

  // se sono presenti messaggi badge allora li attivo in base allo stile di Default proposto dalla riga di Menu.....
  if self.Badge <> 0 then // <span class="badge badge-success">1</span>
  begin
    aAttr := JanuaBadgeStyle[BadgeStyle];
    aList.AppendLine(Indent(FI, FL + 2) + '<span class="badge badge-' + aAttr + '">' + Badge.ToString + '</span>');
  end;

  if self.Active then // <span class="selected"></span>
    aList.AppendLine(Indent(FI, FL + 2) + '<span class="selected"></span>');

  aList.AppendLine(Indent(FI, FL + 1) + '</a>');
  aList.AppendLine(Indent(FI, FL + 0) + '</li>');

  Result := aList.ToString;

end;

constructor TJanuaMetroListRow.Create(aI, aL: smallint; aTitle, aUrl: string; aIcon: TJanuaMetroIcon;
  aBadgeStyle: TMetroBadgeStyle = TMetroBadgeStyle.jbsDefault; aBadge: smallint = 0);
begin
  self.FI := aI;
  self.FL := aL;
  self.Title := aTitle;
  self.Icon := aIcon;
  self.Url := aUrl;
  self.Badge := aBadge;
  self.BadgeStyle := aBadgeStyle;
  /// 2017-10-10 KB 2017-0021 TMetroList Pagination
  self.ListType := TMetroListType.mlDefault;
end;

{ TJanuaMetroTableRow }

procedure TJanuaMetroTableRow.Add(aCell: TJanuaMetroTableCell);
begin
  self.AddItem(aCell);
end;

procedure TJanuaMetroTableRow.AddItem(aItem: TJanuaMetroTableCell);
begin
  SetLength(self.Values, Succ(Count));
  self.ItemIndex := Pred(Count);
  aItem.Index := self.ItemIndex;
  self.Values[self.ItemIndex] := aItem;
end;

procedure TJanuaMetroTableRow.AddLink(aValue, aUrlLink: string; colspan: integer = 0; rowspan: integer = 0;
  Onclick: string = '');
var
  aLink: TJanuaMetroLink;
begin
  aLink := TJanuaMetroLink.Create(aUrlLink, aValue);
  self.AddValue(aLink.AsHtml);
end;

procedure TJanuaMetroTableRow.AddValue(aValue: string; colspan: integer = 0; rowspan: integer = 0;
  Onclick: string = '');
var
  aItem: TJanuaMetroTableCell;
begin
  self.AddItem(aItem.Create(aValue, IsHeader, Level, colspan, rowspan, Onclick));
end;

procedure TJanuaMetroTableRow.AddValue(aValue: integer; colspan: integer = 0; rowspan: integer = 0;
  Onclick: string = '');
begin
  self.AddValue(aValue.ToString, colspan, rowspan, Onclick);
end;

procedure TJanuaMetroTableRow.AddValue(aValue: TDateTime; colspan: integer = 0; rowspan: integer = 0;
  Onclick: string = '');
begin
  self.AddValue(FormatDateTime('dd/mm/yyyy', aValue), colspan, rowspan, Onclick);
end;

procedure TJanuaMetroTableRow.AddValue(aValue: Extended; colspan: integer = 0; rowspan: integer = 0;
  Onclick: string = '');
begin
  self.AddValue(aValue.ToString, colspan, rowspan, Onclick);
end;

procedure TJanuaMetroTableRow.AddValue(aValue: Int64; colspan: integer = 0; rowspan: integer = 0; Onclick: string = '');
begin
  self.AddValue(aValue.ToString, colspan, rowspan, Onclick);
end;

procedure TJanuaMetroTableRow.AddValue(aValue: smallint; colspan: integer = 0; rowspan: integer = 0;
  Onclick: string = '');
begin
  self.AddValue(aValue.ToString, colspan, rowspan, Onclick);
end;

function TJanuaMetroTableRow.AsHtml: string;
var
  aList: TStringList;
  aValue: TJanuaMetroTableCell;
  aClass: string;
  aStyle: string;
begin
  Result := '';
  aList := TStringList.Create;
  aList.Clear;
  aClass := '';
  aClass := System.StrUtils.ifThen(self.SimpleCss <> '', ' class="' + self.SimpleCss + '"', '');
  aStyle := '';
  aStyle := System.StrUtils.ifThen(self.SimpleStyle <> '', ' style="' + self.SimpleStyle + '"', '');

  if aClass = '' then
    aClass := System.StrUtils.ifThen(self.Style <> jbtsNone, ' class="' + BoostrapStyle[self.Style] + '"');

  try
    aList.Add(self.Indent + '<tr' + aClass + aStyle + '>');
    for aValue in Values do
      aList.Add(self.Indent + aValue.AsHtml(self.IsHeader));
    aList.Add(self.Indent + '</tr>');
    Result := aList.Text;
  finally
    aList.Free;
  end;
end;

function TJanuaMetroTableRow.Count: integer;
begin
  Result := Length(self.Values);
end;

constructor TJanuaMetroTableRow.Create(aHeader: boolean; aLevel: smallint = 0);
begin
  self := Default (TJanuaMetroTableRow);
  self.Style := jbtsNone;
  SetLength(self.Values, 0);
  self.ItemIndex := -1;
  self.IsHeader := aHeader;
  self.Level := aLevel;
end;

function TJanuaMetroTableRow.Indent: string;
begin
  Result := Janua.Core.Functions.Indent(2, self.FLevel)
end;

procedure TJanuaMetroTableRow.SetLevel(const Value: smallint);
var
  aItem: TJanuaMetroTableCell;
begin
  FLevel := Value;
  for aItem in self.Values do
    aItem.Level := self.FLevel + 1;

end;

procedure TJanuaMetroTableRow.SetSimpleCss(const Value: string);
begin
  FSimpleCss := Value;
end;

procedure TJanuaMetroTableRow.SetSimpleStyle(const Value: string);
begin
  FSimpleStyle := Value;
end;

{ TJanuaMetroTableCell }

function TJanuaMetroTableCell.AsHtml(aHeader: boolean): string;
var
  CellClass: string;
begin
  CellClass := '';
  // <td colspan="2">Sum: $180</td>
  // <td rowspan="2">$50</td>

  CellClass := CellClass + ifThen(self.colspan > 0, ' colspan="' + self.colspan.ToString + '"', '');
  CellClass := CellClass + ifThen(self.rowspan > 0, ' rowspan="' + self.rowspan.ToString + '"', '');
  CellClass := CellClass + ifThen(self.Onclick > '', ' onclick="' + self.Onclick + '"', '');

  if not aHeader then
    Result := Janua.Core.Functions.Indent(self.Indent, self.Level) + '<td' + CellClass + '>' + self.Value + '</td>'
  else
    Result := '<th' + CellClass + '>' + self.Value + '</th>'
end;

constructor TJanuaMetroTableCell.Create(aValue: string; aHeader: boolean = False; aLevel: smallint = 0;
  aColSpan: integer = 0; aRowSpan: integer = 0; aOnclick: string = '');
begin
  self.Value := aValue;
  self.IsHeader := aHeader;
  self.Index := 0;
  self.Level := aLevel + 3;
  self.Indent := 2;
  self.rowspan := aRowSpan;
  self.colspan := aColSpan;
  self.Onclick := aOnclick;
end;

procedure TJanuaMetroTableCell.SetLevel(const Value: smallint);
begin
  FLevel := Value;
end;

{ TJanuaMetroTable }

procedure TJanuaMetroTable.Add(aRow: TJanuaMetroTableRow);
begin
  self.ItemIndex := self.Count;
  SetLength(self.Values, Succ(self.ItemIndex));
  aRow.Level := self.Level + 3;
  self.Values[self.ItemIndex] := aRow;
end;

procedure TJanuaMetroTable.AddHeader(aRow: TJanuaMetroTableRow);
begin
  self.HeaderIndex := Length(self.Headers);
  SetLength(self.Headers, Succ(self.HeaderIndex));
  aRow.Level := self.Level + 3;
  self.Headers[self.HeaderIndex] := aRow;
end;

function TJanuaMetroTable.AsHtml: string;
var
  aList: TStringList;
  aItem: TJanuaMetroTableRow;
  sClasses: string;

begin
  sClasses := '';
  sClasses := sClasses + System.StrUtils.ifThen(self.Bordered, 'table-bordered');
  sClasses := sClasses + System.StrUtils.ifThen(self.Striped, ' table-striped');
  sClasses := sClasses + System.StrUtils.ifThen(self.Hover, ' table-hover');

  aList := TStringList.Create;
  try
    aList.Add(self.Indent + '<table class="table ' + sClasses + '">');
    if self.HasHeader and (Length(self.Headers) > 0) then
    begin
      aList.Add(self.Indent + '<thead>');
      for aItem in self.Headers do
      begin
        aItem.Level := self.Level + 1;
        aList.Add(aItem.AsHtml);
      end;
      aList.Add(self.Indent + '</thead>');
    end;
    aList.Add(self.Indent + '<tbody>');
    for aItem in self.Values do
    begin
      aItem.Level := self.Level + 1;
      aList.Add(aItem.AsHtml);
    end;
    aList.Add(self.Indent + '</tbody>');
    aList.Add(self.Indent + '</table>');
    Result := aList.Text;
  finally
    aList.Free
  end;

end;

function TJanuaMetroTable.Count: integer;
begin
  Result := Length(self.Values);
end;

constructor TJanuaMetroTable.Create(aHeader: boolean);
begin
  self := Default (TJanuaMetroTable);
  self.Hover := True;
  self.HasHeader := aHeader;
  SetLength(self.Values, 0);
  if HasHeader then
    self.AddHeader(TJanuaMetroTableRow.Create(True, self.FLevel + 1));
end;

function TJanuaMetroTable.GetHeader: TJanuaMetroTableRow;
begin
  if Length(self.Headers) = 0 then
    self.AddHeader(TJanuaMetroTableRow.Create(True, self.FLevel + 1));
  self.FHasHeader := True;
  Result := self.Headers[0];
end;

function TJanuaMetroTable.GetSelectedItem: TJanuaMetroTableRow;
begin
  Result := self.Values[self.ItemIndex]
end;

function TJanuaMetroTable.Indent: string;
begin
  Result := Janua.Core.Functions.Indent(2, self.FLevel)
end;

procedure TJanuaMetroTable.SetHasHeader(const Value: boolean);
begin
  FHasHeader := Value;
end;

procedure TJanuaMetroTable.SetHeader(const Value: TJanuaMetroTableRow);
begin
  if Length(self.Headers) = 0 then
    self.AddHeader(Value)
  else
    self.Headers[0] := Value;
  self.FHasHeader := True;
end;

procedure TJanuaMetroTable.SetLevel(const Value: integer);
var
  i: integer;
begin
  FLevel := Value;
  if self.Count > 0 then
    for i := Low(self.Values) to High(self.Values) do
      self.Values[i].Level := Value + 2;
  if Length(self.Headers) > 0 then
    for i := Low(self.Headers) to High(self.Headers) do
      self.Headers[i].Level := Value + 2;
end;

procedure TJanuaMetroTable.SetSelectedItem(const Value: TJanuaMetroTableRow);
begin
  self.Values[self.ItemIndex] := Value
end;

{ TJanuaMetroLabel }

function TJanuaMetroLabel.AsHtml: string;
begin

end;

procedure TJanuaMetroLabel.Clear;
begin
  self.Name := '';
  self.Text := '';
  self.Color.MetroColor := TMetronicColor.jmcNone;
  self.Icon.Create(TMetroIcon.jmiNone);
  self.Link.Clear;

end;

{ TJanuaUrlParam }

function TJanuaUrlParam.AsHtml: string;
begin
  Result := TIdURI.ParamsEncode(self.Name.ToLower + '=' + self.Value);
end;

{ TJanuaMetroLink }

procedure TJanuaMetroLink.Add(aName, aValue: string);
var
  aParam: TJanuaUrlParam;
begin
  aParam.Name := aName.ToLower;
  aParam.Value := HTTPUtil.HTMLEscape(aValue);
end;

procedure TJanuaMetroLink.Add(aParam: TJanuaUrlParam);
begin
  self.ItemIndex := self.Count;

end;

function TJanuaMetroLink.AsHtml: string;
var
  i: integer;
  aUrl: string;
begin
  // uhm elimino URL ENCODE in quanto richiede un full-url non un parziale
  // aUrl := TIdURI.URLEncode(self.BaseUrl);
  aUrl := BaseUrl;
  // se sono presenti parametri li inserisce ............................
  if self.Count > 0 then
    for i := Low(self.Params) to High(self.Params) do
      aUrl := aUrl + ifThen(i = 0, '?', '&') + self.Params[i].AsHtml;
  // apre il Tag
  Result := '<a '; // apro il Tag 'a'
  Result := Result + 'href="' + aUrl + '" ';
  // se sono presenti Classi quali Bottoni, Font o Altro .................
  if self.HasClass then
  begin
    Result := Result + 'class="';
    if self.IsButton then
      Result := Result + 'btn ';
    if self.Color.IsSet then
      Result := Result + self.Color.ColorClass + ' ';
    if self.ButtonStyle <> TBootstrapButtonStyle.jbbNone then
      Result := Result + BootstrapButtonStyle[self.ButtonStyle] + ' ';
    if self.Font.Active then
      Result := Result + self.Font.HtmlText + ' ';
    Result := Result + ' "';
  end;
  // Chiudo il Tag
  Result := Result + '>'; // Chiudo il tag 'a'
  // se presente icona aggiungo una Icona ................................
  if self.Icon.IsSet then
    Result := Result + self.Icon.HtmlText;
  // Includo il Testo all'interno .........................................
  Result := Result + ' ' + self.Text;
  // Chiudo l'ultimo Tag ..................................................
  Result := Result + '</a>';

end;

procedure TJanuaMetroLink.Clear;
begin
  self := Default (TJanuaMetroLink);
  self.BaseUrl := '';
  SetLength(self.Params, 0);
  self.Color.MetroColor := TMetronicColor.jmcNone;
  self.Font.Clear;
  Icon.Clear;
end;

function TJanuaMetroLink.Count: integer;
begin
  Result := Length(self.Params);
end;

constructor TJanuaMetroLink.Create(aUrl, aText: string);
begin
  Clear;
  BaseUrl := aUrl;
  Text := aText;
  Icon.Create(TMetroIcon.jmiNone);
end;

function TJanuaMetroLink.HasClass: boolean;
begin
  // if at least one of these features is set then HasClass is True ....................................................
  Result := self.IsButton or self.Color.IsSet or self.Font.Active or self.Icon.IsSet
end;

{ TJanuaMetroDropDownMenu }

function TJanuaMetroUserDropDownMenu.AsHtmlText: string;
var
  aList: IStringBuilder;
begin
  aList := TJanuaStringBuilder.Create;

  aList.AppendLine('      <li class="dropdown dropdown-user">');
  if self.IsLoggedIn then
  begin
    // Header .......................................................................................................
    aList.AppendLine
      ('<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="false">');
    aList.AppendLine('   ' + LoginIcon.HtmlText);
    aList.AppendLine('   <span class="username username-hide-on-mobile">' + LoginText + '</span>');
    aList.AppendLine('   <i class="fa fa-angle-down"></i>');
    aList.AppendLine('</a>');
    // Start List ....................................................................................................
    aList.AppendLine('<ul class="dropdown-menu dropdown-menu-default">');
    if self.DashBoard then
    begin
      aList.AppendLine('      <li>');
      aList.AppendLine('          <a href="' + self.DashBoardUrl + '">');
      aList.AppendLine('              ' + self.DashBoardIcon.HtmlText + self.DashBoardText);
      aList.AppendLine('          </a>');
      aList.AppendLine('      </li>');
    end;

    aList.AppendLine('            <li class="divider"> </li>');

    if self.Notifications then
    begin
      aList.AppendLine('      <li>');
      aList.AppendLine('          <a href="' + self.NotificationsUrl + '">');
      aList.AppendLine('              ' + self.NotificationsIcon.HtmlText + self.NotificationsText);
      aList.AppendLine('          </a>');
      aList.AppendLine('      </li>');
    end;

    if self.LockScreen then
    begin
      aList.AppendLine('      <li style="visibility:hidden">');
      aList.AppendLine('          <a href="' + self.LockScreenUrl + '">');
      aList.AppendLine('          ' + self.LockScreenIcon.HtmlText + self.LockScreenText + '</a> ');
      aList.AppendLine('      </li> ');
    end;

    if self.LogOut then
    begin
      aList.AppendLine('      <li>');
      aList.AppendLine('          <a href="' + self.LogOutUrl + '">');
      aList.AppendLine('              <!-- modified 06-02-17 introducing logout action -->');
      aList.AppendLine('              ' + self.LogOutIcon.HtmlText + self.LogOutText);
      aList.AppendLine('          </a>');
      aList.AppendLine('      </li>');
    end;

    aList.AppendLine('<ul');
    aList.AppendLine('<li>');
  end
  else
  begin
    aList.AppendLine('				<a class="dropdown-toggle" href="' + LoginUrl + '">');
    aList.AppendLine('					' + self.LoginIcon.HtmlText);
    aList.AppendLine('					<span class="username username-hide-on-mobile">' + LoginText + '</span>');
    aList.AppendLine('				</a>');
  end;
  aList.AppendLine('      </li>');
  Result := aList.ToString;

end;

constructor TJanuaMetroUserDropDownMenu.Create(aLoggedIn: boolean);
begin
  self.IsLoggedIn := aLoggedIn;
  self.Clear;
end;

constructor TJanuaMetroUserDropDownMenu.Create(aUser: TJanuaRecordUserProfile);
begin
  self.IsLoggedIn := not aUser.User.isPublic;
  Clear;
  if self.IsLoggedIn then
    self.LoginText := aUser.FirstName;
end;

procedure TJanuaMetroUserDropDownMenu.Clear;
begin
  self.LoginUrl := '/login';
  self.LoginText := 'Login';
  self.Login := not self.IsLoggedIn;
  LoginIcon.Clear;
  LoginIcon.Create(TMetroIcon.jmiIconUser); // TMetroIcon.jmiIconUser;

  self.DashBoard := self.IsLoggedIn;
  self.DashBoardUrl := '/dashboard';
  self.DashBoardText := 'Profilo Utente';
  self.DashBoardIcon.Create(TMetroIcon.jmiIconUser); // TMetroIcon.jmiIconUser;

  self.Notifications := self.IsLoggedIn;
  self.NotificationsUrl := '/dashboard';
  self.NotificationsText := 'Notifiche';
  self.NotificationsIcon.Create(TMetroIcon.jmiIconBell); // TMetroIcon.jmiIconBell;

  self.LogOut := self.IsLoggedIn;
  self.LogOutUrl := '/dologout';
  self.LogOutText := 'Esci';
  self.LogOutIcon.Create(TMetroIcon.jmiIconKey); // TMetroIcon.jmiIconKey;

end;

{ TJanuaNotification }

procedure TJanuaNotificationBadge.Add(aNotification: TJanuaNotification);
begin
  SetLength(self.Notifications, self.Count + 1);
  self.Notifications[self.Count - 1] := aNotification;
end;

function TJanuaNotificationBadge.AsHtml: string;
var
  sIcon, sVisible, sSlug, sFont: string;
  aList: TStrings;
  aNotification: TJanuaNotification;
begin
  sIcon := NotificationBadgeIcons[NotificationType];
  sSlug := NotificationBadgeSlugs[NotificationType];
  sFont := NotificationBadgeFonts[NotificationType];

  if (self.NotificationType = jbtMessages) and self.visible then
    sIcon := 'icon-envelope-open';

  sVisible := '';
  if self.visible then
    sVisible := 'style="visibility:hidden"';

  Result := '';

  aList := TStringList.Create;
  try
    aList.Add('<li class="dropdown dropdown-extended dropdown-' + sSlug + '" id="header_' + sSlug + '_bar">');
    aList.Add('<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"' +
      ' data-close-others="true">');
    aList.Add('<i class="' + sIcon + '"></i>');
    aList.Add('<span id="' + sSlug + '_badge" class="badge badge-default" ' + sVisible + ' > 0 </span>');
    aList.Add('</a>');

    if self.Count > 0 then
    begin
      aList.Add('<ul class="dropdown-menu">');
      // ul lista del dropdown menu   **

      // -------------------------------------------------------------------------------------------------
      aList.Add('<li class="external">'); // li  elemento header
      aList.Add('<h3>');
      aList.Add('<span class="bold">' + self.Count.ToString + ' nuove</span> notifiche');
      aList.Add('</h3>');
      aList.Add('<a href="https://app.ergomercator.com/dico33/inbox">vedi tutto</a>');
      aList.Add('</li>'); // Chiusura li  elemento header
      // -------------------------------------------------------------------------------------------------

      aList.Add('<li>'); // inizio container notifiche annidato ***
      aList.Add('<div class="slimScrollDiv" ' +
        // inizio div container annidato ****
        ' style="position: relative; overflow: hidden; width: auto; height: 250px;">');

      // ################################################################################################
      aList.Add('<ul class="dropdown-menu-list scroller"' +
        // inizio lista in container annidato
        ' style="height: 250px; overflow: hidden; width: auto;" data-handle-color="#637283" data-initialized="1">');

      for aNotification in self.Notifications do
        aList.Add(aNotification.AsHtml);

      aList.Add('</ul>'); // fine lista elementi in container annidato
      // ################################################################################################

      // ---------------------------- footer ------------------------------------------------------------
      aList.Add('<div class="slimScrollBar" style="background-color: rgb(99, 114, 131); width: 7px;' +
        ' position: absolute; top: 0px; opacity: 0.4; display: block; border-top-left-radius: 7px; ' +
        'border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; ' +
        'z-index: 99; right: 1px; background-position: initial initial; background-repeat: initial initial;">');
      aList.Add('</div>');

      aList.Add('<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px;' +
        'display: none; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px;' +
        ' border-bottom-left-radius: 7px; background-color: rgb(234, 234, 234); opacity: 0.2; z-index: 90;' +
        ' right: 1px; background-position: initial initial; background-repeat: initial initial;">');
      aList.Add('</div>');
      // ---------------------------- fine footer -------------------------------------------------------

      aList.Add('</div>'); // fine div container notifiche annidato ****
      aList.Add('</li>'); // fine container notifiche annidato ***
      aList.Add('</ul>'); // ul lista del dropdown menu   **
    end;

    aList.Add('</li>'); // ul lista del dropdown menu **

  finally

  end;

end;

function TJanuaNotificationBadge.AsJson: string;
begin
  Result := AsJsonObject.ToJSON
end;

function TJanuaNotificationBadge.AsJsonObject: TJsonObject;
var
  aParam: TJanuaNotification;
  aJsonArray: TJsonArray;
begin
  {
    private
    Fslug: string;
    public
    count: integer;
    hint: string;
    NotificationType: TJanuaNotificationBadgeType;
    visible: boolean;
    id: string;
    url: string;
    Notifications: array of TJanuaNotification;
    function slug: string;
    function icon: string;
    function font: string;
  }
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', ID);
  Janua.Core.Json.JsonPair(Result, 'notifications', self.NotificatinCount);
  Janua.Core.Json.JsonPair(Result, 'count', Count);
  Janua.Core.Json.JsonPair(Result, 'pages', Ceil(NotificatinCount / Count));
  Janua.Core.Json.JsonPair(Result, 'url', Url);
  Janua.Core.Json.JsonPair(Result, 'hint', Hint);
  Janua.Core.Json.JsonPair(Result, 'icon', Hint);
  Janua.Core.Json.JsonPair(Result, 'font', Hint);
  Janua.Core.Json.JsonPair(Result, 'slug', slug);
  // the notifications Badge is composed by an Array of Notifications so it loops to create a notifications json array
  aJsonArray := TJsonArray.Create;
  for aParam in self.Notifications do
    aJsonArray.AddElement(aParam.AsJsonObject);
  Result.AddPair('notifications', aJsonArray)

end;

function TJanuaNotificationBadge.Count: integer;
begin
  Result := Length(Notifications);
end;

constructor TJanuaNotificationBadge.Create(sSlug, sID, sUrl: string; aType: TJanuaNotificationBadgeType);
begin
  self.Fslug := sSlug;
  self.ID := sID.ToInteger;
  self.Url := sUrl;
  self.NotificationType := aType;
end;

function TJanuaNotificationBadge.Font: string;
begin
  Result := NotificationBadgeConsts[self.NotificationType].Font
end;

function TJanuaNotificationBadge.Icon: string;
begin
  Result := NotificationBadgeConsts[self.NotificationType].Icon
end;

procedure TJanuaNotificationBadge.LoadFromDataset(aDataset: TDataset);
begin
  case NotificationType of
    jbtNotification:
      begin
        if aDataset.Locate('group_name', 'notifications', []) then
          self.NotificatinCount := aDataset.FieldByName('count').AsInteger;
        self.visible := not(self.Count = 0);
      end;

    jbtMessages:
      begin
        self.NotificatinCount := aDataset.FieldByName('messages').AsInteger;
        self.visible := not(self.Count = 0);
      end;

    jbtCalendar:
      begin
        self.NotificatinCount := aDataset.FieldByName('calendar').AsInteger;
        self.visible := not(self.Count = 0);
      end;

    jbtShoppingCart:
      begin
        self.NotificatinCount := aDataset.FieldByName('shoppingcart').AsInteger;
        self.visible := not(self.Count = 0);
      end;
  end;

end;

procedure TJanuaNotificationBadge.LoadNotifications(aDataset: TDataset);
begin

end;

function TJanuaNotificationBadge.slug: string;
begin

end;

{ TJanuaNotification }

function TJanuaNotification.AsHtml: string;
var
  aList: IStringBuilder;
begin
  aList := TJanuaStringBuilder.Create;

  aList.Append('<li>');
  aList.Append('<a href="https://app.ergomercator.com/inbox?id="' + self.ID.ToString + '>');
  aList.Append('<span class="time">' + FormatDateTime('c', self.time) + '</span>');
  aList.Append('<span class="details">');
  aList.Append('<span class="' + NotificationClasses[self.NotificationType] + '">');
  aList.Append('<i class="' + NotificationIcons[self.NotificationType] + '"></i>');
  aList.Append('</span>');
  aList.Append('" ' + self.aMessage + ' "');
  // label label-sm label-icon label-success
  aList.Append('</span>');
  aList.Append('</a>');
  aList.Append('</li>');

end;

function TJanuaNotification.AsJson: string;
begin
  Result := AsJsonObject.ToJSON
end;

function TJanuaNotification.AsJsonObject: TJsonObject;
begin
  { url: string;
    id: integer;
    time: TDateTime;
    aMessage: string;
    NotificationType: TJanuaNotificationType;
    public
    function CssClass: string;
    function CssFont: string;
  }
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'url', self.Url);
  Janua.Core.Json.JsonPair(Result, 'id', self.ID);
  Janua.Core.Json.JsonPair(Result, 'time', self.time);
  Janua.Core.Json.JsonPair(Result, 'message', self.aMessage);
  Janua.Core.Json.JsonPair(Result, 'CssClass', self.CssClass);
  Janua.Core.Json.JsonPair(Result, 'CssFont', self.CssFont);
end;

function TJanuaNotification.CssClass: string;
begin
  Result := NotificationClasses[self.NotificationType]
end;

function TJanuaNotification.CssFont: string;
begin
  Result := NotificationSlugs[self.NotificationType]
end;

procedure TJanuaNotification.LoadFromDataset(aDataset: TDataset);
begin

end;

{ TJanuaNotifications }

procedure TJanuaNotifications.AddBadge(sSlug, sID, sUrl: string);
begin
  SetLength(self.Badges, Length(self.Badges) + 1);
  { TODO : Impostare il Bage Notification Type nella funzione Add }
  self.Badges[Length(self.Badges) - 1].Create(sSlug, sID, sUrl, TJanuaNotificationBadgeType.jbtNotification);
end;

function TJanuaNotifications.AsHtml: string;
begin

end;

procedure TJanuaNotifications.LoadFromDataset(aDataset: TDataset);
begin

end;

{ TMetroColumnSize }

function TMetroColumnSize.AsClass: string;
begin
  if self.Size > 0 then
    Result := 'col-' + MetroScreenSize[self.ScreenSize] + '-' + self.Size.ToString + ' ';
  if self.Offset > 0 then
    Result := Result + 'col-' + MetroScreenSize[self.ScreenSize] + '-offset-' + self.Offset.ToString + ' ';
end;

constructor TMetroColumnSize.Create(aScreenSize: TMetroScreenSize; aSize, aOffest: Byte);
begin
  self.Size := aSize;
  self.Offset := aOffest;
  self.ScreenSize := aScreenSize;
end;

{ TJanuaMetroColumn }

procedure TJanuaMetroColumn.AddSize(aSize: TMetroScreenSize; Size, Offset: Byte);
begin
  SetLength(self.Sizes, Length(self.Sizes) + 1);
  self.Sizes[Length(self.Sizes) - 1] := TMetroColumnSize.Create(aSize, Size, Offset);
end;

function TJanuaMetroColumn.WrapControl(sControl: string): string;
var
  aSize: TMetroColumnSize;
begin
  Result := '<div class="';
  for aSize in self.Sizes do
    Result := Result + aSize.AsClass;
  Result := Result + '">' + sLineBreak;
  Result := Result + sControl + sLineBreak;
  Result := Result + '</div>';
end;

{ TJanuaHtmlTable }

procedure TJanuaHtmlTable.Add(aRow: TJanuaMetroTableRow);
begin
  self.ItemIndex := self.Count;
  SetLength(self.Values, Succ(self.ItemIndex));
  self.Values[self.ItemIndex] := aRow;
end;

function TJanuaHtmlTable.AsHtml: string;
var
  aList: IStringBuilder;
  aItem: TJanuaMetroTableRow;
  sClasses: string;
begin
  // class="table ' + sClasses + '"
  aList := TJanuaStringBuilder.Create;

  aList.Append('<table>');
  aList.Append('<thead>');
  if self.HasHeader then
    aList.Append(self.Header.AsHtml);
  aList.Append('</thead>');
  aList.Append('<tbody>');
  for aItem in self.Values do
    aList.Append(aItem.AsHtml);
  aList.Append('</tbody>');
  aList.Append('</table>');
  Result := aList.ToString;

end;

function TJanuaHtmlTable.Count: integer;
begin
  Result := Length(self.Values)
end;

constructor TJanuaHtmlTable.Create(aHeader: boolean);
begin
  self := Default (TJanuaHtmlTable);
  self.Hover := True;
  self.HasHeader := aHeader;
  SetLength(self.Values, 0);
  if HasHeader then
    self.Header.Create(True);
end;

end.
