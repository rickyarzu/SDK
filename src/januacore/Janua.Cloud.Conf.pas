unit Janua.Cloud.Conf;

interface

uses Data.DB, System.StrUtils, System.UITypes, System.JSON,
  // Janua
  Janua.Core.Types, Janua.Core.Classes, Janua.Cloud.Types, Janua.Orm.Intf, Janua.Core.Http.Intf,
  Janua.REST.Types, Janua.Core.System.Types, Janua.Http.Types, Janua.Core.DB.Types, Janua.Core.Commons;

type
  TMessageType = (mtSMS, mtMail, mtLanding);

  TJanuaRestRequestRecordConf = record
    HttpMethod: TJanuaHttpMethod;
    BaseUrl: string;
    ContentType: TJanuaMimeType;
    DataFormat: TRestFormat;
    Authentication: TJanuaHttpAuthentication;
  end;

  TJanuaRestRequestModel = class(TJanuaBindableObject)
  private
    FRequestConf: TJanuaRestRequestRecordConf;

  end;

  TLandingMessageConf = class(TJanuaBindableConfObject)
  private
    FLandingMessageConf: TLandingMessageRecConf;
    procedure SetText(const Value: string);
    function GetText: string;
    procedure SetBody(const Value: string);
    procedure SetImage(const Value: TJanuaBlob);
    procedure SeTLandingMessageConfConf(const Value: TLandingMessageRecConf);
    procedure SetTitle(const Value: string);
    procedure SetUrl(const Value: string);
  protected
    function GetAsJson: String; override;
    procedure SetAsJson(const Value: String); override;
    procedure CheckAll; override;
  public
    procedure AddReplaceCustomField(const aField, aValue: string);
    function GenerateLandingMessage(const aRecord: IJanuaRecord; aProc: TMessageLogProc = nil)
      : TLandingMessage; overload;
    function GenerateLandingMessage(const aDataset: TDataset; aProc: TMessageLogProc = nil)
      : TLandingMessage; overload;
    function GenerateLandingMessageNoData(aProc: TMessageLogProc = nil): TLandingMessage;
  public
    constructor Create; override;
    // FSettingLocation
  public
    /// <summary> Landing Message Page Title </summary>
    property Title: string read FLandingMessageConf.Title write SetTitle;
    /// <summary> Body of the page should be a part of the text or just a FLandingMessageConf.ull html page </summary>
    property Body: string read FLandingMessageConf.Body write SetBody;
    /// <summary> Page or text should hold a logo Image FLandingMessageConf.or personalization </summary>
    property Image: TJanuaBlob read FLandingMessageConf.Image write SetImage;
    /// <summary> This is the template FLandingMessageConf.or the Landing Message </summary>
    property Url: string read FLandingMessageConf.Url write SetUrl;
    property AsJson: String read GetAsJson write SetAsJson;
    property Text: string read GetText write SetText;
    property LandingMessageConf: TLandingMessageRecConf read FLandingMessageConf
      write SeTLandingMessageConfConf;
  end;

  { TSMSSenderRecordConf = record
    Key: string;
    Secret: string;
    AppName: string; }

type
  TSMSSenderConf = class(TJanuaBindableConfObject)
  private
    FRecordConf: TSMSSenderRecordConf;
    procedure SetAppName(const Value: string);
    procedure SetKey(const Value: string);
    procedure SetSecret(const Value: string);
    procedure SetDefaultMessageID(const Value: string);
    procedure SetTestMessageID(const Value: string);
  protected
    function GetAsJson: String; override;
    procedure SetAsJson(const Value: String); override;
    procedure CheckAll; override;
  public
    constructor Create; override;
  public
    property RestKey: string read FRecordConf.Key write SetKey;
    property RestSecret: string read FRecordConf.Secret write SetSecret;
    property RestAppName: string read FRecordConf.AppName write SetAppName;
    property DefaultMessageID: string read FRecordConf.DefaultMessageID write SetDefaultMessageID;
    property TestMessageID: string  read FRecordConf.TestMessageID write SetTestMessageID;
  end;

