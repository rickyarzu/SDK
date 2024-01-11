unit unitTestFMXListView;

interface

uses
  DUnitX.TestFramework, Janua.FMX.ListViewMenu;

type

  [TestFixture]
  TTestJanuaCoreClasses = class(TObject)
  private
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TestListViewMenuCreate;
  end;

implementation

{ TTestJanuaCoreClasses }

procedure TTestJanuaCoreClasses.Setup;
begin
end;

procedure TTestJanuaCoreClasses.TearDown;
begin

end;

procedure TTestJanuaCoreClasses.TestListViewMenuCreate;
var
  a:  TJanuaFMXListViewMenu;
begin
  a := TJanuaFMXListViewMenu.Create(nil);
  Assert.IsTrue(Assigned(a));

end;

end.