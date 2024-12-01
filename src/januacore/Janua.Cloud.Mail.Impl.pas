unit Janua.Cloud.Mail.Impl;

interface

{$I JANUACORE.INC}

uses System.SysUtils, System.Classes, Data.DB, System.Generics.Collections,
  // Janua Intf / Commons
  Janua.Cloud.Types, Janua.Cloud.Mail.Intf, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Core.Types,
  // Janua Implementations / Classes
  Janua.Core.Classes, Janua.Cloud.Mail.Conf, Janua.Core.System.Types, Janua.Cloud.Impl;

type

  TJanuaMailMessageBuilder = class(TJanuaCustomMessageBuilder, IJanuaMailMessageBuilder, IJanuaBindableObject)
  private
    FMailMessage: TJanuaMailMessage;
    FTestingFileName: string;
    [weak]
    FMailSender: IJanuaMailSender;
    FLoaded: Boolean;
    [weak]
    FMainRecord: IJanuaRecord;
    FSent: Boolean;
  strict protected
    FMailConf: TJanuaMailConf;
  protected
    function GetMainRecord: IJanuaRecord;
    procedure SetMainRecord(const Value: IJanuaRecord);
    // RecordSet Procedures
    function GetSent: Boolean;
    function GetMailSender: IJanuaMailSender;
    procedure SetMailSender(const Value: IJanuaMailSender);
    function GetMessageConf: TJanuaMailMessageConf;
    function GetMailMessage: TJanuaMailMessage;
    // ....................//
    function GetTestingFileName: string;
    function GetAttachList: TJanuaStringArray;
    procedure SetsAttach(const Value: TJanuaStringArray);
    procedure SetsBcc(const Value: string);
    procedure SetsCC(const Value: string);
    procedure SetSent(const Value: Boolean);
    procedure SetsFrom(const Value: string);
    procedure SetsFromAddr(const Value: string);
    procedure SetsSubject(const Value: string);
    procedure SetsText(const Value: string); override;
    procedure SetsTo(const Value: string);
    procedure SetTestingFileName(const Value: string);
    procedure SetMailMessage(const Value: TJanuaMailMessage);
    procedure SetMessageConf(const Value: TJanuaMailMessageConf);
    function GetMailEncoding: TJanuaMailEncoding;
    procedure SetMailEncoding(const Value: TJanuaMailEncoding);
    // container methods
    function GetBCC: string;
    function GetCC: string;
    function GetFrom: string;
    function GetFromAddr: string;
    function GetMailTo: string;
    function GetSubject: string;
    procedure SetMsgText(const Value: TStrings); override;
    function GetsText: string; override;
    function SendMailMessage: Boolean; overload;
    function SendMailMessage(const aDataset: TDataset): Boolean; overload;
    function SendMailMessage(const aRecord: IJanuaRecord): Boolean; overload;
    function SendMailMessage(const aRecord: IJanuaRecordSet): Boolean; overload;
    function GetSettingLocation: TJanuaSettingLocation; override;
    procedure SetSettingLocation(const Value: TJanuaSettingLocation); override;
    function GetMsgText: TStrings; reintroduce;
    function GetMailConf: TJanuaMailConf;
    procedure SetMailConf(const Value: TJanuaMailConf);
    function GetSettingKey: string; override;
    procedure SetSettingKey(const Value: string); override;
  public
    property MailMessage: TJanuaMailMessage read GetMailMessage write SetMailMessage;
    property MessageConf: TJanuaMailMessageConf read GetMessageConf write SetMessageConf;
    property sTo: string read GetMailTo write SetsTo;
    property sCC: string read GetCC write SetsCC;
    property sBcc: string read GetBCC write SetsBcc;
    property sAttach: TJanuaStringArray read GetAttachList write SetsAttach;
    property sText: string read GetsText write SetsText;
    property sSubject: string read GetSubject write SetsSubject;
    property sFrom: string read GetFrom write SetsFrom;
    property sFromAddr: string read GetFromAddr write SetsFromAddr;
    property Sent: Boolean read GetSent write SetSent;
    property TestingFileName: string read GetTestingFileName write SetTestingFileName;
    property MailEncoding: TJanuaMailEncoding read GetMailEncoding write SetMailEncoding;
    property SettingLocation: TJanuaSettingLocation read GetSettingLocation write SetSettingLocation;
    property MailSender: IJanuaMailSender read FMailSender write SetMailSender;
    property MailConf: TJanuaMailConf read GetMailConf write SetMailConf;
    property MainRecord: IJanuaRecord read GetMainRecord write SetMainRecord;
  public
    procedure LoadSettings; override;
    function GenerateMailMessage: TJanuaMailMessage; overload;
    function GenerateMailMessage(const aDataset: TDataset): TJanuaMailMessage; overload;
    function GenerateMailMessage(const aRecord: IJanuaRecord): TJanuaMailMessage; overload;
    function GenerateMailMessage(const aRecord: IJanuaRecordSet): TJanuaMailMessage; overload;
    procedure AddReplaceCustomField(const aField, aValue: string);
    constructor Create; override;
    constructor Create(const aSettingLocation: TJanuaSettingLocation); overload;
    destructor Destroy; override;
  end;

