unit Janua.Cloud.Types;

interface

uses Spring.Collections, Janua.Core.Types, Data.DB, Janua.Core.Http.Intf;

type
  TSendMessageEvent = procedure(const aMessage, aJson: string) of object;


type
  TCloudPath = (tcpDocuments, tcpWorflows);
  TJanuaSSLVersion = (sslvSSLv2, sslvSSLv23, sslvSSLv3, sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2);
  TJanuaSSLVersions = set of TJanuaSSLVersion;
  TIJanuaSSLMode = (sslmUnassigned, sslmClient, sslmServer, sslmBoth);
  TJanuaMailServerType = (jsmNotSet, jmsIndySMTP, jmsSendGrid);
  TJanuaMessageType = (jmtSMS, jmtTelegram, jmtWhatsApp);

const
  CCloudPath: array [TCloudPath] of string = ('documents', 'workflows');
  CMessageType: array [TJanuaMessageType] of string = ('SMS', 'Telegram', 'WhatsApp');

type
  TJanuaMailEncoding = (jmeHTML, jmeText);
  TJanuaMailEncription = (jmsNone, jmsUseExplicitTLS, jmsUseImplicitTLS);

const
  CJanuaMailEncriptions: array [TJanuaMailEncription] of integer = (0, 1, 2);
  CMailContentType: array [TJanuaMailEncoding] of string = ('text/html', 'text/plain');

type
  TJanuaStringArray = TJanuaArray<string>;
  TJanuaBlobArray = TJanuaArray<TJanuaBlob>;

type
  TRecParams = record
    Params: TJanuaArray<TJanuaConfCustomField>;
  private
    FDataset: TDataSet;
    function GetItems(Index: string): string;
    procedure SetItems(Index: string; const Value: string);
    procedure SetDataset(const Value: TDataSet);
  public
    procedure AddReplaceCustomField(const aField, aValue: string);
    function HasCustomFields: Boolean;
    function ApplyParams(const aText: string; aProc: TMessageLogProc = nil): string;
    procedure SaveToDataset(aDataset: TDataSet);
    procedure LoadFromDataset(aDataset: TDataSet);
    procedure RemoveCustomField(const aField: string);
    function Count: integer;
  public
    property Items[Index: string]: string read GetItems write SetItems; default;
    property Dataset: TDataSet read FDataset write SetDataset;
  end;

type
  TJanuaCloud = record
  private
    class var FExtensionIcons: IDictionary<string, integer>;
  public
    class function PathFromDate(const aPathType: TCloudPath; aDate: TDateTime): string; static;
    class function IconFromExtension(const aExtension: string): integer; static;
    class procedure Setup; static;
  public
    class property ExtensionIcons: IDictionary<string, integer> read FExtensionIcons;
  end;

  TJanuaRecMailServerConf = record
  public
    UserName: string;
    Password: string;
    APIKey: string;
    RESTUser: string;
    RESTSecret: string;
    Servername: string;
    Port: Word;
    Encrypted: Boolean;
    Encoding: TJanuaMailEncoding;
    Encryption: TJanuaMailEncription;
    SSLVersion: TJanuaSSLVersion;
    // TIdSSLVersion = (sslvSSLv2, sslvSSLv23, sslvSSLv3, sslvTLSv1,sslvTLSv1_1,sslvTLSv1_2);
  public
    class operator Initialize(out Dest: TJanuaRecMailServerConf);
    class operator Finalize(var Dest: TJanuaRecMailServerConf);
    procedure Clear;
    function GetAsJson: String;
    procedure SetAsJson(const aJson: string);
  end;

