unit Janua.Html.Metro5.Pages;

interface

uses Janua.Html.Impl, Janua.Html.Metro5.Impl, Janua.Html.Metro5.Intf, Janua.Html.Metro5.Types,
  Janua.Html.Intf, Janua.Html.Types, Janua.Core.Types, Janua.Http.Types;

type
  TMetro5Version = (ver4555);

const
  // css
  cDemo10StyleBundleCss: array [TMetro5Version] of string = ('metronic5_5_5_demo10_style.bundle.css');
  cMetro5FullcalendarBundleCss: array [TMetro5Version] of string = ('metronic5_5_5_fullcalendar.bundle.css');
  cMetro5VendorsBundleCss: array [TMetro5Version] of string = ('metronic5_5_5_vendors.bundle_ergo.css');
  // Javascript
  cMetro5cMetro5FullcalendarBundleJs: array [TMetro5Version] of string =
    ('metronic5_5_5_fullcalendar.bundle.js');
  cMetro5DashBoard: array [TMetro5Version] of string = ('metronic5_5_5_dashboard.js');
  cMetro5VendorsBundleJs: array [TMetro5Version] of string = ('metronic5_5_5_vendors.bundle.js');
  cDemo10ScriptsBundle: array [TMetro5Version] of string = ('metronic5_5_5_demo10_scripts.bundle.js');
  //

type
  TMetro5Files = record
    Demo10StyleBundleCss: string;
    FullcalendarBundleCss: string;
    VendorsBundleCss: string;
    // Javascripts .......................
    DashBoardJs: string;
    Demo10ScriptsBundleJs: string;
    FullcalendarBundleJs: string;
    VendorsBundleJs: string;
  public
    constructor Create(aMetroVersion: TMetro5Version);
  end;

type
  TMetro5PageScripts = class(TJanuaCustomSection, IJanuaHtmlObject, IJanuaCustomSection)
  private
    FLoaderScript: IJanuaHtmlObject;
    procedure SetLoaderScript(const Value: IJanuaHtmlObject);
  strict protected
    function BodyAfterText: string; override;
    procedure SetIndent(const Value: integer); override;
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper; aLoaderScript: IJanuaHtmlObject); overload;
    Destructor Destroy; override;
  end;

type
  TMetro5CustomBody = class(TJanuaBody)
  strict protected
    FPageLoader: IMetro5PageLoader;
    FScripts: IJanuaHtmlObject;
  protected
    function GetPageLoader: IMetro5PageLoader;
    function GetScripts: IJanuaHtmlObject;
    procedure SetPageLoader(const Value: IMetro5PageLoader);
    procedure SetScripts(const Value: IJanuaHtmlObject);
    procedure SetLoading(const Value: Boolean);
    procedure SetLoadingText(const Value: string);
  protected
    function GetLoading: Boolean;
    function GetLoadingText: string;
  public
    property PageLoader: IMetro5PageLoader read GetPageLoader write SetPageLoader;
    property Scripts: IJanuaHtmlObject read GetScripts write SetScripts;
    property Loading: Boolean read GetLoading write SetLoading;
    property LoadingText: string read GetLoadingText write SetLoadingText;
  end;

type
  TMetro5Body = class(TMetro5CustomBody, IJanuaHtmlObject, IJanuaBody, IMetro5Body)
  strict private
    FContent: IMetro5Content;
    FMetro5Footer: IMetro5Footer;
  private
    function GetContent: IMetro5Content;
    procedure SetContent(const Value: IMetro5Content);
    function GetFooter: IMetro5Footer;
    procedure SetFooter(const Value: IMetro5Footer);
  protected
    procedure Setbgcolor(const Value: string); override;
  public
    // procedure AddMenu(aMenu: IJanuaHtmlObject); virtual; abstract;
    procedure AddMenu(aMenu: IJanuaHtmlObject); override;
    constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  public
    property Content: IMetro5Content read GetContent write SetContent;
    property Footer: IMetro5Footer read GetFooter write SetFooter;
  end;