type
  TJanuaCustomMailSender = class(TJanuaInterfacedBindableObject, IJanuaMailSender, IJanuaBindableObject)
  private
    // ....................//
    FSent: Boolean;
    FServerIP: String;
    { Private declarations }
    FVerifiedServer: Boolean;
    FCustomMailTest: Boolean;
    FMessageBuilder: IJanuaMailMessageBuilder;
  protected
    FErrorMessage: string;
    FTestingFileName: string;
    FSchemaKey: string;
    FMailServerConf: TJanuaMailServerConf;
    FMailMessage: TJanuaMailMessage;
    // Message  Events Fields
    FOnMailSendStart: TJanuaCloudMailMessageEvent;
    FOnMailSendError: TJanuaCloudMailSendErrorEvent;
    FOnMailSendLog: TJanuaCloudMailLogEvent;
    FOnMailSendOK: TJanuaCloudMailMessageEvent;
    // Events Management procedures
    function GetOnMailSendStart: TJanuaCloudMailMessageEvent;
    function GetOnMailSendLog: TJanuaCloudMailLogEvent;
    function GetOnMailSendOK: TJanuaCloudMailMessageEvent;
    procedure SetOnMailSendLog(const Value: TJanuaCloudMailLogEvent);
    procedure SetOnMailSendOK(const Value: TJanuaCloudMailMessageEvent);
    procedure SetOnMailSendStart(const Value: TJanuaCloudMailMessageEvent);
    function GetMailServerConf: TJanuaMailServerConf;
    procedure SetMailServerConf(const Value: TJanuaMailServerConf);
    procedure SetMessageBuilder(const Value: IJanuaMailMessageBuilder);
    function GetSent: Boolean;
    function GetServerIP: String;
    { Private declarations }
    function GetVerifiedServer: Boolean;
    function GetCustomMailTest: Boolean;
    function SendMailInternal: Boolean; virtual; abstract;
    procedure SetSent(const Value: Boolean);
    procedure SetTestingFileName(const Value: string);
    procedure SetMailPassword(const Value: string);
    procedure SetMailUsername(const Value: string);
    procedure SetMailServer(const Value: String);
    procedure SetMailEncoding(const Value: TJanuaMailEncoding);
    procedure SetVerifiedServer(const Value: Boolean);
    procedure SetPort(const Value: Word);
    procedure SetServerIP(const Value: String);
    procedure SetCustomMailTest(const Value: Boolean);
    procedure SetMailEncryption(const Value: TJanuaMailEncription);
    procedure SetEncryption(const Value: Boolean);
    procedure SetSSLOptions(const Value: TJanuaSSLVersion);
    function GetMailEncryption: TJanuaMailEncription;
    function GetEncryption: Boolean;
    function GetSSLOptions: TJanuaSSLVersion;
    function GetMailPassword: string;
    function GetMailUsername: string;
    function GetMailServer: String;
    function GetOnMailSendError: TJanuaCloudMailSendErrorEvent;
    procedure SetOnMailSendError(const Value: TJanuaCloudMailSendErrorEvent);
    { Private declarations }
    function GetPort: Word;
  protected
    { Protected declarations }
    function InternalActivate: Boolean; override;
  public
    function SendMailMessage(aMessage: TJanuaMailMessage): Boolean; overload;
    function SendMailMessage: Boolean; overload;
    { Public declarations }
    function SendMailMulti(vsTo, vsCC, vsBcc, vsAttach, vsText, vsSubject, vsFrom, vsFromAddr: string;
      var serror: string): Boolean; overload;
    function SendMailMulti(vMailMessage: TJanuaMailMessage; var serror: string): Boolean; overload;
    function SendMail: Boolean;
    constructor Create; override;
    destructor Destroy; override;
    function Execute: Boolean;
    function SaveParams: Boolean;
    procedure LoadParams;
    procedure LoadServerConf;
    function TestMailServer: Boolean; virtual; abstract;
    function SendMailMessage(const aBuilder: IJanuaMailMessageBuilder; const aDataset: TDataset)
      : Boolean; overload;
    function SendMailMessage(const aBuilder: IJanuaMailMessageBuilder; const aRecord: IJanuaRecord)
      : Boolean; overload;
    function SendMailMessage(const aBuilder: IJanuaMailMessageBuilder; const aRecord: IJanuaRecordSet)
      : Boolean; overload;
  public // properties readable bz procedures only  .......................
    property MailServerConf: TJanuaMailServerConf read GetMailServerConf write SetMailServerConf;
    property MessageBuilder: IJanuaMailMessageBuilder read FMessageBuilder write SetMessageBuilder;
  published
    { Published declarations }
    property Sent: Boolean read FSent write SetSent;
    property MailPassword: string read GetMailPassword write SetMailPassword;
    property MailUsername: string read GetMailUsername write SetMailUsername;
    property MailServer: String read GetMailServer write SetMailServer;
    property VerifiedServer: Boolean read GetVerifiedServer write SetVerifiedServer;
    property Port: Word read GetPort write SetPort default 25;
    property ServerIP: String read GetServerIP write SetServerIP;
    property CustomMailTest: Boolean read GetCustomMailTest write SetCustomMailTest;
    property MailEncryption: TJanuaMailEncription read GetMailEncryption write SetMailEncryption;
    property Encryption: Boolean read GetEncryption write SetEncryption;
    property SSLOptions: TJanuaSSLVersion read GetSSLOptions write SetSSLOptions
      default TJanuaSSLVersion.sslvTLSv1_2;
    property OnMailSendError: TJanuaCloudMailSendErrorEvent read GetOnMailSendError write SetOnMailSendError;
    property OnMailSendOK: TJanuaCloudMailMessageEvent read GetOnMailSendOK write SetOnMailSendOK;
    property OnMailSendStart: TJanuaCloudMailMessageEvent read GetOnMailSendStart write SetOnMailSendStart;
    property OnMailSendLog: TJanuaCloudMailLogEvent read GetOnMailSendLog write SetOnMailSendLog;
  end;

