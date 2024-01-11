unit uTestMetro5;

interface

uses Janua.Html.Intf, Janua.Html.Types, Janua.Html.Metro5.Types, Janua.Html.Metro5.Pages,
  Janua.Html.Metro5.Intf;

function Metro508: string;
function Metro508Factory: Janua.Html.Intf.IJanuaHtmlObject;

function Metro510: string;
function Metro510Factory: IMetro5Page;

function PageLoader: string;

function TestBaseComponents: string;

function MenuItem: string;
function MenuGroup: string;
function Menu: string;
function Link: string;
function MetroHeader: string;

implementation

uses Janua.Mime.Types, Janua.Html.Impl, Janua.Html.Metro5.Impl, Janua.Core.Types, System.DateUtils, System.SysUtils;

var
  h5: Janua.Html.Intf.IHtmlHelper;

function MetroHeader: string;
var
  a: IMetro5HeaderTop;
  b: IMetro5HeaderBottom;
begin
  a := TMetro5HeaderTop.Create(h5);
  a.CommentBefore := 'Start :: Header Top';
  a.Brand.ImageLogo.HasImage := True;
  a.Brand.ImageLogo.HasMobileImg := True;
  a.Brand.ImageLogo.LinkUrl := 'http://www.test.it/';
  a.Brand.ImageLogo.Image.Src := 'http://www.test.it/testimage.jpg';
  a.Brand.ImageLogo.MobileImg.Src := 'http://www.test.it/testimagemobile.jpg';
  a.Brand.ImageLogo.HasMobileImg := True;
  a.Brand.ImageLogo.HasImage := True;
  a.CommentAfter := 'End :: Header Top';
  a.Level := 1;
  Result := a.AsHtml;

  b := TMetro5HeaderBottom.Create(h5);
  b.CommentBefore := 'Start :: Header Bottom';
  b.CommentAfter := 'End :: Header Bottom';
  b.Level := 1;
  Result := Result + b.AsHtml;
end;

function Link: string;
var
  baseLink, imgLink, fileLink: IJanuaHtmlLink;
begin
  baseLink := TJanuaHtmlLink.Create(h5, False, 'http://test.it', '/mylink.html', [], False);
  baseLink.Level := 1;

  fileLink := TJanuaHtmlLink.Create(h5, True, 'http://test.it', '/mylink.css',
    [TJanuaLinkRelType.stylesheet], True);
  fileLink.TerminateSlash := True;
  fileLink.MimeType := TJanuaMimeType.jmtTextCss;
  fileLink.Level := 1;

  imgLink := TJanuaHtmlLink.Create(h5, False, 'http://test.it', '/mylink.html', [], False);
  imgLink.HasImage := True;
  imgLink.Image.Alt := 'Prova Tag Alt';
  imgLink.Image.Src := 'immagine.jpg';
  imgLink.Level := 1;

  Result := baseLink.AsHtml;
  Result := Result + sLineBreak;

  Result := Result + fileLink.AsHtml;
  Result := Result + sLineBreak;

  Result := Result + imgLink.AsHtml;
  Result := Result + sLineBreak;

end;

function MenuItem: string;
var
  aItem: THtmlmenuItem;
  aHtmlMenuItem: Janua.Html.Metro5.Impl.TMetro5MenuItem;
  aGroup: THtmlMenuGroup;
  aHtmlMenuGroup: TMetro5MenuGroup;
begin
  // fa fa-soccer-ball-o,notlisted,prima categoria,/url.html
  aItem := THtmlmenuItem.Create('fa fa-soccer-ball-o', '&nbsp; Girone A &nbsp;', '/url.html');
  try
    aHtmlMenuItem := Janua.Html.Metro5.Impl.TMetro5MenuItem.Create(h5, aItem);
    try
      Result := aHtmlMenuItem.AsHtml
    finally
      aHtmlMenuItem.Free
    end;
  finally
    aItem.Free
  end;
  // constructor THtmlMenuGroup.Create('', 'Prima Categoria', '');
  aGroup := THtmlMenuGroup.Create('', 'Prima Categoria', '');
  try
    aGroup.AddItem('fa fa-soccer-ball-o', '&nbsp; Girone A &nbsp;', '/url.html');
    aGroup.AddItem('fa fa-soccer-ball-o', '&nbsp; Girone B &nbsp;', '/url.html');
    aGroup.AddItem('fa fa-soccer-ball-o', '&nbsp; Girone C &nbsp;', '/url.html');
    aGroup.AddItem('fa fa-soccer-ball-o', '&nbsp; Girone D &nbsp;', '/url.html');
    aHtmlMenuGroup := TMetro5MenuGroup.Create(h5, aGroup);
    Result := Result + sLineBreak +
      '<!-- Menu Group ########################################################################### -->' +
      sLineBreak + aHtmlMenuGroup.AsHtml
  finally
    aGroup.Free;
  end;

