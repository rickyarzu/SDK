unit Janua.Components.Mail;

interface

uses
  System.SysUtils, System.Classes,
  // Janua
  Janua.Cloud.Types, Janua.Core.Classes, Janua.Cloud.Mail.Conf, Janua.Cloud.Mail.Intf;

type
  TJanuaMailSender = class(TJanuaCoreComponent)
  private
    FMailServerConf: TJanuaMailServerConf;
    // ....................//
    FSent: boolean;
    FTestingFileName: string;
    FServerIP: String;
    { Private declarations }
    FVerifiedServer: boolean;
    FCustomMailTest: boolean;
    FMessageBuilder: IJanuaMailMessageBuilder;
    FMessageConf: TJanuaMailMessageConf;
    FMailMessage: TJanuaMailMessage;
  protected
    // StrinLists ........//
    // ....................//
    function GetMailServerConf: TJanuaMailServerConf;
    procedure SetMessageBuilder(const Value: IJanuaMailMessageBuilder);
    function GetSent: boolean;
    function GetServerIP: String;
    { Private declarations }
    function GetVerifiedServer: boolean;
    function GetCustomMailTest: boolean;
    function SendMailInternal: boolean;
    procedure SetSent(const Value: boolean);
    procedure SetTestingFileName(const Value: string);
    procedure SetMailPassword(const Value: string);
    procedure SetMailUsername(const Value: string);
    procedure SetMailServer(const Value: String);
    procedure SetMailEncoding(const Value: TJanuaMailEncoding);
    procedure SetVerifiedServer(const Value: boolean);
    procedure SetPort(const Value: Word);
    procedure SetServerIP(const Value: String);
    procedure SetCustomMailTest(const Value: boolean);
    procedure SetMailEncryption(const Value: TJanuaMailEncription);
    procedure SetEncryption(const Value: boolean);
    procedure SetSSLOptions(const Value: TJanuaSSLVersion);
    function GetMailEncryption: TJanuaMailEncription;
    function GetEncryption: boolean;
    function GetSSLOptions: TJanuaSSLVersion;
    function GetMailPassword: string;
    function GetMailUsername: string;
    function GetMailServer: String;
    { Private declarations }
    function GetPort: Word;
  protected
    { Protected declarations }
    function InternalActivate: boolean; override;
  public
    function SendMailMessage(aMessage: TJanuaMailMessage): boolean; overload;
    function SendMailMessage: boolean; overload;
    { Public declarations }
    function SendMailMulti(vsTo, vsCC, vsBcc, vsAttach, vsText, vsSubject, vsFrom, vsFromAddr: string;
      var serror: string): boolean; overload;
    function SendMailMulti(vMailMessage: TJanuaMailMessage; var serror: string): boolean; overload;
    function SendMail: boolean;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy;  override;
    function Execute: boolean;
    function SaveParams: boolean;
    procedure LoadParams;
    function TestMailServer: boolean;
  public // properties readable bz procedures only  .......................
    property MessageBuilder: IJanuaMailMessageBuilder read FMessageBuilder write SetMessageBuilder;
  published
    { Published declarations }
    property Sent: boolean read FSent write SetSent;
    property MailPassword: string read GetMailPassword write SetMailPassword;
    property MailUsername: string read GetMailUsername write SetMailUsername;
    property MailServer: String read GetMailServer write SetMailServer;
    property VerifiedServer: boolean read GetVerifiedServer write SetVerifiedServer;
    property Port: Word read GetPort write SetPort default 25;
    property ServerIP: String read GetServerIP write SetServerIP;
    property CustomMailTest: boolean read GetCustomMailTest write SetCustomMailTest;
    property MailEncryption: TJanuaMailEncription read GetMailEncryption write SetMailEncryption;
    property Encryption: boolean read GetEncryption write SetEncryption;
    property SSLOptions: TJanuaSSLVersion read GetSSLOptions write SetSSLOptions
      default TJanuaSSLVersion.sslvTLSv1_2;
    // property ErrorFile: string;
  end;

implementation