implementation

uses Spring, Janua.Core.Json, Janua.Core.Functions, Janua.Application.Framework, System.StrUtils;

{ TJanuaMailMessageBuilder }

constructor TJanuaMailMessageBuilder.Create;
begin
  inherited;
  if not Assigned(FMailConf) then
    FMailConf := TJanuaMailConf.Create;
end;

procedure TJanuaMailMessageBuilder.AddReplaceCustomField(const aField, aValue: string);
begin
  FMailConf.AddReplaceCustomField(aField, aValue);
end;

constructor TJanuaMailMessageBuilder.Create(const aSettingLocation: TJanuaSettingLocation);
begin
  FMailConf := TJanuaMailConf.Create(aSettingLocation);
  Create;
  FMailConf.SettingLocation := aSettingLocation;
end;

destructor TJanuaMailMessageBuilder.Destroy;
begin
  try
    if Assigned(FMailConf) then
    begin
      FMailConf.Free;
      FMailConf := nil;
    end;
  finally
    inherited;
  end;
end;

function TJanuaMailMessageBuilder.GenerateMailMessage: TJanuaMailMessage;
begin
  if Assigned(Dataset) then
    FMailMessage := FMailConf.GenerateMail(Dataset)
  else if Assigned(JanuaRecord) then
    FMailMessage := FMailConf.GenerateMail(JanuaRecord)
  else if Assigned(JanuaRecordSet) then
    FMailMessage := FMailConf.GenerateMail(JanuaRecordSet.CurrentRecord);

  Result := FMailMessage;
end;

function TJanuaMailMessageBuilder.GenerateMailMessage(const aDataset: TDataset): TJanuaMailMessage;
begin
  NilDatasets;
  SetDataset(aDataset);
  GenerateMailMessage
end;

function TJanuaMailMessageBuilder.GenerateMailMessage(const aRecord: IJanuaRecord): TJanuaMailMessage;
begin
  NilDatasets;
  SetJanuaRecord(aRecord);
  GenerateMailMessage
end;

function TJanuaMailMessageBuilder.GenerateMailMessage(const aRecord: IJanuaRecordSet): TJanuaMailMessage;
begin
  NilDatasets;
  SetJanuaRecordSet(aRecord);
  GenerateMailMessage
end;

function TJanuaMailMessageBuilder.GetAttachList: TJanuaStringArray;
begin
  Result := FMailMessage.AttachFileList
