unit udmCmsLndGenerator;

interface

uses
  System.SysUtils, System.Classes,
  // Core
  Janua.Core.Classes,
  // Html
  Janua.Html.Metro5.Impl, Janua.Html.Impl, Janua.Html.Bootstrap4,
  Janua.Html.Metro5.Types, Janua.Core.Types, Janua.Orm.Intf, Janua.Html.Types, Janua.Html.Metro5.Intf,
  Janua.Lnd.Intf, JOrm.Cms.Articles.Intf, JOrm.Cms.Articles.Impl, Janua.Metro5.Builder.Intf, Janua.Html.Intf,
  // Orm
  JOrm.Cms.MainArguments.Intf, JOrm.Cms.Arguments.Intf,
  // Framework
  Janua.Football.Web.Intf, udmFootballGenerator;

type
  TdmCmsLNDGenerator = class(TdmFootballGenerator)

  private // deprecated or Tests
    function GetCarousel(aArgumentID: integer): Janua.Html.Bootstrap4.TBootstrap4Carousel;
  public
    function TestArticles: string;
  public
    { Public declarations }
    function GetArticlesList(aArgumentID: integer): Janua.Html.Intf.IJanuaHtmlObject;
    function GetFootballMenu: IJanuaHtmlObject;
    function GetHomePage(aMainCategory: integer; aCategory: integer): string;
    function GetLNDHome(aMainCategory, aCategory, aLimit, aPage: Word): string;
    function GetArticlePage(aID: Int64): string;
    function GetArgumentPage(aID: integer): string;
  end;

var
  dmCmsLNDGenerator: TdmCmsLNDGenerator;
  h1: IHtmlHelper;

implementation

uses
  JOrm.Cms.MainArguments.Impl,
  Janua.Core.Metronics, udmVirtualFootballServer, Janua.Orm.Generator, Data.DB,
  udmVirtualCmsServer, Janua.Html.Builder.Intf, Janua.Metro5.Builder,
  Janua.Html.Metro5.Pages, Janua.Lnd.Impl;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmCmsLNDGenerator }

function TdmCmsLNDGenerator.GetArgumentPage(aID: integer): string;
var
  p: Janua.Lnd.Intf.ILndArgumentPage;
  ma: IMainArguments;
  ar: IArguments;
  at: IArticles;
begin
  // Test completo menu ORM da Football Academy.........................................................
  CreateDataModule;
  try
    SetupDM(ma, ar);
    at := DMCms.GetArticlesList(0, aID, 20, 1);
    // 1 = comunicati, 2 = circolari, 3 = news, 4 = urgenze
    p := TLndArgumentPage.Create(ma, ar, at); // .CreateHomePage(ma, ar);
    Result := p.AsHtml
  finally
    DestroyDataModule
  end;
end;

function TdmCmsLNDGenerator.GetArticlePage(aID: Int64): string;
var
  p: Janua.Lnd.Intf.ILndArticlePage;
  ma: IMainArguments;
  ar: IArguments;
  at: IArticle;
begin
  CreateDataModule;
  try
    self.SetupDM(ma, ar);
    at := DMCms.GetArticle(aID);
    // 1 = comunicati, 2 = circolari, 3 = news, 4 = urgenze
    p := TLndArticlePage.Create(ma, ar, at); // .CreateHomePage(ma, ar);
    Result := p.AsHtml
  finally
    DestroyDataModule
  end;
end;

function TdmCmsLNDGenerator.GetArticlesList(aArgumentID: integer): IJanuaHtmlObject;
var
  r, c: IJanuaHtmlObject;
  // c: IMetro5PortletHead;
