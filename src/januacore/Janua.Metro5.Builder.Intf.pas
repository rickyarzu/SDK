unit Janua.Metro5.Builder.Intf;

interface

uses Janua.Orm.Intf, Janua.Html.Types, Janua.Html.Intf, Janua.Html.Metro5.Types, Janua.Html.Builder.Intf;

type
  IHtmlPortletHeadBuilder = interface(IHtmlBuilder)
    ['{62EE781C-30E5-4EAB-9A38-029DD98D0771}']
    // Hide   // page Hide property ... not mandatory  .......................................
    function GetHide: Boolean;
    procedure SetHide(Value: Boolean);
    property Hide: Boolean read GetHide write SetHide;
    // Title Field
    function GetTitle: String;
    procedure SetTitle(Value: String);
    property Title: String read GetTitle write SetTitle;
    // Description   // page Description property .......................................
    function GetDescription: String;
    procedure SetDescription(Value: String);
    property Description: String read GetDescription write SetDescription;
    // FontColor   // page FontColor property .......................................
    function GetFontColor: TM5StateColorsStyle;
    procedure SetFontColor(Value: TM5StateColorsStyle);
    property FontColor: TM5StateColorsStyle read GetFontColor write SetFontColor;
    // Description   // page Description property .......................................
    function GetIcon: TMetro5IconType;
    procedure SetIcon(Value: TMetro5IconType);
    property Icon: TMetro5IconType read GetIcon write SetIcon;
  end;

type
  IHtmlPortletBuilder = interface(IHtmlBuilder)
    ['{340FA7D7-4A40-4022-A9D6-8E050F1321B1}']
    // Hide   // page Hide property ... not mandatory  .......................................
    function GetPortletHeadBuilder: IHtmlPortletHeadBuilder;
    procedure SetPortletHeadBuilder(Value: IHtmlPortletHeadBuilder);
    property PortletHeadBuilder: IHtmlPortletHeadBuilder read GetPortletHeadBuilder write SetPortletHeadBuilder;
  end;

type
  IMetro5ArticlesPortlet = interface(IHtmlPortletBuilder)
    ['{7008AEA6-E03B-4060-AB3E-4479991D26A1}']
    // Article Portlet Impiega una interfaccia 'composta' da 3 Componenti in fase di Create
    // Settings, Portlet Builder, ArticlesBuilder. Unendo questi 3 elementi genera la pagina.
    // potrebbe essere pero risolto solo in fase di Implementazione
  end;

type
  IMetro5BuilderFactory = interface(IHtmlBuilderFactory)
    procedure GetSliderBuilder(aSettings: TArticlesSettings; out a: IHtmlSliderBuilder; b: IHtmlBuilder);
  end;

implementation

end.
