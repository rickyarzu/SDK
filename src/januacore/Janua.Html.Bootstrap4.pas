unit Janua.Html.Bootstrap4;

interface

uses System.SysUtils, System.Classes, System.StrUtils, System.SysConst,
  System.JSON, System.Math,
  System.JSONConsts, System.Generics.Collections,
  // Janua Project
  Janua.Core.Types,
  Janua.Html.Impl, Janua.Html.Intf, Janua.Html.Types, Janua.Html.Bootstrap4.Types, Janua.Html.Bootstrap4.Intf;

type
  TBootstrap4HtmlObject = class(TJanuaHtmlObject, IJanuaHtmlObject)

  end;

type
  TBootstrap4Slide = class(TBootstrap4HtmlObject, IJanuaHtmlObject, IBootstrap4Slide)
  strict private
    FImgUrl: IJanuaHtmlImage;
    FCaption: IJanuaHtmlObject;
  private
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
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  public
    property ImgUrl: string read GetImgUrl write SetImgUrl;
    property Title: string read GetTitle write SetTitle;
    property Description: string read GetDescription write SetDescription;
    property Target: string read GetTarget write SetTarget;
    property Alt: string read GetAlt write SetAlt;
  end;

type
  TBootstrap4Carousel = class(TBootstrap4HtmlObject, IJanuaHtmlObject, IBootstrap4Carousel)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  public
    function AddSlide(aSlide: IJanuaHtmlObject): integer; overload;
    function AddSlide(Url, Title, Description, Target: string): integer; overload;
  strict private
    FMaxSlides: integer;
    FSlidesCount: integer;
    FCarouselInner: IJanuaHtmlObject;
    FIndicators: IJanuaHtmlObject;
  private
    function GetMaxSlides: integer;
    function GetSlidesCount: integer;
    procedure SetMaxSlides(const Value: integer);
    procedure SetSlidesCount(const Value: integer);
    function GetCarouselInner: IJanuaHtmlObject;
    procedure SetCarouselInner(const Value: IJanuaHtmlObject);
    procedure SetIndicators(const Value: IJanuaHtmlObject);
    function GetIndicators: IJanuaHtmlObject;
  public
    property MaxSlides: integer read GetMaxSlides write SetMaxSlides;
    property SlidesCount: integer read GetSlidesCount write SetSlidesCount;
    property CarouselInner: IJanuaHtmlObject read GetCarouselInner Write SetCarouselInner;
    property Indicators: IJanuaHtmlObject read GetIndicators write SetIndicators;
  end;