Type
  TJanuaMailMessageConf = record
    Subject: string;
    MailBody: string;
    MailFrom: string;
    MailFromName: string;
    MailReply: string;
    MailCDNUrl: string;
    MailTo: string;
    MailCC: string;
    MailBCC: string;
    MailRecipientTest: string;
    Encoding: TJanuaMailEncoding;
    CustomFields: TRecParams;
    /// <summary> URL model for sending Message with tinyUrl </summary>
    Url: string;
    /// <summary> Default Engine Generator  tinyUrl </summary>
    UrlGenEngine: TUrlGeneratorEngine;
  private
    function GetContentType: string;
    procedure SetContentType(const Value: string);
  public
    procedure Assign(const Value: TJanuaMailMessageConf);
    procedure Clear;
    class operator Initialize(out Dest: TJanuaMailMessageConf);
    function GetAsJson: String;
    procedure SetAsJson(const aJson: string);
    function GetAsHtml: string;
    procedure SetAsHtml(const aHtml: string);
    function GetGenerateCustomHtml: string;
  end;

type
  TJanuaMailMessage = record
    From: string;
    FromAddr: string;
    MailTo: string;
    Subject: string;
    CC: string;
    BCC: string;
    ReplyTo: string;
    AttachFileList: TJanuaStringArray;
    AttachBlobList: TJanuaBlobArray;
    MailBody: string;
    Encoding: TJanuaMailEncoding;
    // <summary> Destination Url of the Message </summary>
    Url: string;
    // <summary> Tiny Url of the Message </summary>
    TinyUrl: string;
    class operator Initialize(out Dest: TJanuaMailMessage);
    class operator Finalize(var Dest: TJanuaMailMessage);
  private
    function GetContentType: string;
    procedure SetContentType(const Value: string);
  public
    procedure Assign(const Value: TJanuaMailMessage);
    procedure Clear;
    function GetAsJson: String;
    procedure SetAsJson(const aJson: string);
    procedure setText(const Value: string);
    function Text: string;
    procedure AddAttachment(const aAttach: string); overload;
    procedure AddAttachment(const aBlob: TJanuaBlob); overload;
  public
    property ContentType: string read GetContentType write SetContentType;
  end;

type
  TLandingMessageRecConf = record
    /// <summary> Landing Message Page Title </summary>
    Title: string;
    /// <summary> Body of the page should be a part of the text or just a full html page </summary>
    Body: string;
    /// <summary> Page or text should hold a logo Image for personalization </summary>
    Image: TJanuaBlob;
    /// <summary> This is the template for the Landing Message </summary>
    Url: string;
    CustomFields: TRecParams;
  public
    procedure Assign(const Value: TLandingMessageRecConf);
    procedure Clear;
    function GetAsJson: String;
    procedure SetAsJson(const aJson: string);
    procedure setText(const Value: string);
    function Text: string;
    function GetGenerateCustomText: string;
  end;

  TLandingMessage = record
    /// <summary> Landing Message Page Title </summary>
    Title: string;
    /// <summary> Body of the page should be a part of the text or just a full html page </summary>
    Body: string;
    /// <summary> Page or text should hold a logo Image for personalization </summary>
    Image: TJanuaBlob;
    /// <summary> This is the template for the Landing Message </summary>
    Url: string;
  public
    procedure Assign(const Value: TLandingMessage);
    procedure Clear;
    function GetAsJson: String;
    procedure SetAsJson(const aJson: string);
    procedure setText(const Value: string);
    function Text: string;
  end;