type
  TMetro5FrameBody = class(TMetro5CustomBody, IJanuaHtmlObject, IJanuaBody, IMetro5FrameBody)
  strict private
    FContent: IMetro5FrameContent;
  private
    function GetContent: IMetro5FrameContent;
    procedure SetContent(const Value: IMetro5FrameContent);
  public
    constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
    procedure AddMenu(aMenu: IJanuaHtmlObject); override;
  public
    property Content: IMetro5FrameContent read GetContent write SetContent;
  end;

type
  TMetro5Page = class(TJanuaHtmlPage, IJanuaHtmlObject, IJanuaHtmlPage, IMetro5Page)
  strict protected
    FContentHeader: IMetro5ContentHeader;
    FContentBody: IJanuaHtmlObject;
    FContentFooter: IMetro5Footer;
  protected
    procedure SetContentFooter(const Value: IMetro5Footer);
    function GetContentFooter: IMetro5Footer;
    function GetContentHeader: IMetro5ContentHeader;
    function GetContentBody: IJanuaHtmlObject;
    procedure SetContentHeader(const Value: IMetro5ContentHeader);
    procedure SetContentBody(const Value: IJanuaHtmlObject);
    procedure SetBackGroundColor(const Value: string); override;
  strict protected
    function BodyBeforeText: string; override;
    function BodyText: string; override;
    function BodyAfterText: string; override;
  public
    Property ContentHeader: IMetro5ContentHeader read GetContentHeader write SetContentHeader;
    Property ContentBody: IJanuaHtmlObject read GetContentBody write SetContentBody;
    property ContentFooter: IMetro5Footer read GetContentFooter write SetContentFooter;
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  end;

type
  TMetro5Frame = class(TJanuaHtmlPage, IJanuaHtmlObject, IJanuaHtmlPage, IMetro5Frame)
  strict protected
    FContentBody: IJanuaHtmlObject;
  protected
    function GetContentBody: IJanuaHtmlObject;
    procedure SetContentBody(const Value: IJanuaHtmlObject);
  public
    Property ContentBody: IJanuaHtmlObject read GetContentBody write SetContentBody;
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  end;

type
  TMetro510Page = class(TMetro5Page, IJanuaHtmlObject, IJanuaHtmlPage, IMetro5Page)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  end;

type
  TMetroLogin3Page = class(TMetro5Page)

  end;

type
  TMetro508Page = class(TMetro5Page, IJanuaHtmlObject, IJanuaHtmlPage, IMetro5Page)
  public
    Constructor Create(aHelper: Janua.Html.Intf.IHtmlHelper); override;
  end;

type
  TMetro5PageFactory = class(TMetro5Factory)
  public
    class function CreateMetro510Page: IMetro5Page;
    class function CreateMetro508Page: IMetro5Page;
    class function GetMetro5Frame: IMetro5Frame;
  end;

var
  JanuaMetro5Files: TMetro5Files;

implementation

uses System.SysUtils, Janua.Core.Functions;

var
  FHelperPages: Janua.Html.Intf.IHtmlHelper;

  { TMetro5CustomBody }

function TMetro5CustomBody.GetLoading: Boolean;
begin
  if Assigned(self.FPageLoader) then
    Result := FPageLoader.Loading
  else
    Result := False;
end;

function TMetro5CustomBody.GetLoadingText: string;
begin
  if Assigned(self.FPageLoader) then
    Result := FPageLoader.LoadingText
  else
    Result := '';
end;

function TMetro5CustomBody.GetPageLoader: IMetro5PageLoader;
begin
  Result := self.FPageLoader
end;

function TMetro5CustomBody.GetScripts: IJanuaHtmlObject;
begin
  Result := self.FScripts
end;

procedure TMetro5CustomBody.SetLoading(const Value: Boolean);
begin
  self.FPageLoader.Loading := Value;
  if Value then
  begin
    self.AddClass('m-page--loading-enabled');
    self.AddClass('m-page--loading');
    // se in posizione '0' non è presente il 'loader' lo inserisce.
  end
  else
  begin
    self.DelClass('m-page--loading-enabled');
    self.DelClass('m-page--loading');
  end;
end;

procedure TMetro5CustomBody.SetLoadingText(const Value: string);
begin
  if Assigned(self.FPageLoader) then
    self.FPageLoader.LoadingText := Value