begin
  // funzione che crea una 'simpatica' serie di Articoli per il nostro sito web ...............
  c := TMetro5Factory.CreateMetro5PortletHead('I nostri articoli', 'le ultime news', FlatMultimedia, m5sWarning);
  Result := TMetro5Factory.CreatePortlet(c as IMetro5PortletHead) as IJanuaHtmlObject;
  r := TMetro5Factory.CreateArticle(TJanuaLanguage.jlaItalian, 'CDM Genova Arrivano le prime anticipazioni',
    'Le conferme della rosa per il prossimo anno.', 'LND Liguria',
    'http//:cdn.ergomercator.com/dilettantissimo/images/image1.jpg', 'http://www.ergomercator.com',
    System.SysUtils.Date);
  (Result as IMetro5Portlet).Content.Add(r);
  (Result as IMetro5Portlet).Content.Add(r);
  (Result as IMetro5Portlet).Content.Add(r);
end;

function TdmCmsLNDGenerator.GetCarousel(aArgumentID: integer): TBootstrap4Carousel;
begin
  Result := TBootstrap4Carousel.Create(h1);
  Result.AddSlide('la.jpg', 'Los Angeles', 'LA is always so much fun!', '#target0');
  Result.AddSlide('chicago.jpg', 'Chicago', 'We love the Big Apple!', '#target1');
  Result.AddSlide('ny.jpg', 'New York', 'We love the Big Apple!', '#target2');
end;

function TdmCmsLNDGenerator.GetFootballMenu: IJanuaHtmlObject;
var
  ma: IMainArguments;
  ar: IArguments;
  a: Janua.Html.Builder.Intf.IHtmlBuilder;
  m: Janua.Html.Builder.Intf.IHtmlMenuBuilder;
begin
  // Test completo menu ORM da Football Academy.........................................................
  CreateDataModule;
  try
    self.SetupDM(ma, ar);
    // self.UpdateJson(ma.ToJson, True);
    // occorre un campo anche 'calcolato' per il sub-url da decifrare.
    // il campo 'icona' diventa ora fondamentale almeno per gli argomenti
    // tanto quanto fondamentale una propr
    TMetro5BuilderFactory.GetMenuBuilder(ma, ma.MainArgument.Arguments, ma.MainArgument.Main_argument_des, nil, nil,
      ar.Argument_des, ar.Icon, ar.Url, ma.MainArgument.Selected, ar.Argument.Selected, m, a);
    Result := a.GetElement;
  finally
    DestroyDataModule
  end;

end;

function TdmCmsLNDGenerator.GetHomePage(aMainCategory, aCategory: integer): string;
var
  p: IMetro5Page;
  o: IJanuaHtmlObject;
  // Metro 5 Grid Item è il 'Body' della nostra pagina web....................................
  b: IJanuaHtmlObject;
  por: IJanuaHtmlObject; // IMetro5Portlet;
  row1, row2: IJanuaHtmlObject;
  col11, col12, col13, col14: IJanuaHtmlObject;
  col21, col22, col23, col24: IJanuaHtmlObject;
