unit Janua.Cloud.Mail.Test;

interface

uses
  DUnitX.TestFramework, Janua.Cloud.Impl, Janua.Core.Types, Janua.Core.System.Types, Janua.Cloud.Intf,
  System.SysUtils, System.Classes, Janua.Cloud.Mail.Conf, Janua.Core.Http.Intf;

type

  [TestFixture]
  TJanuaCloudMailTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure MailConf;
    [Test]
    procedure MailBuilder;
    [Test]
    procedure MailConfUrl;
  end;

implementation

uses Janua.Cloud.Types, Janua.Cloud.Conf, Janua.Orm.Test.Impl, Janua.Orm.Test.Intf;

{ TJanuaCloudMailTest }

procedure TJanuaCloudMailTest.MailBuilder;
begin

end;

procedure TJanuaCloudMailTest.MailConf;
var
  lMC, lMC2: TJanuaMailConf;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TJanuaMailMessage;
begin
  lMC := TJanuaMailConf.Create;
  try
    lMC.Subject := 'aaa $$int$$';
    lMC.MailTo := 'url $$str$$';
    lMC.AsHtml := 'url:$$test$$ Message:$$int$$';
    lMC.AddReplaceCustomField('test', 'http://www.url.it/');
    lStr := lMC.MailMessageConf.GetGenerateCustomHtml;
    Assert.AreEqual('url:http://www.url.it/ Message:$$int$$', lStr);
    lJson := lMC.AsJson;
    lMC2 := TJanuaMailConf.Create;
    try
      lMC2.AsJson := lJson;
      Assert.AreEqual(lMC.Subject, lMC2.Subject);
      Assert.AreEqual(lMC.MailTo, lMC2.MailTo);
      Assert.AreEqual(lMC.AsHtml, lMC2.AsHtml);
    finally
      lMC2.Free;
    end;
    lRec := TJanuaTestSubRecord.Create('testrecord');
    { GenerateSMSMessage(const aRecord: IJanuaRecord): TSMSMessage; }
    lRec.TestInteger.AsInteger := 11;
    lRec.TestString.AsString := 'test';
    lMsg := lMC.GenerateMail(lRec);
    Assert.AreEqual('aaa 11', lMsg.Subject);
    lStr := lMsg.Text;
    Assert.AreEqual('url:http://www.url.it/ Message:11', lMsg.Text);
    Assert.AreEqual('url test', lMsg.MailTo);
  finally
    lMC.Free;
  end;

end;

procedure TJanuaCloudMailTest.MailConfUrl;
var
  lMC: TJanuaMailConf;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TJanuaMailMessage;
begin
  lMC := TJanuaMailConf.Create;
  try
    lMC.Subject := 'aaa $$int$$';
    lMC.MailTo := 'to $$str$$';
    lMC.AsHtml := '<html><body> Buongiorno $$str$$ visitate $$tinyurl$$ </body></html>';
    lMC.UrlEngine := TUrlGeneratorEngine.jgeTestUrl;
    lMC.Url := 'http://test.com?Test=$$int$$';
    Assert.AreEqual('http://test.com?Test=$$int$$', lMC.Url, 'lMC.Url');

    Assert.IsTrue(lMC.UrlEngine = TUrlGeneratorEngine.jgeTestUrl, 'UrlEngine');

    lRec := TJanuaTestSubRecord.Create('testrecord');
    lRec.TestInteger.AsInteger := 11;
    lRec.TestString.AsString := 'test12345';

    lMsg := lMC.GenerateMail(lRec);

    Assert.AreEqual('http://test.com?Test=11', lMsg.Url);
    Assert.AreEqual('http://test.com?Test=11', lMsg.TinyUrl);
    Assert.AreEqual('to test12345', lMsg.MailTo);
    Assert.AreEqual('<html><body> Buongiorno test12345 visitate http://test.com?Test=11 </body></html>', lMsg.Text);
  finally
    lMC.Free;
    lMC := nil;
  end;
end;

procedure TJanuaCloudMailTest.Setup;
begin

end;

procedure TJanuaCloudMailTest.TearDown;
begin

end;

initialization

TDUnitX.RegisterTestFixture(TJanuaCloudMailTest);

end.
