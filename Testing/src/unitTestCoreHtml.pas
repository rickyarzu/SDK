unit unitTestCoreHtml;

interface

uses
  DUnitX.TestFramework, Janua.Html.Types, Janua.Html.Impl, Janua.Html.Intf;

type

  [TestFixture]
  TTestJanuaHtml = class(TObject)
  private
    h: IHtmlHelper;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure HtmlHead;
    [Test]
    procedure HtmlPage;
    [Test]
    procedure AddSimpleTag;
    [Test]
    procedure ReplaceSimpleTag;
    [Test]
    procedure AddSimpleTagParams;
    [Test]
    procedure AddClass;
    [Test]
    procedure DelClass;
    [Test]
    procedure HtmlLink;
    [Test]
    procedure NestedDiv;
    [Test]
    procedure HtmlLinkFail;
    [TestCase('True', 'true,FF0199')]
    [TestCase('False', 'false,F91GG')]
    procedure TestCSSColor(const expected: boolean; const aHex: string);
    [TestCase('True', 'true,center')]
    [TestCase('False', 'false,notlisted')]
    procedure TestCSSList(const expected: boolean; const aContent: string);
    [TestCase('Url', 'fa fa-soccer-ball-o,prima categoria,/url.html,true')]
    [TestCase('NoUrl', 'fa fa-soccer-ball-o,prima categoria,,false')]
    procedure TestMenuItem(Icon, Text, Url: string; aSelected: boolean);
    [Test]
    procedure HtmlTableSort;
    [Test]
    procedure HtmlCss;
  end;

implementation

uses System.SysUtils, System.Classes;

procedure TTestJanuaHtml.AddClass;
var
  a: IJanuaHtmlObject;
begin
  a := TJanuaHtmlObject.Create(h, 'body');

  a.AddClass('m-page--fluid');
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione body');
  DUnitX.TestFramework.Assert.IsTrue(a.ClassCount = 1, 'Errore Creazione body: ClassCount=' +
    IntToStr(a.Count));
  a.AddClasses(['m-page--fluid', 'm-page--loading-enabled', 'm-page--loading']);
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione body');
  DUnitX.TestFramework.Assert.IsTrue(a.ClassCount = 3, 'Errore Creazione body: ClassCount=' +
    IntToStr(a.Count));
end;

procedure TTestJanuaHtml.AddSimpleTag;
var
  a: IJanuaHtmlObject;
begin
  a := TJanuaHtmlObject.Create(h, 'body');
  a.AddSimpleTag('h1', 'Ciao Mondo!');
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione Head');
  DUnitX.TestFramework.Assert.IsTrue(a.Count = 1, 'Errore Creazione Head: Count=' + IntToStr(a.Count));
end;

procedure TTestJanuaHtml.AddSimpleTagParams;
var
  a: IJanuaHtmlObject;
  b: TJanuaHtmlParams;
begin
  a := TJanuaHtmlObject.Create(h, 'body');
  b := [TJanuaHtmlParam.Create('class', 'test')];
  a.AddSimpleTag('h1', 'Ciao Mondo!', b, false);
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione Head');
  DUnitX.TestFramework.Assert.IsTrue(a.Count = 1, 'Errore Creazione Head: Count=' + IntToStr(a.Count));
end;

procedure TTestJanuaHtml.DelClass;
var
  a: IJanuaHtmlObject;
begin
  a := TJanuaHtmlObject.Create(h, 'body');
  a.AddClass('m-page--fluid');
  a.DelClass('m-page--fluid');
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione body');
  DUnitX.TestFramework.Assert.IsTrue(a.ClassCount = 0, 'Errore Creazione body: ClassCount=' +
    IntToStr(a.Count));
  a.AddClasses(['m-page--fluid', 'm-page--loading-enabled', 'm-page--loading']);
  a.DelClasses(['m-page--fluid', 'm-page--loading-enabled', 'm-page--loading']);
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione body');
  DUnitX.TestFramework.Assert.IsTrue(a.ClassCount = 0, 'Errore Creazione body: ClassCount=' +
    IntToStr(a.Count));