type
  TJanuaWhatsAppConf = class(TJanuaBindableClass)
  private
    FConf: TSMSSenderRecordConf;
    procedure SetAppName(const Value: string);
    procedure SetDefaultMessage(const Value: string);
    procedure SetKey(const Value: string);
    procedure SetSecret(const Value: string);
    procedure SetDefaultMessageID(const Value: string);
    procedure SetTestMessageID(const Value: string);
  public
    /// <summary> Body of the page should be a part of the text or just a full html page </summary>
    property DefaultMessage: string read FConf.DefaultMessage write SetDefaultMessage;
    property Key: string read FConf.Key write SetKey;
    property Secret: string read FConf.Secret write SetSecret;
    property AppName: string read FConf.AppName write SetAppName;
    property DefaultMessageID: string read FConf.DefaultMessageID write SetDefaultMessageID;
    property TestMessageID: string read FConf.TestMessageID write SetTestMessageID;
  public
    procedure Assign(const Value: TJanuaWhatsAppConf);
    procedure Clear;
    function GetAsJson: String;
    procedure SetAsJson(const aJson: string);
    function GetAsJsonObject: TJsonObject;
    procedure SetAsJsonObject(const aObject: TJsonObject);
    function GetGenerateCustomMessage: string;
    constructor Create(const aKey, aSecret, aAppName: string; const aDefaultMessage: string = ''); overload;
  end;

type
  TSMSMessageConf = class(TJanuaBindableConfObject)
  private
    FProc: TMessageLogProc;
    FSMSMessageConf: TJanuaSMSMessageConf;
    procedure SetBody(const Value: string);
    procedure SetSMSMessageConf(const Value: TJanuaSMSMessageConf);
    procedure SetTitle(const Value: string);
    function GetText: string;
    procedure SetmsgTo(const Value: string);
    procedure SetText(const Value: string);
    procedure SetUrl(const Value: string);
    procedure SetUrlGenEngine(const Value: TUrlGeneratorEngine);
    procedure SetSMSSendingEngine(const Value: TJanuaSendingEngine);
  protected
    function GetAsJson: String; override;
    procedure SetAsJson(const Value: String); override;
    procedure CheckAll; override;
  public
    procedure AddReplaceCustomField(const aField, aValue: string);
    function GenerateTinyUrl(aUrl: string): string;
    function GenerateUrl(const aDataset: TDataset): string; overload;
    function GenerateUrl(const aRecord: IJanuaRecord): string; overload;
    function GenerateSMSMessage(const aRecord: IJanuaRecord; aProc: TMessageLogProc = nil)
      : TSMSMessage; overload;
    function GenerateSMSMessage(const aDataset: TDataset; aProc: TMessageLogProc = nil): TSMSMessage;
      overload;
    function GenerateSMSMessage(const aRecordSet: IJanuaRecordSet; aProc: TMessageLogProc = nil)
      : TSMSMessage; overload;
  public
    constructor Create; override;
    // FSettingLocation
  public
    /// <summary> Landing Message Page Title </summary>
    property Title: string read FSMSMessageConf.Title write SetTitle;
    /// <summary> Body of the page should be a part of the text or just a FLandingMessageConf.ull html page </summary>
    property Body: string read FSMSMessageConf.Body write SetBody;
    /// <summary> Page or text should hold a logo Image FLandingMessageConf.or personalization </summary>
    property msgTo: string read FSMSMessageConf.msgTo write SetmsgTo;
    property AsJson: String read GetAsJson write SetAsJson;
    property Text: string read GetText write SetText;
    property SMSMessageConf: TJanuaSMSMessageConf read FSMSMessageConf write SetSMSMessageConf;
    property Url: string read FSMSMessageConf.Url write SetUrl;
    property UrlEngine: TUrlGeneratorEngine read FSMSMessageConf.UrlGenEngine write SetUrlGenEngine;
    // <summary> a message could be sent using an engine such as whatsapp </summary>
    property SMSSendingEngine: TJanuaSendingEngine read FSMSMessageConf.SMSSendingEngine
      write SetSMSSendingEngine;
  end;

  TJanuaGCalendarColor = (jccBoldBrown, jccBrown, jccBoldRed, jccBoldOrange, jccBoldYellow, jccMediumGreen,
    jccDarkGreen, jccBoldGreen, jccLimeGreen, jccLightGreen, jccYellow, jccOrange, jccGreen, jccTurquoise,
    jccBlue, jccBoldBlue, jccBoldPurple, jccPurple, jccGray, jccLightGray, jccBoldGray, jccPink, jccBoldPing,
    jccDarkPurple);

  TJanuaCalendarRecord = record
  public
    GUID: TGUID;
    OutKey: TGUID;
    ID: string;
    Description: string;
    Location: string;
    Primary: boolean;
    Summary: string;
    TimeZone: string;
    Color: TJanuaGCalendarColor;
    BackgroundColor: TColor;
    ForeGroundColor: TColor;
  end;

  TJanuaGCalendar = class(TJanuaBindableObject)
  strict private
    FCalRecord: TJanuaCalendarRecord;
  private
    procedure SetDescription(const Value: string);
    procedure SetGUID(const Value: TGUID);
    procedure SetID(const Value: string);
    procedure SetLocation(const Value: string);
    procedure SetOutKey(const Value: TGUID);
    procedure SetPrimary(const Value: boolean);
    procedure SetSummary(const Value: string);
    procedure SetTimeZone(const Value: string);
    function GetAsJson: string;
    procedure SetAsJson(const Value: string);
  public
    property AsJson: string read GetAsJson write SetAsJson;
  public
    property GUID: TGUID read FCalRecord.GUID write SetGUID;
    property OutKey: TGUID read FCalRecord.OutKey write SetOutKey;
    property ID: string read FCalRecord.ID write SetID;
    property Description: string read FCalRecord.Description write SetDescription;
    property Location: string read FCalRecord.Location write SetLocation;
    property Primary: boolean read FCalRecord.Primary write SetPrimary default false;
    property Summary: string read FCalRecord.Summary write SetSummary;
    property TimeZone: string read FCalRecord.TimeZone write SetTimeZone;
    property Color: TJanuaGCalendarColor read FCalRecord.Color write FCalRecord.Color default jccGray;
    property BackgroundColor: TColor read FCalRecord.BackgroundColor write FCalRecord.BackgroundColor;
    property ForeGroundColor: TColor read FCalRecord.ForeGroundColor write FCalRecord.ForeGroundColor;
  end;

