unit unitTestPhoenixCore;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TPhoenixTesting = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
  end;

implementation

procedure TPhoenixTesting.Setup;
begin
end;

procedure TPhoenixTesting.TearDown;
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TPhoenixTesting);

end.
