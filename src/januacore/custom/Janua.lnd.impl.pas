unit Janua.lnd.impl;

interface

uses
  System.SysUtils,
  Janua.lnd.Intf, Janua.Orm.Intf, Janua.Http.Intf,
  // Html
  Janua.Html.Types, Janua.Html.Intf, Janua.Html.Metro5.Types,
  Janua.Html.Builder.Intf, Janua.Html.Metro5.Intf,
  // Football
  Janua.Football.Web.Intf, Janua.Football.Intf,
  // Orm
  JOrm.Cms.Articles.Intf, JOrm.Cms.MainArguments.Intf, JOrm.Cms.Arguments.Intf,
  JOrm.Football.MatchDay.Intf, JOrm.Football.Leagues.Intf,
  JOrm.Football.RankingTable.Intf, JOrm.Football.GoalRanking.Intf,
  JOrm.Football.Matches.Intf,
  // Server ...........................................................................................
  Janua.Football.Server.Intf, Janua.Cms.Server.Intf, Janua.Football.Web.impl,
  Janua.System.Server.Intf,
  Janua.Html.Bootstrap4.Builder;

Type
  TLNDPage = class(TInterfacedObject, ILndPage)
  protected
    FMain: IMainArguments;
    FArg: IArguments;
    p: IMetro5Page;
    o: IJanuaHtmlObject;
    b: IJanuaHtmlObject;
    // Metro 5 Grid Item è il 'Body' della nostra pagina web....................................
    // Main Menu
    function GetMainArgumentsSet: IMainArguments;
    procedure SetMainArgumentsSet(Value: IMainArguments);
    // Sub Menu
    function GetArgumentsSet: IArguments;
    procedure SetArgumentsSet(Value: IArguments);
    procedure GeneratePage;
    function GetFootballMenu: IJanuaHtmlObject;
  public
    Constructor Create(aMain: IMainArguments; aArgs: IArguments); overload; Virtual;
    destructor Destroy; override;
    function AsHtml: string; Virtual;
  public
    property MainArgumentsSet: IMainArguments read GetMainArgumentsSet write SetMainArgumentsSet;
    property ArgumentsSet: IArguments read GetArgumentsSet write SetArgumentsSet;
  end;

Type
  TLndHomePage = class(TLNDPage, ILndHomePage, ILndPage, IFootballPage)
  protected
    FNews: IArticles;
    FComunicati: IArticles; // Comunicati & Norme = 1 Posizione 1a.
    FNorme: IArticles;
    FUrgenze: IArticles;
  private
    // News
    function GetNewsSet: IArticles;
    procedure SetNewsSet(Value: IArticles);
    // Comunicati
    function GetComunicatiSet: IArticles;
    procedure SetComunicatiSet(Value: IArticles);
    // Norme
    function GetNormeSet: IArticles;
    procedure SetNormeSet(Value: IArticles);
    // Urgenze
    function GetUrgenzeSet: IArticles;
    procedure SetUrgenzeSet(Value: IArticles);
    // Pagina Finale ..................................................
  public
    function GetCarousel: IJanuaHtmlObject;
    function GetNewsList: IJanuaHtmlObject; // 2
    function GetNormeList: IJanuaHtmlObject; // 3
    function GetComunicatiList: IJanuaHtmlObject; // 1
    function GetUrgenzeList: IJanuaHtmlObject; // 4
    function AsHtml: string; override;
    Constructor Create(aMain: IMainArguments; aArgs: IArguments); override;
  public
    property UrgenzeSet: IArticles read GetUrgenzeSet write SetUrgenzeSet;
    property NormeSet: IArticles read GetNormeSet write SetNormeSet;
    property ComunicatiSet: IArticles read GetComunicatiSet write SetComunicatiSet;
    property NewsSet: IArticles read GetNewsSet write SetNewsSet;
  end;

type
  TLndArticlePage = class(TLNDPage, ILndArticlePage)
  strict private
    FArt: IArticle;
  protected
    function GetArticle: IArticle;
    procedure SetArticle(Value: IArticle);
  public
    function GetArticleObject: IJanuaHtmlObject;
    function GetAttachedObject: IJanuaHtmlObject;
  public
    Constructor Create(aMain: IMainArguments; aArgs: IArguments; aArticle: IArticle); overload;
  public
    // News
    property Article: IArticle read GetArticle write SetArticle;
  public
    function AsHtml: string; override;
  end;

type
  TLndArgumentPage = class(TLNDPage, ILndArgumentPage)
  strict private
    FArt: IArticles;
  protected
    function GetArticle: IArticles;
    procedure SetArticle(Value: IArticles);
  public
    function GetArticleObject: IJanuaHtmlObject;
  public
    Constructor Create(aMain: IMainArguments; aArgs: IArguments; aArticles: IArticles); overload;
  public
    // News
    property Article: IArticles read GetArticle write SetArticle;
  public
    function AsHtml: string; override;
  end;

type
  TLNDController = class(TFootballController, IFootballController)
  private
    function GetLiveScoreFrame: string;
  public
    { Public declarations }
    function GetHome(aMainCategory, aCategory, aLimit, aPage: Word): string;
    function GetArticlesList(aArgumentID: integer): Janua.Html.Intf.IJanuaHtmlObject;
    function GetArticlePage(aID: Int64): string;
    function GetArgumentPage(aID: integer): string;
    function GetPage404(aException: Exception): string;
    function GetFrame404(aException: Exception): string;
    function GetErrorPage(const aErrorMessage: string): string;
    function GetMatchesFrame: string;
    function GetGoalRankingFrame: string;
    function GetNextMatchesFrame: string;
    function GetRankingFrame: string;
    function GetDynamicRankingFrame: string;

  end;

type
  TLNDWebSession = class(TFootballWebSession, IFootballWebSession)
  public
    // {$IF Defined(WEBBROKER)}

    // {$ENDIF WEBBROKER}
  end;

Type
  TLNDFootballFactory = class(TCustomFootballFactory, IFootballFactory)
  private
    function LNDCreateHomePage(aMain: IMainArguments; aArgs: IArguments): ILndHomePage;
  public
    function CreateHomePage(aMainArg: IMainArguments; aArgs: IArguments; ANews, aVideo: IArticles)
      : IFootballPage; override;
    function GetController(const aServer: IJanuaServerFootball; aServerCms: IJanuaServerCms;
      aServerSystem: IJanuaServerSystem): IFootballController; override;
    function GetAttachmentTable(aArticle: IArticle): IHtmlTable;
  end;

