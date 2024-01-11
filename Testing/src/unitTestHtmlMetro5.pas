unit unitTestHtmlMetro5;

interface

uses
  DUnitX.TestFramework,
  Janua.Html.Intf,
  Janua.Html.Metro5.Types,
  Janua.Html.Impl,
  Janua.Html.Metro5.Impl,
  Janua.Html.Builder.Intf,
  JOrm.Cms.MainArguments.Intf,
  Janua.Orm.Intf;

type

  [TestFixture]
  TMetro5 = class(TObject)
  private
    FHelper: Janua.Html.Intf.IHtmlHelper;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestFactories;
    [TestCase('Url', 'fa fa-soccer-ball-o,notlisted,prima categoria,/url.html ')]
    [TestCase('NoUrl', 'fa fa-soccer-ball-o,notlisted,prima categoria, ')]
    procedure TestMenuItem(Icon, Text, Url: string);
    [TestCase('Url', 'prima categoria,fa fa-soccer-ball-o,notlisted,girone a,/url.html ')]
    procedure TestMenuGroup(Group, Icon, Text, Url: string);
    [Test]
    procedure MenuBuilder;
  end;

implementation

uses Janua.Metro5.Builder, Janua.Html.Types, System.SysUtils, Janua.Application.Framework,
  JOrm.Cms.MainArguments.Impl, JOrm.Cms.Arguments.Intf,
  Janua.Cms.Server.Intf, Janua.Cms.Server.Impl, Janua.Virtual.Cms,
  Janua.Html.Metro5.Intf;

procedure TMetro5.MenuBuilder;
var
  // DM: udmVirtualCmsServer.TdmVirtualCmsServer;
  aStorage: IJanuaCmsStorage;
  aServer: IJanuaServerCms;
  Test: IJanuaRecordSet;
  // ma: IMainArguments;
  // ar: IArguments;
  a: Janua.Html.Builder.Intf.IHtmlBuilder;
  m: Janua.Html.Builder.Intf.IHtmlMenuBuilder;
  ma: IMainArguments;
  ar: IArguments;
  o: IJanuaHtmlObject;
  s: string;
begin

    aStorage := TJanuaVirtualCmsStorage.Create;
    aServer := TJanuaServerCms.Create(aStorage, nil);
    aServer.OpenMainArguments;
    Assert.IsTrue(aServer.MainArguments.RecordCount > 0, 'aServer.MainArguments has 0 Records');

    // ma := Test as IMainArguments;
    // ar := ma.MainArgument.Arguments;

    s := aServer.MainArguments.ToJson;
    // occorre un campo anche 'calcolato' per il sub-url da decifrare.
    // il campo 'icona' diventa ora fondamentale almeno per gli argomenti
    // tanto quanto fondamentale una propr

    ma := aServer.MainArguments;
    ar := aServer.MainArguments.Arguments;
    Assert.IsNotNull(ma, 'ma is nil');
    Assert.IsNotNull(ar, 'ar is nil');

    TMetro5BuilderFactory.GetMenuBuilder(ma, ar, ma.Main_argument_des, nil, nil, ar.Argument_des, ar.Icon,
    ar.Url, ma.MainArgument.Selected, ar.Argument.Selected, m, a);
    Assert.IsNotNull(a);
    Assert.IsNotNull(m);
    o := a.GetElement;
    a := nil;
    Assert.IsNotNull(o);
    s := o.AsHtml;
    o := nil;
    aServer := nil;
    aStorage := nil;

end;

procedure TMetro5.Setup;
begin
  FHelper := TMetro5HtmlHelper.Create;
end;

procedure TMetro5.TearDown;
begin
  try
    FHelper := nil;
  except
    on E: Exception do
      RaiseException('TearDown', E, self);

  end;

end;

procedure TMetro5.TestFactories;

var
  a: IJanuaHtmlObject;
  s: string;

begin
  a := TMetro5Factory.CreateMetro5Badge(TMetro5BadgeType.Default, TM5StateColorsStyle.m5sNone, '5');
  Assert.AreEqual(TM5SClassType.Badge, (a as IMetro5HtmlObject).BaseClass);
  Assert.AreEqual(1, a.ClassCount);
  s := a.AsHtml;
  Assert.IsTrue(Length(s) > 0);
end;

procedure TMetro5.TestMenuGroup(Group, Icon, Text, Url: string);
var
  aItem: IHtmlmenuItem;
  aHtmlMenuItem: IMetro5MenuItem;
  aGroup: IHtmlMenuGroup;
begin
  aGroup := THtmlMenuGroup.Create('', Group, '#', False);
  aGroup.AddItem(Icon, Text, Url, False);
  Assert.AreEqual(1, aGroup.Items.Count);
end;

procedure TMetro5.TestMenuItem(Icon, Text, Url: string);
var
  aItem: IHtmlmenuItem;
  aHtmlMenuItem: IMetro5MenuItem;
begin
  aItem := THtmlmenuItem.Create(Icon, Text, Url, False);
  Assert.AreEqual(Icon, aItem.Icon);
  Assert.AreEqual(Text, aItem.Text);
  Assert.AreEqual(Url, aItem.Url, 'Errore Url=' + Url + ' Item.Url=' + aItem.Url);
  aHtmlMenuItem := Janua.Html.Metro5.Impl.TMetro5MenuItem.Create(FHelper, aItem);
  Assert.AreEqual(Url, aItem.Url);
  Assert.IsTrue(aHtmlMenuItem.AsHtml <> '', 'aHtmlMenuItem.AsHtml =' + aHtmlMenuItem.AsHtml);
  Assert.IsTrue(aHtmlMenuItem.FindByTag('a'), 'did not find Tag a');
  Assert.IsTrue(aHtmlMenuItem.SelectedItem.FindByTag('i'), 'did not find Tag i');
  Assert.IsTrue(aHtmlMenuItem.SelectedItem.FindByTag('span'), 'did not find tag span');

end;

initialization

TDUnitX.RegisterTestFixture(TMetro5);

end.
