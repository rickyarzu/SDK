unit Janua.Cloud.Types.Test;

interface

uses
  DUnitX.TestFramework, Janua.Core.Types;

type

  [TestFixture]
  TJanuaCloudTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestRecMailServerConf;
    [Test]
    procedure TestMailMessageConf;
    [Test]
    procedure TestSMSMessageConf;
    [Test]
    procedure TestLandingMessageRecConf;
    // Test with TestCase Attribute to supply parameters.
    (*
      [Test]
      [TestCase('TestA', '1,2')]
      [TestCase('TestB', '3,4')]
      procedure Test2(const AValue1: Integer; const AValue2: Integer);
    *)
  end;

implementation

uses Janua.Cloud.Types;

procedure TJanuaCloudTest.Setup;
begin
end;

procedure TJanuaCloudTest.TearDown;

begin
end;

procedure TJanuaCloudTest.TestLandingMessageRecConf;
var
  M1, M2: TLandingMessageRecConf;
  aJson: string;
begin
  M1.Title := 'aaa';
  M1.setText('<html>' + sl + '<body>Hello $$test$$</body>' + sl + '</html>');
  Assert.AreEqual('<html>' + sl + '<body>Hello $$test$$</body>' + sl + '</html>', M1.Text);

  M1.CustomFields.AddReplaceCustomField('test', 'TestName');

  var
  lBool := M1.CustomFields.HasCustomFields;
  Assert.IsTrue(lBool, 'HasCustomFields');

  var
  lString := M1.GetGenerateCustomText;
  Assert.AreEqual('<html>' + sl + '<body>Hello TestName</body>' + sl + '</html>', lString);

  aJson := M1.GetAsJson;

  Assert.AreNotEqual('', aJson, 'aJson is nil');

  M2.SetAsJson(aJson);

  Assert.AreEqual(M1.Title, M2.Title, 'M2.Title');
  Assert.AreEqual(M1.Text, M2.Text, 'M2.Body');

end;

procedure TJanuaCloudTest.TestMailMessageConf;
begin
  var
    lTest: TJanuaMailMessageConf;
  lTest.Subject := 'aaa';
  lTest.SetAsHtml('<html><body>Hello $$test$$</body></html>');
  Assert.AreEqual('<html><body>Hello $$test$$</body></html>', lTest.GetAsHtml);

  lTest.CustomFields.AddReplaceCustomField('test', 'TestName');

  var
  lBool := lTest.CustomFields.HasCustomFields;
  Assert.IsTrue(lBool, 'HasCustomFields');

  var
  lString := lTest.GetGenerateCustomHtml;
  Assert.AreEqual('<html><body>Hello TestName</body></html>', lString);

end;

procedure TJanuaCloudTest.TestRecMailServerConf;
var
  lRecMailServerConf1, lRecMailServerConf2: TJanuaRecMailServerConf;
  aJson: string;
begin
  lRecMailServerConf1.Username := 'aaa';
  lRecMailServerConf1.Password := 'bbb';
  lRecMailServerConf1.APIKey := 'ccc';
  lRecMailServerConf1.RESTUser := 'ddd';
  lRecMailServerConf1.RESTSecret := 'eee';
  lRecMailServerConf1.Servername := 'sss';
  lRecMailServerConf1.Port := 12345;
  lRecMailServerConf1.Encrypted := False;

  aJson := lRecMailServerConf1.GetAsJson;

  Assert.AreNotEqual('', aJson, 'aJson is nil');

  lRecMailServerConf2.SetAsJson(aJson);

  Assert.AreEqual(lRecMailServerConf1.Username, lRecMailServerConf2.Username, 'lRecMailServerConf1.Username');
  Assert.AreEqual(lRecMailServerConf1.Password, lRecMailServerConf2.Password, 'lRecMailServerConf1.Password');
  Assert.AreEqual(lRecMailServerConf1.APIKey, lRecMailServerConf2.APIKey, 'lRecMailServerConf1.APIKey');
  Assert.AreEqual(lRecMailServerConf1.RESTUser, lRecMailServerConf2.RESTUser, 'lRecMailServerConf1.RESTUser');
  Assert.AreEqual(lRecMailServerConf1.RESTSecret, lRecMailServerConf2.RESTSecret,
    'lRecMailServerConf1.RESTSecret');
  Assert.AreEqual(lRecMailServerConf1.Servername, lRecMailServerConf2.Servername,
    'lRecMailServerConf1.Servername');
  Assert.AreEqual(lRecMailServerConf1.Port, lRecMailServerConf2.Port, 'lRecMailServerConf1.Port');
  Assert.AreEqual(lRecMailServerConf1.Encrypted, lRecMailServerConf2.Encrypted,
    'lRecMailServerConf1.Encrypted');
end;

procedure TJanuaCloudTest.TestSMSMessageConf;
var
  lSMSConf1, lSMSConf2: TJanuaSMSMessageConf;
  aJson: string;
begin
  lSMSConf1.Title := 'aaa';
  lSMSConf1.Body := 'Hello $$test$$' + sl + 'Line 2';

  lSMSConf1.CustomFields.AddReplaceCustomField('test', 'TestName');

  var
  lBool := lSMSConf1.CustomFields.HasCustomFields;
  Assert.IsTrue(lBool, 'HasCustomFields');

  var
  lString := lSMSConf1.GetGenerateCustomSMS;
  Assert.AreEqual('Hello TestName' + sl + 'Line 2', lString);

  aJson := lSMSConf1.GetAsJson;

  Assert.AreNotEqual('', aJson, 'aJson is nil');

  lSMSConf2.SetAsJson(aJson);

  Assert.AreEqual(lSMSConf1.Title, lSMSConf2.Title, 'lSMSConf2.Title');
  Assert.AreEqual(lSMSConf1.Body, lSMSConf2.Body, 'lSMSConf2.Password');
end;

(*
  procedure TJanuaCloudTest.Test2(const AValue1: Integer; const AValue2: Integer);
  begin
  end;
*)

initialization

TDUnitX.RegisterTestFixture(TJanuaCloudTest);

end.