Type
  TLNDFactory = class(TInterfacedObject, IFootballWebFactory)
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
  LNDFactory: IFootballWebFactory;

implementation

uses
  System.Math, Janua.Core.Functions, Janua.Application.Framework,
  Janua.Html.Metro5.impl, Janua.Metro5.Builder, Janua.Html.Metro5.Pages,
  JOrm.Cms.Arguments.impl, Janua.Cloud.impl,
  Janua.Metro5.Builder.Intf, Spring, Janua.Html.impl, Janua.Core.Types;

{ TLndHomePage }

function TLndHomePage.AsHtml: string;
var
  por: IMetro5Portlet;
  aImage: IJanuaHtmlImage;
  row1, row2: IJanuaHtmlObject;
  col11, col12, col13, col14: IJanuaHtmlObject;
  col21, col22, col23, col24: IJanuaHtmlObject;
  LCss: IJanuaCssObject;
begin
  inherited;
  b.AddSimpleTag('div', '', True, ['row', 'j-row1']);
  row1 := b.SelectedItem;
  // Colonna 8   SLIDER
  row1.AddSimpleTag('div', '', True, ['col-xl-7']);
  col11 := row1.SelectedItem;
  col11.CommentBefore := 'Begin::Slider';
  col11.CommentAfter := 'End::Slider';

  // Colonna 4   URGENZE
  row1.AddSimpleTag('div', '', True, ['col-xl-5']);
  col12 := row1.SelectedItem;
  if self.FUrgenze.RecordCount > 0 then
    col12.Add(self.GetUrgenzeList) // URGENZE LIST = 4
  else
    col12.Add(LNDFactory.GetBannersWidget);

  // in Col1 inserisco inizialmente uno Slider di 'Test'....................
  col11.Add(GetCarousel);
  // ELABORAZIONE DELLA SECONDA RIGA .......................................
  b.AddSimpleTag('div', '', True, ['row', 'j-row-2']);
  row2 := b.SelectedItem;
  LCss := p.HeadSection.CssStyle.AddCssByClasses(['j-row-2']);
  LCss.AddStyle(THtmlStyle.MarginTop, '20px');

  // Colonna 2.2 (4) COMUNICATI (1a della riga)
  row2.AddSimpleTag('div', '', True, ['col-xl-4']);
  col22 := row2.SelectedItem;
  col22.Add(self.GetComunicatiList);
  // Colonna 2.1 (4)  NEWS Seconda della Riga .............
  row2.AddSimpleTag('div', '', True, ['col-xl-4']);
  col21 := row2.SelectedItem;
  col21.Add(GetNewsList);
  // Colonna 2.3 (4)   Norme Terza della Riga .............
  row2.AddSimpleTag('div', '', True, ['col-xl-4']);
  col23 := row2.SelectedItem;
  // Sostituisco le inutili norme con un GetNewsWidget
  col23.Add(LNDFactory.GetNewsWidget);
  // col23.Add(self.GetNormeList);
  // Terminato il 'riempimento' ottengo come risultato il 'Build' della Home-Page.
  Result := p.AsHtml;

end;

constructor TLndHomePage.Create(aMain: IMainArguments; aArgs: IArguments);
begin
  inherited;
  FNews := nil;
  FComunicati := nil;
  FNorme := nil;
  FUrgenze := nil;

end;

function TLndHomePage.GetCarousel: IJanuaHtmlObject;
var
  LB: IHtmlBuilder;
begin
  LB := TBootStrap4BuilderFactory.GetSliderArticles(Metro5Helper, self.FNews);
  (LB as IHtmlSliderBuilder).HasTitle := True;
  Result := LB.GetElement
end;

function TLndHomePage.GetNormeList: IJanuaHtmlObject;
// Codice di Generazione delle Norme del sito di LND
var
  LP: IHtmlBuilder;
  LS: TArticlesSettings;
  LPH: IMetro5PortletHead;
begin
  Guard.CheckNotNull(FNorme, 'TLndHomePage.GetNormeList: IJanuaHtmlObject FCI is null');
  self.FNorme.AuthorText := 'LND Liguria';
  LS := TMetro5BuilderFactory.GetArticlesSettings(self.FNorme);
  LS.Title := 'Norme';
  LS.Description := '';
  LS.IconType := TMetro5IconType.jmiCalendar;

  // Modificato Icon color da Accent a Light  ** 2019-040 Portlete Head Home Page  **
  LS.IconColor := TM5StateColorsStyle.m5sLight; // Icon Color
  LS.FontColor := TM5StateColorsStyle.m5sLight; // Font Color
  // -----------------------------------------------------------------------------------------------

  LP := TMetro5BuilderFactory.GetArticlesPortlet(LS, self.FNorme);
  Result := LP.GetElement;

  // Specifiche 2019-040 Aggiunto stile colore ad Head. ** 2019-040 Portlete Head Home Page  **
  LPH := (Result as IMetro5Portlet).Head;
  LPH.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
  LPH.AddStyle(THtmlStyle.MarginBottom, '15px');
  // -----------------------------------------------------------------------------------------------

end;

function TLndHomePage.GetNormeSet: IArticles;
begin
  Result := FNorme
end;

function TLndHomePage.GetComunicatiList: IJanuaHtmlObject;
// Codice di Generazione dei Comunicati del sito di LND
var
  LP: IHtmlBuilder;
  LS: TArticlesSettings;
  LPH: IMetro5PortletHead;
begin
  self.FComunicati.AuthorText := 'LND Liguria';
  LS := TMetro5BuilderFactory.GetArticlesSettings(self.FComunicati);
  LS.Title := 'Comunicati & Circolari';
  LS.Description := '';
  LS.IconType := TMetro5IconType.jmiCalendar;
  LS.IconColor := TM5StateColorsStyle.m5sAccent;

  // Modificato Icon color da Accent a Light  ** 2019-040 Portlete Head Home Page  **
  LS.IconColor := TM5StateColorsStyle.m5sLight; // Icon Color
  LS.FontColor := TM5StateColorsStyle.m5sLight; // Font Color
  // -----------------------------------------------------------------------------------------------

  LP := TMetro5BuilderFactory.GetArticlesPortlet(LS, self.FComunicati);
  Result := LP.GetElement;

  // Specifiche 2019-040 Aggiunto stile colore ad Head. ** 2019-040 Portlete Head Home Page  **
  LPH := (Result as IMetro5Portlet).Head;
  LPH.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
  LPH.AddStyle(THtmlStyle.MarginBottom, '15px');
  // -----------------------------------------------------------------------------------------------

end;

function TLndHomePage.GetComunicatiSet: IArticles;
begin
  Result := self.FComunicati