end;

procedure TMetro5CustomBody.SetPageLoader(const Value: IMetro5PageLoader);
begin
  FPageLoader := Value;
end;

procedure TMetro5CustomBody.SetScripts(const Value: IJanuaHtmlObject);
begin
  FScripts := Value;
end;

{ TMetro5Body }

procedure TMetro5Body.AddMenu(aMenu: IJanuaHtmlObject);
begin
  inherited; // Virtual Abstract method ma non si sa mai un domani
  self.Content.AddMenu(aMenu);
end;

constructor TMetro5Body.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  aBuilder: IStringBuilder;
begin
  try
    inherited;
    // Page Body is composed by 3 Main Sections ....................................
    // Loader (should be enabled or not).
    FPageLoader := TMetro5PageLoader.Create(self.HtmlHelper);
    // FPageLoader.Level := self.Level + 1;
    // Content
    FContent := TMetro5Content.Create(self.HtmlHelper);
    FMetro5Footer := FContent.Footer;
    FContent.tag := 'div';
    // FContent.Level := self.Level + 1;
    // Scripts
    self.FScripts := TMetro5PageScripts.Create(self.HtmlHelper,
      TJanuaHtmlFactory.CreateScriptAsScript(aHelper, '', TJanuaMimeType.jmtTextJavascript));
    // FScripts.Level := self.Level + 1;
    FScripts.tag := 'div';
    FScripts.ShowEnclosingTag := False;
    // Add To The Body
    // Loader, Content e 'Scripts' sono al medesimo Livello ..................
    self.Add(self.FPageLoader);
    self.Add(self.FContent);
    self.Add(self.FScripts);

    aBuilder := TJanuaStringBuilder.Create;
    // sezioneper per inserire script custo creati con StringBuilder.
    self.AddSimpleTag('script', aBuilder.ToString, True);
  except
    on e: exception do
      raise exception.Create('TMetro5Body.Create ' + e.Message);

  end;

end;

function TMetro5Body.GetContent: IMetro5Content;
begin
  Result := self.FContent
end;

function TMetro5Body.GetFooter: IMetro5Footer;
begin
  Result := self.FContent.Footer
end;

procedure TMetro5Body.Setbgcolor(const Value: string);
begin
  inherited;
  if Value <> '' then
  begin
    self.FContent.AddStyle(THtmlStyle.BackgroundColor, Value);
    self.FContent.BodyWrapper.AddStyle(THtmlStyle.BackgroundColor, Value);
  end
  else
  begin
    FContent.DelStyle(THtmlStyle.BackgroundColor);
    FContent.BodyWrapper.DelStyle(THtmlStyle.BackgroundColor);
  end;
end;

procedure TMetro5Body.SetContent(const Value: IMetro5Content);
begin
  self.FContent := Value
end;

procedure TMetro5Body.SetFooter(const Value: IMetro5Footer);
begin
  FContent.Footer := Value;
  FMetro5Footer := Value;
end;

{ TMetro5PageScripts }

function TMetro5PageScripts.BodyAfterText: string;
begin
  Result := inherited;
  Result := Result + self.FLoaderScript.AsHtml;
end;

