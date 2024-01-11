unit Janua.Cloud.Conf.Test;

interface

uses
  DUnitX.TestFramework, Janua.Core.Types, Janua.Core.Http.Intf;

type

  [TestFixture]
  TJanuaCloudConfTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure LandingMessageConf;
    [Test]
    procedure SMSMessageConf;
    [Test]
    procedure SMSMessageUrl;
  end;

implementation

uses Janua.Cloud.Types, Janua.Cloud.Conf, Janua.Orm.Test.Impl, Janua.Orm.Test.Intf;

{ TJanuaCloudConfTest }

procedure TJanuaCloudConfTest.Setup;
begin

end;

procedure TJanuaCloudConfTest.TearDown;
begin

end;

procedure TJanuaCloudConfTest.LandingMessageConf;
var
  lMC, lMC2: TLandingMessageConf;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TLandingMessage;
  { TJanuaTestSubRecord = class(TJanuaRecord, IJanuaTestSubRecord) }
begin
  lMC := TLandingMessageConf.Create;
  try
    lMC.Title := 'aaa $$int$$';
    lMC.Url := 'url $$str$$';
    lMC.Text := '<html><body>$$test$$</body><html>';
    lMC.AddReplaceCustomField('test', 'TestMessage');
    lStr := lMC.LandingMessageConf.GetGenerateCustomText;
    Assert.AreEqual('<html><body>TestMessage</body><html>', lStr);
    lJson := lMC.AsJson;
    lMC2 := TLandingMessageConf.Create;
    try
      lMC2.AsJson := lJson;
      Assert.AreEqual(lMC.Title, lMC2.Title);
      Assert.AreEqual(lMC.Url, lMC2.Url);
      Assert.AreEqual(lMC.Text, lMC2.Text);
    finally
      lMC2.Free;
    end;

    lRec := TJanuaTestSubRecord.Create('testrecord');
    { GenerateLandingMessage(const aRecord: IJanuaRecord): TLandingMessage; }
    lRec.TestInteger.AsInteger := 11;
    lRec.TestString.AsString := 'test';
    lMsg := lMC.GenerateLandingMessage(lRec);

    Assert.AreEqual('aaa 11', lMsg.Title);
    Assert.AreEqual('url test', lMsg.Url);

  finally
    lMC.Free;
  end;
end;

procedure TJanuaCloudConfTest.SMSMessageConf;
var
  lMC, lMC2: TSMSMessageConf;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TSMSMessage;
begin
  lMC := TSMSMessageConf.Create;
  try
    lMC.Title := 'aaa $$int$$';
    lMC.msgTo := 'url $$str$$';
    lMC.Text := 'url:$$test$$ Message:$$int$$';
    lMC.AddReplaceCustomField('test', 'http://www.url.it/');
    lStr := lMC.SMSMessageConf.GetGenerateCustomSMS;
    Assert.AreEqual('url:http://www.url.it/ Message:$$int$$', lStr);
    lJson := lMC.AsJson;
    lMC2 := TSMSMessageConf.Create;
    try
      lMC2.AsJson := lJson;
      Assert.AreEqual(lMC.Title, lMC2.Title);
      Assert.AreEqual(lMC.msgTo, lMC2.msgTo);
      Assert.AreEqual(lMC.Text, lMC2.Text);
    finally
      lMC2.Free;
    end;

    lRec := TJanuaTestSubRecord.Create('testrecord');
    { GenerateSMSMessage(const aRecord: IJanuaRecord): TSMSMessage; }
    lRec.TestInteger.AsInteger := 11;
    lRec.TestString.AsString := 'test';
    lMsg := lMC.GenerateSMSMessage(lRec);

    Assert.AreEqual('aaa 11', lMsg.Title);
    lStr := lMsg.Text;
    Assert.AreEqual('url:http://www.url.it/ Message:11', lMsg.Text);
    Assert.AreEqual('url test', lMsg.msgTo);

  finally
    lMC.Free;
  end;
end;

procedure TJanuaCloudConfTest.SMSMessageUrl;
var
  lMC: TSMSMessageConf;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TSMSMessage;
begin
  lMC := TSMSMessageConf.Create;
  try
    lMC.Title := 'aaa $$int$$';
    lMC.msgTo := 'to $$str$$';
    lMC.Text := 'Buongiorno $$str$$ visitate $$tinyurl$$';
    lMC.UrlEngine := TUrlGeneratorEngine.jgeTestUrl;
    lMC.Url := 'http://test.com?Test=$$int$$';
    Assert.AreEqual('http://test.com?Test=$$int$$', lMC.Url, 'lMC.Url');
    Assert.IsTrue(lMC.UrlEngine = TUrlGeneratorEngine.jgeTestUrl, 'UrlEngine');

    lRec := TJanuaTestSubRecord.Create('testrecord');
    lRec.TestInteger.AsInteger := 11;
    lRec.TestString.AsString := 'test12345';

    lMsg := lMC.GenerateSMSMessage(lRec);

    Assert.AreEqual('http://test.com?Test=11', lMsg.Url);
    Assert.AreEqual('http://test.com?Test=11', lMsg.TinyUrl);
    Assert.AreEqual('to test12345', lMsg.msgTo);
    Assert.AreEqual('Buongiorno test12345 visitate http://test.com?Test=11', lMsg.Text);
  finally
    lMC.Free;
    lMC := nil;
  end;
end;

initialization

TDUnitX.RegisterTestFixture(TJanuaCloudConfTest);

end.
