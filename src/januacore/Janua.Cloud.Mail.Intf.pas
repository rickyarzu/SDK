unit Janua.Cloud.Mail.Intf;

interface

uses
  Data.DB, System.Classes, System.SysUtils,
  // Janua Intf-Common
  Janua.Core.Classes.Intf, Janua.Cloud.Types, Janua.Cloud.Intf, Janua.Orm.Intf,
  Janua.Cloud.Mail.Conf, Janua.Cloud.Conf, Janua.Core.System.Types;

type
  IJanuaMailSender = interface;

  IJanuaMailMessageBuilder = interface(IJanuaMessageBuilder)
    ['{B5C4B39A-EC67-45C6-B18A-FB3B75A29DC1}']
    function GetMessageConf: TJanuaMailMessageConf;
    function GetMailMessage: TJanuaMailMessage;
    function GetTestingFileName: string;
    procedure SetsAttach(const Value: TJanuaStringArray);
    procedure SetsBcc(const Value: string);
    procedure SetsCC(const Value: string);
    procedure SetSent(const Value: boolean);
    procedure SetsFrom(const Value: string);
    procedure SetsFromAddr(const Value: string);
    procedure SetsSubject(const Value: string);
    procedure SetsTo(const Value: string);
    procedure SetTestingFileName(const Value: string);
    procedure SetMailMessage(const Value: TJanuaMailMessage);
    procedure SetMessageConf(const Value: TJanuaMailMessageConf);
    function GetMailEncoding: TJanuaMailEncoding;
    procedure SetMailEncoding(const Value: TJanuaMailEncoding);
    // container methods
    function GetAttachList: TJanuaStringArray;
    function GetBCC: string;
    function GetCC: string;
    function GetFrom: string;
    function GetFromAddr: string;
    function GetMailTo: string;
    function GetSubject: string;
    function SendMailMessage: boolean; overload;
    function SendMailMessage(const aDataset: TDataset): boolean; overload;
    function SendMailMessage(const aRecord: IJanuaRecord): boolean; overload;
    function SendMailMessage(const aRecord: IJanuaRecordSet): boolean; overload;
    property MailMessage: TJanuaMailMessage read GetMailMessage write SetMailMessage;
    property MessageConf: TJanuaMailMessageConf read GetMessageConf write SetMessageConf;
    property sTo: string read GetMailTo write SetsTo;
    property sCC: string read GetCC write SetsCC;
    property sBcc: string read GetBCC write SetsBcc;
    property sAttach: TJanuaStringArray read GetAttachList write SetsAttach;
    property sSubject: string read GetSubject write SetsSubject;
    property sFrom: string read GetFrom write SetsFrom;
    property sFromAddr: string read GetFromAddr write SetsFromAddr;
    property Sent: boolean read GetSent write SetSent;
    property TestingFileName: string read GetTestingFileName write SetTestingFileName;
    property MailEncoding: TJanuaMailEncoding read GetMailEncoding write SetMailEncoding;

    function GenerateMailMessage: TJanuaMailMessage; overload;
    function GenerateMailMessage(const aDataset: TDataset): TJanuaMailMessage; overload;
    function GenerateMailMessage(const aRecord: IJanuaRecord): TJanuaMailMessage; overload;
    function GenerateMailMessage(const aRecord: IJanuaRecordSet): TJanuaMailMessage; overload;

    function GetMailConf: TJanuaMailConf;
    procedure SetMailConf(const Value: TJanuaMailConf);
    property MailConf: TJanuaMailConf read GetMailConf write SetMailConf;

    function GetMailSender: IJanuaMailSender;
    procedure SetMailSender(const Value: IJanuaMailSender);
    property MailSender: IJanuaMailSender read GetMailSender write SetMailSender;
  end;

  IJanuaMailSender = interface(IJanuaCloudApplication)
    ['{4D3D7301-C6F3-40E7-84B9-574F4B128A4D}']
    procedure LoadServerConf;
    function GetServerIP: String;
    { Private declarations }
    function GetVerifiedServer: boolean;
    function GetCustomMailTest: boolean;
    function SendMailInternal: boolean;
    procedure SetMailPassword(const Value: string);
    procedure SetMailUsername(const Value: string);
    procedure SetMailServer(const Value: String);
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
    function GetPort: Word;
    function SendMailMulti(vsTo, vsCC, vsBcc, vsAttach, vsText, vsSubject, vsFrom, vsFromAddr: string;
      var serror: string): boolean; overload;
    function SendMailMulti(vMailMessage: TJanuaMailMessage; var serror: string): boolean; overload;
    function SendMail: boolean;
    function Execute: boolean;
    function SaveParams: boolean;
    procedure LoadParams;
    function TestMailServer: boolean;
    function SendMailMessage(aMessage: TJanuaMailMessage): boolean; overload;
    // public properties readable bz procedures only  .......................
    function SendMailMessage(const aBuilder: IJanuaMailMessageBuilder; const aDataset: TDataset)
      : boolean; overload;
    function SendMailMessage(const aBuilder: IJanuaMailMessageBuilder; const aRecord: IJanuaRecord)
      : boolean; overload;
    function SendMailMessage(const aBuilder: IJanuaMailMessageBuilder; const aRecord: IJanuaRecordSet)
      : boolean; overload;
    property MailPassword: string read GetMailPassword write SetMailPassword;
    property MailUsername: string read GetMailUsername write SetMailUsername;
    property MailServer: String read GetMailServer write SetMailServer;
    property VerifiedServer: boolean read GetVerifiedServer write SetVerifiedServer;
    property Port: Word read GetPort write SetPort { default 25 };
    property ServerIP: String read GetServerIP write SetServerIP;
    property CustomMailTest: boolean read GetCustomMailTest write SetCustomMailTest;
    property MailEncryption: TJanuaMailEncription read GetMailEncryption write SetMailEncryption;
    property Encryption: boolean read GetEncryption write SetEncryption;
    property SSLOptions: TJanuaSSLVersion read GetSSLOptions
      write SetSSLOptions { default TIdSSLVersion.sslvTLSv1_2 };
    // Events Managemnt
    function GetOnMailSendStart: TJanuaCloudMailMessageEvent;
    function GetOnMailSendLog: TJanuaCloudMailLogEvent;
    function GetOnMailSendOK: TJanuaCloudMailMessageEvent;
    procedure SetOnMailSendLog(const Value: TJanuaCloudMailLogEvent);
    procedure SetOnMailSendOK(const Value: TJanuaCloudMailMessageEvent);
    procedure SetOnMailSendStart(const Value: TJanuaCloudMailMessageEvent);
    function GetOnMailSendError: TJanuaCloudMailSendErrorEvent;
    procedure SetOnMailSendError(const Value: TJanuaCloudMailSendErrorEvent);

    property OnMailSendError: TJanuaCloudMailSendErrorEvent read GetOnMailSendError write SetOnMailSendError;
    property OnMailSendStart: TJanuaCloudMailMessageEvent read GetOnMailSendStart write SetOnMailSendStart;
    property OnMailSendOK: TJanuaCloudMailMessageEvent read GetOnMailSendOK write SetOnMailSendOK;
    property OnMailSendLog: TJanuaCloudMailLogEvent read GetOnMailSendLog write SetOnMailSendLog;
  end;

  IJanuaMailMessageForm = interface
    function GetMailMessageBuilder: IJanuaMailMessageBuilder;
    procedure SetMailMessageBuilder(const Value: IJanuaMailMessageBuilder);
    property MailMessageBuilder: IJanuaMailMessageBuilder read GetMailMessageBuilder
      write SetMailMessageBuilder;
  end;

  IJanuaMailSMTPSender = interface(IJanuaMailSender)
    ['{FA36A19C-9941-4CB7-B185-7359204DCD0D}']
  end;

  IJanuaMailINdySMTPSender = interface(IJanuaMailSender)
    ['{3C6D0AF5-998B-435E-8E6E-C2F31CF421D5}']
  end;

  IJanuaMailSendGridSender = interface(IJanuaMailSender)
    ['{52B56063-B2A3-4484-89A9-397B82AED436}']
  end;

var
  CMailServerIntf: array [TJanuaMailServerType] of TGUID;

implementation

uses Janua.Core.Types;

initialization

begin
  RegisterInterface(TypeInfo(IJanuaMailSender));
  RegisterInterface(TypeInfo(IJanuaMailSMTPSender));
  RegisterInterface(TypeInfo(IJanuaMailINdySMTPSender));
  RegisterInterface(TypeInfo(IJanuaMailSendGridSender));

  CMailServerIntf[TJanuaMailServerType.jsmNotSet] := TGUID.Empty;
  CMailServerIntf[TJanuaMailServerType.jmsIndySMTP] := TGUID(IJanuaMailSMTPSender);
  CMailServerIntf[TJanuaMailServerType.jmsSendGrid] := TGUID(IJanuaMailSendGridSender);
end;

end.