type
  TSMSSenderRecordConf = record
    Key: string;
    Secret: string;
    AppName: string;
  public
    procedure Clear;
    function GetAsJson: String;
    procedure SetAsJson(const aJson: string);
  end;

  TJanuaSendingEngine = (jseSMS, jseWhatsapp);

  TJanuaSMSMessageConf = record
    /// <summary> Landing Message Page Title </summary>
    Title: string;
    /// <summary> Body of the page should be a part of the text or just a full html page </summary>
    Body: string;
    /// <summary> Recipient(s) of the Message </summary>
    MsgTo: string;
    MsgFrom: string;
    MsgFromName: string;
    CustomFields: TRecParams;
    /// <summary> URL model for sending Message with tinyUrl </summary>
    Url: string;
    /// <summary> Default Engine Generator  tinyUrl </summary>
    UrlGenEngine: TUrlGeneratorEngine;
    // <summary> a message could be sent using an engine such as whatsapp </summary>
    SMSSendingEngine: TJanuaSendingEngine;
  public
    class operator Initialize(out Dest: TJanuaSMSMessageConf);
    procedure Assign(const Value: TJanuaSMSMessageConf);
    procedure Clear;
    function GetAsJson: String;
    procedure SetAsJson(const aJson: string);
    function GetGenerateCustomSMS: string;
  end;

  TSMSMessage = record
    /// <summary> Landing Message Page Title </summary>
    Title: string;
    /// <summary> Body of the page should be a part of the text or just a full html page </summary>
    Body: string;
    /// <summary> If only one Recipient is set </summary>
    MsgTo: string;
    /// <summary> Recipient(s) of the Message </summary>
    MsgFrom: string;
    MsgFromName: string;
    Recipients: TStringArray;
    // <summary> Destination Url of the Message </summary>
    Url: string;
    // <summary> Tiny Url of the Message </summary>
    TinyUrl: string;
    // <summary> a message could be sent using an engine such as whatsapp </summary>
    SMSSendingEngine: TJanuaSendingEngine;
  public
    class operator Initialize(out Dest: TSMSMessage);
    procedure Assign(const Value: TSMSMessage);
    procedure Clear;
    function GetAsJson: String;
    procedure SetAsJson(const aJson: string);
    procedure setText(const Value: string);
    function Text: string;
  end;

  TRestAuthentication = (raNone, raToken, raBasic);

  TRestRequestTemplate = record
    /// <summary> Landing Message Page Title </summary>
    Title: string;
    // <summary> Destination Url of the Message </summary>
    Url: string;
    /// <summary> Body of the page should be a part of the text or just a full html page </summary>
    Body: string;
    /// <summary> If only one Recipient is set </summary>
    Authentication: TRestAuthentication;
    /// <summary> Authorization and Authentication components </summary>
    UserName: string;
    Password: string;
    Token: string;
    // <summary> if a specific content only like json should be accepted </summary>
    Accept: string;
  end;

  TJanuaFacebook = record
    class function Base64Decode(const strInput: string): string; static;
  end;

  TJanuaCloudMailSendErrorEvent = procedure(Sender: TObject; AErrorMessage: String;
    aMessage: TJanuaMailMessage) of object;
  TJanuaCloudMailMessageEvent = procedure(Sender: TObject; AErrorMessage: String; aMessage: TJanuaMailMessage)
    of object;
  TJanuaCloudMailLogEvent = procedure(Sender: TObject; AErrorMessage: String; aMessage: TJanuaMailMessage)
    of object;

implementation

uses System.SysUtils, System.StrUtils, Janua.Core.Functions, System.NetEncoding,
  Janua.Application.Framework, Janua.Core.Json, Janua.Core.Commons,
  Janua.Core.DB;

{ TJanuaCloud }
class function TJanuaCloud.IconFromExtension(const aExtension: string): integer;
begin
  Result := FExtensionIcons.GetValueOrDefault(aExtension.ToUpper, 116)
end;

class function TJanuaCloud.PathFromDate(const aPathType: TCloudPath; aDate: TDateTime): string;
var
  myYear, myMonth, myDay: Word;
begin
  // And let us see what we get
  DecodeDate(aDate, myYear, myMonth, myDay);
  Result := CCloudPath[aPathType] + '/' + myYear.ToString + '/' + Lpad(myMonth.ToString, 2, '0');
end;

class procedure TJanuaCloud.Setup;
begin
  FExtensionIcons := TCollections.CreateDictionary<string, integer>;
  FExtensionIcons['.PDF'] := 139;
  FExtensionIcons['.JPG'] := 136;
  FExtensionIcons['.JPEG'] := 136;
  FExtensionIcons['.MSG'] := 115;
  FExtensionIcons['.TIF'] := 113;
  FExtensionIcons['.TIFF'] := 113;
  FExtensionIcons['.XLS'] := 140;
  FExtensionIcons['.XLSX'] := 140;
  FExtensionIcons['.DOC'] := 147;
  FExtensionIcons['.DOCX'] := 147;
  FExtensionIcons['.PNG'] := 137;
