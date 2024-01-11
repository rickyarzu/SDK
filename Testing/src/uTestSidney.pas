unit uTestSidney;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TJanuaSidneyTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
  end;

implementation

procedure TJanuaSidneyTest.Setup;
begin
end;

procedure TJanuaSidneyTest.TearDown;
begin
end;


initialization
  TDUnitX.RegisterTestFixture(TJanuaSidneyTest);

end.
