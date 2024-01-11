unit Janua.Cloud.Mail.Conf;

interface

uses Janua.Core.Classes, Janua.Cloud.Types, Data.DB, Janua.Orm.Intf, Janua.Core.System.Types,
  Janua.Core.Http.Intf, Janua.Core.Types;

type
  TJanuaMailConf = class(TJanuaBindableConfObject)
  private
    FProc: TMessageLogProc;
    FMailMessageConf: TJanuaMailMessageConf;
    procedure SetAsHtml(const Value: string);
    procedure SetMailCDNUrl(const Value: string);
    procedure SetMailFrom(const Value: string);
    procedure SetMailReply(const Value: string);
    procedure SetSubject(const Value: string);
    function GetAsHtml: string;
    procedure SetTestRecipients(const Value: string);
    procedure SetMailBCC(const Value: string);
    procedure SetMailCC(const Value: string);
    procedure SetMailTo(const Value: string);
    procedure SetMailMessageConf(const Value: TJanuaMailMessageConf);
    procedure SetMailFromName(const Value: string);
    procedure SetUrlGenEngine(const Value: TUrlGeneratorEngine);
    procedure SetUrl(const Value: string);
  protected
    function GetAsJson: String; override;
    procedure SetAsJson(const aJson: string); override;
    procedure CheckAll; override;
  public
    function GenerateTinyUrl(aUrl: string): string;
    function GenerateUrl(const aDataset: TDataset): string; overload;
    function GenerateUrl(const aRecord: IJanuaRecord): string; overload;
    procedure AddReplaceCustomField(const aField, aValue: string);
    function GenerateMail(const aRecord: IJanuaRecord; aProc: TMessageLogProc = nil)
      : TJanuaMailMessage; overload;
    function GenerateMail(const aDataset: TDataset; aProc: TMessageLogProc = nil): TJanuaMailMessage; overload;
  public
    constructor Create; override;
    destructor Destroy; override;
    // FSettingLocation
  public
    property MailFromName: string read FMailMessageConf.MailFromName write SetMailFromName;
    property MailTo: string read FMailMessageConf.MailTo write SetMailTo;
    property MailCC: string read FMailMessageConf.MailCC write SetMailCC;
    property MailBCC: string read FMailMessageConf.MailBCC write SetMailBCC;
    property Subject: string read FMailMessageConf.Subject write SetSubject;
    property MailBody: string read GetAsHtml write SetAsHtml;
    property MailFrom: string read FMailMessageConf.MailFrom write SetMailFrom;
    property MailReply: string read FMailMessageConf.MailReply write SetMailReply;
    property MailCDNUrl: string read FMailMessageConf.MailCDNUrl write SetMailCDNUrl;
    property AsHtml: string read GetAsHtml write SetAsHtml;
    property Url: string read FMailMessageConf.Url write SetUrl;
    property TestRecipients: string read FMailMessageConf.MailRecipientTest write SetTestRecipients;
    property MailMessageConf: TJanuaMailMessageConf read FMailMessageConf write SetMailMessageConf;
    property UrlEngine: TUrlGeneratorEngine read FMailMessageConf.UrlGenEngine write SetUrlGenEngine;
  end;

type
  TJanuaMailServerConf = class(TJanuaBindableConfObject)
  private
    FServerConf: TJanuaRecMailServerConf;
    procedure SetAPIKey(const Value: string);
    procedure SetEncoding(const Value: TJanuaMailEncoding);
    procedure SetEncrypted(const Value: Boolean);
    procedure SetEncryption(const Value: TJanuaMailEncription);
    procedure SetPassword(const Value: string);
    procedure SetPort(const Value: Word);
    procedure SetRESTSecret(const Value: string);
    procedure SetRESTUser(const Value: string);
    procedure SetServerConf(const Value: TJanuaRecMailServerConf);
    procedure SetServername(const Value: string);
    procedure SetSSLVersion(const Value: TJanuaSSLVersion);
    procedure SetUsername(const Value: string);
  protected
    function GetAsJson: String; override;
    procedure SetAsJson(const aJson: string); override;
    procedure CheckAll; override;
  public
    constructor Create; override;
  public
    property Username: string read FServerConf.Username write SetUsername;
    property Password: string read FServerConf.Password write SetPassword;
    property APIKey: string read FServerConf.APIKey write SetAPIKey;
    property RESTUser: string read FServerConf.RESTUser write SetRESTUser;
    property RESTSecret: string read FServerConf.RESTSecret write SetRESTSecret;
    property Servername: string read FServerConf.Servername write SetServername;
    property Port: Word read FServerConf.Port write SetPort;
    property Encrypted: Boolean read FServerConf.Encrypted write SetEncrypted;
    property Encoding: TJanuaMailEncoding read FServerConf.Encoding write SetEncoding;
    property Encryption: TJanuaMailEncription read FServerConf.Encryption write SetEncryption;
    property SSLVersion: TJanuaSSLVersion read FServerConf.SSLVersion write SetSSLVersion;
    property ServerConf: TJanuaRecMailServerConf read FServerConf write SetServerConf;
  end;