implementation

uses System.SysUtils, Janua.Core.Functions, Janua.Application.Framework,
  Janua.Orm.Impl, Janua.Core.DB, Janua.Core.JSON, Janua.Core.Http, Janua.Orm.Functions;

{ TLandingMessageConf }

procedure TLandingMessageConf.AddReplaceCustomField(const aField, aValue: string);
begin
  FLandingMessageConf.CustomFields.AddReplaceCustomField(aField, aValue);
end;

procedure TLandingMessageConf.CheckAll;
begin
  inherited;
  if (FLandingMessageConf.Text = '') then
  begin
    if Assigned(FLogProc) then
      FLogProc('CheckAll', 'Text Error ' + Key, self);
    CreateException('CheckAll', 'TexError', self)
  end;
end;

constructor TLandingMessageConf.Create;
begin
  inherited;

end;

function TLandingMessageConf.GenerateLandingMessage(const aDataset: TDataset; aProc: TMessageLogProc)
  : TLandingMessage;
var
  lProc: TMessageLogProc;
begin
  if Assigned(aProc) then
    lProc := aProc
  else
    lProc := FLogProc;

  Result.SetText(TDatasetStringWriter.ElaborateRecord(aDataset,
    FLandingMessageConf.GetGenerateCustomText, lProc));
  Result.Title := TDatasetStringWriter.ElaborateRecord(aDataset, FLandingMessageConf.Title, lProc);
  Result.Url := TDatasetStringWriter.ElaborateRecord(aDataset, FLandingMessageConf.Url, lProc);
  Result.Image.Assign(FLandingMessageConf.Image);
end;

function TLandingMessageConf.GenerateLandingMessage(const aRecord: IJanuaRecord; aProc: TMessageLogProc)
  : TLandingMessage;
var
  lProc: TMessageLogProc;
begin
  if Assigned(aProc) then
    lProc := aProc
  else
    lProc := FLogProc;

  Result.SetText(TJanuaOrmStringWriter.ElaborateRecord(aRecord,
    FLandingMessageConf.GetGenerateCustomText, lProc));
  Result.Title := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FLandingMessageConf.Title, lProc);
  Result.Url := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FLandingMessageConf.Url, lProc);
  Result.Image.Assign(FLandingMessageConf.Image);