end;

function TLndHomePage.GetNewsList: IJanuaHtmlObject;
var
  LP: IHtmlBuilder;
  LS: TArticlesSettings;
  LPH: IMetro5PortletHead;
begin
  self.FNews.AuthorText := 'LND Liguria';
  LS := TMetro5BuilderFactory.GetArticlesSettings(self.FNews);
  LS.Title := 'Ultime Notizie';
  LS.Description := '';
  LS.IconType := TMetro5IconType.FutBol;
  LS.IconColor := TM5StateColorsStyle.m5sAccent;
  LS.FontColor := TM5StateColorsStyle.m5sAccent;
  // Modificato Icon color da Accent a Light  ** 2019-040 Portlete Head Home Page  **
  LS.IconColor := TM5StateColorsStyle.m5sLight; // Icon Color
  LS.FontColor := TM5StateColorsStyle.m5sLight; // Font Color
  // -----------------------------------------------------------------------------------------------

  LP := TMetro5BuilderFactory.GetArticlesPortlet(LS, self.FNews);
  Result := LP.GetElement;

  // Specifiche 2019-040 Aggiunto stile colore ad Head. ** 2019-040 Portlete Head Home Page  **
  LPH := (Result as IMetro5Portlet).Head;
  LPH.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
  LPH.AddStyle(THtmlStyle.MarginBottom, '15px');
  // -----------------------------------------------------------------------------------------------
end;

function TLndHomePage.GetNewsSet: IArticles;
begin
  Result := self.FNews;
end;

function TLndHomePage.GetUrgenzeList: IJanuaHtmlObject;
var
  LP: IHtmlBuilder;
  LS: TArticlesSettings;
begin
  self.FUrgenze.AuthorText := 'LND Liguria';
  LS := TMetro5BuilderFactory.GetArticlesSettings(FUrgenze);
  LS.Title := 'Urgenti';
  LS.Description := '';
  LS.IconType := TMetro5IconType.jmiBell;
  LS.IconColor := TM5StateColorsStyle.m5sDanger;
  LP := TMetro5BuilderFactory.GetArticlesPortlet(LS, self.FUrgenze);
  Result := LP.GetElement;

end;

function TLndHomePage.GetUrgenzeSet: IArticles;
begin
  Result := self.FUrgenze
end;

procedure TLndHomePage.SetNormeSet(Value: IArticles);
begin
  FNorme := Value
end;

procedure TLndHomePage.SetComunicatiSet(Value: IArticles);
begin
  self.FComunicati := Value
end;

procedure TLndHomePage.SetNewsSet(Value: IArticles);
begin
  self.FNews := Value
end;

procedure TLndHomePage.SetUrgenzeSet(Value: IArticles);
begin
  self.FUrgenze := Value
end;

{ TLndArticlePage }

function TLndArticlePage.AsHtml: string;
var
  // Metro 5 Grid Item è il 'Body' della nostra pagina web....................................
  b: IJanuaHtmlObject;
  por: IMetro5Portlet;
  row1, row2: IJanuaHtmlObject;
  col11, col12, col13, col14: IJanuaHtmlObject;
  col21, col22, col23, col24: IJanuaHtmlObject;
  aFrame: IJanuaHtmlObject;
begin
  inherited;
  try
    b := (p.Body as IMetro5Body).Content.Body;
    b.AddSimpleTag('div', '', True, ['row']);
    row1 := b.SelectedItem;
    // Colonna 7
    row1.AddSimpleTag('div', '', True, ['col-xl-8']);
    col11 := row1.SelectedItem;
    // Colonna 5
    row1.AddSimpleTag('div', '', True, ['col-xl-4']);
    col12 := row1.SelectedItem;
    col11.Add(GetArticleObject);
    col12.Add(self.GetAttachedObject);
    // in Col1 inserisco inizialmente uno Slider di 'Test'....................
    Result := p.AsHtml;
  except
    on e: Exception do
      raise Exception.Create('TLndArticlePage.AsHtml ' + e.Message);

  end;
end;

constructor TLndArticlePage.Create(aMain: IMainArguments; aArgs: IArguments; aArticle: IArticle);
begin
  self.Create(aMain, aArgs);
  Guard.CheckNotNull(aArticle, self.ClassName + '.Create aArticle nil');
  self.FArt := aArticle;

end;

function TLndArticlePage.GetArticle: IArticle;
begin
  Result := self.FArt;
end;

function TLndArticlePage.GetArticleObject: IJanuaHtmlObject;
var
  aHead: IMetro5PortletHead;
  aPortlet: IMetro5Portlet;
  aImage: IJanuaHtmlImage;
  s, s1: string;
begin
  aHead := TMetro5PortletHead.Create(Metro5Helper);
  aHead.Title := self.FArt.Title.AsString;
  aHead.SubTitle := self.FArt.Abstract.AsString;
  aPortlet := TMetro5Portlet.Create(Metro5Helper, aHead);
  aImage := TJanuaHtmlImage.Create(Metro5Helper);
  aImage.Alt := self.FArt.Title.AsString;
  aImage.Src := self.FArt.MainImageUrl;
  aImage.AddParam('width', '100%');
  aImage.AddParam('height', 'auto');
  aPortlet.Content.Add(aImage);
  // <div class="m-content"> Inner page content goes here			    </div>
  aPortlet.Rounded := True;
  aPortlet.Bordered := True;
  s1 := FArt.Text.AsString;
  s := StringReplace(s1, '&nbsp;', ' ', [rfReplaceAll, rfIgnoreCase]);
  aPortlet.Content.AddSimpleTag('div', s, True, ['m-content']);
  Result := aPortlet;
end;

function TLndArticlePage.GetAttachedObject: IJanuaHtmlObject;
var
  aHead: IMetro5PortletHead;
  aPortlet: IMetro5Portlet;
  aAttach, LMail, LLink: IJanuaHtmlObject;
  tmp: string;