end;

function TJanuaMailMessageBuilder.GetBCC: string;
begin
  Result := FMailMessage.BCC
end;

function TJanuaMailMessageBuilder.GetCC: string;
begin
  Result := FMailMessage.CC
end;

function TJanuaMailMessageBuilder.GetFrom: string;
begin
  Result := FMailMessage.From
end;

function TJanuaMailMessageBuilder.GetFromAddr: string;
begin
  Result := FMailMessage.FromAddr
end;

function TJanuaMailMessageBuilder.GetMailConf: TJanuaMailConf;
begin
  Result := FMailConf
end;

function TJanuaMailMessageBuilder.GetMailEncoding: TJanuaMailEncoding;
begin
  Result := FMailMessage.Encoding
end;

function TJanuaMailMessageBuilder.GetMailMessage: TJanuaMailMessage;
begin
  Result := FMailMessage
end;

function TJanuaMailMessageBuilder.GetMailSender: IJanuaMailSender;
begin
  Result := FMailSender;
end;

function TJanuaMailMessageBuilder.GetMailTo: string;
begin
  Result := FMailMessage.MailTo
end;

function TJanuaMailMessageBuilder.GetMainRecord: IJanuaRecord;
begin
  Result := FMainRecord
end;

function TJanuaMailMessageBuilder.GetMessageConf: TJanuaMailMessageConf;
begin
  Result := FMailConf.MailMessageConf;
end;

function TJanuaMailMessageBuilder.GetMsgText: TStrings;
begin
  // Specifiche 2017-0001, 2017-0005 Mail parts quando assegnato passa il suo valore a FMsgText.
  // nota: MsgText sostituisce il valore del campo FMsgText con il risultato della funzione getMsgText descritta sopra
  if Assigned(FMsgText) then
  begin
    if (FMailMessage.Text <> '') then
      FMsgText.Text := FMailMessage.Text;
  end;
  Result := FMsgText;
end;

function TJanuaMailMessageBuilder.GetSent: Boolean;
begin
  Result := FSent;
end;

function TJanuaMailMessageBuilder.GetSettingKey: string;
begin
  Result := FMailConf.Key;
end;

function TJanuaMailMessageBuilder.GetSettingLocation: TJanuaSettingLocation;
begin
  Result := FMailConf.SettingLocation;
end;

function TJanuaMailMessageBuilder.GetsText: string;
begin
  Result := FMailMessage.Text
end;

function TJanuaMailMessageBuilder.GetSubject: string;
begin
  Result := FMailMessage.Subject
end;

function TJanuaMailMessageBuilder.GetTestingFileName: string;
begin
  Result := FTestingFileName
end;

procedure TJanuaMailMessageBuilder.LoadSettings;
begin
  FMailConf.LoadConfig;
  var
  LMailErrorConfig := (FMailConf.MailBody = '') or (FMailConf.MailTo = '') or (FMailConf.Subject = '');
  if Assigned(FLogProc) then
  begin
    if LMailErrorConfig then
      FLogProc('LoadSettings', '{"level" : "ERROR", "message" : "settings loaded", "to" : "' +
        FMailConf.MailTo + '",  "subject" : "' + FMailConf.Subject + '",  "from" : "' + FMailConf.MailFrom +
        '" }', self)
    else
      FLogProc('LoadSettings', '{"level" : "ERROR", "message" : "settings loaded", "to" : "' +
        FMailConf.MailTo + '",  "subject" : "' + FMailConf.Subject + '",  "from" : "' + FMailConf.MailFrom +
        '" }', self)
  end;
end;

function TJanuaMailMessageBuilder.SendMailMessage: Boolean;
begin
  Result := False;
  GenerateMailMessage;
  if Assigned(FMailSender) then
  begin
    if Assigned(FLogProc) then
      FMailSender.LogProc := FLogProc;
    Result := FMailSender.SendMailMessage(FMailMessage);
    if Assigned(FAfterMessageSent) then
      FAfterMessageSent(FMailMessage.Text, FMailMessage.GetAsJson);
  end;
end;

function TJanuaMailMessageBuilder.SendMailMessage(const aDataset: TDataset): Boolean;
begin
  Dataset := aDataset;
  JanuaRecord := nil;
  JanuaRecordSet := nil;
  Result := SendMailMessage;
end;

function TJanuaMailMessageBuilder.SendMailMessage(const aRecord: IJanuaRecord): Boolean;
begin
  Dataset := nil;
  JanuaRecord := aRecord;
  JanuaRecordSet := nil;
  Result := SendMailMessage;
