unit Janua.Dilettantissimo.Impl;

{$I januacore.inc}

interface

uses
  System.SysUtils,
{$IF Defined(WEBBROKER)}
  Web.HTTPApp,
{$ENDIF WEBBROKER}
  Janua.Http.Intf,
  // Janua Web Football
  Janua.Football.Intf, Janua.Dilettantissimo.Intf, Janua.Football.Web.Intf, Janua.Football.Web.Impl,
  // Janua Html
  Janua.Html.Types, Janua.Html.Intf, Janua.Html.Builder.Intf,
  // Janua Bootstrap4 - Metro5
  Janua.Html.Metro5.Intf, Janua.Html.Metro5.Types, Janua.Html.Bootstrap4.Builder,
  // Orm ........................................................
  JOrm.Cms.Articles.Intf, JOrm.Cms.MainArguments.Intf, JOrm.Cms.Arguments.Intf,
  JOrm.Football.MatchDay.Intf, JOrm.Football.Leagues.Intf,
  Janua.Orm.Intf, JOrm.Football.RankingTable.Intf, JOrm.Football.GoalRanking.Intf,
  JOrm.Football.Matches.Intf,
  // Server ...........................................................................................
  Janua.Football.Server.Intf, Janua.Cms.Server.Intf, Janua.System.Server.Intf;

type
  TDilettantissimoHomePage = class(TInterfacedObject, IFootballPage)
  strict private
    FMA: IMainArguments;
    FAM: IArguments;
    FVI: IArticles;
    FNW: IArticles;
  protected
    function GetFootballMenu: IJanuaHtmlObject;
    function GetCarousel: IJanuaHtmlObject;
    function GetNewsList: IJanuaHtmlObject;
    function GetVideoList: IJanuaHtmlObject;
  public
    constructor Create(aMainArg: IMainArguments; aArgs: IArguments; ANews, aVideo: IArticles);
    function AsHtml: string;
  end;

type
  TDilettantissimoController = class(TFootballController, IFootballController)
  public
    { Public declarations }
    function GetHome(aMainCategory, aCategory, aLimit, aPage: Word): string;
    function GetArticlesList(aArgumentID: integer): Janua.Html.Intf.IJanuaHtmlObject;
    function GetArticlePage(aID: Int64): string;
    function GetArgumentPage(aID: integer): string;
  end;

type
  TDilettantissimoWebSession = class(TFootballWebSession, IFootballWebSession)
  public
{$IF Defined(WEBBROKER)}
{$ENDIF WEBBROKER}
  end;

Type
  TDilettantissimoFootballFactory = class(TCustomFootballFactory, IFootballFactory)
  public
    function CreateHomePage(aMainArg: IMainArguments; aArgs: IArguments; ANews, aVideo: IArticles)
      : IFootballPage; override;
    function GetController(const aServer: IJanuaServerFootball; aServerCms: IJanuaServerCms;
      aServerSystem: IJanuaServerSystem): IFootballController; override; // overload;

  end;

Type
  TDilettantissimoFactory = class(TInterfacedObject, IFootballWebFactory)
  public
    function GetWebSession(const aFactory: IFootballFactory; aWebManager: IWebManager): IFootballWebSession; overload;
    function GetWebSession(aFootballFactory: IJanuaServerFootballFactory; aCmsFactory: IJanuaServerCmsFactory;
      aSystemFactory: IJanuaServerSystemFactory; aWebManager: IWebManager): IFootballWebSession; overload;
    function GetFooterLeft: IJanuaHtmlObject;
    function GetFooterRight: IJanuaHtmlObject;
    function GetNewsWidget: IJanuaHtmlObject;
    function GetBannersWidget: IJanuaHtmlObject;
  end;

var
  SystemCache: IJanuaSystemCache;

implementation

uses
  // Janua Servers
  // Html Metronic
  Janua.Html.Metro5.Impl, Janua.Metro5.Builder, Janua.Html.Metro5.Pages, Janua.Metro5.Builder.Intf,
  // Orm
  JOrm.Cms.Arguments.Impl, JOrm.Cms.Articles.Impl,
  // Football Server & Web
  Spring, Janua.Html.Impl, Janua.Html.Builder.Impl, Janua.Football.Server.Impl,
  Janua.Cms.Server.Impl, Janua.System.Server.Impl, Janua.Football.Impl;

{ TDilettantissimoHomePage }

function TDilettantissimoHomePage.AsHtml: string;
var
  p: IMetro5Page;
  o: IJanuaHtmlObject;
  // Metro 5 Grid Item è il 'Body' della nostra pagina web....................................
  b: IJanuaHtmlObject;
  por: IMetro5Portlet;
  row1, row2: IJanuaHtmlObject;
  col11, col12, col13, col14: IJanuaHtmlObject;
  col21, col22, col23, col24: IJanuaHtmlObject;
  aFrame: IJanuaHtmlObject;