constructor TMetro5PageScripts.Create(aHelper: Janua.Html.Intf.IHtmlHelper; aLoaderScript: IJanuaHtmlObject);
begin
  self.Create(aHelper);
  self.tag := 'div';
  // IMPORTANT This 'section' is an invisible Section Because it only includes Page Scripts Tags.
  // It Has a Special Section To Add Scripts ....................................................
  self.ShowEnclosingTag := False;
  {
    Metro5DashBoard: string;
    Demo10ScriptsBundle: string;
    Metro5cMetro5FullcalendarBundleJs: string;
    Metro5cMetro5VendorsBundleJs: string;
  }
  // base scripts
  // AddScriptUrl(AssetsURL + HtmlHelper.Theme + '/assets/vendors/base/vendors.bundle.js',
  AddScriptUrl('/?page=resources&file=' + JanuaMetro5Files.VendorsBundleJs, jmtApplicationJavascript);
  SelectedItem.CommentBefore := 'begin::Base Scripts';
  // AddScriptUrl(AssetsURL + HtmlHelper.Theme + '/assets/demo/' + HtmlHelper.Theme + '/base/scripts.bundle.js',
  { TODO : Mettere una variabile per Demo10 Bundle o Demo8 Bundle ecc }
  AddScriptUrl('/?page=resources&file=' + JanuaMetro5Files.Demo10ScriptsBundleJs, jmtApplicationJavascript);
  SelectedItem.CommentAfter := 'end::Base Scripts';
  // end base scripts
  // Page Vendord
  // AddScriptUrl(AssetsURL + HtmlHelper.Theme + '/assets/vendors/custom/fullcalendar/fullcalendar.bundle.js',
  AddScriptUrl('/?page=resources&file=' + JanuaMetro5Files.FullcalendarBundleJs, jmtApplicationJavascript);
  SelectedItem.CommentAfter := 'end::Page Vendors';
  SelectedItem.CommentBefore := 'begin::Page Vendors ';
  // End Page Vendors
  // Page Snippets
  // AddScriptUrl(AssetsURL + HtmlHelper.Theme + '/assets/app/js/dashboard.js', TJanuaMimeType.jmtApplicationJavascript);
  AddScriptUrl('/?page=resources&file=' + JanuaMetro5Files.DashBoardJs, jmtApplicationJavascript);

  SelectedItem.CommentAfter := 'end::Page Snippets';
  SelectedItem.CommentBefore := 'begin::Page Snippets ';
  // End Page Snipptes
  SetLoaderScript(aLoaderScript);

  FLoaderScript.StartLineText('$(window).on(''load'', function() {');
  with FLoaderScript do
  begin
    AddLineText('    $(''body'').removeClass(''m-page--loading'');   ');
    AddLineText('});');
    CommentAfter := 'end::Page Loader';
    CommentBefore := 'begin::Page Loader ';
  end;
end;

destructor TMetro5PageScripts.Destroy;
begin
  self.FLoaderScript := nil;
  inherited;
end;

procedure TMetro5PageScripts.SetIndent(const Value: integer);
begin
  inherited;
  FLoaderScript.Level := self.Level;
end;

procedure TMetro5PageScripts.SetLoaderScript(const Value: IJanuaHtmlObject);
begin
  FLoaderScript := Value;
end;

{ TMetro5Html8Page }

constructor TMetro508Page.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  aBody: IMetro5Body;
begin
  inherited;
  self.Body := TMetro5Body.Create(self.HtmlHelper, ['m-page--fluid', 'm-header--fixed',
    'm-header--fixed-mobile', 'm-footer--push', 'm-aside--offcanvas-default']);
  self.HtmlHelper.Theme := 'demo8';
  self.Body.AddParam('style', 'background-image: url(' + AssetsURL + HtmlHelper.Theme +
    '/assets/app/media/img/bg/bg-7.jpg)');
  (self.Body as IMetro5Body).Loading := True;

  aBody := (self.Body as IMetro5Body);
  aBody.PageLoader.Loading := True;
  aBody.PageLoader.LoadingText := 'Attendere Prego ...';
  aBody.Content.BodyWrapper.AddClasses(['m-grid--ver-desktop', 'm-grid--desktop', 'm-page__container',
    'm-body']);
end;

{ TMetro5Html10Page }

constructor TMetro510Page.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  ExecProc(
    procedure
    begin
      inherited;
      // class="  m-header--fixed-mobile m-footer--push
      // m-aside--offcanvas-default m-header--minimize-on m-scroll-top--shown"
      Body.AddClasses(['m-page--fluid', 'm-header--fixed', 'm-header--fixed-mobile', 'm-footer--push',
        'm-aside--offcanvas-default']);
      self.HtmlHelper.Theme := 'demo10';
      // (self.Body as TMetro5Body).Loading := True;
      Body.Level := self.Level + 1;
      // // // style="background:#3E5062; margin-bottom:30px"
      self.FContentHeader := (Body as IMetro5Body).Content.Header;
      (Body as IMetro5Body).PageLoader.Loading := True;
      (Body as IMetro5Body).PageLoader.LoadingText := 'Attendere Prego ...';
      (Body as IMetro5Body).Content.BodyWrapper.AddClasses(['m-grid--ver-desktop', 'm-grid--desktop',
        'm-page__container', 'm-body']);
    end, 'Create', self);