end;

{ TJanuaMailServerConf }
procedure TJanuaRecMailServerConf.Clear;
begin
  UserName := '';
  Password := '';
  APIKey := '';
  RESTUser := '';
  RESTSecret := '';
  Servername := '';
  Port := 0;
  Encrypted := False;
  Encoding := TJanuaMailEncoding.jmeHTML;
  Encryption := TJanuaMailEncription.jmsNone;
  SSLVersion := TJanuaSSLVersion.sslvSSLv3;
end;

class operator TJanuaRecMailServerConf.Finalize(var Dest: TJanuaRecMailServerConf);
begin
  Dest.Port := 0;
  Dest.Encrypted := False;
  Dest.Encoding := TJanuaMailEncoding.jmeHTML;
  Dest.Encryption := TJanuaMailEncription.jmsNone;
  Dest.SSLVersion := TJanuaSSLVersion.sslvSSLv3;
end;

function TJanuaRecMailServerConf.GetAsJson: String;
begin
  Result := TJanuaJson.SerializeSimple<TJanuaRecMailServerConf>(Self);
end;

class operator TJanuaRecMailServerConf.Initialize(out Dest: TJanuaRecMailServerConf);
begin
end;

procedure TJanuaRecMailServerConf.SetAsJson(const aJson: string);
begin
  if (aJson = '') or (aJson = '{}') then
    Self.Clear
  else
    Self := TJanuaJson.DeserializeSimple<TJanuaRecMailServerConf>(aJson);
end;

{ TJanuaMailMessageConf }
procedure TJanuaMailMessageConf.Assign(const Value: TJanuaMailMessageConf);
begin
end;

procedure TJanuaMailMessageConf.Clear;
begin
  MailFrom := '';
  MailFromName := '';
  MailCDNUrl := '';
  MailTo := '';
  Subject := '';
  MailCC := '';
  MailBCC := '';
  MailReply := '';
  MailBody := '';
  Encoding := jmeHTML;
  MailRecipientTest := '';
  CustomFields.Params.Clear;
end;

function TJanuaMailMessageConf.GetAsHtml: string;
begin
  Result := DecodeString64(MailBody)
end;

function TJanuaMailMessageConf.GetAsJson: String;
begin
  Result := TJanuaJson.SerializeSimple<TJanuaMailMessageConf>(Self);
end;

function TJanuaMailMessageConf.GetContentType: string;
begin
  Result := CMailContentType[Encoding]
end;

function TJanuaMailMessageConf.GetGenerateCustomHtml: string;
begin
  Result := CustomFields.ApplyParams(GetAsHtml);
end;

class operator TJanuaMailMessageConf.Initialize(out Dest: TJanuaMailMessageConf);
begin
  Dest.Encoding := TJanuaMailEncoding.jmeHTML;
  Dest.UrlGenEngine := TUrlGeneratorEngine.jgeTinyUrl;
end;

procedure TJanuaMailMessageConf.SetAsHtml(const aHtml: string);
begin
  MailBody := EncodeString64(aHtml)
end;

procedure TJanuaMailMessageConf.SetAsJson(const aJson: string);
begin
  if (aJson = '') or (aJson = '{}') then
    Self.Clear
  else
    Self := TJanuaJson.DeserializeSimple<TJanuaMailMessageConf>(aJson);
end;

procedure TJanuaMailMessageConf.SetContentType(const Value: string);
begin
  if not TEnumConvertor<TJanuaMailEncoding>.TryFromString(Value, Encoding) then
    raise Exception.Create('TJanuaMailMessageConf Encoding not set: ' + Value);
end;

{ TJanuaMailMessage }
procedure TJanuaMailMessage.AddAttachment(const aAttach: string);
begin
  AttachFileList.Items[AttachFileList.Inc] := aAttach
