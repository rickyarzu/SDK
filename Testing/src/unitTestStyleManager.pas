unit unitTestStyleManager;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TStyleManagerTest = class
  private
   procedure LoadWindowsStyles;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure RegisterClass;
    [Test]
    procedure TestCreationInterface;
    [Test]
    procedure TestFontName;
    [Test]
    procedure TestHeigth;
    [Test]
    procedure TestGetStyle;
    [Test]
    procedure ApplicationName;
    // Sample Methods
    // Simple single Test
  end;

implementation

uses
  // Core Application to Register Components and Apps ...
  Janua.Application.Framework, System.SysUtils,  VCL.Themes, Janua.Core.Types,
  Janua.VCL.Controls.Forms.Impl, Janua.Controls.Forms.Intf;

{ TJanuaSidneyTest }

procedure TStyleManagerTest.ApplicationName;
begin
  TJanuaApplication.AppName := 'TestApplication';
  Assert.AreEqual('TestApplication', TJanuaApplication.AppName)
end;

procedure TStyleManagerTest.LoadWindowsStyles;
var
 Style: String;
 i: integer;
 searchResults : TSearchRec;
 SearchDir: string;
begin
 SearchDir := sGitHubHome + PathDelim + 'SDK\res\Styles' + PathDelim;

 if DirectoryExists(SearchDir) then begin
   if FindFirst(SearchDir+'*.*',
                faAnyFile - faDirectory,
                searchResults) = 0 then
   repeat
     try
       if TStyleManager.IsValidStyle(
            SearchDir+searchResults.Name) then
          TStyleManager.LoadFromFile(
             SearchDir+searchResults.Name);
     except
       // Who cares.. try the next one.
     end;
   until FindNext(searchResults) <> 0;
 end;


end;

procedure TStyleManagerTest.RegisterClass;
begin
  TJanuaApplicationFactory.RegisterClass(IJanuaStyleManager, TJanuaVCLStyleManager);
  Assert.Pass('Error Register IJanuaStyleManager');
end;

procedure TStyleManagerTest.Setup;
begin

end;

procedure TStyleManagerTest.TearDown;
begin

end;

procedure TStyleManagerTest.TestCreationInterface;
var
  aInterface: IJanuaStyleManager;
begin
  // TJanuaApplicationFactory.RegisterClass(IJanuaStyleManager, TJanuaVCLStyleManager);
  aInterface := TJanuaApplication.StyleManager;
  Assert.IsNotNull(aInterface, 'aInterface')
end;

procedure TStyleManagerTest.TestFontName;
var
  aFont: string;
  //aInterface: IJanuaStyleManager;
begin
  //aInterface := TJanuaApplication.StyleManager;
  //Assert.IsNotNull(aInterface, 'aInterface');
  aFont :=   TJanuaApplication.StyleManager.ScreenFontName;
  Assert.AreNotEqual('', aFont, 'aFont = ' + aFont);
end;

procedure TStyleManagerTest.TestGetStyle;
var
  aStyle: string;
  aBool: Boolean;
  //aInterface: IJanuaStyleManager;
begin
  LoadWindowsStyles;
  //aInterface := TJanuaApplication.StyleManager;
  //Assert.IsNotNull(aInterface, 'aInterface');
  TJanuaApplication.StyleManager.Activate;
  aStyle :=   TJanuaApplication.StyleManager.StyleName;
  Assert.AreEqual(TStyleManager.ActiveStyle.Name, aStyle, 'aStyle = ' + aStyle);
  aStyle :=  'Windows10 SlateGray';
  aBool := TJanuaApplication.StyleManager.TrySetStyle(aStyle);
  Assert.IsTrue(aBool, 'Style Failed');
  Assert.AreEqual(TStyleManager.ActiveStyle.Name, aStyle, 'aStyle = ' + aStyle);
  aStyle :=  'Does not exists';
  aBool := TJanuaApplication.StyleManager.TrySetStyle(aStyle);
  Assert.IsFalse(aBool, 'Style does not exists');
end;

procedure TStyleManagerTest.TestHeigth;
var
  aFont: integer;
  // aInterface: IJanuaStyleManager;
begin
  // aInterface := TJanuaApplication.StyleManager;
  //Assert.IsNotNull(aInterface, 'aInterface');
  aFont := TJanuaApplication.StyleManager.ScreenFontHeight;
  Assert.AreNotEqual(0, aFont, 'aFont = ' + aFont.ToString);
end;

initialization

TDUnitX.RegisterTestFixture(TStyleManagerTest);

end.