implementation

uses System.SysUtils,
  // Januaproject
  Janua.Orm.Functions, Janua.Core.Functions, Janua.Application.Framework, Janua.Core.DB, Janua.Orm.Impl;

{ TJanuaMailConf }
procedure TJanuaMailConf.AddReplaceCustomField(const aField, aValue: string);
begin
  FMailMessageConf.CustomFields.AddReplaceCustomField(aField, aValue);
end;

procedure TJanuaMailConf.CheckAll;
begin
  inherited;
  Assert(MailTo <> '', ClassName + ': MailTo not set');
  Assert(Subject <> '', ClassName + ': Subject not set');
  Assert(AsHtml <> '', ClassName + ': AsHtml not set');
end;

constructor TJanuaMailConf.Create;
begin
  inherited;
end;

destructor TJanuaMailConf.Destroy;
begin

  inherited;
end;

function TJanuaMailConf.GenerateMail(const aDataset: TDataset; aProc: TMessageLogProc): TJanuaMailMessage;
begin
  Result.Url := GenerateUrl(aDataset);
  Result.TinyUrl := GenerateTinyUrl(Result.Url);
  Result.setText(TDatasetStringWriter.ElaborateRecord(aDataset,
    FMailMessageConf.GetGenerateCustomHtml, aProc));
  Result.From := TDatasetStringWriter.ElaborateRecord(aDataset, FMailMessageConf.MailFromName, aProc);
  Result.FromAddr := TDatasetStringWriter.ElaborateRecord(aDataset, FMailMessageConf.MailFrom, aProc);
  Result.MailTo := TDatasetStringWriter.ElaborateRecord(aDataset, FMailMessageConf.MailTo, aProc);
  Result.CC := TDatasetStringWriter.ElaborateRecord(aDataset, FMailMessageConf.MailCC, aProc);
  Result.BCC := TDatasetStringWriter.ElaborateRecord(aDataset, FMailMessageConf.MailBCC, aProc);
  Result.ReplyTo := TDatasetStringWriter.ElaborateRecord(aDataset, FMailMessageConf.MailReply, aProc);
  Result.Subject := TDatasetStringWriter.ElaborateRecord(aDataset, FMailMessageConf.Subject, aProc);
end;

function TJanuaMailConf.GenerateTinyUrl(aUrl: string): string;
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

function TJanuaMailConf.GenerateUrl(const aDataset: TDataset): string;
begin
  Result := TDatasetStringWriter.ElaborateRecord(aDataset, FMailMessageConf.Url);
end;

function TJanuaMailConf.GenerateUrl(const aRecord: IJanuaRecord): string;
begin
  Result := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FMailMessageConf.Url, FProc);
end;

function TJanuaMailConf.GenerateMail(const aRecord: IJanuaRecord; aProc: TMessageLogProc): TJanuaMailMessage;
begin
  FProc := aProc;
  Result.Url := GenerateUrl(aRecord);
  Result.TinyUrl := GenerateTinyUrl(Result.Url);
  Result.setText(TJanuaOrmStringWriter.ElaborateRecord(aRecord, FMailMessageConf.GetGenerateCustomHtml));
  Result.From := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FMailMessageConf.MailFromName);
  Result.FromAddr := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FMailMessageConf.MailFrom);
  Result.MailTo := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FMailMessageConf.MailTo);
  Result.CC := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FMailMessageConf.MailCC);
  Result.BCC := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FMailMessageConf.MailBCC);
  Result.ReplyTo := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FMailMessageConf.MailReply);
  Result.Subject := TJanuaOrmStringWriter.ElaborateRecord(aRecord, FMailMessageConf.Subject);
end;

function TJanuaMailConf.GetAsHtml: string;
begin
  Result := FMailMessageConf.GetAsHtml;
end;

function TJanuaMailConf.GetAsJson: String;
begin
  Result := FMailMessageConf.GetAsJson;