begin
  p := TMetro5PageFactory.CreateMetro510Page;
  p.BackGroundColor := '#3E5062;';
  o := self.GetFootballMenu;
  // p.Body.Insert(0, aFrame);
  // p.ContentHeader.AddStyle(THtmlStyle.BackGround, '#214a8d !important' );
  p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.Position, 'static !important'); // margin-top:140px;
  // p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.MarginBottom, '30px');    // margin-top:140px;
  // p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.MarginTop, '140px');
  p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.BackGround, '#214a8d !important');
  p.ContentHeader.HeaderTop.Brand.ImageLogo.Image.Src := 'http://cdn.ergomercator.com/images/logo_liguria150.png';
  p.ContentHeader.HeaderTop.Brand.ImageLogo.Image.AddStyle(THtmlStyle.MarginTop, '-40px');
  p.ContentHeader.HeaderTop.Brand.AddStyle(THtmlStyle.MarginTop, '-30px');
  // Lascio il Content Body 'vuoto'
  // p.ContentBody.AddStyle(THtmlStyle.BackGround, '#214a8d !important');
  p.Body.AddMenu(o);
  b := (p.Body as IMetro5Body).Content.Body;
  b.AddSimpleTag('div', '', True, ['row']);
  row1 := b.SelectedItem;
  // Colonna 8
  row1.AddSimpleTag('div', '', True, ['col-xl-8']);
  col11 := row1.SelectedItem;
  // in Col1 inserisco inizialmente uno Slider di 'Test'....................
  col11.Add(GetCarousel);
  // video list e articoli list ............................................

  // ********************** Da Rivedere pesantemente
  (*
    // Colonna 4
    row1.AddSimpleTag('div', '', True, ['col-xl-4']);
    col12 := row1.SelectedItem;
    col12.Add(self.GetUrgenzeList);
    // ELABORAZIONE DELLA SECONDA RIGA .......................................
    b.AddSimpleTag('div', '', True, ['row']);
    row2 := b.SelectedItem;
    // Colonna 2.1 (4)
    row2.AddSimpleTag('div', '', True, ['col-xl-4']);
    col21 := row2.SelectedItem;
    col21.Add(GetNewsList);
    // Colonna 2.2 (4)
    row2.AddSimpleTag('div', '', True, ['col-xl-4']);
    col22 := row2.SelectedItem;
    col22.Add(self.GetComunicatiList);
    // Colonna 2.3 (4)
    row2.AddSimpleTag('div', '', True, ['col-xl-4']);
    col23 := row2.SelectedItem;
    col23.Add(self.GetCircolariList);
    // Terminato il 'riempimento' ottengo come risultato il 'Build' della Home-Page.
  *)

  Result := p.AsHtml;

end;

constructor TDilettantissimoHomePage.Create(aMainArg: IMainArguments; aArgs: IArguments; ANews, aVideo: IArticles);
begin
  self.FMA := aMainArg;
  self.FAM := aArgs;
  self.FVI := aVideo;
  self.FNW := ANews;
end;

function TDilettantissimoHomePage.GetCarousel: IJanuaHtmlObject;
var
  b: IHtmlBuilder;
begin
  b := TBootStrap4BuilderFactory.GetSliderArticles(Metro5Helper, self.FNW);
  (b as IHtmlSliderBuilder).HasTitle := True;
  Result := b.GetElement

end;

function TDilettantissimoHomePage.GetFootballMenu: IJanuaHtmlObject;
var
  a: Janua.Html.Builder.Intf.IHtmlBuilder;
  m: Janua.Html.Builder.Intf.IHtmlMenuBuilder;
begin
  // 2018-0075 Selected Menu Builder
  TMetro5BuilderFactory.GetMenuBuilder(FMA, FMA.MainArgument.Arguments, FMA.MainArgument.Main_argument_des, nil, nil,
    FAM.Argument_des, FAM.Icon, FAM.Url, FMA.MainArgument.Selected, FAM.Argument.Selected, m, a);
  m.HasHome := True;
  Result := m.GetElement;

end;

function TDilettantissimoHomePage.GetNewsList: IJanuaHtmlObject;
var
  p: IHtmlBuilder;
  s: TArticlesSettings;