end;

function TJanuaMailMessageBuilder.SendMailMessage(const aRecord: IJanuaRecordSet): Boolean;
begin
  Dataset := nil;
  JanuaRecord := nil;
  JanuaRecordSet := aRecord;
  Result := SendMailMessage;
end;

procedure TJanuaMailMessageBuilder.SetMailConf(const Value: TJanuaMailConf);
begin
  FMailConf := Value
end;

procedure TJanuaMailMessageBuilder.SetMailEncoding(const Value: TJanuaMailEncoding);
begin
  FMailMessage.Encoding := Value
end;

procedure TJanuaMailMessageBuilder.SetMailMessage(const Value: TJanuaMailMessage);
begin
  FMailMessage.Assign(Value);
  // Specifiche 2017-0001, 2017-0005 Mail parts quando assegnato passa il suo valore a FMsgText.
  if Assigned(FMsgText) then
    FMsgText.Text := IfThen(FMailMessage.Text <> '', FMailMessage.Text, FMailMessage.Text);
end;

procedure TJanuaMailMessageBuilder.SetMailSender(const Value: IJanuaMailSender);
begin
  FMailSender := Value;
end;

procedure TJanuaMailMessageBuilder.SetMainRecord(const Value: IJanuaRecord);
begin
  FMainRecord := Value;
end;

procedure TJanuaMailMessageBuilder.SetMessageConf(const Value: TJanuaMailMessageConf);
begin
  FMailConf.MailMessageConf := Value;
end;

procedure TJanuaMailMessageBuilder.SetMsgText(const Value: TStrings);
begin
  if Assigned(FMsgText) then
  begin
    if Assigned(Value) then
      FMsgText.Assign(Value)
    else
      FMsgText.Clear;
    FMailMessage.SetText(FMsgText.Text);
  end
  else
  begin
    if Assigned(Value) then
      FMailMessage.SetText(Value.Text)
    else
      FMailMessage.SetText('');
  end;
end;

procedure TJanuaMailMessageBuilder.SetsAttach(const Value: TJanuaStringArray);
begin
  FMailMessage.AttachFileList.Assign(Value);
end;

procedure TJanuaMailMessageBuilder.SetsBcc(const Value: string);
begin
  FMailMessage.BCC := Value;
end;

procedure TJanuaMailMessageBuilder.SetsCC(const Value: string);
begin
  FMailMessage.CC := Value;
end;

procedure TJanuaMailMessageBuilder.SetSent(const Value: Boolean);
begin
  FSent := Value;
end;

procedure TJanuaMailMessageBuilder.SetSettingKey(const Value: string);
begin
  inherited;
  FMailConf.Key := Value;
end;

procedure TJanuaMailMessageBuilder.SetSettingLocation(const Value: TJanuaSettingLocation);
begin

end;

procedure TJanuaMailMessageBuilder.SetsFrom(const Value: string);
begin
  FMailMessage.From := Value;
  FMailConf.MailFrom := Value;
end;

procedure TJanuaMailMessageBuilder.SetsFromAddr(const Value: string);
begin
  FMailMessage.FromAddr := Value;
  FMailConf.MailFrom := Value;
end;

procedure TJanuaMailMessageBuilder.SetsSubject(const Value: string);
begin
  FMailMessage.Subject := Value;
end;

procedure TJanuaMailMessageBuilder.SetsText(const Value: string);
begin
  inherited;
  FMailMessage.SetText(Value);
end;

procedure TJanuaMailMessageBuilder.SetsTo(const Value: string);
begin
  FMailMessage.MailTo := Value;
end;

procedure TJanuaMailMessageBuilder.SetTestingFileName(const Value: string);
begin
  FTestingFileName := Value;
end;

{ TJanuaCustomMailSender }

constructor TJanuaCustomMailSender.Create;
begin
  inherited;
  FMailServerConf := TJanuaMailServerConf.Create;
  Port := 25;
  SSLOptions := TJanuaSSLVersion.sslvTLSv1_2;
end;

destructor TJanuaCustomMailSender.Destroy;
begin
  FMailServerConf.Free;
  inherited;
end;

function TJanuaCustomMailSender.Execute: Boolean;
begin
  inherited;
  Result := SendMail;
  FSent := Result;
end;

function TJanuaCustomMailSender.GetCustomMailTest: Boolean;
begin
  Result := FCustomMailTest
end;

function TJanuaCustomMailSender.GetEncryption: Boolean;
begin
  Result := FMailServerConf.Encrypted
end;

