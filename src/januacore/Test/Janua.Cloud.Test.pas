unit Janua.Cloud.Test;

interface

uses
  DUnitX.TestFramework, Janua.Cloud.Conf, Janua.Cloud.Impl, Janua.Cloud.Types, Janua.Core.Types,
  Janua.Core.System.Types, Janua.Cloud.Intf, System.SysUtils, System.Classes;

type

  TJanuaTestMsgBuilder = class(TJanuaCustomMessageBuilder, IJanuaMessageBuilder)
  private
    FSettingLocation: TJanuaSettingLocation;
  protected
    function GetSettingLocation: TJanuaSettingLocation; override;
    procedure SetSettingLocation(const Value: TJanuaSettingLocation); override;
    procedure SetMsgText(const Value: TStrings); override;
    function GetsText: string; override;
  public
      procedure LoadSettings; override;
  end;

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
    procedure TestMessageBuilder;
    [Test]
    procedure TestSMSBuilder;
  end;

implementation

uses
  Janua.Cloud.Sms.Impl, Janua.Orm.Test.Impl, Janua.Orm.Test.Intf, Janua.Cloud.Sms.intf;

{ TJanuaCloudTest }

procedure TJanuaCloudTest.Setup;
begin

end;

procedure TJanuaCloudTest.TearDown;
begin

end;

procedure TJanuaCloudTest.TestMessageBuilder;
var
  lMC: IJanuaMessageBuilder;
begin
  (*
    IJanuaMessageBuilder is supported by  TJanuaCustomMessageBuilder but many of its properties are
    'implemented' by virtual abstract methods si TJanuaCustomMessageBuilder is the template class
    for differente 'Message' Builders
  *)
  lMC := TJanuaTestMsgBuilder.Create;
  Assert.IsNotNull(lMC);
  Assert.IsFalse(lMC.Sent, 'Sent');
  lMC := nil;
end;

procedure TJanuaCloudTest.TestSMSBuilder;
var
  lMC: IJanuaSMSBuilder;
  lStr, lJson: string;
  lRec: IJanuaTestSubRecord;
  lMsg: TSMSMessage;
begin
  (*
    This component simply Generates an SMS message. It can also add a link to the message,
    Can be 'connected' to an sms Sender to manage all the sending 'cycle'
  *)
  lMC := TJanuaSMSBuilder.Create;
  Assert.IsNotNull(lMC);
  Assert.IsFalse(lMC.Sent, 'Sent');
  lMC := nil;
  lMC := TJanuaSMSBuilder.Create;
  (* *
    property sFrom: string read GetFrom write SetsFrom;
    property sFromAddr: string read GetFromAddr write SetsFromAddr;
    property sTo: string read GetsTo write SetsTo;
    property SMSMessage: TSMSMessage read GetSMSMessage write SetSMSMessage;
    property SMSMessageConf: TSMSMessageConf read GetMessageConf write SetMessageConf;
    function GenerateSMSMessage: TSMSMessage; overload;
    function GenerateSMSMessage(const aRecord: IJanuaRecord): TSMSMessage; overload;
    function GenerateSMSMessage(const aDataset: TDataset): TSMSMessage; overload;
    * *)

  lMC.SMSMessageConf.Title := 'aaa $$int$$';
  lMC.SMSMessageConf.msgTo := 'phone:$$str$$';
  lMC.SMSMessageConf.Text := '<html><body>$$test$$ msg: $$int$$</body><html>';
  lMC.SMSMessageConf.AddReplaceCustomField('test', 'TestMessage');
  lStr := lMC.SMSMessageConf.SMSMessageConf.GetGenerateCustomSMS;
  Assert.AreEqual('<html><body>TestMessage msg: $$int$$</body><html>', lStr);
  lJson := lMC.SMSMessageConf.AsJson;

  lRec := TJanuaTestSubRecord.Create('testrecord');
  { GenerateSMSMessage(const aRecord: IJanuaRecord): TSMSMessage; }
  lRec.TestInteger.AsInteger := 11;
  lRec.TestString.AsString := '+393409111351';
  lMsg := lMC.GenerateSMSMessage(lRec);

  Assert.AreEqual('aaa 11', lMsg.Title);
  Assert.AreEqual('phone:+393409111351', lMsg.msgTo);
  // sText
  Assert.AreEqual('<html><body>TestMessage msg: 11</body><html>', lMC.sText);
  Assert.AreEqual('phone:+393409111351', lMC.sTo);
end;

{ TJanuaTestMsgBuilder }

function TJanuaTestMsgBuilder.GetSettingLocation: TJanuaSettingLocation;
begin
  Result := FSettingLocation
end;

function TJanuaTestMsgBuilder.GetsText: string;
begin
  Result := FMsgText.Text;
end;

procedure TJanuaTestMsgBuilder.LoadSettings;
begin
  inherited;

end;

procedure TJanuaTestMsgBuilder.SetMsgText(const Value: TStrings);
begin
  inherited;
  if Assigned(Value) then
    FMsgText.Assign(Value)
end;

procedure TJanuaTestMsgBuilder.SetSettingLocation(const Value: TJanuaSettingLocation);
begin
  inherited;
  FSettingLocation := Value;
end;

initialization

TDUnitX.RegisterTestFixture(TJanuaCloudTest);

end.
