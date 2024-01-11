unit Janua.Html.Bootstrap4.Intf;

interface

uses System.Classes, System.JSON, System.JSONConsts, System.Generics.Collections,
  // Spring
  Spring,
  // Janua Project
  Janua.Core.Types, Janua.Html.Impl, Janua.Html.Intf, Janua.Html.Types, Janua.Html.Bootstrap4.Types;

type
  IBootstrap4Slide = interface(IJanuaHtmlObject)
    ['{8A9F9BF7-BB1E-4853-AD72-998DC4C13505}']
    // function GetCaption: integer;
    procedure SetDescription(const Value: string);
    procedure SetTarget(const Value: string);
    procedure SetTitle(const Value: string);
    procedure SetImgUrl(const Value: string);
    procedure SetAlt(const Value: string);
    function GetDescription: string;
    function GetImgUrl: string;
    function GetAlt: string;
    function GetTarget: string;
    function GetTitle: string;
    property ImgUrl: string read GetImgUrl write SetImgUrl;
    property Title: string read GetTitle write SetTitle;
    property Description: string read GetDescription write SetDescription;
    property Target: string read GetTarget write SetTarget;
    property Alt: string read GetAlt write SetAlt;
  end;

type
  IBootstrap4Carousel = interface(IJanuaHtmlObject)
    ['{D26E3883-C778-4E9E-8D59-FE529A42E7A7}']
    function AddSlide(aSlide: IJanuaHtmlObject): integer; overload;
    function AddSlide(Url, Title, Description, Target: string): integer; overload;
    function GetMaxSlides: integer;
    function GetSlidesCount: integer;
    procedure SetMaxSlides(const Value: integer);
    procedure SetSlidesCount(const Value: integer);
    function GetCarouselInner: IJanuaHtmlObject;
    procedure SetCarouselInner(const Value: IJanuaHtmlObject);
    procedure SetIndicators(const Value: IJanuaHtmlObject);
    function GetIndicators: IJanuaHtmlObject;
    property MaxSlides: integer read GetMaxSlides write SetMaxSlides;
    property SlidesCount: integer read GetSlidesCount write SetSlidesCount;
    property CarouselInner: IJanuaHtmlObject read GetCarouselInner Write SetCarouselInner;
    property Indicators: IJanuaHtmlObject read GetIndicators write SetIndicators;
  end;

implementation

end.