end;

function MenuGroup: string;
begin

end;

function Menu: string;
begin

end;

function Metro510Factory: IMetro5Page;
begin
  Result := TMetro5PageFactory.CreateMetro510Page;
end;

function TestBaseComponents: string;
var
  a: IMetro5Badge;
  b: IJanuaHtmlObject;
  c: IJanuaHtmlObject;
  r: IMetro5Article;
  n: IMetro5NavItem;
begin
  Result := Result + sLineBreak + '<!-- Test Badge -->' + sLineBreak;

  a := TMetro5Factory.CreateMetro5Badge(TMetro5BadgeType.Default, m5sSuccess, '5') as IMetro5Badge;
  Result := Result + a.AsHtml;
  Result := Result + sLineBreak + '<!-- Test Badge Nocolor -->' + sLineBreak;
  a.StateColor := TM5StateColorsStyle.m5sNone;
  Result := Result + a.AsHtml;

  Result := Result + sLineBreak + '<!-- Test Icons -->' + sLineBreak;

  b := TMetro5Factory.CreateMetro5Icon(FlatMultimedia, m5sWarning);
  Result := Result + b.AsHtml;

  Result := Result + sLineBreak + '<!-- Test Icons -->' + sLineBreak;

  b := TMetro5Factory.CreateMetro5Icon(FlatMultimedia, m5sWarning);
  Result := Result + b.AsHtml;

  b := nil;

  Result := Result + sLineBreak + '<!-- Test Portlet Head -->' + sLineBreak;
  b := TMetro5Factory.CreateMetro5PortletHead('I nostri articoli', 'le ultime news', FlatMultimedia,
    m5sWarning);
  Result := Result + b.AsHtml;
  Result := Result + sLineBreak + '<!-- Test Portlet Full -->' + sLineBreak;
  c := TMetro5Factory.CreatePortlet(b as TMetro5PortletHead);
  Result := Result + c.AsHtml;

  Result := Result + sLineBreak + '<!-- Test Article -->' + sLineBreak;
  r := TMetro5Factory.CreateArticle(TJanuaLanguage.jlaItalian, 'CDM Genova Arrivano le prime anticipazioni',
    'Le conferme della rosa per il prossimo anno.', 'Dilettantissimo',
    'http//:cdn.ergomercator.com/dilettantissimo/images/image1.jpg', 'http://www.ergomercator.com',
    System.SysUtils.Date) as IMetro5Article;
  Result := Result + r.AsHtml;
  // r.Free;
  // fulll article List
  Result := Result + sLineBreak + '<!-- Test Full Article List -->' + sLineBreak;

  b := TMetro5Factory.CreateMetro5PortletHead('I nostri articoli', 'le ultime news', FlatMultimedia,
    m5sWarning);
  c := TMetro5Factory.CreatePortlet(b as TMetro5PortletHead);
  r := TMetro5Factory.CreateArticle(TJanuaLanguage.jlaItalian, 'CDM Genova Arrivano le prime anticipazioni',
    'Le conferme della rosa per il prossimo anno.', 'Dilettantissimo',
    'http//:cdn.ergomercator.com/dilettantissimo/images/image1.jpg', 'http://www.ergomercator.com',
    System.SysUtils.Date) as IMetro5Article;

  (c as IMetro5Portlet).Content.Add(r);

  Result := Result + c.AsHtml;
  // c.Free;
  Result := Result + sLineBreak + '<!-- Test Navigator Item -->' + sLineBreak;

  n := TMetro5Factory.CreateNavItem(True, TM5StateColorsStyle.m5sDanger, TMetro5IconType.FlaticonProfile,
    'User Profile', './?page=profile', '2') as IMetro5NavItem;

  Result := Result + n.AsHtml;
end;

function Metro510: string;
var
  aPage: IMetro5Page;
begin
  aPage := Metro510Factory;
  Result := (aPage.AsHtml)
end;

function Metro508Factory: IJanuaHtmlObject;
begin
  Result := TMetro508Page.Create(h5);
end;

function Metro508: string;
var
  aPage: IMetro5Page;
begin
  aPage := Metro508Factory as IMetro5Page;
  Result := (aPage.AsHtml)
end;

function PageLoader: string;
var
  aPage: IMetro5PageLoader;
begin
  aPage := Janua.Html.Metro5.Impl.TMetro5PageLoader.Create(h5);
  aPage.Loading := True;
  Result := (aPage.AsHtml)
end;

initialization

h5 := Janua.Html.Metro5.Impl.TMetro5HtmlHelper.Create;

end.