end;

procedure TJanuaMailMessage.AddAttachment(const aBlob: TJanuaBlob);
begin
  AttachBlobList.Items[AttachFileList.Inc] := aBlob
end;

procedure TJanuaMailMessage.Assign(const Value: TJanuaMailMessage);
begin
  From := Value.From;
  FromAddr := Value.FromAddr;
  MailTo := Value.MailTo;
  Subject := Value.Subject;
  CC := Value.CC;
  BCC := Value.BCC;
  ReplyTo := Value.ReplyTo;
  AttachFileList := Value.AttachFileList;
  AttachBlobList := Value.AttachBlobList;
  MailBody := Value.MailBody;
  Encoding := Value.Encoding;
end;

procedure TJanuaMailMessage.Clear;
begin
  From := '';
  FromAddr := '';
  MailTo := '';
  Subject := '';
  CC := '';
  BCC := '';
  ReplyTo := '';
  AttachFileList.Clear; // :='';
  AttachBlobList.Clear; // := '';
  MailBody := '';
  Encoding := jmeHTML;
end;

class operator TJanuaMailMessage.Finalize(var Dest: TJanuaMailMessage);
begin
end;

function TJanuaMailMessage.GetAsJson: String;
begin
  Result := TJanuaJson.SerializeSimple<TJanuaMailMessage>(Self);
end;

function TJanuaMailMessage.GetContentType: string;
begin
  Result := CMailContentType[Encoding]
end;

function TJanuaMailMessage.Text: string;
begin
  Result := DecodeString64(MailBody)
end;

class operator TJanuaMailMessage.Initialize(out Dest: TJanuaMailMessage);
begin
  Dest.Encoding := jmeHTML
end;

procedure TJanuaMailMessage.SetAsJson(const aJson: string);
begin
  if (aJson = '') or (aJson = '{}') then
    Clear
  else
    Self := TJanuaJson.DeserializeSimple<TJanuaMailMessage>(aJson);
end;

procedure TJanuaMailMessage.SetContentType(const Value: string);
begin
  if not TEnumConvertor<TJanuaMailEncoding>.TryFromString(Value, Encoding) then
    raise Exception.Create('TJanuaMailMessage Encoding not set: ' + Value);
end;

procedure TJanuaMailMessage.setText(const Value: string);
begin
  MailBody := EncodeString64(Value)
end;

{ TLandingMessageRecConf }
procedure TLandingMessageRecConf.Assign(const Value: TLandingMessageRecConf);
begin
  Title := Value.Title;
  Body := Value.Body;
  Url := Value.Url;
  Image.Assign(Value.Image);
end;

procedure TLandingMessageRecConf.Clear;
begin
  Title := '';
  Body := '';
  Url := '';
  Image.Clear;
end;

function TLandingMessageRecConf.GetAsJson: String;
begin
  Result := TJanuaJson.SerializeSimple<TLandingMessageRecConf>(Self);
end;

function TLandingMessageRecConf.GetGenerateCustomText: string;
begin
  Result := CustomFields.ApplyParams(Text);
end;

procedure TLandingMessageRecConf.SetAsJson(const aJson: string);
begin
  if (aJson = '') or (aJson = '{}') then
    Self.Clear
  else
    Self := TJanuaJson.DeserializeSimple<TLandingMessageRecConf>(aJson);
end;

procedure TLandingMessageRecConf.setText(const Value: string);
begin
  Body := EncodeString64(Value)
end;

function TLandingMessageRecConf.Text: string;
begin
  Result := DecodeString64(Body)
end;

{ TLandingMessage }
procedure TLandingMessage.Assign(const Value: TLandingMessage);
begin
  Title := Value.Title;
  Body := Value.Body;
  Image := Value.Image;
  Url := Value.Url;
end;

procedure TLandingMessage.Clear;
begin
  Title := '';
  Body := '';
  Image.Clear;
  Url := '';