end;

procedure TJanuaMailConf.SetAsHtml(const Value: string);
begin
  FMailMessageConf.SetAsHtml(Value);
end;

procedure TJanuaMailConf.SetAsJson(const aJson: String);
begin
  FMailMessageConf.SetAsJson(aJson);
  NotifiyAllProperties;
end;

procedure TJanuaMailConf.SetMailBCC(const Value: string);
begin
  FMailMessageConf.MailBCC := Value;
end;

procedure TJanuaMailConf.SetMailCC(const Value: string);
begin
  FMailMessageConf.MailCC := Value;
end;

procedure TJanuaMailConf.SetMailCDNUrl(const Value: string);
begin
  FMailMessageConf.MailCDNUrl := Value;
end;

procedure TJanuaMailConf.SetMailFrom(const Value: string);
begin
  FMailMessageConf.MailFrom := Value;
end;

procedure TJanuaMailConf.SetMailFromName(const Value: string);
begin
  FMailMessageConf.MailFromName := Value;
end;

procedure TJanuaMailConf.SetMailMessageConf(const Value: TJanuaMailMessageConf);
begin
  FMailMessageConf := Value;
end;

procedure TJanuaMailConf.SetMailReply(const Value: string);
begin
  FMailMessageConf.MailReply := Value;
end;

procedure TJanuaMailConf.SetMailTo(const Value: string);
begin
  FMailMessageConf.MailTo := Value;
  Notify('MailTo');
end;

procedure TJanuaMailConf.SetSubject(const Value: string);
begin
  FMailMessageConf.Subject := Value;
  Notify('Subject');
end;

procedure TJanuaMailConf.SetTestRecipients(const Value: string);
begin
  FMailMessageConf.MailRecipientTest := Value;
end;

procedure TJanuaMailConf.SetUrl(const Value: string);
begin
  FMailMessageConf.Url := Value;
  Notify('Url');
end;

procedure TJanuaMailConf.SetUrlGenEngine(const Value: TUrlGeneratorEngine);
begin
  FMailMessageConf.UrlGenEngine := Value;
end;

{ TJanuaMailServerConf }

procedure TJanuaMailServerConf.CheckAll;
begin
  inherited;
  Assert((FServerConf.Username <> '') or (FServerConf.APIKey <> '') or (FServerConf.RESTUser <> ''),
    'User Key not set');
  Assert((FServerConf.Password <> '') or (FServerConf.RESTSecret <> ''), 'Password Secret not set');
end;

constructor TJanuaMailServerConf.Create;
begin
  inherited;
end;

function TJanuaMailServerConf.GetAsJson: String;
begin
  Result := FServerConf.GetAsJson;
end;

procedure TJanuaMailServerConf.SetAPIKey(const Value: string);
begin
  FServerConf.APIKey := Value;
end;

procedure TJanuaMailServerConf.SetAsJson(const aJson: string);
begin
  FServerConf.SetAsJson(aJson);
  NotifiyAllProperties;
end;

procedure TJanuaMailServerConf.SetEncoding(const Value: TJanuaMailEncoding);
begin
  FServerConf.Encoding := Value;
end;

procedure TJanuaMailServerConf.SetEncrypted(const Value: Boolean);
begin
  FServerConf.Encrypted := Value;
end;

procedure TJanuaMailServerConf.SetEncryption(const Value: TJanuaMailEncription);
begin
  FServerConf.Encryption := Value;
end;

procedure TJanuaMailServerConf.SetPassword(const Value: string);
begin
  FServerConf.Password := Value;
end;

procedure TJanuaMailServerConf.SetPort(const Value: Word);
begin
  FServerConf.Port := Value;
end;

procedure TJanuaMailServerConf.SetRESTSecret(const Value: string);
begin
  FServerConf.RESTSecret := Value;
end;

procedure TJanuaMailServerConf.SetRESTUser(const Value: string);
begin
  FServerConf.RESTUser := Value;
end;

procedure TJanuaMailServerConf.SetServerConf(const Value: TJanuaRecMailServerConf);
begin
  FServerConf := Value;
end;

procedure TJanuaMailServerConf.SetServername(const Value: string);
begin
  FServerConf.Servername := Value;
end;

procedure TJanuaMailServerConf.SetSSLVersion(const Value: TJanuaSSLVersion);
begin
  FServerConf.SSLVersion := Value;
end;

procedure TJanuaMailServerConf.SetUsername(const Value: string);
begin
  FServerConf.Username := Value;
end;

end.