end;

{ TMetro510Factory }

class function TMetro5PageFactory.CreateMetro508Page: IMetro5Page;
begin
  Result := TMetro508Page.Create(FHelperPages);
end;

class function TMetro5PageFactory.CreateMetro510Page: IMetro5Page;
begin
  Result := TMetro510Page.Create(FHelperPages);
end;

class function TMetro5PageFactory.GetMetro5Frame: IMetro5Frame;
begin
  Result := TMetro5Frame.Create(FHelperPages);
end;

{ TMetro5Page }

function TMetro5Page.BodyAfterText: string;
begin
  inherited
end;

function TMetro5Page.BodyBeforeText: string;
begin
  inherited
end;

function TMetro5Page.BodyText: string;
begin
  inherited
end;

constructor TMetro5Page.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  a: TJanuaHtmlParams;
  t1: IJanuaBody;
  t2: IJanuaHeadSection;
begin
  // la parte inherited innesca le procedure di preparazione della pagina e la crezione ed
  // impostazione delle diverse variabili locali
  // alcune informazioni, invece, dovrebbero poggiarsi su variabli globali quali
  // l'Assets URL.
  inherited;
  t1 := TMetro5Body.Create(HtmlHelper);
  t2 := TJanuaHeadSection.Create(HtmlHelper, 'head');
  self.Body := t1;
  FContentBody := (Body as IMetro5Body).Content.Body;
  self.HeadSection := t2;
  // Pagae Initialization
  SetLength(a, 2);
  a[0].K := 'name';
  a[0].V := 'description';
  a[1].K := 'content';
  a[1].V := 'Dilettantissimo portale del calcio ligure';
  FHeadSection.AddMeta(a);
  a[0].K := 'http-equiv';
  a[0].V := 'X-UA-Compatible';
  a[1].K := 'content';
  a[1].V := 'IE=edge';
  FHeadSection.AddMeta(a);
  self.FHeadSection.CommentBefore := 'begin::Head';
  self.FHeadSection.CommentAfter := 'end::Head';
  Body.UID := 'BODY';
  Body.Level := 1;
  self.ViewPort := 'width=device-width, initial-scale=1, shrink-to-fit=no';
  self.HeadSection.AddScriptUrl('https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js');
  self.HeadSection.SelectedItem.CommentBefore := 'begin::Web font ';
  self.HeadSection.AddScript('WebFont.load({');
  with self.HeadSection.SelectedItem do
  begin
    AddLineText
      ('   google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700","Asap+Condensed:500"]},');
    AddLineText('  active: function() {');
    AddLineText('    sessionStorage.fonts = true;');
    AddLineText('  }');
    AddLineText('});');
    CommentAfter := 'end::Web font';
  end;
  with HeadSection do
  begin
    // Spec.
    AddCssRef('https://use.fontawesome.com/releases/v5.3.1/css/all.css');
    // integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">);
    SelectedItem.AddParam('integrity',
      'ha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU');
    SelectedItem.AddParam('crossorigin', 'anonymous');
    // HeadSection.AddCssRef(AssetsURL + HtmlHelper.Theme + '/assets/vendors/custom/fullcalendar/fullcalendar.bundle.css');
    AddCssRef('?page=resources&file=' + JanuaMetro5Files.FullcalendarBundleCss);
    SelectedItem.CommentBefore := 'begin::Base Styles';
    AddCssRef('?page=resources&file=' + JanuaMetro5Files.VendorsBundleCss);
    // self.HeadSection.AddCssRef(AssetsURL + self.HtmlHelper.Theme + '/assets/vendors/base/vendors.bundle.css');
    AddCssRef('?page=resources&file=' + JanuaMetro5Files.Demo10StyleBundleCss);
    // HeadSection.AddCssRef(AssetsURL + HtmlHelper.Theme + '/assets/demo/' + HtmlHelper.Theme + '/base/style.bundle.css');
    // <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
    // integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    self.HeadSection.SelectedItem.CommentAfter := 'end::Base Styles';
  end;

  FContentFooter := (Body as IMetro5Body).Content.Footer;

