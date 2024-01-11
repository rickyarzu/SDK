unit unitTestConf;

interface

uses
  DUnitX.TestFramework,
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Conf, Janua.Core.Legacy;

type

  [TestFixture]
  TTestConf = class(TObject)
  private
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaConf1: TJanuaConfiguration;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestOS;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA', 'test.ergomercator.com')]
    procedure TestConf(const aFileName: string);
  end;

implementation

uses System.SysUtils, Janua.Application.Framework;

procedure TTestConf.Setup;
begin
end;

procedure TTestConf.TearDown;
begin
  try
  except
    on E: Exception do
      RaiseException('TearDown', E, self);
  end;
end;

procedure TTestConf.TestOS;
begin

end;

procedure TTestConf.TestConf(const aFileName: string);
begin
  JanuaConf1 := TJanuaConfiguration.Create('C:\Januaproject\test\conf\' + aFileName + '.json');
  Assert.IsNotNull(JanuaConf1);
  Assert.IsTrue(JanuaConf1.isLoaded);
  JanuaConf1.AddKey('test');
  JanuaConf1.Keys['test'].AddItem('testbool', 1);
  JanuaConf1.Keys['test'].AddItem('testint', True);
  JanuaConf1.Keys['test'].AddItem('testint64', 12345678901234567);
  JanuaConf1.Keys['test'].AddItem('testdate', Date);
  JanuaConf1.Keys['test'].AddItem('teststrings', 'ciao mondo');
  JanuaConf1.SaveConfiguration;
  Assert.AreEqual(1, JanuaConf1.Count);
  Assert.AreEqual(5, JanuaConf1.Keys['test'].Count);
end;

initialization

TDUnitX.RegisterTestFixture(TTestConf);

end.