end;

procedure TTestJanuaHtml.HtmlCss;
var
  LCssStyle: IJanuaCssStyle;
  LCss: IJanuaCssObject;
  LMedia: IJanuaCssMedia;
  aStrings: TStrings;
begin
  aStrings := TStringList.Create;
  try
    LCssStyle := TJanuaCssStyle.Create(JanuaHtmlHelper);
    Assert.IsNotNull(LCssStyle, 'LCssStyle is null');
    LCss := TJanuaCssObject.Create(['prima', 'seconda', 'terza'], []);
    LCss.AddStyle(THtmlStyle.BackgroundColor, '#809923');
    LCss.AddStyle(THtmlStyle.PaddingLeft, '10px');
    LCssStyle.AddCss(LCss);
    LCss := nil;
    LCss := TJanuaCssObject.Create([], ['a', 'p', 'span']);
    LCss.AddStyle(THtmlStyle.Color, '#809923');
    LCss.AddStyle(THtmlStyle.FontSize, '12px');
    LCssStyle.AddCss(LCss);
    aStrings.Text := LCssStyle.AsHtml;
    LCssStyle := nil;
    LCssStyle := TJanuaCssStyle.Create(JanuaHtmlHelper);

    LCss := LCssStyle.AddCssByTags(['a', 'p', 'span']);
    LCss.AddStyle(THtmlStyle.Color, '#809923');
    LCss.AddStyle(THtmlStyle.FontSize, '12px');

    LCss := LCssStyle.AddCssByClasses(['prima', 'seconda', 'terza']);
    LCss.AddStyle(THtmlStyle.BackgroundColor, '#809923');
    LCss.AddStyle(THtmlStyle.PaddingLeft, '10px');

    aStrings.Add(LCssStyle.AsHtml);

    LMedia := LCssStyle.AddMediaByFeature(TcssMediaType.MediaNone, TCssMediaFeature.MaxWidth, '1024px');
    LCss := LMedia.AddCssByClasses(['m-page', 'm-page__container']);
    LCss.AddStyle(THtmlStyle.Padding, '0 5px;');
    LCss := LMedia.AddCssByClasses(['m-page--fluid', 'm-page', 'm-page__container']);
    LCss.AddStyle(THtmlStyle.Padding, '0 15px;');
    LCss := LMedia.AddCssByClasses(['m-body', 'm-wrapper']);
    LCss.AddStyle(THtmlStyle.Padding, '0 0px;');
    aStrings.Add(LCssStyle.AsHtml);
  finally
    aStrings.Free;
  end;
end;

procedure TTestJanuaHtml.HtmlHead;
var
  a: IJanuaHeadSection;
begin
  a := TJanuaHeadSection.Create(h);

  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione Head');
  DUnitX.TestFramework.Assert.IsTrue(a.Count = 3, 'Errore Creazione Head: Count=' + IntToStr(a.Count));

end;

procedure TTestJanuaHtml.HtmlLink;
var
  a: IJanuaHtmlLink;
begin
  // constructor .Create(aUrl, aLink: string; aRels: TJanuaLinkRelTypes; aCross: boolean);
  a := TJanuaHtmlLink.Create(h, true, 'http://cdn.ergomercator.com/', 'test.css',
    [TJanuaLinkRelType.stylesheet], true);
  DUnitX.TestFramework.Assert.IsTrue(a.Tag = 'link', 'Errore Creazione HtmlLink Tag = ' + a.Tag);
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione HtmlLink');
  DUnitX.TestFramework.Assert.IsTrue(a.Count = 0, 'Errore Creazione HtmlLink: Count=' + IntToStr(a.Count));

  a := nil;

  a := TJanuaHtmlLink.Create(h, false, 'http://cdn.ergomercator.com/', 'test.css', [], true);

  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione HtmlLink');
  DUnitX.TestFramework.Assert.IsTrue(a.Count = 0, 'Errore Creazione HtmlLink: Count=' + IntToStr(a.Count));

end;