uses Janua.Core.Sockets, Janua.Core.Functions, Janua.Application.Framework, System.StrUtils;

{ TJanuaMailSender }

constructor TJanuaMailSender.Create(AOwner: TComponent);
begin
  inherited;
  FMailServerConf := TJanuaMailServerConf.Create;
  Port := 25;
  SSLOptions := TJanuaSSLVersion.sslvTLSv1_2;
end;

destructor TJanuaMailSender.Destroy;
begin
  FMailServerConf.Free;
  inherited;
end;

function TJanuaMailSender.Execute: boolean;
begin
  inherited;
  Result := SendMail;
  FSent := Result;
end;

function TJanuaMailSender.GetCustomMailTest: boolean;
begin
  Result := FCustomMailTest
end;

function TJanuaMailSender.GetEncryption: boolean;
begin
  Result := FMailServerConf.Encrypted
end;

function TJanuaMailSender.GetMailEncryption: TJanuaMailEncription;
begin
  Result := FMailServerConf.Encryption
end;

function TJanuaMailSender.GetMailPassword: string;
begin
  Result := FMailServerConf.Password
end;

function TJanuaMailSender.GetMailServer: String;
begin
  Result := FMailServerConf.Servername
end;

function TJanuaMailSender.GetMailServerConf: TJanuaMailServerConf;
begin
  Result := FMailServerConf;
end;

function TJanuaMailSender.GetMailUsername: string;
begin
  Result := FMailServerConf.Username
end;

function TJanuaMailSender.GetPort: Word;
begin
  Result := FMailServerConf.Port
end;

function TJanuaMailSender.GetSent: boolean;
begin
  Result := FSent
end;

function TJanuaMailSender.GetServerIP: String;
begin
  Result := FServerIP
end;

function TJanuaMailSender.GetSSLOptions: TJanuaSSLVersion;
begin
  Result := FMailServerConf.SSLVersion;
end;

function TJanuaMailSender.GetVerifiedServer: boolean;
begin
  Result := FVerifiedServer
end;

function TJanuaMailSender.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        { TODO : Implementare TJanuaMailSender.InternalActivate }
      end;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;
end;

procedure TJanuaMailSender.LoadParams;
begin
  if not(csDesigning in ComponentState) then
  begin
    MailServer := TJanuaCoreOS.ReadParam('SMTP', 'Server', MailServer);
    Port := TJanuaCoreOS.ReadParam('SMTP', 'Port', Port);
    MailUsername := TJanuaCoreOS.ReadParam('SMTP', 'Username', MailUsername);
    MailPassword := TJanuaCoreOS.ReadParam('SMTP', 'Password', MailPassword);
    SetEncryption(TJanuaCoreOS.ReadParam('SMTP', 'Encryption', Encryption));
  end;
end;

function TJanuaMailSender.SaveParams: boolean;
begin
  Result := not(csDesigning in ComponentState);
  if Result then
  begin
    TJanuaCoreOS.WriteParam('SMTP', 'Server', MailServer);
    TJanuaCoreOS.WriteParam('SMTP', 'Port', Port);
    TJanuaCoreOS.WriteParam('SMTP', 'Username', MailUsername);
    TJanuaCoreOS.WriteParam('SMTP', 'Password', MailPassword);
    TJanuaCoreOS.WriteParam('SMTP', 'Encryption', Encryption)
  end;
end;

function TJanuaMailSender.SendMail: boolean;
begin
  try
    Result := SendMailInternal;
  except
    on e: exception do
    begin
      WriteError('TJanuaMailSender.SendMail', e);
      Result := false;
    end;
  end;
end;

function TJanuaMailSender.TestMailServer: boolean;
begin
  { TODO : Add a check Mail Server to Janua Mail Components }
  Result := False
end;

function TJanuaMailSender.SendMailInternal: boolean;
begin
  { TODO : Add a check Mail Server to SendMail Internal Janua Mail Components }
  Result := False
end;

function TJanuaMailSender.SendMailMessage: boolean;
begin
  { TODO : Add a check Mail Server to SendMail Message Janua Mail Components }
  Result := False
end;