begin
  ExecProc(
    procedure
    begin
      aHead := TMetro5PortletHead.Create(Metro5Helper);
      aHead.Title := self.FArt.Title.AsString;
      // aHead.SubTitle := self.FArt.Abstract.AsString;
      aPortlet := TMetro5Portlet.Create(Metro5Helper, aHead);
      if self.FArt.MainAttachId.AsLargeInt > 0 then
      begin
        aPortlet.Content.AddSimpleTag('center', '', True, []);
        aPortlet.Content.SelectedItem.AddSimpleTag('a', '<span> Vedi Allegato </span>', True,
          ['btn btn-danger', 'm-btn m-btn--custom', 'm-btn--icon', 'm-btn--pill', 'm-btn--air']);
        aAttach := aPortlet.Content.SelectedItem.SelectedItem;
        aAttach.AddParam('href', FArt.GenerateAttachUrl);
        aAttach.AddStyle(THtmlStyle.MarginBottom, '10px');
      end;
      if FArt.Attachments.RecordCount > 0 then
      begin
        LMail := TJanuaHtmlObject.Create(JanuaHtmlHelper);
        LMail.tag := 'div';
        LMail.AddSimpleTag('p', '   ');
        LMail.AddSimpleTag('p', '   ');
        LMail.AddSimpleTag('h3', 'Elenco Altri Allegati');
        LMail.AddSimpleTag('p', '   ');
        LMail.AddSimpleTag('table');
        LMail.SelectedItem.AddClasses(['table', 'table-striped', 'm-table']);
        FArt.Attachments.First;
        while not FArt.Attachments.Eof do
        begin
          LMail.SelectedItem.AddSimpleTag('tr');
          LMail.SelectedItem.SelectedItem.AddSimpleTag('td');
          LLink := TCloudFactory.CreateFileLinkObject(FArt.Attachments.FileId.AsLargeInt,
            FArt.Attachments.Description.AsString, FArt.Attachments.Extension.AsString);
          LMail.SelectedItem.SelectedItem.SelectedItem.Add(LLink);
          FArt.Attachments.Next;
        end;
        aPortlet.Content.SelectedItem.Add(LMail)
      end
      else
      begin
        if (self.FArt.MainAttachId.AsLargeInt > 0) then
          aPortlet.Content.SelectedItem.Add(LNDFactory.GetNewsWidget);
      end;
      aPortlet.Rounded := True;
      aPortlet.Bordered := True;
      // aPortlet.Content.AddSimpleTag('div', self.FArt.Text.AsString, True, ['m-content']);
    end, 'GetAttachedObject', self);
  Result := aPortlet;
end;

procedure TLndArticlePage.SetArticle(Value: IArticle);
begin
  self.FArt := Value
end;

{ TLndArgumentPage }

function TLndArgumentPage.AsHtml: string;
var
  b: IJanuaHtmlObject;
  por: IMetro5Portlet;
  row1, row2: IJanuaHtmlObject;
  col11, col12, col13, col14: IJanuaHtmlObject;
  col21, col22, col23, col24: IJanuaHtmlObject;
  aFrame: IJanuaHtmlObject;
begin
  inherited;
  b := (p.Body as IMetro5Body).Content.Body;
  b.AddSimpleTag('div', '', True, ['row']);
  row1 := b.SelectedItem;
  // Colonna 8
  row1.AddSimpleTag('div', '', True, ['col-xl-7']);
  col11 := row1.SelectedItem;
  // Colonna 4
  row1.AddSimpleTag('div', '', True, ['col-xl-5']);
  col12 := row1.SelectedItem;
  col11.Add(GetArticleObject);
  col12.Add(LNDFactory.GetNewsWidget);
  // in Col1 inserisco inizialmente uno Slider di 'Test'....................
  Result := p.AsHtml;

end;

constructor TLndArgumentPage.Create(aMain: IMainArguments; aArgs: IArguments; aArticles: IArticles);
begin
  self.Create(aMain, aArgs);
  Guard.CheckNotNull(aArticles, 'TLndArgumentPage.Create aArticles nil');
  FArt := aArticles;
end;

function TLndArgumentPage.GetArticle: IArticles;
begin
  Result := self.FArt
end;

function TLndArgumentPage.GetArticleObject: IJanuaHtmlObject;
var
  LP: IHtmlBuilder;
  LS: TArticlesSettings;
  LPH: IMetro5PortletHead;
{$IFDEF JANUA_DEBUG} tmp: integer; {$ENDIF }
begin
  self.FArt.AuthorText := 'LND Liguria';
  LS := TMetro5BuilderFactory.GetArticlesSettings(self.FArt);
  LS.Title := self.ArgumentsSet.Argument_des.AsString;
  // LS.Title := 'Ultime Notizie';
  LS.Description := '';
  LS.IconType := TMetro5IconType.FutBol;
  LS.IconColor := TM5StateColorsStyle.m5sAccent;
  LS.FontColor := TM5StateColorsStyle.m5sAccent;
{$IFDEF JANUA_DEBUG} tmp := FArt.RecordCount; {$ENDIF }
  {
    LP := TMetro5BuilderFactory.GetArticlesPortlet(LS, self.FArt);
    Result := LP.GetElement;
  }
  // Modificato Icon color da Accent a Light  ** 2019-040 Portlete Head Home Page  **
  LS.IconColor := TM5StateColorsStyle.m5sLight; // Icon Color
  LS.FontColor := TM5StateColorsStyle.m5sLight; // Font Color
  // -----------------------------------------------------------------------------------------------

  LP := TMetro5BuilderFactory.GetArticlesPortlet(LS, self.FArt);
  Result := LP.GetElement;

  // Specifiche 2019-040 Aggiunto stile colore ad Head. ** 2019-040 Portlete Head Home Page  **
  LPH := (Result as IMetro5Portlet).Head;
  LPH.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
  LPH.AddStyle(THtmlStyle.MarginBottom, '15px');
  // -----------------------------------------------------------------------------------------------
end;

procedure TLndArgumentPage.SetArticle(Value: IArticles);
begin
  self.FArt := Value
end;

{ TDilettantissimoFactory }

function TLNDFactory.GetWebSession(const aFactory: IFootballFactory; aWebManager: IWebManager): IFootballWebSession;
begin
  Guard.CheckNotNull(aFactory, 'TDilettantissimoFactory.GetWebSession aController is nil');
  Result := TLNDWebSession.Create(aFactory, aWebManager);
end;

function TLNDFactory.GetWebSession(aFootballFactory: IJanuaServerFootballFactory; aCmsFactory: IJanuaServerCmsFactory;
aSystemFactory: IJanuaServerSystemFactory; aWebManager: IWebManager): IFootballWebSession;
var
  aFactory: IFootballFactory;
begin
  Guard.CheckNotNull(aFootballFactory, 'aFootballFactory is nil');
  Guard.CheckNotNull(aCmsFactory, 'TDilettantissimoFactory.GetWebSession aStorage is nil');
  // Guard.CheckNotNull(aSystemFactory, 'TDilettantissimoFactory.GetWebSession aStorage is nil');
  aFactory := TLNDFootballFactory.Create(aFootballFactory, aCmsFactory, aSystemFactory);
  Result := TLNDWebSession.Create(aFactory, aWebManager);