end;

function TMetro5Page.GetContentBody: IJanuaHtmlObject;
begin
  Result := self.FContentBody
end;

function TMetro5Page.GetContentFooter: IMetro5Footer;
begin
  Result := self.FContentFooter
end;

function TMetro5Page.GetContentHeader: IMetro5ContentHeader;
begin
  Result := self.FContentHeader
end;

procedure TMetro5Page.SetBackGroundColor(const Value: string);
begin
  self.FBackGroundColor := Value;
  if Value <> '' then
  begin
    self.ContentBody.AddStyle(THtmlStyle.BackgroundColor, Value);
    self.FContentHeader.AddStyle(THtmlStyle.BackgroundColor, Value);
    if Supports(Body, IMetro5Body) then
      (Body as IMetro5Body).Content.BodyWrapper.AddStyle(THtmlStyle.BackgroundColor, Value);
  end
  else
  begin
    ContentBody.DelStyle(THtmlStyle.BackgroundColor);
    FContentHeader.DelStyle(THtmlStyle.BackgroundColor);
  end;
  if Supports(Body, IMetro5Body) then
    (Body as IMetro5Body).bgcolor := Value;
end;

procedure TMetro5Page.SetContentBody(const Value: IJanuaHtmlObject);
begin
  self.FContentBody := Value
end;

procedure TMetro5Page.SetContentFooter(const Value: IMetro5Footer);
begin
  FContentFooter := Value;
end;

procedure TMetro5Page.SetContentHeader(const Value: IMetro5ContentHeader);
begin
  self.FContentHeader := Value
end;

{ TMetro5Files }

constructor TMetro5Files.Create(aMetroVersion: TMetro5Version);
begin
  DashBoardJs := cMetro5DashBoard[aMetroVersion];
  Demo10ScriptsBundleJs := cDemo10ScriptsBundle[aMetroVersion];
  Demo10StyleBundleCss := cDemo10StyleBundleCss[aMetroVersion];
  FullcalendarBundleCss := cMetro5FullcalendarBundleCss[aMetroVersion];
  FullcalendarBundleJs := cMetro5cMetro5FullcalendarBundleJs[aMetroVersion];
  VendorsBundleCss := cMetro5VendorsBundleCss[aMetroVersion];
  VendorsBundleJs := cMetro5VendorsBundleJs[aMetroVersion];
end;

{ TMetro5Frame }

constructor TMetro5Frame.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
var
  a: TJanuaHtmlParams;
  t1: IJanuaBody;
  t2: IJanuaHeadSection;
