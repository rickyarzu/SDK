unit Janua.Html.Metro5.Types;

interface

uses Janua.Orm.Intf;

{ Metronic comes with a number of state colors that can be applied to the most of elements and components.
  It reuses Bootstrap's original 6 states:
  Usate Example:
  btn-success
  m--font-success
  And also adds its own brand and metal states: }
type
  TMetro5IconType = (jmiNone, jmiEnvelope, jmiMobilePhone, jmiPhone, jmiLock, jmiPassword, jmiUser, jmiName,
    jmiAddressCard, jmiAddressCardOutline, jmiCalendar, jmiBell, jmiBellOutline, jmiMap, jmiCreditCard, jmiIDCard,
    jmiMapMarker, jmlSocialDribble, jmiList, jmiBarChart, jmiRssFeed, jmiSocialDribble, jmiInfo, jmiIconUser,
    jmiGeoMarker, jmiGlobe, jmiPhotoCamera, jmiAngleLeft, jmiAngleRight, jmiIconBell, jmiIconKey, jmiCheck,
    FlatMultimedia, FlatStatistics, SoccerBall, FutBol, FlaticonMore, FlaticonProfile);

const
  Metro5Icons: array [TMetro5IconType] of string = ('', 'fa fa-envelope', 'fa fa-mobile', 'fa fa-phone', 'fa fa-lock',
    'fa fa-lock', 'fa fa-user', 'fa fa-user', 'fa fa-address-card', 'fa fa-address-card-o', 'fa fa-calendar',
    'fa fa-bell', 'fa fa-bell-o', 'fa fa-map-o', 'credit-car', 'fa fa-id-card', 'fa fa-map-marker', 'fa fa-dribbble',
    'fa fa-list', 'icon-bar-chart', 'icon-feed', 'icon-social-dribbble', 'icon-info', 'icon-user', 'icon-pointer',
    'icon-globe', 'icon-camera', 'fa fa-angle-left', 'fa fa-angle-right', 'icon-bell', 'icon-key', 'fa fa-check',
    'flaticon-multimedia', 'flaticon-statistics', 'fa fa-soccer-ball-o', 'fa fa-futbol', 'flaticon-more',
    'flaticon-profile-1');

type
  TM5StateColorsStyle = (m5sNone, m5sPrimary, m5sSecondary, m5sSuccess, m5sWarning, m5sDanger, m5sInfo, m5sBrand,
    m5sAccent, m5sFocus, m5sMetal, m5sLight);
  // success, warning, danger, info, and active;

const
  M5StateColors: array [TM5StateColorsStyle] of string = ('', 'primary', 'secondary', 'success', 'warning', 'danger',
    'info', 'brand', 'accent', 'focus', 'metal', 'light');

type
  TM5SClassType = (None, Badge, StackItem, Stack, Grid, GridItem, Header, HeaderBottom, HeaderTop, Container, MenuItem,
    MenuLink, Portlet, PortletHead, PortletHeadTitle, PortleHeadText, PortletHeadTools, PortletHeadCaption, PortletBody,
    Widget5, NavItem, RowFullHeight, Row, DropDown);

  MetroClasses = set of TM5SClassType;

const
  M5SClasses: array [TM5SClassType] of string = ('', 'm-badge', 'm-stack__item', 'm-stack', 'm-grid', 'm-grid__item',
    'm-header', 'm-header__bottom', 'm-header__top', 'm-container', 'm-menu__item', 'm-menu__link', 'm-portlet',
    'm-portlet__head', 'm-portlet__head-title', 'm-portlet__head-text', 'm-portlet__head-tools',
    'm-portlet__head-caption', 'portlet__body', 'm-widget5', 'nav__item', 'm-row--full-height', 'row', 'm-dropdown');

type
  TMetro5BadgeType = (Default, Rounded, Wide);

type
  TMetro5HorAlign = (haNone, haLeft, haCenter, haRight);
  TMetro5VerAlign = (vaNone, vaTop, vaMiddle, vaBottom);

const
  Metro5HorAlign: array [TMetro5HorAlign] of string = ('', 'm-stack__item--left', 'm-stack__item--center',
    'm-stack__item--right');
  Metro5VerAlign: array [TMetro5VerAlign] of string = ('', 'm-stack__item--top', 'm-stack__item--middle',
    'm-stack__item--bottom');

type
  TMetro5StackAlignType = (saNone, saHorizontal, saVertical);
  TMetro5StackDispType = (sdNone, General, Desktop, Tablet, DesktopTablet, Mobile, TabletMobile);

const
  Metro5StackDispType: array [TMetro5StackDispType] of string = ('', 'm-stack--general', 'm-stack--desktop',
    'm-stack--tablet', 'm-stack--desktop-and-tablet', 'm-stack--mobile', 'm-stack--tablet-and-mobile');
  Metro5StackAlignType: array [TMetro5StackAlignType] of string = ('', 'm-stack--hor', 'm-stack--ver');



  // m-dropdown  m-dropdown--arrow m-dropdown--align-center 	m-dropdown--mobile-full-width
  // m-nav__item--focus m-dropdown m-dropdown--arrow m-dropdown--align-center m-dropdown--mobile-full-width m-dropdown--skin-light	m-list-search m-list-search--skin-light
  // m-nav__item--danger m-dropdown m-dropdown--skin-light  m-dropdown--arrow m-dropdown--align-right m-dropdown--align-push m-dropdown--mobile-full-width m-dropdown--skin-light

type
  TM5DropDownSize = (dsStandard, dsMedium, dsLarge);

const
  DropDownSize: array [TM5DropDownSize] of string = ('', 'm-dropdown--medium', 'm-dropdown--large');

type
  TMetro5DropDownToggleType = (ttNone, ttClick, ttHover);

const
  Metro5DropDownToggle: array [TMetro5DropDownToggleType] of string = ('', 'click', 'hover');

type
  TArticlesSettings = record
    TitleField: IJanuaField;
    DescriptionField: IJanuaField;
    UrlField: IJanuaField;
    IconField: IJanuaField;
    ImageField: IJanuaField;
    DateField: IJanuaField;
    AuthorField: IJanuaField;
    // Articles Header Section ..............................................................
    Title: string;
    Description: string;
    IconType: TMetro5IconType;
    IconColor: TM5StateColorsStyle;
    FontColor: TM5StateColorsStyle;
  public
    constructor Create(aTitle, aDescription: string; aIconType: TMetro5IconType = jmiNone;
      aIconColor: TM5StateColorsStyle = m5sNone);
  end;

  // Metro5 State Color .....................
function m5sc(aClass: string; aStateColor: TM5StateColorsStyle): string; overload;
function m5sc(aClass: TM5SClassType; aStateColor: TM5StateColorsStyle): string; overload;

implementation

uses System.StrUtils;

function m5sc(aClass: string; aStateColor: TM5StateColorsStyle): string;
begin
  Result := IfThen(aStateColor = m5sNone, '', aClass + '--' + M5StateColors[aStateColor]);
end;

function m5sc(aClass: TM5SClassType; aStateColor: TM5StateColorsStyle): string;
begin
  Result := IfThen((aStateColor = m5sNone) or (aClass = TM5SClassType.None), '',
    M5SClasses[aClass] + '--' + M5StateColors[aStateColor]);
end;

{ TArticlesSettings }

constructor TArticlesSettings.Create(aTitle, aDescription: string; aIconType: TMetro5IconType;
  aIconColor: TM5StateColorsStyle);
begin
  self.Title := aTitle;
  self.Description := aDescription;
  self.IconType := aIconType;
  self.IconColor := aIconColor;
  FontColor := aIconColor;
end;

end.
