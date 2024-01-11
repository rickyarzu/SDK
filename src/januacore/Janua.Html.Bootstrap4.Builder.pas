unit Janua.Html.Bootstrap4.Builder;

interface

uses Janua.Orm.Intf, Janua.Html.Types, Janua.Html.Intf, Janua.Html.Builder.Intf, JOrm.Cms.Articles.Intf;

type
  TBootstrap4SliderBuilder = class(TInterfacedObject, IHtmlBuilder, IHtmlSliderBuilder)
  strict private
    FDescriptionField: IJanuaField;
    FImageField: IJanuaField;
    FHasTitle: Boolean;
    FHasUrl: Boolean;
    FHasDescription: Boolean;
    FTitleField: IJanuaField;
    FUrlField: IJanuaField;
    // helper
    FHelper: Janua.Html.Intf.IHtmlHelper;
    FRecordSet: IJanuaRecordSet;
  private
    // Title Field
    function GetTitleField: IJanuaField;
    procedure SetTitleField(Value: IJanuaField);
    // Description Field  // page Description property .......................................
    function GetDescriptionField: IJanuaField;
    procedure SetDescriptionField(Value: IJanuaField);
    // Url Field
    function GetUrlField: IJanuaField;
    procedure SetUrlField(Value: IJanuaField);
    property UrlField: IJanuaField read GetUrlField write SetUrlField;
    // Image Field (Mandatory ... is still a slider)
    function GetImageField: IJanuaField;
    procedure SetImageField(Value: IJanuaField);
    // Has Url
    procedure SetHasUrl(const Value: Boolean);
    function GetHasUrl: Boolean;
    // Has Title
    procedure SetHasTitle(const Value: Boolean);
    function GetHasTitle: Boolean;
    // Has Description
    procedure SetHasDescription(const Value: Boolean);
    function GetHasDescription: Boolean;
  public
    constructor Create(aHelper: IHtmlHelper; aRecordSet: IJanuaRecordSet; aImageField: IJanuaField);
    function GetElement: IJanuaHtmlObject;
    // Recordset For The Builder............................................
    // Master RecordSet
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(Value: IJanuaRecordSet);
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
  public
    property DescriptionField: IJanuaField read GetDescriptionField write SetDescriptionField;
    property ImageField: IJanuaField read GetImageField write SetImageField;
    property HasTitle: Boolean read GetHasTitle write SetHasTitle;
    property HasUrl: Boolean read GetHasUrl write SetHasUrl;
    property HasDescription: Boolean read GetHasDescription write SetHasDescription;
    property TitleField: IJanuaField read GetTitleField write SetTitleField;
  end;

  TBootStrap4BuilderFactory = class
    class function GetSliderArticles(aHelper: IHtmlHelper; aArticles: IArticles): IHtmlBuilder;
  end;

implementation

uses
  Janua.Html.Bootstrap4, Spring;

{ TBootstrap4MenuBuilder }

constructor TBootstrap4SliderBuilder.Create(aHelper: IHtmlHelper; aRecordSet: IJanuaRecordSet;
  aImageField: IJanuaField);
begin
  Guard.CheckNotNull(aHelper, 'TBootstrap4SliderBuilder.Create Helper not Set');
  Guard.CheckNotNull(aRecordSet, 'TBootstrap4SliderBuilder.Create aRecordSet not Set');
  Guard.CheckNotNull(aImageField, 'TBootstrap4SliderBuilder.Create aRecordSet not Set');
  self.FImageField := aImageField;
  self.FHasTitle := False;
  self.FHasUrl := False;
  self.FHasDescription := False;
  self.FHelper := aHelper;
  self.RecordSet := aRecordSet;
end;

function TBootstrap4SliderBuilder.GetDescriptionField: IJanuaField;
begin
  REsult := self.FDescriptionField;
end;

function TBootstrap4SliderBuilder.GetElement: IJanuaHtmlObject;
var
  aCarousel: TBootstrap4Carousel;
  sSlide: string;
  sTitle: string;
  sDes: string;
  sUrl: string;
