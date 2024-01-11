unit Janua.UniDAC.Test.Carservice.Impl;

interface

uses
  DUnitX.TestFramework, Janua.Core.Types, Janua.Carservice.Intf;

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
    procedure Test01CSCustomerMailBuilder;
    [Test]
    procedure Test02CSDriverMailBuilder1;
    [Test]
    procedure Test03CSDriverMailBuilder2;
    [Test]
    procedure Test04CSServiceMailBuilder;
    [Test]
    procedure Test05CSBackOfficeMailBuilder;
    [Test]
    procedure Test06CSDriverLandingMsgBuilder;
    [Test]
    procedure Test07CSCustomerLandingMsgBuilder;
    [Test]
    procedure Test08CSDriverSMSBuilder1;
    [Test]
    procedure Test10CSCustomerSMSBuilder;
  end;

implementation

uses
  System.Math, System.StrUtils, System.DateUtils, System.Types, System.IOUtils, System.Variants,
  System.Generics.Collections, Dataset.Serialize,
  Janua.Carservice.Impl, Janua.Cloud.Intf, Janua.Cloud.Impl, Janua.Cloud.Types, Janua.Cloud.Mail.Conf,
  Janua.Application.Framework, Janua.Orm.Test.Impl, Janua.Orm.Test.Intf, Janua.Cloud.Conf;

{ TJanuaCloudTest }

procedure TJanuaCloudTest.Setup;
begin
end;

procedure TJanuaCloudTest.TearDown;
begin
end;

procedure TJanuaCloudTest.Test01CSCustomerMailBuilder;
var
  // TJanuaCSCustomerMailBuilder = IJanuaCSCustomerMailBuilder,
  lTest, lTest2: IJanuaCSCustomerMailBuilder;
  lMC, lMC2: TJanuaMailConf;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TJanuaMailMessage;
begin
  lTest := TJanuaCSCustomerMailBuilder.Create;
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MailConf);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerMailBuilder, lTest);
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MailConf);
  Assert.AreEqual(lTest.AsObject.ClassName, 'TJanuaCSCustomerMailBuilder');

  lMC := lTest.MailConf;
  lMC.Subject := 'aaa $$int$$';
  lMC.MailTo := 'to $$str$$';
  lMC.AsHtml := 'url:$$test$$ Message:$$int$$';
  lMC.AddReplaceCustomField('test', 'http://www.url.it/');
  lStr := lMC.MailMessageConf.GetGenerateCustomHtml;
  Assert.AreEqual('url:http://www.url.it/ Message:$$int$$', lStr);
  lJson := lMC.AsJson;
  lTest.MailConf.SaveConfig;
  lTest.LoadSettings;
  Assert.AreEqual(lJson, lTest.MailConf.AsJson, 'Error loading Configuration Json');

  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerMailBuilder, lTest2);
  lTest2.LoadSettings;
  Assert.AreEqual(lJson, lTest2.MailConf.AsJson, 'Error loading Configuration Json');
  lMC2 := lTest2.MailConf;

  Assert.AreEqual(lMC.Subject, lMC2.Subject);
  Assert.AreEqual(lMC.MailTo, lMC2.MailTo);
  Assert.AreEqual(lMC.AsHtml, lMC2.AsHtml);

  lRec := TJanuaTestSubRecord.Create('testrecord');
  { GenerateSMSMessage(const aRecord: IJanuaRecord): TSMSMessage; }
  lRec.TestInteger.AsInteger := 11;
  lRec.TestString.AsString := 'test';
  lMsg := lMC.GenerateMail(lRec);
  Assert.AreEqual('aaa 11', lMsg.Subject);
  lStr := lMsg.Text;
  { TODO : Add management for Url }
  Assert.AreEqual('url:http://www.url.it/ Message:11', lMsg.Text);
  Assert.AreEqual('to test', lMsg.MailTo);
end;

procedure TJanuaCloudTest.Test02CSDriverMailBuilder1;
var
  // TJanuaCSDriverMailBuilder1 =   IJanuaCSDriverMailBuilder1,
  lTest: IJanuaCSDriverMailBuilder1;
begin
  lTest := TJanuaCSDriverMailBuilder1.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder1, lTest));
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MailConf);
  Assert.AreEqual(lTest.AsObject.ClassName, 'TJanuaCSDriverMailBuilder1');
end;

procedure TJanuaCloudTest.Test03CSDriverMailBuilder2;
var
  // TJanuaCSDriverMailBuilder2 =   IJanuaCSDriverMailBuilder2,
  lTest: IJanuaCSDriverMailBuilder2;
begin
  lTest := TJanuaCSDriverMailBuilder2.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder2, lTest);
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MailConf);
  Assert.AreEqual(lTest.AsObject.ClassName, 'TJanuaCSDriverMailBuilder2');
end;

procedure TJanuaCloudTest.Test04CSServiceMailBuilder;
var
  // TJanuaCSServiceMailBuilder =  IJanuaCSServiceMailBuilder,
  lTest: IJanuaCSServiceMailBuilder;
begin
  lTest := TJanuaCSServiceMailBuilder.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSServiceMailBuilder, lTest);
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MailConf);
  Assert.AreEqual(lTest.AsObject.ClassName, 'TJanuaCSServiceMailBuilder');
end;

procedure TJanuaCloudTest.Test05CSBackOfficeMailBuilder;
var
  // TJanuaCSDriverLandingMsgBuilder = IJanuaCSDriverLandingMsgBuilder,
  lTest: IJanuaCSBackOfficeMailBuilder;