function TJanuaCustomMailSender.GetMailEncryption: TJanuaMailEncription;
begin
  Result := FMailServerConf.Encryption
end;

function TJanuaCustomMailSender.GetMailPassword: string;
begin
  Result := FMailServerConf.Password
end;

function TJanuaCustomMailSender.GetMailServer: String;
begin
  Result := FMailServerConf.Servername
end;

function TJanuaCustomMailSender.GetMailServerConf: TJanuaMailServerConf;
begin
  Result := FMailServerConf;
end;

function TJanuaCustomMailSender.GetMailUsername: string;
begin
  Result := FMailServerConf.Username
end;

function TJanuaCustomMailSender.GetOnMailSendError: TJanuaCloudMailSendErrorEvent;
begin
  Result := FOnMailSendError
end;

function TJanuaCustomMailSender.GetOnMailSendLog: TJanuaCloudMailLogEvent;
begin
  Result := FOnMailSendLog
end;

function TJanuaCustomMailSender.GetOnMailSendOK: TJanuaCloudMailMessageEvent;
begin
  Result := FOnMailSendOK;
end;

function TJanuaCustomMailSender.GetOnMailSendStart: TJanuaCloudMailMessageEvent;
begin
  Result := FOnMailSendStart
end;

function TJanuaCustomMailSender.GetPort: Word;
begin
  Result := FMailServerConf.Port
end;

function TJanuaCustomMailSender.GetSent: Boolean;
begin
  Result := FSent
end;

function TJanuaCustomMailSender.GetServerIP: String;
begin
  Result := FServerIP
end;

function TJanuaCustomMailSender.GetSSLOptions: TJanuaSSLVersion;
begin
  Result := FMailServerConf.SSLVersion;
end;

function TJanuaCustomMailSender.GetVerifiedServer: Boolean;
begin
  Result := FVerifiedServer
end;

function TJanuaCustomMailSender.InternalActivate: Boolean;
begin
  Result := Active;
  try
    if Result then
    begin
      if Assigned(FMailServerConf) then
        LoadServerConf;
      if Assigned(FLogProc) then
        FLogProc('InternalActivate', '{"level" : "INFO", "message" : "active"}', self);
      { TODO : Implementare TJanuaCustomMailSender.InternalActivate }
    end;
  except
    on e: exception do
    begin
      if Assigned(FLogProc) then
        FLogProc('InternalActivate', '{"level" : "ERROR", "message" : "' + tjs(e.Message) + '"}', self);
      Raise exception.Create(ClassName + '.InternalActivate ' + e.Message);
    end;
  end;
end;

procedure TJanuaCustomMailSender.LoadParams;
begin
  MailServer := TJanuaCoreOS.ReadParam('SMTP', 'Server', MailServer);
  Port := TJanuaCoreOS.ReadParam('SMTP', 'Port', Port);
  MailUsername := TJanuaCoreOS.ReadParam('SMTP', 'Username', MailUsername);
  MailPassword := TJanuaCoreOS.ReadParam('SMTP', 'Password', MailPassword);
  SetEncryption(TJanuaCoreOS.ReadParam('SMTP', 'Encryption', Encryption));
end;

procedure TJanuaCustomMailSender.LoadServerConf;
begin
  if Assigned(FLogProc) then
    FLogProc('LoadServerConf', '{"level" : "INFO", "message" : "loading message conf"}', self);
  try
    FMailServerConf.AsJson := TJanuaApplication.UserSessionVM.ReadSchemaConf(FSchemaKey,
      FMailServerConf.AsJson);
  except
    on e: exception do
    begin
      if Assigned(FLogProc) then
        FLogProc('LoadServerConf', '{"level" : "ERROR", "message" : "' + tjs(e.Message) + '"}', self);
      raise
    end;
  end;
end;

function TJanuaCustomMailSender.SaveParams: Boolean;
begin
  Result := False;
  TJanuaCoreOS.WriteParam('SMTP', 'Server', MailServer);
  TJanuaCoreOS.WriteParam('SMTP', 'Port', Port);
  TJanuaCoreOS.WriteParam('SMTP', 'Username', MailUsername);
  TJanuaCoreOS.WriteParam('SMTP', 'Password', MailPassword);
  TJanuaCoreOS.WriteParam('SMTP', 'Encryption', Encryption);
  Result := True;
end;

function TJanuaCustomMailSender.SendMail: Boolean;
begin
  Result := False;
  try
    if Assigned(FMessageBuilder) then
      FMailMessage := FMessageBuilder.MailMessage;
    Result := SendMailInternal;
  except
    on e: exception do
    begin
      Result := False;
    end;
  end;