end;

function TLandingMessageConf.GetText: string;
begin
  Result := FLandingMessageConf.Text;
end;

function TLandingMessageConf.GetAsJson: String;
begin
  Result := FLandingMessageConf.GetAsJson;
end;

procedure TLandingMessageConf.SetText(const Value: string);
begin
  FLandingMessageConf.SetText(Value)
end;

procedure TLandingMessageConf.SetAsJson(const Value: String);
begin
  FLandingMessageConf.SetAsJson(Value)
end;

procedure TLandingMessageConf.SetBody(const Value: string);
begin
  FLandingMessageConf.Body := Value;
end;

procedure TLandingMessageConf.SetImage(const Value: TJanuaBlob);
begin
  FLandingMessageConf.Image := Value;
end;

procedure TLandingMessageConf.SeTLandingMessageConfConf(const Value: TLandingMessageRecConf);
begin
  FLandingMessageConf := Value;
end;

procedure TLandingMessageConf.SetTitle(const Value: string);
begin
  FLandingMessageConf.Title := Value;
end;

procedure TLandingMessageConf.SetUrl(const Value: string);
begin
  FLandingMessageConf.Url := Value;
end;

function TLandingMessageConf.GenerateLandingMessageNoData(aProc: TMessageLogProc): TLandingMessage;
begin
  Result.SetText(FLandingMessageConf.GetGenerateCustomText);
  Result.Title := FLandingMessageConf.Title;
  Result.Url := FLandingMessageConf.Url;
  Result.Image.Assign(FLandingMessageConf.Image);
  if Assigned(aProc) then
    aProc('GenerateLandingMessage', 'Generate without Dataset ' + Result.Url, self);
end;

{ TSMSMessageConf }

procedure TSMSMessageConf.AddReplaceCustomField(const aField, aValue: string);
begin
  FSMSMessageConf.CustomFields.AddReplaceCustomField(aField, aValue);
end;

procedure TSMSMessageConf.CheckAll;
begin
  inherited;
  Assert(Body <> '', ClassName + ': Body not set');
  Assert(msgTo <> '', ClassName + ': msgTo not set');
end;

constructor TSMSMessageConf.Create;
begin
  inherited;

end;

function TSMSMessageConf.GenerateSMSMessage(const aRecord: IJanuaRecord; aProc: TMessageLogProc): TSMSMessage;
begin
  Result.Url := GenerateUrl(aRecord);
  Result.TinyUrl := GenerateTinyUrl(Result.Url);
  Result.Body := (TJanuaOrmStringWriter.ElaborateRecord(aRecord, FSMSMessageConf.GetGenerateCustomSMS));
  Result.Title := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FSMSMessageConf.Title);
  Result.msgTo := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FSMSMessageConf.msgTo);
  Result.MsgFrom := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FSMSMessageConf.MsgFrom);
  Result.MsgFromName := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FSMSMessageConf.MsgFromName);
end;

function TSMSMessageConf.GenerateSMSMessage(const aDataset: TDataset; aProc: TMessageLogProc): TSMSMessage;
begin
  Result.Url := GenerateUrl(aDataset);
  Result.TinyUrl := GenerateTinyUrl(Result.Url);
  Result.Body := (TDatasetStringWriter.ElaborateRecord(aDataset, FSMSMessageConf.GetGenerateCustomSMS));
  Result.Title := TDatasetStringWriter.ElaborateRecord(aDataset, FSMSMessageConf.Title);
  Result.msgTo := TDatasetStringWriter.ElaborateRecord(aDataset, FSMSMessageConf.msgTo);
  Result.msgTo := StringReplace(Result.msgTo, ' ', '', [rfReplaceAll]);
  case Result.SMSSendingEngine of
    jseWhatsApp:
      if Pos('whatsapp', Result.msgTo) <= 0 then
        Result.msgTo := 'whatsapp:' + Result.msgTo;
  end;

  Result.MsgFrom := TDatasetStringWriter.ElaborateRecord(aDataset, FSMSMessageConf.MsgFrom);
  Result.MsgFromName := TDatasetStringWriter.ElaborateRecord(aDataset, FSMSMessageConf.MsgFromName);
end;