end;

function TLandingMessage.GetAsJson: String;
begin
  Result := TJanuaJson.SerializeSimple<TLandingMessage>(Self);
end;

procedure TLandingMessage.SetAsJson(const aJson: string);
begin
  if (aJson = '') or (aJson = '{}') then
    Self.Clear
  else
    Self := TJanuaJson.DeserializeSimple<TLandingMessage>(aJson);
end;

procedure TLandingMessage.setText(const Value: string);
begin
  Body := EncodeString64(Value)
end;

function TLandingMessage.Text: string;
begin
  Result := DecodeString64(Body)
end;

{ TSMSMessage }
procedure TSMSMessage.Assign(const Value: TSMSMessage);
begin
  Title := Value.Title;
  Body := Value.Body;
  MsgTo := Value.MsgTo;
  Recipients := Value.Recipients;
end;

procedure TSMSMessage.Clear;
begin
  Title := '';
  Body := '';
end;

function TSMSMessage.GetAsJson: String;
begin
  Result := TJanuaJson.SerializeSimple<TSMSMessage>(Self);
end;

class operator TSMSMessage.Initialize(out Dest: TSMSMessage);
begin
  Dest.SMSSendingEngine := jseSMS;
end;

procedure TSMSMessage.SetAsJson(const aJson: string);
begin
  if (aJson = '') or (aJson = '{}') then
    Self.Clear
  else
    Self := TJanuaJson.DeserializeSimple<TSMSMessage>(aJson);
end;

procedure TSMSMessage.setText(const Value: string);
begin
  Body := Value
end;

function TSMSMessage.Text: string;
begin
  Result := Body
end;

{ TJanuaSMSMessageConf }
procedure TJanuaSMSMessageConf.Assign(const Value: TJanuaSMSMessageConf);
begin
  Title := Value.Title;
  Body := Value.Body;
  MsgTo := Value.MsgTo;
  MsgFrom := Value.MsgFrom;
  MsgFromName := Value.MsgFromName;
  CustomFields := Value.CustomFields;
end;

procedure TJanuaSMSMessageConf.Clear;
begin
  Title := '';
  Body := '';
  MsgTo := '';
  MsgFrom := '';
  MsgFromName := '';
  CustomFields.Params.Clear;
end;

function TJanuaSMSMessageConf.GetAsJson: String;
begin
  Result := TJanuaJson.SerializeSimple<TJanuaSMSMessageConf>(Self);
end;

function TJanuaSMSMessageConf.GetGenerateCustomSMS: string;
begin
  Result := CustomFields.ApplyParams(Body);
end;

class operator TJanuaSMSMessageConf.Initialize(out Dest: TJanuaSMSMessageConf);
begin
  Dest.UrlGenEngine := TUrlGeneratorEngine.jgeTinyUrl;
  Dest.SMSSendingEngine := TJanuaSendingEngine.jseSMS;
end;

procedure TJanuaSMSMessageConf.SetAsJson(const aJson: string);
begin
  if (aJson = '') or (aJson = '{}') then
    Self.Clear
  else
    Self := TJanuaJson.DeserializeSimple<TJanuaSMSMessageConf>(aJson);
end;

{ TRecParams }
procedure TRecParams.AddReplaceCustomField(const aField, aValue: string);
var
  lFound: integer;
begin
  lFound := -1;
  if Params.HasValues then
  begin
    var
    i := -1;
    while (i < Pred(Params.Count)) and (lFound = -1) do
    begin
      Inc(i);
      if Params[i].Key = aField.ToLower then
        lFound := i;
    end;
  end;
  if lFound = -1 then
  begin
    Params.Items[Params.Inc] := (TJanuaConfCustomField.Create(aField.ToLower, aValue))
  end
  else
    Params.Items[lFound] := TJanuaConfCustomField.Create(aField.ToLower, aValue);
end;

function TRecParams.ApplyParams(const aText: string; aProc: TMessageLogProc): string;
var
  { CustomFields: TArray<TJanuaConfCustomField>; }
  LField: TJanuaConfCustomField;
  lString: string;