end;

function TJanuaCustomMailSender.SendMailMessage: Boolean;
begin
  Result := False;
  if Assigned(FLogProc) then
    FLogProc('SendMailMessage', '{"level" : "INFO", "message" : "sending mail message", "to" : "' +
      FMailMessage.MailTo + '", "from" : "' + FMailMessage.From + '" }', self);
  try
    Result := Execute;
  except
    on e: exception do
    begin
      if Assigned(FLogProc) then
        FLogProc('SendMailMessage', '{"level" : "ERROR", "message" : "' + e.Message + '"}', self);
      raise
    end;
  end;
end;

function TJanuaCustomMailSender.SendMailMessage(aMessage: TJanuaMailMessage): Boolean;
begin
  FMailMessage := aMessage;
  Result := SendMailMessage;
end;

function TJanuaCustomMailSender.SendMailMulti(vMailMessage: TJanuaMailMessage; var serror: string): Boolean;
begin
  // specifiche 2017-0003 FLastErrorMessage field moved to private in parent JanuaCoreComponent Class
  // property LastErrorMessage should be called instead
  try
    FMailMessage := vMailMessage;
    Result := SendMailInternal;
    if not Result then
      serror := 'TJanuaCustomMailSender.SendMailMulti errore invio messaggio mail' + sLineBreak;
  except
    on e: exception do
    begin
      if Assigned(FLogProc) then
        FLogProc('SendMailMulti', '{"level" : "ERROR", "message" : "' + tjs(e.Message) + '"}', self);
      serror := (ClassName + '.InternalActivate ' + e.Message);
      Result := False;
    end;
  end;
end;

function TJanuaCustomMailSender.SendMailMulti(vsTo, vsCC, vsBcc, vsAttach, vsText, vsSubject, vsFrom,
  vsFromAddr: string; var serror: string): Boolean;
begin
  Result := False;
  try
    Guard.CheckTrue(IsValidEmail(vsTo), vsTo + ' is not a valid email address');
    FMailMessage.MailTo := vsTo;
    FMailMessage.CC := vsCC;
    Guard.CheckTrue(IsValidEmail(vsCC), vsCC + ' is not a valid CC email address');
    FMailMessage.BCC := vsBcc;
    FMailMessage.AddAttachment(vsAttach);
    FMailMessage.SetText(vsText);
    FMailMessage.Subject := vsSubject;
    Guard.CheckTrue(IsValidEmail(vsFrom), vsFrom + ' is not a validFrom email address');
    FMailMessage.From := vsFrom;
    FMailMessage.FromAddr := vsFromAddr;
    Result := SendMailInternal;
  except
    on e: exception do
    begin
      Raise exception.Create(ClassName + '.SendMailMulti ' + e.Message);
    end;
  end;
end;

procedure TJanuaCustomMailSender.SetCustomMailTest(const Value: Boolean);
begin
  FCustomMailTest := Value;
end;

procedure TJanuaCustomMailSender.SetEncryption(const Value: Boolean);
begin
  if Value then
  begin
    if FMailServerConf.Encryption = TJanuaMailEncription.jmsNone then
      FMailServerConf.Encryption := TJanuaMailEncription.jmsUseExplicitTLS;
  end
  else
    FMailServerConf.Encryption := TJanuaMailEncription.jmsNone;

  FMailServerConf.Encrypted := Value;
end;

procedure TJanuaCustomMailSender.SetMailEncoding(const Value: TJanuaMailEncoding);
begin
  FMailServerConf.Encoding := Value;
end;

procedure TJanuaCustomMailSender.SetMailEncryption(const Value: TJanuaMailEncription);
begin
  FMailServerConf.Encryption := Value;
  case FMailServerConf.Encryption of
    TJanuaMailEncription.jmsNone:
      FMailServerConf.Port := 25;
    TJanuaMailEncription.jmsUseExplicitTLS:
      FMailServerConf.Port := 587;
    TJanuaMailEncription.jmsUseImplicitTLS:
      FMailServerConf.Port := 465;
  end;
end;

procedure TJanuaCustomMailSender.SetMailPassword(const Value: string);
begin
  FMailServerConf.Password := Value;
end;

procedure TJanuaCustomMailSender.SetMailServer(const Value: String);
begin
  FMailServerConf.Servername := Value;
  FServerIP := String(GetIPFromHost(Value));
end;

procedure TJanuaCustomMailSender.SetMailServerConf(const Value: TJanuaMailServerConf);
begin
  FMailServerConf := Value