function TJanuaMailSender.SendMailMessage(aMessage: TJanuaMailMessage): boolean;
begin
  { TODO : Add a check Mail Server to SendMail Message Janua Mail Components }
  Result := False
end;

function TJanuaMailSender.SendMailMulti(vMailMessage: TJanuaMailMessage; var serror: string): boolean;
begin
  // specifiche 2017-0003 FLastErrorMessage field moved to private in parent JanuaCoreComponent Class
  // property LastErrorMessage should be called instead
  try
    FMailMessage := vMailMessage;
    Result := SendMailInternal;
    if not Result then
    begin
      serror := 'TJanuaMailSender.SendMailMulti errore invio messaggio mail' + sLineBreak + LastErrorMessage;
    end;
  except
    on e: exception do
    begin
      WriteError('TJanuaMailSender.SendMailMulti', e);
      serror := IfThen(LastErrorMessage = '', 'TJanuaMailSender.SendMailMulti' + sLineBreak + e.Message);

      Result := false;
    end;
  end;
end;

function TJanuaMailSender.SendMailMulti(vsTo, vsCC, vsBcc, vsAttach, vsText, vsSubject, vsFrom,
  vsFromAddr: string; var serror: string): boolean;
begin
  try
    FMailMessage.MailTo := vsTo;
    FMailMessage.CC := vsCC;
    FMailMessage.BCC := vsBcc;
    FMailMessage.AddAttachment(vsAttach);
    FMailMessage.SetText(vsText);
    FMailMessage.Subject := vsSubject;
    FMailMessage.From := vsFrom;
    FMailMessage.FromAddr := vsFromAddr;
    Result := SendMailInternal;
  except
    on e: exception do
    begin
      WriteError('TJanuaMailSender.SendMailMulti', e);
      Result := false;
    end;
  end;
end;

procedure TJanuaMailSender.SetCustomMailTest(const Value: boolean);
begin
  FCustomMailTest := Value;
end;

procedure TJanuaMailSender.SetEncryption(const Value: boolean);
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

procedure TJanuaMailSender.SetMailEncoding(const Value: TJanuaMailEncoding);
begin
  FMailServerConf.Encoding := Value;
end;

procedure TJanuaMailSender.SetMailEncryption(const Value: TJanuaMailEncription);
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

procedure TJanuaMailSender.SetMailPassword(const Value: string);
begin
  FMailServerConf.Password := Value;
end;

procedure TJanuaMailSender.SetMailServer(const Value: String);
begin
  FMailServerConf.Servername := Value;
  FServerIP := String(GetIPFromHost(Value));
end;

procedure TJanuaMailSender.SetMailUsername(const Value: string);
begin
  FMailServerConf.Username := Value;
end;

procedure TJanuaMailSender.SetMessageBuilder(const Value: IJanuaMailMessageBuilder);
begin
  FMessageBuilder := Value;
end;

procedure TJanuaMailSender.SetPort(const Value: Word);
begin
  FMailServerConf.Port := Value;
end;

procedure TJanuaMailSender.SetSent(const Value: boolean);
begin
  FSent := Value;
end;

procedure TJanuaMailSender.SetServerIP(const Value: String);
begin
  FServerIP := Value;
end;

procedure TJanuaMailSender.SetSSLOptions(const Value: TJanuaSSLVersion);
begin
  FMailServerConf.SSLVersion := Value;
end;

procedure TJanuaMailSender.SetTestingFileName(const Value: string);
begin

end;

procedure TJanuaMailSender.SetVerifiedServer(const Value: boolean);
begin
  // 2016-07-13 modificata verifica disattivazione solo  non è già attivo FVerifiedServer
  if Value and not FVerifiedServer then
  begin
    if not CustomMailTest then
    begin
      FMailMessage.SetText('Test Email');
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
    FVerifiedServer := false;
    FSent := false;
    if not FCustomMailTest then
    begin
      LastErrorMessage := '';
      FMailMessage.From := '';
      FMailMessage.FromAddr := '';
      FMailMessage.MailTo := '';
    end;
  end;
end;

end.