begin
  Guard.CheckNotNull(self.FHelper, 'TBootstrap4SliderBuilder.GetElement is null');
  Guard.CheckNotNull(self.FImageField, 'TBootstrap4SliderBuilder.FImageField is null');
  aCarousel := TBootstrap4Carousel.Create(self.FHelper);
  Guard.CheckNotNull(self.FRecordSet, 'TBootstrap4SliderBuilder.FRecordSet is null');
  self.FRecordSet.First;
  while not self.FRecordSet.Eof do
  begin
    sSlide := self.FImageField.AsString;
    sTitle := '';
    sDes := '';
    sUrl := '';
    if self.FHasUrl and (self.FUrlField <> nil) then
      sUrl := self.FUrlField.AsString;
    if self.FHasTitle and (self.FTitleField <> nil) then
      sTitle := self.FTitleField.AsString;
    if self.HasDescription and (self.FDescriptionField <> nil) then
      sDes := self.FDescriptionField.AsString;
    aCarousel.AddSlide(sSlide, sTitle, sDes, sUrl);
    self.FRecordSet.Next;
  end;
  REsult := aCarousel;
end;

function TBootstrap4SliderBuilder.GetHasDescription: Boolean;
begin
  REsult := self.FHasDescription;
end;

function TBootstrap4SliderBuilder.GetHasTitle: Boolean;
begin
  REsult := self.FHasTitle
end;

function TBootstrap4SliderBuilder.GetHasUrl: Boolean;
begin
  REsult := self.FHasUrl
end;

function TBootstrap4SliderBuilder.GetImageField: IJanuaField;
begin
  REsult := self.FImageField
end;

function TBootstrap4SliderBuilder.GetRecordSet: IJanuaRecordSet;
begin
  REsult := self.FRecordSet
end;

function TBootstrap4SliderBuilder.GetTitleField: IJanuaField;
begin
  REsult := self.FTitleField
end;

function TBootstrap4SliderBuilder.GetUrlField: IJanuaField;
begin
  REsult := self.FUrlField
end;

procedure TBootstrap4SliderBuilder.SetDescriptionField(Value: IJanuaField);
begin
  self.FDescriptionField := Value;
  self.FHasDescription := Value <> nil;
end;

procedure TBootstrap4SliderBuilder.SetHasDescription(const Value: Boolean);
begin
  self.FHasDescription := Value
end;

procedure TBootstrap4SliderBuilder.SetHasTitle(const Value: Boolean);
begin
  self.FHasTitle := Value
end;

procedure TBootstrap4SliderBuilder.SetHasUrl(const Value: Boolean);
begin
  self.FHasUrl := Value
end;

procedure TBootstrap4SliderBuilder.SetImageField(Value: IJanuaField);
begin
  self.FImageField := Value
end;

procedure TBootstrap4SliderBuilder.SetRecordSet(Value: IJanuaRecordSet);
begin
  self.FRecordSet := Value
end;

procedure TBootstrap4SliderBuilder.SetTitleField(Value: IJanuaField);
begin
  self.FTitleField := Value
end;

procedure TBootstrap4SliderBuilder.SetUrlField(Value: IJanuaField);
begin
  self.FUrlField := Value;
  self.FHasUrl := Value <> nil;
end;

{ TBootStrap4BuilderFactory }

class function TBootStrap4BuilderFactory.GetSliderArticles(aHelper: IHtmlHelper; aArticles: IArticles): IHtmlBuilder;
begin
  Guard.CheckNotNull(aHelper, 'TBootStrap4BuilderFactory.GetSliderArticles aHelper is null');
  Guard.CheckNotNull(aArticles, 'TBootStrap4BuilderFactory.GetSliderArticles aHelper is null');
  REsult := TBootstrap4SliderBuilder.Create(aHelper, aArticles, aArticles.ImageUrl);
  (REsult as IHtmlSliderBuilder).TitleField := aArticles.Title;
  (REsult as IHtmlSliderBuilder).DescriptionField := aArticles.Abstract;
  (REsult as IHtmlSliderBuilder).UrlField := aArticles.ArticleUrl;
  (REsult as IHtmlSliderBuilder).ImageField := aArticles.ImageUrl;
end;

end.