end;

{ TDilettantissimoController }

function TLNDController.GetArgumentPage(aID: integer): string;
var
  p: Janua.lnd.Intf.ILndArgumentPage;
  ma: IMainArguments;
  ar: IArguments;
  at: IArticles;
  Ltmp: integer;
begin
  // Test completo menu ORM da Football Academy.........................................................
  self.GetFootballSettings.ArgumentID := aID;
  SetupArguments(ma, ar);
  at := CmsServer.GetArticlesList(0, aID, 6, 1);
  Ltmp := at.RecordCount;
  // 1 = comunicati, 2 = Norme, 3 = news, 4 = urgenze
  p := TLndArgumentPage.Create(ma, ar, at); // .CreateHomePage(ma, ar);
  Result := p.AsHtml
end;

function TLNDController.GetArticlePage(aID: Int64): string;
var
  p: Janua.lnd.Intf.ILndArticlePage;
  ma: IMainArguments;
  ar: IArguments;
  at: IArticle;
  LCount: Word;
begin
  self.SetupArguments(ma, ar);
  at := self.CmsServer.GetArticle(aID, LCount);
  // 1 = comunicati, 2 = Norme, 3 = news, 4 = urgenze
  p := TLndArticlePage.Create(ma, ar, at); // .CreateHomePage(ma, ar);
  Result := p.AsHtml
end;

function TLNDController.GetArticlesList(aArgumentID: integer): Janua.Html.Intf.IJanuaHtmlObject;
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

function TLNDController.GetDynamicRankingFrame: string;
begin

end;

function TLNDController.GetErrorPage(const aErrorMessage: string): string;
begin

end;

function TLNDController.GetFrame404(aException: Exception): string;
begin

end;

function TLNDController.GetGoalRankingFrame: string;
begin

end;

function TLNDController.GetHome(aMainCategory, aCategory, aLimit, aPage: Word): string;
var
  LF: IFootballPage;
  LP: Janua.lnd.Intf.ILndHomePage;
  LMA: IMainArguments;
  LARG: IArguments;
  LART: IArticles;
begin
  Guard.CheckNotNull(self.GetFootballSettings, self.ClassName + '.GetHome Settings is nil');
  try
    // Specifiche 2019-017 se la main Category è 0 imposto come valore 1
    self.GetFootballSettings.MainArgumentID := IfThen(aMainCategory = 0, 1, aMainCategory);
    self.GetFootballSettings.ArgumentID := aCategory;
    // Carico gli argomenti dalla funzione Setup.
    SetupArguments(LMA, LARG);
    // Apro la lista degli articoli in base alla selezione di Main e Category.
    // non in Home pero.....................................................
    // CmsServer.OpenArticles(aMainCategory, aCategory, aLimit, aPage, True);
    //
    Guard.CheckNotNull(LMA, self.ClassName + '.GetHome LARG is nil');
    Guard.CheckNotNull(LARG, self.ClassName + '.GetHome LARG is nil');
    LF := FFootballFactory.CreateHomePage(LMA, LARG, nil, nil);
    if supports(LF, ILndHomePage, LP) then
    begin

      // 1 = comunicati, 2 = Norme, 3 = news, 4 = urgenze

      // NewsSet
      // Specifiche 2019-017 se la main Category è 0 imposto come valore 1
      // LE News vengono inserite in base alla categoria per ora le prendo su 'tutte'.
      // LART := CmsServer.GetArticlesListPos(aMainCategory, 2, aLimit, aPage);
      LART := CmsServer.GetArticlesListPos(0, 2, aLimit, aPage);
      Guard.CheckNotNull(LART, self.ClassName + '.GetLNDHome NewsSet nil');
      LP.NewsSet := LART;
      Guard.CheckNotNull(LP.NewsSet, self.ClassName + '.GetLNDHome NewsSet nil');
      // ComunicatiSet
      LART := CmsServer.GetArticlesListPos(aMainCategory, 1, aLimit, aPage);
      Guard.CheckNotNull(LART, self.ClassName + '.GetLNDHome NewsSet nil');
      LP.ComunicatiSet := LART;
      Guard.CheckNotNull(LP.ComunicatiSet, self.ClassName + '.ComunicatiSet NewsSet nil');
      // NormeSet
      LART := CmsServer.GetArticlesListPos(aMainCategory, 3, aLimit, aPage);
      Guard.CheckNotNull(LART, self.ClassName + '.GetLNDHome NewsSet nil');
      LP.NormeSet := LART;
      Guard.CheckNotNull(LP.NormeSet, self.ClassName + '.ComunicatiSet NewsSet nil');
      // UrgenzeSet
      LART := CmsServer.GetArticlesListPos(aMainCategory, 4, aLimit, aPage);
      Guard.CheckNotNull(LART, self.ClassName + '.GetLNDHome NewsSet nil');
      LP.UrgenzeSet := LART;

      Result := LP.AsHtml;
    end
    else
      Result := '';
  except
    on e: Exception do
      raise Exception.Create(self.ClassName + '.GetLNDHome ' + e.Message);
  end;

end;

function TLNDController.GetLiveScoreFrame: string;
begin

end;

function TLNDController.GetMatchesFrame: string;
begin

end;

function TLNDController.GetNextMatchesFrame: string;
begin

end;

function TLNDController.GetPage404(aException: Exception): string;
begin

end;

function TLNDController.GetRankingFrame: string;
begin

end;

function TLNDFootballFactory.CreateHomePage(aMainArg: IMainArguments; aArgs: IArguments; ANews, aVideo: IArticles)
  : IFootballPage;
begin
  Result := self.LNDCreateHomePage(aMainArg, aArgs)
end;

function TLNDFootballFactory.GetAttachmentTable(aArticle: IArticle): IHtmlTable;
var
  aBuilder: IHtmlTableBuilder;
  aColumn: THtmlTableTableColumn;
begin
  Guard.CheckNotNull(aArticle, 'TDilettantissimoFactory.GetRankingTable aRanking is nil');
  aBuilder := TMetro5TableBuilder.Create(aArticle.Attachments);
  Result := aBuilder.GetElement as IHtmlTable;
  aColumn := THtmlTableTableColumn.Create(aArticle.Attachments.Description, 'Allegato');
  aBuilder.AddColumin(aColumn);

end;

