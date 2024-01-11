unit unitTestTMLogistic;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TTMLogisticApp = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestSetAPP;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestICT', 'ict@tailormadelogistic.com,R1cc4rd0')]
    // [TestCase('TestDaniele', 'danieles@tailormadelogistic.com,D4n13l3')]
    procedure TestLogin(const AValue1: string; const AValue2: string);
  end;

implementation

uses Janua.TMLogistic.VCLApplication, Janua.Core.AppController, Janua.Application.Framework;

procedure TTMLogisticApp.Setup;
begin
end;

procedure TTMLogisticApp.TearDown;
begin
end;

procedure TTMLogisticApp.TestLogin(const AValue1, AValue2: string);
var
  lTest: Boolean;
var
  vTest: Boolean;
begin
  // Access Memory Error on Termination ....

    vTest := AValue1 = 'ict@tailormadelogistic.com';
    TJanuaTMLogisticVCLApplication.ApplicationSetup;
    lTest := TJanuaApplication.UserSessionVM.SilentLogin(AValue1, AValue2);
    Assert.AreEqual(vTest, lTest, 'Login Failed');
    TJanuaApplication.Terminate;
    Assert.IsTrue(TJanuaApplication.IsTerminating);
    TJanuaApplication.Setup;
end;

procedure TTMLogisticApp.TestSetAPP;
begin
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TJanuaTMLogisticVCLApplication.ApplicationSetup;
  TJanuaApplication.Title := 'TM Logistic Main Application';
  Assert.AreEqual(TJanuaApplication.Title, 'TM Logistic Main Application');
end;

initialization

TDUnitX.RegisterTestFixture(TTMLogisticApp);

end.
