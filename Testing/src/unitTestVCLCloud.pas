unit unitTestVCLCloud;

interface
uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TCloudVCL = class(TObject) 
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
  end;

implementation

procedure TCloudVCL.Setup;
begin
end;

procedure TCloudVCL.TearDown;
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TCloudVCL);
end.
