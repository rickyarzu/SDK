unit Janua.Html.Metro5.Test;

interface

uses
  DUnitX.TestFramework, Janua.Html.Intf, Janua.Html.Metro5.Pages;

type

  [TestFixture]
  TTestMetro5 = class(TObject)
  protected
    FHelper: Janua.Html.Intf.IHtmlHelper;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Metro5Object;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure Metro5ColorObject;
    [Test]
    procedure Metro5Icon;
    [Test]
    procedure Badge;
    [Test]
    procedure MenuItem;
    [Test]
    procedure StackItem;
    [Test]
    procedure Container;
    [Test]
    procedure HorMenu;
    [Test]
    procedure NavItem;
    [Test]
    procedure Frame;
  end;

implementation

uses Janua.Application.Framework, Janua.Html.Metro5.Impl, Janua.Html.Metro5.Types, System.SysUtils,
  Janua.Html.Impl, Janua.Html.Metro5.Intf;

procedure TTestMetro5.Setup;
begin
  FHelper := Janua.Html.Metro5.Impl.TMetro5Factory.CreateHtmlHelper;
end;

procedure TTestMetro5.StackItem;
var
  tmp: IMetro5StackItem;
  Test: string;
begin
  { TMetro5StackItem = class(TMetro5HtmlObject)
    private
    FVerAlign: TMetro5VerAlign;
    FHorAlign: TMetro5HorAlign;
    FFluid: boolean; }
  tmp := TMetro5StackItem.Create(self.FHelper);
  Assert.AreEqual(tmp.Count, 0, 'tmp do not have count = 0');
  tmp.VerAlign := TMetro5VerAlign.vaTop;
  tmp.HorAlign := TMetro5HorAlign.haCenter;
  Assert.AreEqual(tmp.VerAlign, TMetro5VerAlign.vaTop, 'tmp.VerAlign not registered');
  Assert.AreEqual(tmp.HorAlign, TMetro5HorAlign.haCenter, 'tmp.VerAlign not registered');
  // Verifica del Class Count
  Assert.AreEqual(1, tmp.ClassCount, 'tmp.ClassCount <> 1');
  Assert.AreEqual(tmp.tag, 'div', 'tmp.tag = ' + tmp.tag);
  Test := tmp.AsHtml;

end;

procedure TTestMetro5.TearDown;
begin
  try
    FHelper := nil;
  except
    on E: Exception do
      RaiseException('TearDown', E, self);

  end;

end;

procedure TTestMetro5.Badge;
var
  tmp: IMetro5Badge;
  Test: string;
begin
  { TMetro5Badge = class(TMetro5HtmlColorObject)
    private
    FBadgeType: TMetro5BadgeType; }
  tmp := TMetro5Badge.Create(self.FHelper);
  Assert.AreEqual(tmp.Count, 0, 'tmp do not have count = 0');
  tmp.BadgeType := TMetro5BadgeType.Rounded;
  Assert.AreEqual(tmp.BadgeType, TMetro5BadgeType.Rounded, 'tmp.BadgeType not registered');
  Assert.AreEqual(tmp.ClassCount, 4, 'tmp.ClassCount <> 1');
  Assert.AreEqual(tmp.tag, 'span', 'tmp.tag = ' + tmp.tag);
  Test := tmp.AsHtml;

end;

procedure TTestMetro5.Container;
var
  tmp: IMetro5HtmlObject;
  Test: string;
begin
  { constructor TMetro5Container.Create(aHelper: IHtmlHelper);
    begin
    inherited;
    self.tag := 'div';
    self.BaseClass := Container;
    self.AddClasses(['m-container--fluid', 'm-container--full-height', 'm-page__container']);
  }
  tmp := TMetro5Container.Create(self.FHelper);
  Assert.AreEqual('div', tmp.tag, 'tmp.tag not div: ' + tmp.tag);
  Assert.IsTrue(TM5SClassType.Container = tmp.BaseClass, 'tmp.BaseClass not Container: ' + tmp.tag);
  Assert.AreEqual(0, tmp.Count, 'tmp do not have count = 0: ' + IntToStr(tmp.Count));
  Assert.AreEqual(4, tmp.ClassCount, 'tmp.ClassCoutn <> 1');
  Test := tmp.AsHtml

end;

procedure TTestMetro5.Frame;
var
  aFrame: IMetro5Frame;
  s: string;
begin
  aFrame := TMetro5Frame.Create(FHelper);
  s := aFrame.AsHtml;
  Assert.IsTrue(s <> '', 'Frame no Html Output');
end;

procedure TTestMetro5.HorMenu;
var
  tmp: IMetro5MenuItem;
  aItem: IHtmlMenuItem;
  Test: string;
begin
  { self.tag := 'li';
    self.BaseClass := MenuItem;
    self.AddParam('m-menu-link-redirect', '1');
    self.AddParam('aria-haspopup', 'true');
    property Selected: boolean read FSelected write SetSelected;
    property MenuText: string read FMenuText write SetMenuText;
    property Url: string read FUrl write SetUrl;
    property Icon: string read FIcon write SetIcon;
  }
  aItem := THtmlMenuItem.Create('fa fa-futbol', 'prova testo', 'http://www.libero.it', True);
  tmp := TMetro5MenuItem.Create(self.FHelper, aItem);
  tmp.Selected := True;
  Assert.AreEqual('li', tmp.tag, 'tmp.tag not div: ' + tmp.tag);
  Assert.IsTrue(TM5SClassType.MenuItem = tmp.BaseClass, 'tmp.BaseClass not MenuItem: ' + tmp.tag);
  Assert.AreEqual(3, tmp.Count(True), 'tmp do not have count = 3: ' + IntToStr(tmp.Count));
  Assert.AreEqual(2, tmp.ClassCount, 'tmp.ClassCount <> 1');
  Assert.AreEqual(True, tmp.Selected, 'tmp.Selected <> True');
  Assert.AreEqual('http://www.libero.it', tmp.Url, 'tmp.Url <> http://www.libero.it');
  Test := tmp.AsHtml

