unit udmCmsLndGenerator;

interface

uses
  System.SysUtils, System.Classes, Janua.Html.Metro5.Impl, Janua.Html.Impl, Janua.Html.Bootstrap4,
  Janua.Html.Metro5.Types, Janua.Core.Types, Janua.Core.Classes, Janua.Orm.Intf, Janua.Html.Types,
  Janua.Lnd.Intf, JOrm.Cms.Articles.Intf, JOrm.Cms.Articles.Impl, Janua.Metro5.Builder.Intf, Janua.Html.Intf,
  Janua.Html.Metro5.Intf;

type
  TdmCmsLNDGenerator = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    function GetArticlesList(aArgumentID: integer): Janua.Html.Intf.IJanuaHtmlObject;
    function GetCarousel(aArgumentID: integer): Janua.Html.Bootstrap4.TBootstrap4Carousel;
    function GetFootballMenu: IJanuaHtmlObject;
    function GetHomePage(aMainCategory: integer; aCategory: integer): string;
    function GetLNDHome(aMainCategory, aCategory, aLimit, aPage: Word): string;
    function GetArticlePage(aID: Int64): string;
    function GetArgumentPage(aID: Integer): string;
    function TestArticles: string;
  end;

var
  dmCmsLNDGenerator: TdmCmsLNDGenerator;

implementation

uses
  JOrm.Cms.MainArguments.Intf, JOrm.Cms.Arguments.Intf, JOrm.Cms.MainArguments.Impl,
  Janua.Core.Metronics, udmVirtualFootballServer, Janua.Orm.Generator, Data.DB,
  udmVirtualCmsServer, Janua.Html.Builder.Intf, Janua.Metro5.Builder,
  Janua.Html.Metro5.Pages, Janua.Lnd.Impl, udmPgCmsStorage;

var
  h1: Janua.Html.Impl.THtmlHelper;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
  { TdmCmsLNDGenerator }

procedure TdmCmsLNDGenerator.DataModuleCreate(Sender: TObject);
begin
  AssetsURL := 'http://cdn.ergomercator.com/metronic_v5.2.1/metronic_v5.2.1/default/dist/';
  h1 := Janua.Html.Impl.THtmlHelper.Create;
end;

procedure TdmCmsLNDGenerator.DataModuleDestroy(Sender: TObject);
begin
  h1.Free
end;

function TdmCmsLNDGenerator.GetArgumentPage(aID: Integer): string;
var
  p: Janua.Lnd.Intf.ILndArgumentPage;
  DM: udmPgCmsStorage.TdmPgCmsStorage;
  Test: IJanuaRecordSet;
  ma: IMainArguments;
  ar: IArguments;
  at: IArticles;
begin
  // Test completo menu ORM da Football Academy.........................................................
  DM := udmPgCmsStorage.TdmPgCmsStorage.Create(nil);
  try
    DM.OpenMainArguments;
    DM.main_arguments.First;
    DM.Arguments.Open;
    DM.Arguments.First;
    Test := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments');
    Test.CurrentRecord.DBDataset := DM.main_arguments;
    Test.CurrentRecord.RecordSets[0].CurrentRecord.DBDataset := DM.Arguments;
    Test.LoadFromDataset;
    // Test.LoadFromDataset(, []);
    Assert(Test.RecordCount > 0, 'Test has 0 Records');
    ma := Test as IMainArguments;
    ar := ma.MainArgument.Arguments;
    ma.First;

    while not ma.Eof do
    begin
      ma.MainArgument.Selected := (ma.Main_argument_id.AsInteger = 1);
      ma.Next;
    end;

    at := DM.GetArticlesList(0, aID, 20, 1);

    // 1 = comunicati, 2 = circolari, 3 = news, 4 = urgenze
    p := TLndArgumentPage.Create(ma, ar, at); // .CreateHomePage(ma, ar);

    Result := p.AsHtml
  finally
    DM.Free;
  end;

end;

function TdmCmsLNDGenerator.GetArticlePage(aID: Int64): string;
var
  p: Janua.Lnd.Intf.ILndArticlePage;
  DM: udmPgCmsStorage.TdmPgCmsStorage;
  Test: IJanuaRecordSet;
  ma: IMainArguments;
  ar: IArguments;
  at: IArticle;
begin
  // Test completo menu ORM da Football Academy.........................................................
  DM := udmPgCmsStorage.TdmPgCmsStorage.Create(nil);
  try
    DM.OpenMainArguments;
    DM.main_arguments.First;
    DM.Arguments.Open;
    DM.Arguments.First;
    Test := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments');
    Test.CurrentRecord.DBDataset := DM.main_arguments;
    Test.CurrentRecord.RecordSets[0].CurrentRecord.DBDataset := DM.Arguments;
    Test.LoadFromDataset;
    // Test.LoadFromDataset(, []);
    Assert(Test.RecordCount > 0, 'Test has 0 Records');
    ma := Test as IMainArguments;
    ar := ma.MainArgument.Arguments;
    ma.First;

    while not ma.Eof do
    begin
      ma.MainArgument.Selected := (ma.Main_argument_id.AsInteger = 1);
      ma.Next;
    end;

    at := DM.GetArticle(aID);

    // 1 = comunicati, 2 = circolari, 3 = news, 4 = urgenze
    p := TLndArticlePage.Create(ma, ar, at); // .CreateHomePage(ma, ar);
    Result := p.AsHtml
  finally
    DM.Free;
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
  DM: udmVirtualCmsServer.TdmVirtualCmsServer;
  Test: IJanuaRecordSet;
  ma: IMainArguments;
  ar: IArguments;
  a: Janua.Html.Builder.Intf.IHtmlBuilder;
  m: Janua.Html.Builder.Intf.IHtmlMenuBuilder;
