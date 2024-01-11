unit Janua.Core.Json.Test;

interface

uses
  DUnitX.TestFramework, Janua.Core.Types, Janua.Core.Json;

type

  [TestFixture]
  TJanuaCoreJsonTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestStringToJsonString;
  end;

implementation

{ TJanuaCoreJsonTest }

procedure TJanuaCoreJsonTest.Setup;
begin

end;

procedure TJanuaCoreJsonTest.TearDown;
begin

end;

procedure TJanuaCoreJsonTest.TestStringToJsonString;
var
  lString: string;
begin
  lString := StringToJsonString('Test');
  Assert.AreEqual('"Test"', lString);
  lString := StringToJsonString('Test' + sLineBreak + 'Linea2');
  Assert.AreEqual('"Test\r\nLinea2"', lString);
end;

initialization

TDUnitX.RegisterTestFixture(TJanuaCoreJsonTest);

end.