end;

procedure TTestMetro5.MenuItem;
var
  tmp: IMetro5MenuItem;
  Test: string;
begin
  tmp := TMetro5MenuItem.Create(self.FHelper);
  tmp.Selected := True;
  tmp.MenuText := 'test';
  tmp.Icon := 'fa fa-futbol';
  tmp.Url := 'http://www.test.com';
  Assert.AreEqual(1, tmp.Count, 'tmp do not have count = 0: ' + IntToStr(tmp.Count));
  Assert.AreEqual(2, tmp.ClassCount, 'tmp.ClassCoutn <> 1');
  Test := tmp.AsHtml

end;

procedure TTestMetro5.Metro5ColorObject;
var
  tmp: IMetro5HtmlColorObject;
  Test: string;
begin
  tmp := TMetro5HtmlColorObject.Create(self.FHelper, 'div');

  tmp.BaseClass := TM5SClassType.Grid;
  Assert.AreEqual(tmp.Count, 0, 'tmp do not have count = 0');
  Assert.IsTrue(tmp.BaseClass = TM5SClassType.Grid, 'tmp.BaseClass not registered');
  Assert.IsTrue(tmp.ClassCount = 1, 'tmp.ClassCoutn <> 1');
  tmp.StateColor := TM5StateColorsStyle.m5sPrimary;
  tmp.FontColor := TM5StateColorsStyle.m5sSecondary;
  Assert.IsTrue(tmp.StateColor = TM5StateColorsStyle.m5sPrimary, 'tmp.StateColor not registered');
  Assert.IsTrue(tmp.FontColor = TM5StateColorsStyle.m5sSecondary, 'tmp.FontColor not registered');
  Test := tmp.AsHtml

end;

procedure TTestMetro5.Metro5Icon;
var
  tmp: IMetro5Icon;
  Test: string;
begin
  { TMetro5Icon = class(TMetro5HtmlColorObject)
    strict private
    FIconType: TMetro5IconType;
  }
  tmp := TMetro5Icon.Create(self.FHelper, TMetro5IconType.jmiEnvelope);
  Assert.AreEqual(tmp.Count, 0, 'tmp do not have count = 0');
  Assert.IsTrue(tmp.IconType = TMetro5IconType.jmiEnvelope, 'tmp.IconType not registered');
  Assert.AreEqual(tmp.ClassCount, 1, 'tmp.ClassCount <> 1');
  Assert.AreEqual(tmp.tag, 'i', 'tmp.tag = ' + tmp.tag);
  Test := tmp.AsHtml;

end;

procedure TTestMetro5.Metro5Object;
var
  tmp: IMetro5HtmlObject;
  Test: string;
begin
  tmp := TMetro5HtmlObject.Create(self.FHelper, 'div');

  tmp.BaseClass := TM5SClassType.Grid;
  Assert.AreEqual(tmp.Count, 0, 'tmp do not have count = 0');
  Assert.IsTrue(tmp.BaseClass = TM5SClassType.Grid, 'tmp.BaseClass not registered');
  Assert.IsTrue(tmp.ClassCount = 1, 'tmp.ClassCoutn <> 1');
  Test := tmp.AsHtml;

end;

procedure TTestMetro5.NavItem;
var
  tmp: IMetro5NavItem;
  Test: string;
begin
  { TMetro5NavItem = class(TMetro5HtmlObject)
    strict private
    FA: TJanuaHtmlLink;
    FIcon: TJanuaHtmlObject;
    FT: TJanuaHtmlObject;
    FB: TMetro5Badge;
    private
    FBadgeColor: TM5StateColorsStyle;
    FIconType: TMetro5IconType;
    FHadBadge: Boolean;
    FBadgeText: string;
    FText: string;
    FUrl: string;
  }
  tmp := TMetro5NavItem.Create(self.FHelper);

  tmp.BadgeColor := TM5StateColorsStyle.m5sSuccess;
  tmp.IconType := TMetro5IconType.jmiEnvelope;
  tmp.HasBadge := True;
  tmp.Text := 'Hello Wordl';
  tmp.Url := 'http://www.test.com';
  Assert.AreEqual(True, tmp.HasBadge, 'tmp do not have HasBadge = True: ' + tmp.HasBadge.ToString);
  Assert.AreEqual('Hello Wordl', tmp.Text, 'tmp.Text <> Hello Wordl');
  Assert.AreEqual('http://www.test.com', tmp.Url, 'tmp.Text <> http://www.test.com');
  Assert.IsTrue(tmp.BadgeColor = TM5StateColorsStyle.m5sSuccess);
  Assert.IsTrue(tmp.IconType = TMetro5IconType.jmiEnvelope);
  Test := tmp.AsHtml

end;

initialization

TDUnitX.RegisterTestFixture(TTestMetro5);

end.