function TLNDFootballFactory.GetController(const aServer: IJanuaServerFootball; aServerCms: IJanuaServerCms;
aServerSystem: IJanuaServerSystem): IFootballController;
begin
  Guard.CheckNotNull(aServer, 'TDilettantissimoFactory.GetController aServer is nil');
  Guard.CheckNotNull(aServerCms, 'TDilettantissimoFactory.GetController aCmsStorage is nil');
  try
    Result := TLNDController.Create(aServer, aServerCms, aServerSystem, self);
  except
    on e: Exception do
      raise Exception.Create('TLNDFootballFactory.GetController ' + e.Message);
  end;
end;

function TLNDFactory.GetBannersWidget: IJanuaHtmlObject;
var
  aImage: IJanuaHtmlImage;
begin
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'div');
  // -----------------------------------------------------------------------------------------------
  aImage := TJanuaHtmlImage.Create(Metro5Helper);
  aImage.Alt := 'Area Società';
  aImage.AddParam('width', '100%');
  aImage.AddParam('height', 'auto');
  aImage.Src := '/?page=resources&file=area_societa.jpg';
  aImage.AddStyle(THtmlStyle.MarginTop, '5px');
  aImage.AddStyle(THtmlStyle.MarginBottom, '7px');
  Result.AddSimpleTag('a');
  Result.SelectedItem.AddParam('href', 'https://iscrizioni.lnd.it');
  Result.SelectedItem.Add(aImage);

  aImage := TJanuaHtmlImage.Create(Metro5Helper);
  aImage.Alt := 'Assicurazioni';
  aImage.AddParam('width', '100%');
  aImage.AddParam('height', 'auto');
  aImage.Src := '/?page=resources&file=assicurazioni.jpg';
  aImage.AddStyle(THtmlStyle.MarginBottom, '7px');
  Result.AddSimpleTag('a');
  Result.SelectedItem.AddParam('href', 'https://www.lnd.it/it/servizi/assicurazioni');
  Result.SelectedItem.Add(aImage);

  aImage := TJanuaHtmlImage.Create(Metro5Helper);
  aImage.Alt := 'Modulistica';
  aImage.AddParam('width', '100%');
  aImage.AddParam('height', 'auto');
  aImage.Src := '/?page=resources&file=modulistica.jpg';
  aImage.AddStyle(THtmlStyle.MarginBottom, '7px');
  Result.AddSimpleTag('a');
  Result.SelectedItem.AddParam('href', 'https://www.lnd.it/it/servizi/modulistica-lnd/modulistica-affiliazioni-lnd');
  Result.SelectedItem.Add(aImage);

  aImage := TJanuaHtmlImage.Create(Metro5Helper);
  aImage.Alt := 'Norme e Regolamenti';
  aImage.AddParam('width', '100%');
  aImage.AddParam('height', 'auto');
  aImage.Src := '/?page=resources&file=norme.jpg';
  aImage.AddStyle(THtmlStyle.MarginBottom, '7px');
  Result.AddSimpleTag('a');
  Result.SelectedItem.AddParam('href', 'https://www.lnd.it/it/lnd-organizzazione/norme-e-regolamenti');
  Result.SelectedItem.Add(aImage);
end;

function TLNDFactory.GetFooterLeft: IJanuaHtmlObject;
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
    LItem.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
    LItem.AddStyle(THtmlStyle.color, '#fff');
    LItem.AddSimpleTag('div', '', True, ['m-portlet__body']);
    LItem := LItem.SelectedItem;
    LItem.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
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
    LItem.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
    LItem.AddStyle(THtmlStyle.color, '#fff');
    LItem.AddSimpleTag('div', '', True, ['m-portlet__body']);
    LItem := LItem.SelectedItem;
    LItem.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
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
      raise Exception.Create('LNDFactory.GetFooterLeft: ' + e.Message);
  end;
end;

function TLNDFactory.GetFooterRight: IJanuaHtmlObject;
var
  LItem: IJanuaHtmlObject;
  LImage: TJanuaHtmlImage;
  LFooterMenu: IMetro5FooterNav;
begin
  Result := TMetro5HtmlObject.Create(Metro5Helper, 'div', TM5SClassType.Row);
  // Sinistra
  Result.AddSimpleTag('div', '', True, ['col-sm-12', 'col-md-12', 'col-lg-6']);
  LItem := Result.SelectedItem;
  LItem.AddSimpleTag('div', '', True, ['m-portlet', 'm-portlet--half-height', 'm-portlet--rounded']);
  LItem := LItem.SelectedItem;
  LItem.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
  LItem.AddStyle(THtmlStyle.color, '#fff');
  LItem.AddSimpleTag('div', '', True, ['m-portlet__body']);
  LItem := LItem.SelectedItem;
  LItem.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
  LItem.AddStyle(THtmlStyle.color, '#fff');
  LItem.AddStyle(THtmlStyle.PaddingTop, '10px');
  LImage := TJanuaHtmlImage.Create(Metro5Helper); // Cre l'immagine per il Logo LND
  LImage.Src := '/?page=resources&file=logolnd2019.png';
  LItem.Add(LImage);

  // Destra
  Result.AddSimpleTag('div', '', True, ['col-sm-12', 'col-md-12', 'col-lg-6']);
  LItem := Result.SelectedItem;
  LItem.AddSimpleTag('div', '', True, ['m-portlet', 'm-portlet--half-height', 'm-portlet--rounded']);
  LItem := LItem.SelectedItem;
  LItem.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
  LItem.AddStyle(THtmlStyle.color, '#fff');
  LItem.AddSimpleTag('div', '', True, ['m-portlet__body']);
  LItem := LItem.SelectedItem;
  LItem.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
  LItem.AddStyle(THtmlStyle.color, '#fff');
  LFooterMenu := TMetro5FooterNav.Create(Metro5Helper);
  LFooterMenu.IsInline := False;
  LFooterMenu.AddStyle(THtmlStyle.color, '#fff');
  LFooterMenu.AddNavItem('http://www.aia-figc.it', 'A.I.A.', TMetro5IconType.jmiNone,
    'Sito ufficiale dell’Associazione Italia Arbitri', True);
  LFooterMenu.AddNavItem('http://www.craliguria.it', 'C.R.A. Liguria', TMetro5IconType.jmiNone,
    'Sito ufficiale dell’Associazione Italia Arbitri', True);
  // <li><a href="http://www.figc.it" title="Sito ufficiale della Federcalcio" target="_blank">F.I.G.C.</a></li>
  LFooterMenu.AddNavItem('http://www.figc.it', 'F.I.G.C.', TMetro5IconType.jmiNone,
    'Sito ufficiale della Federcalcio', True);
  // <li><a href="http://www.lnd.it" title="Sito ufficiale della Lega Nazionale Dilettanti" target="_blank">LEGA NAZIONALE DILETTANTI</a></li>
  LFooterMenu.AddNavItem('http://www.lnd.it', 'L.N.D. Nazionale', TMetro5IconType.jmiNone,
    'Sito ufficiale della Lega Nazionale Dilettanti', True);
  // <li><a href="http://www.legapro.it" title="Sito ufficiale della Lega Pro" target="_blank">LEGA PRO</a></li>
  LFooterMenu.AddNavItem('https://www.figc.it/it/federazione/norme/norme-organizzative-interne/', 'N.O.I.FIGC',
    TMetro5IconType.jmiNone, 'Norme Organizzative Interne F.I.G.C.', True);
  LItem.Add(LFooterMenu);
