unit Janua.Carservice.Impl.Test;

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

uses Janua.Carservice.Impl, Janua.Cloud.Intf, Janua.Cloud.Impl, Janua.Cloud.Types,
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
  lTest: IJanuaCSCustomerMailBuilder;
begin
  lTest := TJanuaCSCustomerMailBuilder.Create;
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MailConf);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerMailBuilder, lTest);
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MailConf);
  Assert.AreEqual(lTest.AsObject.ClassName, 'TJanuaCSCustomerMailBuilder');
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

(*
  property MessageConf: TLandingMessageConf read GetMessageConf write SetMessageConf;
  procedure SetTitle(const Value: string);
  property Title: string read GetTitle write SetTitle;
  property Url: string read GetUrl write SetUrl;
  function GenerateLandingMessage: TLandingMessage; overload;
  function GenerateLandingMessage(const aRecord: IJanuaRecord): TLandingMessage; overload;
  function GenerateLandingMessage(const aDataset: TDataset): TLandingMessage; overload;

  property Title: string read FSMSMessageConf.Title write SetTitle;
  property Body: string read FSMSMessageConf.Body write SetBody;
  property msgTo: string read FSMSMessageConf.msgTo write SetmsgTo;
  property AsJson: String read GetAsJson write SetAsJson;
  property Text: string read GetText write SetText;
*)

procedure TJanuaCloudTest.Test06CSDriverLandingMsgBuilder;
var
  // TJanuaCSDriverLandingMsgBuilder = IJanuaCSDriverLandingMsgBuilder,
  lTest: IJanuaCSDriverLandingMsgBuilder;
begin
  lTest := TJanuaCSDriverLandingMsgBuilder.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverLandingMsgBuilder, lTest);
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.MessageConf);
  Assert.AreEqual(lTest.AsObject.ClassName, 'TJanuaCSDriverLandingMsgBuilder');
  lTest.MessageConf.Title := 'Titolo';
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
  lTest: IJanuaCSDriverSMSBuilder1;
  lTest2: IJanuaCSDriverSMSBuilder2;
begin
  lTest := TJanuaDriverSMSBuilder1.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder1, lTest);
  Assert.IsNotNull(lTest);
  Assert.IsNotNull(lTest.SMSMessageConf);
  Assert.AreEqual(lTest.AsObject.ClassName, 'TJanuaDriverSMSBuilder1');

  lTest2 := TJanuaDriverSMSBuilder2.Create;
  Assert.IsNotNull(lTest2);
  lTest2 := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder2, lTest2);
  Assert.IsNotNull(lTest2);
  Assert.IsNotNull(lTest2.SMSMessageConf);
  Assert.AreEqual(lTest2.AsObject.ClassName, 'TJanuaDriverSMSBuilder2');
end;

procedure TJanuaCloudTest.Test10CSCustomerSMSBuilder;
var
  // (IJanuaCSCustomerSMSBuilder, TJanuaCustomerSMSBuilder);
  lTest: IJanuaCSCustomerSMSBuilder;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TSMSMessage;
begin
  lTest := TJanuaCustomerSMSBuilder.Create;
  Assert.IsNotNull(lTest);
  lTest := nil;
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerSMSBuilder, lTest);
  Assert.IsNotNull(lTest.SMSMessageConf);
  lTest.SMSMessageConf.Title := 'aaa $$int$$';
  lTest.SMSMessageConf.msgTo := 'phone:$$str$$';
  lTest.SMSMessageConf.Text := '<html><body>$$test$$ msg: $$int$$</body><html>';
  lTest.SMSMessageConf.AddReplaceCustomField('test', 'TestMessage');
  lStr := lTest.SMSMessageConf.SMSMessageConf.GetGenerateCustomSMS;
  Assert.AreEqual('<html><body>TestMessage msg: $$int$$</body><html>', lStr);
  lJson := lTest.SMSMessageConf.AsJson;

  lRec := TJanuaTestSubRecord.Create('testrecord');
  { GenerateSMSMessage(const aRecord: IJanuaRecord): TSMSMessage; }
  lRec.TestInteger.AsInteger := 11;
  lRec.TestString.AsString := '+393409111351';
  lMsg := lTest.GenerateSMSMessage(lRec);

  Assert.AreEqual('aaa 11', lMsg.Title);
  Assert.AreEqual('phone:+393409111351', lMsg.msgTo);
  // sText
  Assert.AreEqual('<html><body>TestMessage msg: 11</body><html>', lTest.sText);
  Assert.AreEqual('phone:+393409111351', lTest.sTo);

end;

initialization

TDUnitX.RegisterTestFixture(TJanuaCloudTest);

end.