begin
  Result := aText;
  var
  lProc := Assigned(aProc);
  if Params.HasValues then
    for LField in Params.Items do
    begin
      var
      lFieldTag := '$$' + LField.Key.ToLower + '$$';
      var
      lPos := Pos(lFieldTag, Result) > 0;
      if lPos then
      begin
        lString := LField.Value;
        if Assigned(FDataset) then
          TDatasetStringWriter.ElaborateRecord(FDataset, lString, aProc);
        Result := StringReplace(Result, lFieldTag, lString, [rfIgnoreCase, rfReplaceAll]);
      end;
      if lProc then
        aProc('TRecParams.ApplyParams', lFieldTag + ' : ' + IfThen(lPos, 'Found', 'not Found'), nil);
    end;
end;

function TRecParams.Count: integer;
begin
  Result := Params.Count
end;

function TRecParams.GetItems(Index: string): string;
var
  { CustomFields: TArray<TJanuaConfCustomField>; }
  LField: TJanuaConfCustomField;
begin
  Result := '';
  if Params.HasValues then
    for LField in Params.Items do
      if LField.Key.ToLower = Index then
        Result := LField.Value;
end;

function TRecParams.HasCustomFields: Boolean;
begin
  Result := Params.HasValues;
end;

procedure TRecParams.LoadFromDataset(aDataset: TDataSet);
begin
  if aDataset.Active and (aDataset.RecordCount > 0) then
  begin
    aDataset.First;
    while not aDataset.Eof do
    begin
      AddReplaceCustomField(aDataset.FieldByName('key').AsString, aDataset.FieldByName('value').AsString);
      aDataset.Next;
    end;
  end;
end;

procedure TRecParams.RemoveCustomField(const aField: string);
begin
  for var i := 0 to Pred(Params.Count) do
    if Params[i].Key.ToLower = aField.ToLower then
    begin
      Params.Remove(i);
      Exit
    end;
end;

procedure TRecParams.SaveToDataset(aDataset: TDataSet);
begin
  if aDataset.Active and (aDataset.RecordCount = 0) and (Params.Count > 0) then
  begin
    for var i := 0 to Pred(Params.Count) do
    begin
      aDataset.Append;
      aDataset.FieldByName('key').AsString := Params[i].Key;
      aDataset.FieldByName('value').AsString := Params[i].Value;
      aDataset.Post;
    end;
  end;
end;

procedure TRecParams.SetDataset(const Value: TDataSet);
begin
  FDataset := Value;
end;

procedure TRecParams.SetItems(Index: string; const Value: string);
begin
  AddReplaceCustomField(Index, Value)
end;

{ TSMSSenderRecordConf }
procedure TSMSSenderRecordConf.Clear;
begin
  Key := '';
  Secret := '';
  AppName := '';
end;

function TSMSSenderRecordConf.GetAsJson: String;
begin
  Result := TJanuaJson.SerializeSimple<TSMSSenderRecordConf>(Self);
end;

procedure TSMSSenderRecordConf.SetAsJson(const aJson: string);
begin
  if (aJson = '') or (aJson = '{}') then
    Self.Clear
  else
    Self := TJanuaJson.DeserializeSimple<TSMSSenderRecordConf>(aJson);
end;

{ TJanuaFacebook }

class function TJanuaFacebook.Base64Decode(const strInput: string): string;
var
  strFixup: string;
begin
  strFixup := strInput + StringOfChar('=', Length(strInput) mod 4); // nope, fixed below
  strFixup := StringReplace(strFixup, '-', '+', [rfReplaceAll]);
  strFixup := StringReplace(strFixup, '_', '/', [rfReplaceAll]);

  Result := Encode64(strFixup);
end;


initialization

try
  TJanuaCloud.Setup;
except
  on e: Exception do
    raise Exception.Create('TJanuaCloud.Setup Exception');
end;

finalization

end.