end;

function TLNDFactory.GetNewsWidget: IJanuaHtmlObject;
var
  LO: IJanuaHtmlObject;
begin
  {
    <div class="m-portlet m-portlet--bordered-semi">
    <!-- begin::Head -->
    <div style="background-color:#214a8d;margin-bottom:15px;" class="m-portlet__head">
    <div class="m-portlet__head-caption">
    <div class="m-portlet__head-title">
    ..<span class="m-portlet__head-icon">
    ....<i class="far fa-newspaper m--font-light"></i>
    ..</span>
    ..<h3 id="title" class="m-portlet__head-text m--font-accent m-portlet__head-text--light">Norme <small></small></h3>
    </div>
    </div>
    </div>
    <!-- end::Head -->
    <!-- begin::Content -->
    <div class="portlet__body">
    <a target="_blank" href="https://www.figc.it/it/museo-del-calcio/percorsi-didattici/giocare-a-coverciano/scuole-calcio">
    <img style="width:100%" class="sppb-img-responsive"
    src="http://www.lnd.it/images/brand/lnd/topBunner/benner_museodelcalcio_winter_2018.jpg"
    alt="Il museo del calcio" title=""></a></div>
    <!-- end::Content -->
    </div>
  }
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'div', ['m-portlet', 'm-portlet--bordered-semi']);
  LO := Result.AddSimpleTag('div', '', True, ['m-portlet__head', 'j-portlet-head']);
  LO.CommentBefore := 'begin::Head';
  LO.CommentAfter := 'end::Head';
  LO := LO.AddSimpleTag('div', '', True, ['m-portlet__head-caption']);
  LO := LO.AddSimpleTag('div', '', True, ['m-portlet__head-title']);
  LO.AddSimpleTag('span', '', True, ['m-portlet__head-icon']);
  LO.SelectedItem.AddSimpleTag('i', '', False, ['far', 'fa-newspaper', 'm--font-light']);
  LO.AddSimpleTag('h3', 'News', False, ['m-portlet__head-text', 'm--font-accent', 'm-portlet__head-text--ligh']);
  // <!-- begin::Content -->
  LO := Result.AddSimpleTag('div', '', True, ['portlet__body']);
  LO.Add(TJanuaHtmlLink.Create(JanuaHtmlHelper, False, '/?page=article&id=213', '', []));
  LO.SelectedItem.Add(TJanuaHtmlFactory.CreateHtmlImage
    ('http://www.lnd.it/images/brand/lnd/topBunner/benner_museodelcalcio_winter_2018.jpg', 'Il museo del calcio'));
  LO.SelectedItem.SelectedItem.AddStyle(THtmlStyle.Width, '100%');
  LO.CommentBefore := 'begin::Content';
  LO.CommentAfter := 'end::Content';
end;

function TLNDFootballFactory.LNDCreateHomePage(aMain: IMainArguments; aArgs: IArguments): ILndHomePage;
begin
  try
    Guard.CheckNotNull(aMain, 'TLNDFactory.CreateHomePage aMain is Null');
    Guard.CheckNotNull(aArgs, 'TLNDFactory.CreateHomePage aArgs is Null');
    Result := TLndHomePage.Create(aMain, aArgs);
  except
    on e: Exception do
      raise Exception.Create(' TLndHomePage.Create ' + e.Message);
  end;
end;

{ TLNDPage }

function TLNDPage.AsHtml: string;
begin
  GeneratePage;
  Result := p.AsHtml;
  p := nil;
  o := nil;
end;

constructor TLNDPage.Create(aMain: IMainArguments; aArgs: IArguments);
begin
  Guard.CheckNotNull(aMain, 'TLnd.Create Main is Null');
  Guard.CheckNotNull(aArgs, 'TLnd.Create Main is Null');
  FMain := aMain;
  FArg := aArgs;
end;

destructor TLNDPage.Destroy;
begin
  FMain := nil;
  FArg := nil;
  p := nil;
  o := nil;
  b := nil;
  inherited;
end;

procedure TLNDPage.GeneratePage;
var
  aFrame: IJanuaHtmlObject;
  LCssStyle: IJanuaCssStyle;
  LCss: IJanuaCssObject;
  LMedia: IJanuaCssMedia;