begin
  lTest := TJanuaCSBackOfficeMailBuilder.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSBackOfficeMailBuilder, lTest);
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MailConf);
  Assert.AreEqual(lTest.AsObject.ClassName, 'TJanuaCSBackOfficeMailBuilder');
end;

procedure TJanuaCloudTest.Test06CSDriverLandingMsgBuilder;
var
  // TJanuaCSDriverLandingMsgBuilder = IJanuaCSDriverLandingMsgBuilder,
  lTest, lTest2: IJanuaCSDriverLandingMsgBuilder;
  lMC, lMC2: TLandingMessageConf;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TLandingMessage;
begin
  lRec := TJanuaTestSubRecord.Create('testrecord');
  { GenerateLandingMessage(const aRecord: IJanuaRecord): TLandingMessage; }
  lRec.TestInteger.AsInteger := 11;
  lRec.TestString.AsString := 'test';

  lTest := TJanuaCSDriverLandingMsgBuilder.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverLandingMsgBuilder, lTest);
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MessageConf);
  Assert.AreEqual(lTest.AsObject.ClassName, 'TJanuaCSDriverLandingMsgBuilder');
  lTest.MessageConf.Title := 'Titolo';

  lMC := lTest.MessageConf;
  lMC.Title := 'aaa $$int$$';
  lMC.Url := 'url $$str$$';
  lMC.Text := '<html><body>$$test$$/$$int$$/$$str$$</body><html>';
  lMC.AddReplaceCustomField('test', 'TestMessage');
  lStr := lMC.LandingMessageConf.GetGenerateCustomText;
  Assert.AreEqual('<html><body>TestMessage/$$int$$/$$str$$</body><html>', lStr);
  lJson := lMC.AsJson;
  lMC.SaveConfig;
  lTest.LoadSettings;
  Assert.AreEqual(lJson, lTest.MessageConf.AsJson, 'Json');

  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverLandingMsgBuilder, lTest2);
  lMC2 := lTest2.MessageConf;
  lTest2.LoadSettings;
  Assert.AreEqual(lJson, lTest2.MessageConf.AsJson, 'Json');
  lMC2.AddReplaceCustomField('test', 'TestMessage');
  lMsg := lTest2.GenerateLandingMessage(lRec);

  Assert.AreEqual(lMC.Title, lMC2.Title, 'lMC2.Title');
  Assert.AreEqual(lMC.Url, lMC2.Url, 'lMC2.Url');
  Assert.AreEqual(lMC.Text, lMC2.Text, 'lMC2.Text');

  Assert.AreEqual('aaa 11', lMsg.Title);
  Assert.AreEqual('url test', lMsg.Url);
  Assert.AreEqual('<html><body>TestMessage/11/test</body><html>', lMsg.Text);
end;

procedure TJanuaCloudTest.Test07CSCustomerLandingMsgBuilder;
var
  // TJanuaCSCustomerLandingMsgBuilder = IJanuaCSCustomerLandingMsgBuilder,
  lTest: IJanuaCSCustomerLandingMsgBuilder;
  lMC: TLandingMessageConf;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TLandingMessage;
begin
  lTest := TJanuaCSCustomerLandingMsgBuilder.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerLandingMsgBuilder, lTest);
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MessageConf);
  Assert.AreEqual(lTest.AsObject.ClassName, 'TJanuaCSCustomerLandingMsgBuilder');
end;

procedure TJanuaCloudTest.Test08CSDriverSMSBuilder1;
var
  // TJanuaDriverSMSBuilder1 = IJanuaCSDriverSMSBuilder1
  lTest: IJanuaCSDriverSMSBuilder2;
begin
  lTest := TJanuaDriverSMSBuilder2.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder2, lTest);
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.SMSMessageConf);
  Assert.AreEqual('TJanuaDriverSMSBuilder2', lTest.AsObject.ClassName);
end;

procedure TJanuaCloudTest.Test10CSCustomerSMSBuilder;
var
  // (IJanuaCSCustomerSMSBuilder, TJanuaCustomerSMSBuilder);
  lTest: IJanuaCSCustomerSMSBuilder;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TSMSMessage;
begin
  lRec := TJanuaTestSubRecord.Create('testrecord');
  { GenerateSMSMessage(const aRecord: IJanuaRecord): TSMSMessage; }
  lRec.TestInteger.AsInteger := 11;
  lRec.TestString.AsString := '+393409111351';

  lTest := TJanuaCustomerSMSBuilder.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerSMSBuilder, lTest);
  Assert.IsNotNull(lTest.SMSMessageConf);
  lTest.SMSMessageConf.Title := 'aaa $$int$$';
  lTest.SMSMessageConf.msgTo := 'phone:$$str$$';
  lTest.SMSMessageConf.Text := '<html><body>$$test$$ msg: $$int$$</body><html>';
  lTest.SMSMessageConf.AddReplaceCustomField('test', 'TestMessage');

  lTest.SMSMessageConf.Url := 'http://TestUrl.com?Url=$$int$$';

  lStr := lTest.SMSMessageConf.SMSMessageConf.GetGenerateCustomSMS;
  Assert.AreEqual('<html><body>TestMessage msg: $$int$$</body><html>', lStr);
  lJson := lTest.SMSMessageConf.AsJson;

  lMsg := lTest.GenerateSMSMessage(lRec);
  Assert.AreEqual('aaa 11', lMsg.Title);
  Assert.AreEqual('phone:+393409111351', lMsg.msgTo);
  // sText
  Assert.AreEqual('<html><body>TestMessage msg: 11</body><html>', lTest.sText);
  Assert.AreEqual('phone:+393409111351', lTest.sTo);

end;

end.