type
  TBootstrap4Factory = class
  public
    class function CreateSlide(aUrl, aTitle, aDescription, aTarget: string): IJanuaHtmlObject; overload;
    class function CreateSlide: IJanuaHtmlObject; overload;
  end;

  {

    <div class="carousel-inner">
    <div class="carousel-item">
    <img src="http://cdn.ergomercator.com/dilettantissimo/images/image1.jpg" alt="Los Angeles" data-pagespeed-url-hash="2901859411" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
    <div class="carousel-caption">
    <h3>CDM GENOVA, ARRIVANO LE PRIME ANTICIPAZIONI</h3>
    <p>Con alcune caselle nel proprio organico già riempite (in parte con la conferma di capitan De Jesus,...</p>
    </div>
    </div>
    <div class="carousel-item active">
    <img src="http://cdn.ergomercator.com/dilettantissimo/images/image2.jpg" alt="Chicago" data-pagespeed-url-hash="3196359332" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
    <div class="carousel-caption">
    <h3>MINI TROFEO ALBARO 2018</h3>
    <p>TRIONFANO G.SIRI NEI 2010 E SAN FRUTTUOSO NEI 2011</p>
    </div> </div>
    <div class="carousel-item">
    <img src="http://cdn.ergomercator.com/dilettantissimo/images/image3.jpg" alt="New York" data-pagespeed-url-hash="3490859253" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
    <div class="carousel-caption">
    <h3>VADO SI CAMBIA! RESTYLING COMPLETO</h3>
    <p>Il VADO del presidente FRANCO TARABOTTO la prossima stagione si rifarà il trucco</p>
    </div>
    </div>
    </div>

    <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
    </a>
    </div>
  }

type
  TBootstrap4Helper = class(THtmlHelper, IHtmlHelper)

  end;

implementation

var
  Bootstrap4Helper: IHtmlHelper;

  { TBootstrap4Carousel }

function TBootstrap4Carousel.AddSlide(Url, Title, Description, Target: string): integer;
var
  aIndex: integer;
begin
  // TBootstrap4Slide.Create(aUrl, aTitle, aDescription, aTarget: string);
  aIndex := CarouselInner.Add(TBootstrap4Factory.CreateSlide(Url, Title, Description, Target));
  if self.CarouselInner.Count = 1 then
    self.CarouselInner.SelectedItem.AddClass('active');
  // indicators è un array a base '0' in una lista ordinata (ol).
  self.Indicators.AddSimpleTag('li', '', False);
  self.Indicators.SelectedItem.AddParam('data-target', '#' + self.Id);
  self.Indicators.SelectedItem.AddParam('data-slide-to', aIndex.ToString);
  // se ho inserito il primo item allora lo imposto come attivo di Default.
  if aIndex = 0 then
    Indicators.SelectedItem.AddClass('active');
  Result := aIndex;
end;

function TBootstrap4Carousel.AddSlide(aSlide: IJanuaHtmlObject): integer;
var
  aIndicator: IJanuaHtmlObject;
begin
  aIndicator := TJanuaHtmlObject.Create(self.HtmlHelper, 'li', [IfThen(Indicators.Count = 0, 'active', '')]);
  aIndicator.AddParam('data-slide', self.Indicators.Count.ToString);
  Result := Indicators.Add(aIndicator)
  // Interessante e la slide dove me la ficco????

end;

constructor TBootstrap4Carousel.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  // div id="demo" class="carousel slide" data-ride="carousel">
  inherited;
  self.tag := 'div';
  self.AddClasses(['carousel', 'slide']);
  // indica a javascript che si tratta di un Carousel
  self.AddParam('data-ride', 'carousel');
  self.Id := 'slider'; // questo deve essere un id unico e va sovrascritto se sono presenti diversi slider

  // <ol class="carousel-indicators">
  // Indicators - index = 1 - Wrapper for slides
  self.Add(TJanuaHtmlObject.Create(aHelper, 'ul', ['carousel-indicators']));
  FIndicators := self.SelectedItem;
  self.Indicators.CommentBefore := 'Begin::Indicators';
  self.Indicators.CommentAfter := 'End::Indicators';

  // <div class="carousel-inner">
  // Carousel Inner - index = 0 -
  self.Add(TBootstrap4HtmlObject.Create(aHelper, 'div', ['carousel-inner']));
  self.FCarouselInner := self.SelectedItem;
  self.FCarouselInner.CommentBefore := 'Begin::Wrapper for slides';
  self.FCarouselInner.CommentAfter := 'End::Wrapper for slides';

  // <!-- Left and right controls -->
  // constructor .Create(aHelper; IsLink: boolean; aUrl, aLink: string; aRels: TJanuaLinkRelTypes; aCross: boolean);
  self.Add(TJanuaHtmlLink.Create(self.HtmlHelper, False, '', '#' + self.Id, [TJanuaLinkRelType.none], False));
  self.SelectedItem.NewLine := True;
  self.SelectedItem.AddClasses(['carousel-control-prev']);
  self.SelectedItem.AddParam('data-slide', 'prev');
  self.SelectedItem.CommentBefore := 'Begin::Left and right controls';
  self.SelectedItem.AddSimpleTag('span', '', False);
  self.SelectedItem.SelectedItem.AddClasses(['carousel-control-prev-icon']);
  // self.SelectedItem.AddSimpleTag('span', 'Indietro', False);
  // self.SelectedItem.SelectedItem.AddClasses(['sr-only']);
  // ......................................................................................
  self.Add(TJanuaHtmlLink.Create(self.HtmlHelper, False, '', '#' + self.Id, [TJanuaLinkRelType.none], False));
  self.SelectedItem.NewLine := True;
  self.SelectedItem.AddClasses(['carousel-control-next']);
  self.SelectedItem.AddParam('data-slide', 'next');
  self.SelectedItem.CommentAfter := 'End::Left and right controls';
  self.SelectedItem.AddSimpleTag('span', '', False);
  self.SelectedItem.SelectedItem.AddClasses(['carousel-control-next-icon']);
  // self.SelectedItem.AddSimpleTag('span', 'Avanti', False);
  // self.SelectedItem.SelectedItem.AddClasses(['sr-only']);
  self.SelectedItem.CommentBefore := 'Begin::Left and right controls';
  self.SelectedItem.CommentAfter := 'End::Left and right controls';
end;

function TBootstrap4Carousel.GetCarouselInner: IJanuaHtmlObject;
begin
  Result := self.FCarouselInner
end;

function TBootstrap4Carousel.GetIndicators: IJanuaHtmlObject;
begin
  Result := FIndicators
end;

function TBootstrap4Carousel.GetMaxSlides: integer;
begin
  Result := self.FMaxSlides
end;

function TBootstrap4Carousel.GetSlidesCount: integer;
begin
  Result := self.FSlidesCount
end;

procedure TBootstrap4Carousel.SetCarouselInner(const Value: IJanuaHtmlObject);
begin
  FCarouselInner := Value;
end;

procedure TBootstrap4Carousel.SetIndicators(const Value: IJanuaHtmlObject);
begin
  self.FIndicators := Value;
end;

procedure TBootstrap4Carousel.SetMaxSlides(const Value: integer);
begin
  FMaxSlides := Value;
end;

procedure TBootstrap4Carousel.SetSlidesCount(const Value: integer);
begin
  FSlidesCount := Value;
end;

{ TBootstrap4Slide }

constructor TBootstrap4Slide.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  self.tag := 'div';
  self.AddClass('carousel-item');
  self.FImgUrl := (TJanuaHtmlFactory.CreateHtmlImage('', '') as IJanuaHtmlImage);
  self.Add(FImgUrl);
  // importante la larghezza immagine deve essere 100%
  self.SelectedItem.AddStyle(THtmlStyle.Width, '100%');
  self.SelectedItem.NewLine := False;
  // <div class="carousel-caption" style="background-color:rgba(99,99,99,0.49)">
  AddSimpleTag('div', '', True, ['carousel-caption']);
  FCaption := self.SelectedItem;
  self.SelectedItem.AddStyle(THtmlStyle.BackgroundColor, 'rgba(99,99,99,0.49)');
  self.SelectedItem.AddStyle(THtmlStyle.Color, 'white');
  // (aHelper: IHtmlHelper; IsLink: boolean; aUrl, aLink: string; aRels: TJanuaLinkRelTypes; aCross: boolean);
  SelectedItem.Add(TJanuaHtmlLink.Create(self.HtmlHelper, False, '', '', [TJanuaLinkRelType.none], False));
  SelectedItem.SelectedItem.AddStyle(THtmlStyle.Color, 'white');
  SelectedItem.SelectedItem.NewLine := True;
  SelectedItem.SelectedItem.AddSimpleTag('h3', 'Titolo');
  SelectedItem.SelectedItem.AddSimpleTag('p', 'Sottotitolo', False, ['d-none', 'd-lg-block']);

end;

function TBootstrap4Slide.GetAlt: string;
begin
  Result := FImgUrl.Alt // .GetParamValue('alt');
end;

function TBootstrap4Slide.GetDescription: string;
begin
  { SelectedItem.SelectedItem.AddSimpleTag('h3', 'Titolo');
    SelectedItem.SelectedItem.AddSimpleTag('p', 'Sottotitolo');
  }
  Result := FCaption.SelectedItem.GetItem(1).Text
end;

function TBootstrap4Slide.GetImgUrl: string;
begin
  Result := self.FImgUrl.Src
end;

function TBootstrap4Slide.GetTarget: string;
begin
  Result := FCaption.SelectedItem.GetParamValue('href');
end;

function TBootstrap4Slide.GetTitle: string;
begin
  // 0 è il Title .......
  Result := FCaption.SelectedItem.GetItem(0).Text

end;

procedure TBootstrap4Slide.SetAlt(const Value: string);
begin
  FImgUrl.Alt := Value;
  // (self.FList[self.FImgUrl]).AddParam('alt', Value);
end;

procedure TBootstrap4Slide.SetDescription(const Value: string);
begin
  // 1 è Description
  FCaption.SelectedItem.GetItem(1).Text := Value;
end;

procedure TBootstrap4Slide.SetTarget(const Value: string);
begin
  (FCaption.SelectedItem as IJanuaHtmlLink).Url := '';
  (FCaption.SelectedItem as IJanuaHtmlLink).LinkUrl := Value;
end;

procedure TBootstrap4Slide.SetTitle(const Value: string);
begin
  // 0 è il Title
  FCaption.SelectedItem.GetItem(0).Text := Value;
end;

procedure TBootstrap4Slide.SetImgUrl(const Value: string);
begin
  FImgUrl.Src := Value // (self.FList[self.FImgUrl]).AddParam('src', Value);
end;

{ TBootstrap4Factory }

class function TBootstrap4Factory.CreateSlide(aUrl, aTitle, aDescription, aTarget: string): IJanuaHtmlObject;
begin
  Result := CreateSlide;
  (Result as IBootstrap4Slide).ImgUrl := aUrl;
  (Result as IBootstrap4Slide).Alt := aTitle;
  (Result as IBootstrap4Slide).Title := aTitle;
  (Result as IBootstrap4Slide).Description := aDescription;
  (Result as IBootstrap4Slide).Target := aTarget;
end;

class function TBootstrap4Factory.CreateSlide: IJanuaHtmlObject;
begin
  Result := TBootstrap4Slide.Create(Bootstrap4Helper);
end;

Initialization

try
  Bootstrap4Helper := TBootstrap4Helper.Create;
except
  on e: exception do
    raise exception.Create('Html.Bootstrap.Initialization ' + e.Message);
end;

finalization

Bootstrap4Helper := nil;

end.