begin
  // la parte inherited innesca le procedure di preparazione della pagina e la crezione ed
  // impostazione delle diverse variabili locali
  // alcune informazioni, invece, dovrebbero poggiarsi su variabli globali quali
  // l'Assets URL.
  inherited;
  t1 := TMetro5FrameBody.Create(HtmlHelper);
  t2 := TJanuaHeadSection.Create(HtmlHelper, 'head');
  self.Body := t1;
  FContentBody := (Body as IMetro5FrameBody).Content.Body;
  self.HeadSection := t2;
  // Pagae Initialization
  SetLength(a, 2);
  a[0].K := 'name';
  a[0].V := 'description';
  a[1].K := 'content';
  a[1].V := 'Dilettantissimo portale del calcio ligure';
  FHeadSection.AddMeta(a);
  a[0].K := 'http-equiv';
  a[0].V := 'X-UA-Compatible';
  a[1].K := 'content';
  a[1].V := 'IE=edge';
  FHeadSection.AddMeta(a);
  self.FHeadSection.CommentBefore := 'begin::Head';
  self.FHeadSection.CommentAfter := 'end::Head';
  Body.UID := 'BODY';
  Body.Level := 1;
  self.ViewPort := 'width=device-width, initial-scale=1, shrink-to-fit=no';
  self.HeadSection.AddScriptUrl('https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js');
  self.HeadSection.SelectedItem.CommentBefore := 'begin::Web font ';
  self.HeadSection.AddScript('WebFont.load({');
  with self.HeadSection.SelectedItem do
  begin
    AddLineText
      ('   google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700","Asap+Condensed:500"]},');
    AddLineText('  active: function() {');
    AddLineText('    sessionStorage.fonts = true;');
    AddLineText('  }');
    AddLineText('});');
    CommentAfter := 'end::Web font';
  end;
  with HeadSection do
  begin
    AddCssRef('https://use.fontawesome.com/releases/v5.3.1/css/all.css');
    // integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">);
    SelectedItem.AddParam('integrity',
      'ha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU');
    SelectedItem.AddParam('crossorigin', 'anonymous');
    // HeadSection.AddCssRef(AssetsURL + HtmlHelper.Theme + '/assets/vendors/custom/fullcalendar/fullcalendar.bundle.css');
    AddCssRef('?page=resources&file=' + JanuaMetro5Files.FullcalendarBundleCss);
    SelectedItem.CommentBefore := 'begin::Base Styles';
    AddCssRef('?page=resources&file=' + JanuaMetro5Files.VendorsBundleCss);
    // self.HeadSection.AddCssRef(AssetsURL + self.HtmlHelper.Theme + '/assets/vendors/base/vendors.bundle.css');
    AddCssRef('?page=resources&file=' + JanuaMetro5Files.Demo10StyleBundleCss);
    // HeadSection.AddCssRef(AssetsURL + HtmlHelper.Theme + '/assets/demo/' + HtmlHelper.Theme + '/base/style.bundle.css');
    SelectedItem.CommentAfter := 'end::Base Styles';
  end;

end;

function TMetro5Frame.GetContentBody: IJanuaHtmlObject;
begin
  Result := self.FContentBody
end;

procedure TMetro5Frame.SetContentBody(const Value: IJanuaHtmlObject);
begin
  self.FContentBody := Value
end;

{ TMetro5FrameBody }

procedure TMetro5FrameBody.AddMenu(aMenu: IJanuaHtmlObject);
begin
  inherited;
  raise exception.Create(self.ClassName + '.AddMenu not implemented yet');
end;

constructor TMetro5FrameBody.Create(aHelper: Janua.Html.Intf.IHtmlHelper);
begin
  inherited;
  // Page Body is composed by 3 Main Sections ....................................
  // Loader (should be enabled or not).
  self.AddClasses(['m-page--fluid', 'm-footer--push', 'm-aside--offcanvas-default']);
  // self.AddStyle(THtmlStyle.Font);
  FPageLoader := TMetro5PageLoader.Create(self.HtmlHelper);
  FPageLoader.Level := self.Level + 1;
  // Content
  FContent := TMetro5FrameContent.Create(self.HtmlHelper);
  FContent.tag := 'div';
  // FContent.Level := self.Level + 1;
  // Scripts
  FScripts := TMetro5PageScripts.Create(self.HtmlHelper, TJanuaHtmlFactory.CreateScriptAsScript(aHelper, '',
    TJanuaMimeType.jmtTextJavascript));
  // FScripts.Level := self.Level + 1;
  FScripts.tag := 'div';
  FScripts.ShowEnclosingTag := False;
  // Add To The Body
  // Loader, Content e 'Scripts' sono al medesimo Livello ..................
  self.Add(self.FPageLoader);
  self.Add(self.FContent);
  self.Add(self.FScripts);
end;

function TMetro5FrameBody.GetContent: IMetro5FrameContent;
begin
  Result := self.FContent
end;

procedure TMetro5FrameBody.SetContent(const Value: IMetro5FrameContent);
begin
  self.FContent := Value
end;

initialization

try
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      { Insert Procedures ............................... }
      FHelperPages := TMetro5HtmlHelper.Create;
      FHelperPages.Theme := 'demo10';
      JanuaMetro5Files := TMetro5Files.Create(TMetro5Version.ver4555);
    end, 'Janua.Html.Metro5.Pages.initialization');
except
  on e: exception do
    raise exception.Create('Html.Metro5.Pages.Initialization ' + e.Message);
end;

end.