function TSMSMessageConf.GenerateSMSMessage(const aRecordSet: IJanuaRecordSet; aProc: TMessageLogProc)
  : TSMSMessage;
begin
  Result := GenerateSMSMessage(aRecordSet.CurrentRecord, aProc)
end;

function TSMSMessageConf.GenerateTinyUrl(aUrl: string): string;
var
  sUrlGenerator: IJanuaUrlGenerator;
begin
  if (aUrl <> '') then
  begin
    TJanuaApplicationFactory.TryGetInterface(GetUrlGeneratorEngine(UrlEngine), sUrlGenerator);
    Result := sUrlGenerator.GenerateUrl(aUrl);
    AddReplaceCustomField('tinyurl', Result);
  end;
end;

function TSMSMessageConf.GenerateUrl(const aRecord: IJanuaRecord): string;
begin
  Result := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FSMSMessageConf.Url);
end;

function TSMSMessageConf.GenerateUrl(const aDataset: TDataset): string;
begin
  Result := TDatasetStringWriter.ElaborateRecord(aDataset, FSMSMessageConf.Url);
end;

function TSMSMessageConf.GetAsJson: String;
begin
  Result := FSMSMessageConf.GetAsJson;
end;

function TSMSMessageConf.GetText: string;
begin
  Result := FSMSMessageConf.Body;
end;

procedure TSMSMessageConf.SetAsJson(const Value: String);
begin
  FSMSMessageConf.SetAsJson(Value);
  if Assigned(FLogProc) then
  begin
    var
    lLevel := IfThen(FSMSMessageConf.msgTo <> '', 'INFO', 'ERROR');
    FLogProc('LoadConf', '{"level" : "' + lLevel + '", "schema" : "' + TJanuaApplication.dbSchemaID.ToString +
      '", "key" : "' + Key + '", "to" : "' + FSMSMessageConf.msgTo + '", "url" : "' + FSMSMessageConf.Url +
      '", "content" : "' + FSMSMessageConf.Body + '"}', self);
  end;
end;

procedure TSMSMessageConf.SetBody(const Value: string);
begin
  FSMSMessageConf.Body := Value;
end;

procedure TSMSMessageConf.SetmsgTo(const Value: string);
begin
  FSMSMessageConf.msgTo := Value;
end;

procedure TSMSMessageConf.SetSMSMessageConf(const Value: TJanuaSMSMessageConf);
begin
  FSMSMessageConf := Value;
end;

procedure TSMSMessageConf.SetSMSSendingEngine(const Value: TJanuaSendingEngine);
begin
  FSMSMessageConf.SMSSendingEngine := Value;
end;

procedure TSMSMessageConf.SetText(const Value: string);
begin
  FSMSMessageConf.Body := Value;
end;

procedure TSMSMessageConf.SetTitle(const Value: string);
begin
  FSMSMessageConf.Title := Value;
end;

procedure TSMSMessageConf.SetUrl(const Value: string);
begin
  FSMSMessageConf.Url := Value;
end;

procedure TSMSMessageConf.SetUrlGenEngine(const Value: TUrlGeneratorEngine);
begin
  FSMSMessageConf.UrlGenEngine := Value;
end;

{ TSMSSenderConf }

procedure TSMSSenderConf.CheckAll;
begin
  inherited;

end;

constructor TSMSSenderConf.Create;
begin
  inherited;
  Key := 'Twilio';
end;

function TSMSSenderConf.GetAsJson: String;
begin
  Result := TJanuaJson.SerializeSimple<TSMSSenderRecordConf>(FRecordConf);
end;

procedure TSMSSenderConf.SetAppName(const Value: string);
begin
  FRecordConf.AppName := Value;
end;

procedure TSMSSenderConf.SetAsJson(const Value: String);
begin
  inherited;
  FRecordConf := TJanuaJson.DeserializeSimple<TSMSSenderRecordConf>(Value);
end;

procedure TSMSSenderConf.SetDefaultMessageID(const Value: string);
begin
  FRecordConf.DefaultMessageID := Value;
end;

procedure TSMSSenderConf.SetKey(const Value: string);
begin
  FRecordConf.Key := Value;
end;

procedure TSMSSenderConf.SetSecret(const Value: string);
begin
  FRecordConf.Secret := Value;
end;