procedure TTestJanuaHtml.HtmlLinkFail;
var
  a: IJanuaHtmlLink;
begin
  a := TJanuaHtmlLink.Create(h, true, 'http://cdn.ergomercator.com/', 'test.css', [], true);
  Assert.WillNotRaise (
    procedure
    begin
       A.Prepare;
    end, Exception, 'method did raise EXCEPTION');
end;

procedure TTestJanuaHtml.HtmlPage;
var
  a: IJanuaHtmlPage;
begin
  a := TJanuaHtmlFactory.CreatePage as IJanuaHtmlPage;
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione Home');
  DUnitX.TestFramework.Assert.IsTrue(a.Count = 0, 'Errore Creazione Home: Count=' + IntToStr(a.Count));

end;

procedure TTestJanuaHtml.HtmlTableSort;
var
  La: IHtmlTable;
  Lr: IHtmlTableRow;
  s: string;
begin
  La := THtmlTable.Create(h);
  La.HasHeader := true;
  Lr := THtmlTableRow.Create(h);
  Lr.IsHeader := true;
  Lr.AddValue('uno');
  Lr.AddValue('due');
  Lr.AddValue('tre');
  Lr.IsSortable := true;
  La.Id := 'table';
  La.Header.Add(Lr);

  La.AddRow(Lr);

  La.Sortable := true;
  s := La.AsHtml;
  Assert.AreNotEqual('', s, 's is nil');

end;

procedure TTestJanuaHtml.NestedDiv;
var
  a: IJanuaHtmlObject;
begin
  a := TJanuaHtmlObject.Create(h, 'div');

  a.AddSimpleTag('div', '');
  a.SelectedItem.Id := 'testid';
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione Title');
  DUnitX.TestFramework.Assert.IsTrue(a.Count = 1, 'Errore Creazione Title: Count=' + IntToStr(a.Count));
  DUnitX.TestFramework.Assert.IsTrue(a.SelectedItem.ParamCount = 1, 'Errore Creazione Nested Div: Param=' +
    IntToStr(a.SelectedItem.ParamCount));

end;

procedure TTestJanuaHtml.ReplaceSimpleTag;
var
  a: IJanuaHtmlObject;
begin
  a := TJanuaHtmlObject.Create(h, 'head');
  a.AddOrReplaceSimpleTag('title', 'Ciao Mondo!');
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione Title');
  DUnitX.TestFramework.Assert.IsTrue(a.Count = 1, 'Errore Creazione Title: Count=' + IntToStr(a.Count));
  // Test Replace
  a.AddOrReplaceSimpleTag('title', 'Ciao Mondo!');
  DUnitX.TestFramework.Assert.IsTrue(a.AsHtml <> '', 'Errore Creazione Title');
  DUnitX.TestFramework.Assert.IsTrue(a.Count = 1, 'Errore Creazione Title: Count=' + IntToStr(a.Count));

end;

procedure TTestJanuaHtml.Setup;
begin
  h := THtmlHelper.Create;
end;

procedure TTestJanuaHtml.TearDown;
begin
end;

procedure TTestJanuaHtml.TestCSSColor(const expected: boolean; const aHex: string);
begin
  Assert.AreEqual(expected, Janua.Html.Types.Check(THtmlStyle.BackgroundColor, aHex))
end;

procedure TTestJanuaHtml.TestCSSList(const expected: boolean; const aContent: string);
begin
  Assert.AreEqual(expected, Janua.Html.Types.Check(THtmlStyle.AlignContent, aContent))
end;

procedure TTestJanuaHtml.TestMenuItem(Icon, Text, Url: string; aSelected: boolean);
var
  aItem: IHtmlmenuItem;
begin
  aItem := THtmlmenuItem.Create(Icon, Text, Url, aSelected);
  Assert.AreEqual(Icon, aItem.Icon);
  Assert.AreEqual(Text, aItem.Text);
  Assert.AreEqual(Url, aItem.Url);
  Assert.AreEqual(aSelected, aItem.Selected);
end;

initialization

TDUnitX.RegisterTestFixture(TTestJanuaHtml);

end.
