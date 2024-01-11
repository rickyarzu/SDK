unit unitTestApplicationFramework;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  CoreTest = class(TObject)
  public
    [Test]
    procedure Execproc;   [Test]
    procedure AppTitle;
  end;

implementation

uses Janua.Application.Framework;

{ CoreTest }

procedure CoreTest.AppTitle;
begin
  TJanuaApplication.AppName := 'TestApp';
  Assert.AreEqual('TestApp', TJanuaApplication.AppName);
end;

procedure CoreTest.Execproc;
var
  lTest: Integer;
begin
  lTest := 1;
  TJanuaApplication.Execproc(
    procedure
    begin
      Inc(lTest);
    end, 'TestProc', self);
  Assert.AreEqual(2, lTest);
end;

initialization

TDUnitX.RegisterTestFixture(CoreTest);

end.
