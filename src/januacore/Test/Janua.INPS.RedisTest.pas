unit Janua.INPS.RedisTest;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TOpenShiftRedisTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation

procedure TOpenShiftRedisTest.Setup;
begin
end;

procedure TOpenShiftRedisTest.TearDown;
begin
end;

procedure TOpenShiftRedisTest.Test1;
begin
end;

procedure TOpenShiftRedisTest.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TOpenShiftRedisTest);

end.