begin
  self.FNW.AuthorText := 'Dilettantissimo';
  s := TMetro5BuilderFactory.GetArticlesSettings(self.FNW);
  s.Title := 'Ultime Notizie';
  s.Description := '';
  s.IconType := TMetro5IconType.FutBol;
  s.IconColor := TM5StateColorsStyle.m5sAccent;
  s.FontColor := TM5StateColorsStyle.m5sAccent;
  p := TMetro5BuilderFactory.GetArticlesPortlet(s, self.FNW);
  Result := p.GetElement;

end;

function TDilettantissimoHomePage.GetVideoList: IJanuaHtmlObject;
var
  p: IHtmlBuilder;
  s: TArticlesSettings;
begin
  self.FNW.AuthorText := 'Dilettantissimo';
  s := TMetro5BuilderFactory.GetArticlesSettings(self.FNW);
  s.Title := 'Ultime Notizie';
  s.Description := '';
  s.IconType := TMetro5IconType.FutBol;
  s.IconColor := TM5StateColorsStyle.m5sAccent;
  s.FontColor := TM5StateColorsStyle.m5sAccent;
  p := TMetro5BuilderFactory.GetArticlesPortlet(s, self.FNW);
  Result := p.GetElement;
end;

{ TDilettantissimoFootballFactory }

function TDilettantissimoFootballFactory.CreateHomePage(aMainArg: IMainArguments; aArgs: IArguments;
  ANews, aVideo: IArticles): IFootballPage;
begin
  Guard.CheckNotNull(aMainArg, 'TLNDFactory.CreateHomePage aMain is Null');
  Guard.CheckNotNull(aArgs, 'TLNDFactory.CreateHomePage aArgs is Null');
  Result := TDilettantissimoHomePage.Create(aMainArg, aArgs, ANews, aVideo);
end;

function TDilettantissimoFootballFactory.GetController(const aServer: IJanuaServerFootball; aServerCms: IJanuaServerCms;
  aServerSystem: IJanuaServerSystem): IFootballController;
begin
  Guard.CheckNotNull(aServer, 'TDilettantissimoFactory.GetController aServer is nil');
  Guard.CheckNotNull(aServerCms, 'TDilettantissimoFactory.GetController aCmsStorage is nil');
  Result := TDilettantissimoController.Create(aServer, aServerCms, aServerSystem, self);
end;

{ TDilettantissimoFactory }

function TDilettantissimoFactory.GetWebSession(const aFactory: IFootballFactory; aWebManager: IWebManager)
  : IFootballWebSession;
begin
  Guard.CheckNotNull(aFactory, 'TDilettantissimoFactory.GetWebSession aFactory is nil');
  Guard.CheckNotNull(aWebManager, 'TDilettantissimoFactory.GetWebSession aWebManager is nil');
  Result := TDilettantissimoWebSession.Create(aFactory, aWebManager);
end;

function TDilettantissimoFactory.GetBannersWidget: IJanuaHtmlObject;
begin

end;

function TDilettantissimoFactory.GetFooterLeft: IJanuaHtmlObject;
var
  LNDLeftBody, LNDRightBody, LItem: IJanuaHtmlObject;
  LImage: TJanuaHtmlImage;
  LText: string;