end;

procedure TJanuaCustomMailSender.SetMailUsername(const Value: string);
begin
  FMailServerConf.Username := Value;
end;

procedure TJanuaCustomMailSender.SetMessageBuilder(const Value: IJanuaMailMessageBuilder);
begin
  FMessageBuilder := Value;
end;

procedure TJanuaCustomMailSender.SetOnMailSendError(const Value: TJanuaCloudMailSendErrorEvent);
begin
  FOnMailSendError := Value;
end;

procedure TJanuaCustomMailSender.SetOnMailSendLog(const Value: TJanuaCloudMailLogEvent);
begin
  FOnMailSendLog := Value
end;

procedure TJanuaCustomMailSender.SetOnMailSendOK(const Value: TJanuaCloudMailMessageEvent);
begin
  FOnMailSendOK := Value;
end;

procedure TJanuaCustomMailSender.SetOnMailSendStart(const Value: TJanuaCloudMailMessageEvent);
begin
  FOnMailSendStart := Value
end;

procedure TJanuaCustomMailSender.SetPort(const Value: Word);
begin
  FMailServerConf.Port := Value;
end;

procedure TJanuaCustomMailSender.SetSent(const Value: Boolean);
begin
  FSent := Value;
end;

procedure TJanuaCustomMailSender.SetServerIP(const Value: String);
begin
  FServerIP := Value;
end;

procedure TJanuaCustomMailSender.SetSSLOptions(const Value: TJanuaSSLVersion);
begin
  FMailServerConf.SSLVersion := Value;
end;

procedure TJanuaCustomMailSender.SetTestingFileName(const Value: string);
begin

end;

procedure TJanuaCustomMailSender.SetVerifiedServer(const Value: Boolean);
begin
  // 2016-07-13 modificata verifica disattivazione solo  non è già attivo FVerifiedServer
  if Value and not FVerifiedServer then
  begin
    if not CustomMailTest then
    begin
      FMailMessage.SetText('<html> <body>Test Email</body> </html>');
      FMailMessage.Subject := 'Test Email';
      FMailMessage.From := 'Test Januaproject';
      FMailMessage.FromAddr := 'rickyarzu@gmail.com';
      FMailMessage.MailTo := 'rickyarzu@gmail.com';
    end;
    FVerifiedServer := SendMailInternal;
  end
  // 2016-07-13 modificata verifica disattivazione solo se è già attivo FVerifiedServer
  else if not Value and FVerifiedServer then
  begin
    FVerifiedServer := False;
    FSent := False;
    if not FCustomMailTest then
    begin
      FMailMessage.From := '';
      FMailMessage.FromAddr := '';
      FMailMessage.MailTo := '';
    end;
  end;
end;

function TJanuaCustomMailSender.SendMailMessage(const aBuilder: IJanuaMailMessageBuilder;
  const aDataset: TDataset): Boolean;
begin
  Guard.CheckNotNull(aBuilder, 'Builder');
  Guard.CheckNotNull(aDataset, 'Builder');
  FMailMessage := aBuilder.GenerateMailMessage(aDataset);
  Result := SendMailInternal;
end;

function TJanuaCustomMailSender.SendMailMessage(const aBuilder: IJanuaMailMessageBuilder;
  const aRecord: IJanuaRecord): Boolean;
begin
  Guard.CheckNotNull(aBuilder, 'Builder');
  Guard.CheckNotNull(aRecord, 'Builder');
  FMailMessage := aBuilder.GenerateMailMessage(aRecord);
  Result := SendMailInternal;
end;

function TJanuaCustomMailSender.SendMailMessage(const aBuilder: IJanuaMailMessageBuilder;
  const aRecord: IJanuaRecordSet): Boolean;
begin
  Guard.CheckNotNull(aBuilder, 'Builder');
  Guard.CheckNotNull(aRecord, 'Builder');
  FMailMessage := aBuilder.GenerateMailMessage(aRecord);
  Result := SendMailInternal;
end;

initialization

// TJanuaMailMessageBuilder = IJanuaMailMessageBuilder,
try
  TJanuaApplicationFactory.RegisterClass(IJanuaMailMessageBuilder, TJanuaMailMessageBuilder);
except
  on e: exception do
  begin
    TJanuaLogger.LogError('TJanuaApplicationFactory.RegisterClass', '{"level" : "ERROR", "message" : "' +
      e.Message + '"}', nil);
    raise exception.Create('TJanuaApplicationFactory.RegisterClass: ' + e.Message);
  end;
end;

end.