procedure TSMSSenderConf.SetTestMessageID(const Value: string);
begin
  FRecordConf.TestMessageID := Value;
end;

{ TJanuaGCalendar }

function TJanuaGCalendar.GetAsJson: string;
begin

end;

procedure TJanuaGCalendar.SetAsJson(const Value: string);
begin

end;

procedure TJanuaGCalendar.SetDescription(const Value: string);
begin
  FCalRecord.Description := Value;
end;

procedure TJanuaGCalendar.SetGUID(const Value: TGUID);
begin
  FCalRecord.GUID := Value;
end;

procedure TJanuaGCalendar.SetID(const Value: string);
begin
  FCalRecord.ID := Value;
end;

procedure TJanuaGCalendar.SetLocation(const Value: string);
begin
  FCalRecord.Location := Value;
end;

procedure TJanuaGCalendar.SetOutKey(const Value: TGUID);
begin
  FCalRecord.OutKey := Value;
end;

procedure TJanuaGCalendar.SetPrimary(const Value: boolean);
begin
  FCalRecord.Primary := Value;
end;

procedure TJanuaGCalendar.SetSummary(const Value: string);
begin
  FCalRecord.Summary := Value;
end;

procedure TJanuaGCalendar.SetTimeZone(const Value: string);
begin
  FCalRecord.TimeZone := Value;
end;

{ TJanuaWhatsAppConf }

procedure TJanuaWhatsAppConf.Assign(const Value: TJanuaWhatsAppConf);
begin
  FConf.Key := Value.Key;
  FConf.Secret := Value.Secret;
  FConf.DefaultMessage := Value.DefaultMessage;
  FConf.AppName := Value.AppName;
end;

procedure TJanuaWhatsAppConf.Clear;
begin
  FConf.Key := '';
  FConf.Secret := '';
  FConf.DefaultMessage := '';
  FConf.AppName := '';
end;

constructor TJanuaWhatsAppConf.Create(const aKey, aSecret, aAppName, aDefaultMessage: string);
begin
  inherited Create;
  FConf.Key := aKey;
  FConf.Secret := aSecret;
  FConf.DefaultMessage := aDefaultMessage;
  FConf.AppName := aAppName;
end;

function TJanuaWhatsAppConf.GetAsJson: String;
begin
  Result := TJanuaJson.SerializeSimple<TSMSSenderRecordConf>(FConf);
end;

function TJanuaWhatsAppConf.GetAsJsonObject: TJsonObject;
begin
  Result := TJsonObject(TJanuaJson.SerializeJsonObject<TSMSSenderRecordConf>(FConf));
end;

function TJanuaWhatsAppConf.GetGenerateCustomMessage: string;
begin

end;

procedure TJanuaWhatsAppConf.SetAppName(const Value: string);
begin
  FConf.AppName := Value;
end;

procedure TJanuaWhatsAppConf.SetAsJson(const aJson: string);
begin
  FConf := TJanuaJson.DeserializeSimple<TSMSSenderRecordConf>(aJson);
end;

procedure TJanuaWhatsAppConf.SetAsJsonObject(const aObject: TJsonObject);
begin
  FConf := TJanuaJson.DeserializeSimple<TSMSSenderRecordConf>(TJsonValue(aObject))
end;

procedure TJanuaWhatsAppConf.SetDefaultMessage(const Value: string);
begin
  FConf.DefaultMessage := Value;
end;

procedure TJanuaWhatsAppConf.SetDefaultMessageID(const Value: string);
begin
  if FConf.DefaultMessageID <> Value then
  begin
    FConf.DefaultMessageID := Value;
    Notify('DefaultMessageID');
  end;
end;

procedure TJanuaWhatsAppConf.SetKey(const Value: string);
begin
  if FConf.Key <> Value then
  begin
    FConf.Key := Value;
    Notify('Key');
  end;
end;

procedure TJanuaWhatsAppConf.SetSecret(const Value: string);
begin
  if FConf.Secret <> Value then
  begin
    FConf.Secret := Value;
    Notify('Secret');
  end;
end;

procedure TJanuaWhatsAppConf.SetTestMessageID(const Value: string);
begin
  if FConf.TestMessageID <> Value then
  begin
    FConf.TestMessageID := Value;
    Notify('TestMessageID');
  end;
end;

end.