begin
  try
    p := TMetro5PageFactory.CreateMetro510Page;
    // disattivo header dalla classe principale della Home Page per eliminare l'effetto flicker: m-header__top
    p.ContentHeader.HeaderTop.DelClass('m-header__top');
    o := self.GetFootballMenu;
    (* *************** start IFrame *****************************
      <iframe src="https://goo.gl/BnbW5V" style="border:0px #ffffff none;" name="LNDiframe" scrolling="no"
      frameborder="0" marginheight="0px" marginwidth="0px" height="150px" width="100%" allowfullscreen="">
      </iframe>
    *)
    aFrame := TJanuaHtmlObject.Create(Metro5Helper, 'iframe', False);
    // Aggiunte le classi che dovrebbero nascondere l'iframe su cellulari.
    aFrame.AddClasses(['d-none', 'd-lg-block']);
    aFrame.CommentBefore := 'begin::IFrame';
    aFrame.CommentAfter := 'end::IFrame';
    aFrame.AddParam('src', 'https://goo.gl/BnbW5V');
    aFrame.AddStyle(THtmlStyle.Border, 'border:0px #ffffff none;');
    aFrame.AddParam('name', 'LNDiframe');
    aFrame.AddParam('scrolling', 'no');
    aFrame.AddParam('frameborder', '0');
    aFrame.AddParam('marginheight', '0px');
    aFrame.AddParam('marginwidth', '0px');
    aFrame.AddParam('height', '150px');
    aFrame.AddParam('width', '100%');
    aFrame.AddParam('allowfullscreen', '');
    /// *************** end IFrame *****************************

    // *************** Head Styles *****************************
    LCssStyle := p.HeadSection.CssStyle;
    LMedia := LCssStyle.AddMediaByFeature(TcssMediaType.MediaNone, TCssMediaFeature.MaxWidth, '1024px');
    LCss := LMedia.AddCssByClasses(['m-page', 'm-page__container']);
    LCss.AddStyle(THtmlStyle.Padding, '0 5px;');
    LCss := LMedia.AddCssByClasses(['m-page--fluid', 'm-page', 'm-page__container']);
    LCss.AddStyle(THtmlStyle.Padding, '0 15px;');
    LCss := LMedia.AddCssByClasses(['m-body', 'm-wrapper']);
    LCss.AddStyle(THtmlStyle.Padding, '0 0px;');
    LCss := LCssStyle.AddCssByClasses(['j-portlet-head']);
    LCss.AddStyle(THtmlStyle.BackgroundColor, '#214a8d');
    LCss.AddStyle(THtmlStyle.MarginBottom, '15px');
    // j-quick-nav_item
    LCss := LCssStyle.AddCssByClasses(['j-quick-nav_item']);
    LCss.AddStyle(THtmlStyle.MarginTop, '20px');
    // *************** end Head Styles ************************

    p.Body.Insert(0, aFrame);
    // p.ContentHeader.AddStyle(THtmlStyle.BackGround, '#214a8d !important' );
    p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.Position, 'static !important');
    // margin-top:140px;
    // p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.MarginBottom, '30px');    // margin-top:140px;
    // p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.MarginTop, '140px');
    p.ContentHeader.HeaderTop.AddStyle(THtmlStyle.BackGround, '#214a8d !important');
    p.ContentHeader.HeaderTop.Brand.ImageLogo.Image.Src := '/?page=resources&file=logo_liguria150.png';
    // 'http://cdn.ergomercator.com/images/logo_liguria150.png';
    p.ContentHeader.HeaderTop.Brand.ImageLogo.Image.AddStyle(THtmlStyle.MarginTop, '-20px');
    p.ContentHeader.HeaderTop.Brand.ImageLogo.Image.AddStyle(THtmlStyle.Height, '100px');
    p.ContentHeader.HeaderTop.Brand.ImageLogo.Image.AddStyle(THtmlStyle.Width, '100px');
    // provo a togliere il margine a -15px
    // p.ContentHeader.HeaderTop.Brand.AddStyle(THtmlStyle.MarginTop, '-15px');
    p.ContentHeader.HeaderTop.Brand.ImageLogo.HasImage := True;
    // Aggiungo anche l'immagine logo per cellulare .........
    p.ContentHeader.HeaderTop.Brand.ImageLogo.MobileImg.Src := '/?page=resources&file=logo_liguria150.png';
    p.ContentHeader.HeaderTop.Brand.ImageLogo.HasMobileImg := True;
    // Tolgo il magine dalla immagine mobile di 15 px
    p.ContentHeader.HeaderTop.Brand.ImageLogo.MobileImg.AddStyle(THtmlStyle.MarginTop, '1px');
    p.ContentHeader.HeaderTop.Brand.ImageLogo.MobileImg.AddStyle(THtmlStyle.Height, '70px');
    p.ContentHeader.HeaderTop.Brand.ImageLogo.MobileImg.AddStyle(THtmlStyle.Width, '70px');
    // Menu delle Delegazioni .............................................................
    Guard.CheckNotNull(p.ContentHeader.HeaderTop.Brand.BrandTools, 'BrandTools is nil');

    // http://liguria.lnd.it/?main=4
    p.ContentHeader.HeaderTop.Brand.BrandTools.QuickActionsMenu.AddItem('Genova', 'far fa-map', '/?main=4');
    // http://liguria.lnd.it/?main=3
    p.ContentHeader.HeaderTop.Brand.BrandTools.QuickActionsMenu.AddItem('Savona', 'far fa-map', '/?main=3');
    // http://liguria.lnd.it/?main=2
    p.ContentHeader.HeaderTop.Brand.BrandTools.QuickActionsMenu.AddItem('Imperia', 'far fa-map', '/?main=2');
    // http://liguria.lnd.it/?main=5
    p.ContentHeader.HeaderTop.Brand.BrandTools.QuickActionsMenu.AddItem('Chiavari', 'far fa-map', '/?main=5');
    // http://liguria.lnd.it/?main=6
    p.ContentHeader.HeaderTop.Brand.BrandTools.QuickActionsMenu.AddItem('La Spezia', 'far fa-map', '/?main=6');

    // Gestione Del Content Footer.
    p.ContentFooter.WidgetLeft.Add(LNDFactory.GetFooterLeft);
    p.ContentFooter.WidgetRight.Add(LNDFactory.GetFooterRight);
    p.ContentFooter.bgcolor := '#214a8d';

    // Lascio il Content Body 'vuoto'
    // p.ContentBody.AddStyle(THtmlStyle.BackGround, '#214a8d !important');
    p.Body.AddMenu(o);
    b := (p.Body as IMetro5Body).Content.Body;
    (p.Body as IMetro5Body).Footer.bgcolor := '#214a8d';
  except
    on e: Exception do
       RaiseException('GeneratePage', e, self);
  end;
end;

function TLNDPage.GetArgumentsSet: IArguments;
begin
  Result := self.FArg
end;

function TLNDPage.GetFootballMenu: IJanuaHtmlObject;
var
  a: Janua.Html.Builder.Intf.IHtmlBuilder;
  m: Janua.Html.Builder.Intf.IHtmlMenuBuilder;
begin
  TMetro5BuilderFactory.GetMenuBuilder( { aRecordset } FMain,
  { aSubRecordset } FMain.MainArgument.Arguments,
  { aTitle } FMain.MainArgument.Main_argument_des, { aIcon } FMain.Icon, { aUrl } FMain.Url, FArg.Argument_des,
    FArg.Icon, FArg.Url, FMain.MainArgument.Selected, FArg.Argument.Selected, m, a);
  m.HasHome := True;
  Result := m.GetElement;
end;

function TLNDPage.GetMainArgumentsSet: IMainArguments;
begin
  Result := self.FMain
end;

procedure TLNDPage.SetMainArgumentsSet(Value: IMainArguments);
begin
  self.FMain := Value
end;

procedure TLNDPage.SetArgumentsSet(Value: IArguments);
begin
  FArg := Value
end;

initialization

Janua.Core.Functions.ExecProc(
  procedure
  begin
    { Insert Procedures ............................... }
    LNDFactory := TLNDFactory.Create;
  end, 'Janua.LND.Impl.initialization');

finalization

LNDFactory := nil;

end.
