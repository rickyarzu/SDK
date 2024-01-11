unit Janua.DunitX.Test;

interface

uses
  DunitX.TestFramework;

type

  [TestFixture]
  TDemoTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    //[Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    //[Test]
    //[TestCase('TestA', '1,2')]
    //[TestCase('TestB', '3,4')]
    procedure Test2(const AValue1: Integer; const AValue2: Integer);
  end;

implementation

uses Janua.Core.Types, Janua.Core.Functions, Janua.Application.Framework, Janua.Cloud.Types;

{uses Janua.Core.Types;}

procedure TDemoTest.Setup;
begin
end;

procedure TDemoTest.TearDown;
begin
end;

procedure TDemoTest.Test1;
begin
end;

procedure TDemoTest.Test2(const AValue1: Integer; const AValue2: Integer);
begin
end;

initialization

TDUnitX.RegisterTestFixture(TDemoTest);

end.