begin
  p := TMetro5PageFactory.CreateMetro510Page;
  o := TJanuaHtmlObject.Create(h1);
  o.tag := 'iframe';
  o.AddParam('src', 'https://goo.gl/BnbW5V');
  o.AddStyle(THtmlStyle.Border, '0px #ffffff none');
  o.AddParam('name', 'LNDiframe');
  o.AddParam('scrolling', 'no');
  o.AddParam('frameborder', '0');
  o.AddParam('marginheight', '0px');
  o.AddParam('marginwidth', '0px');
  o.AddParam('height', '150px');
  o.AddParam('width', '100%');
  p.Body.Insert(0, o);
  o := nil;
  // <iframe src="https://goo.gl/BnbW5V"
  // style="border:0px #ffffff none;"
  // name="LNDiframe" scrolling="no" frameborder="0" marginheight="0px" marginwidth="0px"
  // height="150px" width="100%" allowfullscreen=""></iframe>
  o := self.GetFootballMenu;
  p.Body.AddMenu(o);
  o := nil;
  b := (p.Body as IMetro5Body).Content.Body;
  b.AddSimpleTag('div', '', True, ['row']);
  row1 := b.SelectedItem;
  // Colonna 8
  row1.AddSimpleTag('div', '', True, ['col-xl-8']);
  col11 := row1.SelectedItem;
  // Colonna 4
  row1.AddSimpleTag('div', '', True, ['col-xl-4']);
  col12 := row1.SelectedItem;
  // in Col1 inserisco inizialmente uno Slider di 'Test'....................
  col11.Add(GetCarousel(1));
  // ELABORAZIONE DELLA SECONDA RIGA .......................................
  b.AddSimpleTag('div', '', True, ['row']);
  row2 := b.SelectedItem;
  // Colonna 2.1 (4)
  row2.AddSimpleTag('div', '', True, ['col-xl-4']);
  col21 := row2.SelectedItem;
  por := self.GetArticlesList(1);
  col21.Add(por);
  // Colonna 2.2 (4)
  row2.AddSimpleTag('div', '', True, ['col-xl-4']);
  col22 := row2.SelectedItem;
  por := self.GetArticlesList(1);
  col22.Add(por);
  // Colonna 2.3 (4)
  row2.AddSimpleTag('div', '', True, ['col-xl-4']);
  col23 := row2.SelectedItem;
  por := self.GetArticlesList(1);
  col23.Add(por);
  Result := p.AsHtml;
end;

function TdmCmsLNDGenerator.GetLNDHome(aMainCategory, aCategory, aLimit, aPage: Word): string;
var
  p: Janua.Lnd.Intf.ILndHomePage;
  f: IFootballPage;
  fa: IFootballFactory;
  ma: IMainArguments;
  ar: IArguments;
begin
  // Test completo menu ORM da Football Academy.........................................................
  try
    CreateDataModule;
    try
      SetupDM(ma, ar);
      // 1 = comunicati, 2 = circolari, 3 = news, 4 = urgenze
      fa := TLNDFootballFactory.Create;
      f := fa.CreateHomePage(ma, ar, nil, nil);
      if supports(f, IFootballPage, p) then
      begin
        p.NewsSet := DMCms.GetArticlesListPos(aMainCategory, 3, aLimit, aPage);
        p.ComunicatiSet := DMCms.GetArticlesListPos(aMainCategory, 1, aLimit, aPage);
        p.NormeSet := DMCms.GetArticlesListPos(aMainCategory, 2, aLimit, aPage);
        p.UrgenzeSet := DMCms.GetArticlesListPos(aMainCategory, 4, aLimit, aPage);
      end;
      Result := f.AsHtml
    finally
      DestroyDataModule;
    end;
  except
    on e: exception do
      raise exception.Create(self.ClassName + '.GetLNDHome ' + e.Message);
  end;
end;

function TdmCmsLNDGenerator.TestArticles: string;
var
  art: IArticles;
  ma: IMainArguments;
  ar: IArguments;
  p: IHtmlBuilder;
  s: TArticlesSettings;
  o: IJanuaHtmlObject;
begin
  CreateDataModule;
  try
    SetupDM(ma, ar);
    art := DMCms.GetArticlesList(1, 1, 20, 1);
    art.AuthorText := 'LND Liguria';
    s := TMetro5BuilderFactory.GetArticlesSettings(art);
    s.Title := 'Ultime Notizie';
    s.Description := '';
    s.IconType := TMetro5IconType.jmlSocialDribble;
    s.IconColor := TM5StateColorsStyle.m5sBrand;
    s.FontColor := TM5StateColorsStyle.m5sBrand;
    p := TMetro5BuilderFactory.GetArticlesPortlet(s, ar);
    o := p.GetElement;
    Result := o.AsHtml;
  finally
    DestroyDataModule;
  end;

end;

initialization

AssetsURL := 'http://cdn.ergomercator.com/metronic_v5.2.1/metronic_v5.2.1/default/dist/';
h1 := Janua.Html.Impl.THtmlHelper.Create;

end.