begin
  // Test completo menu ORM da Football Academy.........................................................
  DM := udmVirtualCmsServer.TdmVirtualCmsServer.Create(nil);
  try
    DM.vtMainArguments.Open;
    DM.vtMainArguments.First;
    DM.vtArguments.Open;
    DM.vtArguments.First;
    Test := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments');
    Test.CurrentRecord.DBDataset := DM.vtMainArguments;
    Test.CurrentRecord.RecordSets[0].CurrentRecord.DBDataset := DM.vtArguments;
    Test.LoadFromDataset;
    // Test.LoadFromDataset(DM.vtMainArguments, [DM.vtArguments]);
    Assert(Test.RecordCount > 0, 'Test has 0 Records');
    ma := Test as IMainArguments;
    ar := ma.MainArgument.Arguments;
    // self.UpdateJson(ma.ToJson, True);
    // occorre un campo anche 'calcolato' per il sub-url da decifrare.
    // il campo 'icona' diventa ora fondamentale almeno per gli argomenti
    // tanto quanto fondamentale una propr
    TMetro5BuilderFactory.GetMenuBuilder(ma, ma.MainArgument.Arguments, ma.MainArgument.Main_argument_des, nil, nil,
      ar.Argument_des, ar.Icon, ar.Url, m, a);
    Result := a.GetElement;
  finally
    DM.Free
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
  DM: udmPgCmsStorage.TdmPgCmsStorage;
  Test: IJanuaRecordSet;
  ma: IMainArguments;
  ar: IArguments;
begin
  // Test completo menu ORM da Football Academy.........................................................
  DM := udmPgCmsStorage.TdmPgCmsStorage.Create(nil);
  try
    DM.OpenMainArguments;
    DM.main_arguments.First;
    DM.Arguments.Open;
    DM.Arguments.First;
    Test := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments');
    Test.CurrentRecord.DBDataset := DM.main_arguments;
    Test.CurrentRecord.RecordSets[0].CurrentRecord.DBDataset := DM.Arguments;
    Test.LoadFromDataset;
    // Test.LoadFromDataset(, []);
    Assert(Test.RecordCount > 0, 'Test has 0 Records');
    ma := Test as IMainArguments;
    ar := ma.MainArgument.Arguments;
    ma.First;

    while not ma.Eof do
    begin
      ma.MainArgument.Selected := (ma.Main_argument_id.AsInteger = aMainCategory);
      ma.Next;
    end;
    // 1 = comunicati, 2 = circolari, 3 = news, 4 = urgenze
    p := TLNDFactory.CreateHomePage(ma, ar);
    p.NewsSet := DM.GetArticlesListPos(aMainCategory, 3, aLimit, aPage);
    p.ComunicatiSet := DM.GetArticlesListPos(aMainCategory, 1, aLimit, aPage);
    p.CircolariSet := DM.GetArticlesListPos(aMainCategory, 2, aLimit, aPage);
    p.UrgenzeSet := DM.GetArticlesListPos(aMainCategory, 4, aLimit, aPage);
    Result := p.AsHtml
  finally
    DM.Free;
  end;
end;

function TdmCmsLNDGenerator.TestArticles: string;
var
  DM: TdmPgCmsStorage;
  ar: IArticles;
  p: IHtmlBuilder;
  s: TArticlesSettings;
  o: IJanuaHtmlObject;
begin

  // Test completo menu ORM da Football Academy.........................................................
  DM := TdmPgCmsStorage.Create(nil);
  try
    DM.main_arguments.Open;
    DM.main_arguments.First;
    DM.Arguments.Open;
    DM.Arguments.First;
    ar := DM.GetArticlesList(1, 1, 20, 1);
    ar.AuthorText := 'LND Liguria';
    s := TMetro5BuilderFactory.GetArticlesSettings(ar);
    s.Title := 'Ultime Notizie';
    s.Description := '';
    s.IconType := TMetro5IconType.jmlSocialDribble;
    s.IconColor := TM5StateColorsStyle.m5sBrand;
    s.FontColor := TM5StateColorsStyle.m5sBrand;
    p := TMetro5BuilderFactory.GetArticlesPortlet(s, ar);
    o := p.GetElement;
    Result := o.AsHtml;
  finally
    DM.Free;
  end;

end;

end.