begin
  {
    <div class="row m-row--full-height">
    <div class="col-sm-12 col-md-12 col-lg-6">
    <div class="m-portlet m-portlet--half-height m-portlet--border-bottom-brand  m-portlet--rounded">
    <div class="m-portlet__body">
  }
  try
    Result := TMetro5HtmlObject.Create(Metro5Helper, 'div', TM5SClassType.Row);
    // Sinistra
    Result.AddSimpleTag('div', '', True, ['col-sm-12', 'col-md-12', 'col-lg-6']);
    LItem := Result.SelectedItem;
    LItem.AddSimpleTag('div', '', True, ['m-portlet', 'm-portlet--half-height', 'm-portlet--rounded']);
    LItem := LItem.SelectedItem;
    LItem.AddStyle(THtmlStyle.BackGroundColor, '#214a8d');
    LItem.AddStyle(THtmlStyle.color, '#fff');
    LItem.AddSimpleTag('div', '', True, ['m-portlet__body']);
    LItem := LItem.SelectedItem;
    LItem.AddStyle(THtmlStyle.BackGroundColor, '#214a8d');
    LItem.AddStyle(THtmlStyle.color, '#fff');
    LItem.AddStyle(THtmlStyle.PaddingTop, '10px');
    LNDLeftBody := LItem; // .SelectedItem.SelectedItem;
    LImage := TJanuaHtmlImage.Create(Metro5Helper); // Cre l'immagine per il Logo LND
    LImage.Src := '/?page=resources&file=logo_liguria150.png';
    LNDLeftBody.Add(LImage);

    // Destra
    Result.AddSimpleTag('div', '', True, ['col-sm-12', 'col-md-12', 'col-lg-6']);
    LItem := Result.SelectedItem;
    LItem.AddSimpleTag('div', '', True, ['m-portlet', 'm-portlet--half-height', 'm-portlet--rounded']);
    LItem := LItem.SelectedItem;
    LItem.AddStyle(THtmlStyle.BackGroundColor, '#214a8d');
    LItem.AddStyle(THtmlStyle.color, '#fff');
    LItem.AddSimpleTag('div', '', True, ['m-portlet__body']);
    LItem := LItem.SelectedItem;
    LItem.AddStyle(THtmlStyle.BackGroundColor, '#214a8d');
    LItem.AddStyle(THtmlStyle.color, '#fff');

    (* <div class="col-sm-12 col-md-12 col-lg-6">
      <div class="m-portlet m-portlet--full-height  m-portlet--rounded" style="background-color:#214a8d; color:#fff">
      <div class="m-portlet__body" style="background-color:#214a8d; color:#fff">
      <p>
      Via Dino Col 4<br>16149 Genova (GE)<br>Telefono: 0108398735/41 <br>Pronto A.I.A. 3355776689<br>E-mail: crlnd.liguria01@figc.it<br>
      </p>
      </div>
      </div>
      </div> *)

    LNDRightBody := LItem; // SelectedItem.SelectedItem;
    LText := 'Via Dino Col 4<br>16149 Genova (GE)<br>Telefono: 0108398735/41 <br>Pronto A.I.A. 3355776689<br>';
    LText := LText + 'E-mail: crlnd.liguria01@figc.it<br>';
    LNDRightBody.AddSimpleTag('p', LText, True);
    LNDRightBody.SelectedItem.AddStyle(THtmlStyle.LineHeigth, '200%');
  except
    on e: Exception do
      raise Exception.Create('TLNDFactory.GetFooterLeft: ' + e.Message);
  end;

end;

function TDilettantissimoFactory.GetFooterRight: IJanuaHtmlObject;
begin

end;

function TDilettantissimoFactory.GetNewsWidget: IJanuaHtmlObject;
begin

end;

function TDilettantissimoFactory.GetWebSession(aFootballFactory: IJanuaServerFootballFactory;
  aCmsFactory: IJanuaServerCmsFactory; aSystemFactory: IJanuaServerSystemFactory; aWebManager: IWebManager)
  : IFootballWebSession;
var
  aFactory: IFootballFactory;
begin
  Guard.CheckNotNull(aFootballFactory, 'aFootballFactory is nil');
  Guard.CheckNotNull(aCmsFactory, 'TDilettantissimoFactory.GetWebSession aStorage is nil');
  // Guard.CheckNotNull(aSystemFactory, 'TDilettantissimoFactory.GetWebSession aStorage is nil');
  aFactory := TDilettantissimoFootballFactory.Create(aFootballFactory, aCmsFactory, aSystemFactory);
  Result := TDilettantissimoWebSession.Create(aFactory, aWebManager);
end;

{ TDilettantissimoController }

function TDilettantissimoController.GetArgumentPage(aID: integer): string;
begin

end;

function TDilettantissimoController.GetArticlePage(aID: Int64): string;
begin

end;

function TDilettantissimoController.GetArticlesList(aArgumentID: integer): Janua.Html.Intf.IJanuaHtmlObject;
begin

end;

function TDilettantissimoController.GetHome(aMainCategory, aCategory, aLimit, aPage: Word): string;
var
  p: IFootballPage;
  ma: IMainArguments;
  ar: IArguments;
  avi, art: IArticles;
begin
  self.GetFootballSettings.MainArgumentID := aMainCategory;
  self.GetFootballSettings.ArgumentID := aCategory;
  // Carico gli argomenti dalla funzione Setup.
  SetupArguments(ma, ar);
  // Apro la lista degli articoli in base alla selezione di Main e Category.
  CmsServer.OpenArticles(aMainCategory, aCategory, aLimit, aPage, True);
  avi := JOrm.Cms.Articles.Impl.TArticleFactory.CreateRecordset('avi', nil, nil);
  avi.Assign(CmsServer.Articles);
  // Apro la lista degli articoli in base alla selezione di Main e Category.
  CmsServer.OpenArticles(aMainCategory, aCategory, aLimit, aPage, False);
  art := JOrm.Cms.Articles.Impl.TArticleFactory.CreateRecordset('art', nil, nil);
  art.Assign(CmsServer.Articles);
  // 1 = comunicati, 2 = circolari, 3 = news, 4 = urgenze
  p := FFootballFactory.CreateHomePage(ma, ar, avi, art);
  Result := p.AsHtml;
end;

end.
