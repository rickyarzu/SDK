unit Janua.Cloud.Sms.Intf;

interface

uses System.Classes, System.SysUtils, Data.DB,
  Janua.Core.Types, Janua.Cloud.Types, Janua.Cloud.Intf, Janua.Cloud.Conf, Janua.Orm.Intf;

type
  TUpdateProc = TProc<Integer, string>;
  TExceptionProc = TProc<Exception, string>;

type
  IJanuaSMSBuilder = interface;

  IJanuaSMSSender = interface
    ['{E7C75A6B-92D3-4FD7-B2A2-C3D8C503983F}']
    function GetKey: string;
    function GetSecret: string;
    function GetRecipients: TStrings;
    function GetAppName: string;
    function GetSMSMessage: string;
    procedure SetAppName(const Value: string);
    procedure SetKey(const Value: string);
    procedure SetRecipients(const Value: TStrings);
    procedure SetSecret(const Value: string);
    procedure SetSMSMessage(const Value: string);
    property SMSMessage: string read GetSMSMessage write SetSMSMessage;
    property Recipients: TStrings read GetRecipients write SetRecipients;
    property AppName: string read GetAppName write SetAppName;
    property Key: string read GetKey write SetKey;
    property Secret: string read GetSecret write SetSecret;
    procedure SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc); overload;
    procedure SendSMS(aBuilder: IJanuaSMSBuilder; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
      aFinishProc: TProc); overload;
    procedure SendSMS(aMesage: TSMSMessage; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
      aFinishProc: TProc); overload;
    procedure AddRecipient(const aRecipient: string);
    function GetAsJsonConf: string;
    procedure SetAsJsonConf(const Value: string);
    property AsJsonConf: string read GetAsJsonConf write SetAsJsonConf;
    procedure ClearConf;
    procedure LoadSystemConf;
    procedure SaveSystemConf;
    function GetLogProc: TMessageLogProc;
    procedure SetLogProc(const Value: TMessageLogProc);
    property LogProc: TMessageLogProc read GetLogProc write SetLogProc;
    function GetMessageType: TJanuaMessageType;
    procedure SetMessageType(const Value: TJanuaMessageType);
    property MessageType: TJanuaMessageType read GetMessageType write SetMessageType;
    function GetContentSid: string;
    function GetContentVariables: TStrings;
    procedure SetContentSid(const Value: string);
    procedure SetContentVariables(const Value: TStrings);
    // <summary> Twilio Platform asks for a Content Template SID and Content Variables </summary>
    property ContentSid: string read GetContentSid write SetContentSid;
    // <summary> Twilio Platform asks for a Content Template SID and Content Variables </summary>
    property ContentVariables: TStrings read GetContentVariables write SetContentVariables;

    function GetMessageRecord: TSMSMessage;
    procedure SetMessageRecord(const Value: TSMSMessage);
    property MessageRecord: TSMSMessage read GetMessageRecord write SetMessageRecord;
  end;

  IJanuaWASender = interface
    ['{2E3BE01F-8A29-48D6-A30F-2B976C1C5308}']
  end;

  IJanuaSMSBuilder = interface(IJanuaMessageBuilder)
    // SMSMessage Components
    procedure SetsTo(const Value: string);
    procedure SetsFrom(const Value: string);
    procedure SetsFromAddr(const Value: string);
    function GetsTo: string;
    function GetFrom: string;
    function GetFromAddr: string;
    function GetSMSMessage: TSMSMessage;
    procedure SetSMSMessage(const Value: TSMSMessage);
    property sFrom: string read GetFrom write SetsFrom;
    property sFromAddr: string read GetFromAddr write SetsFromAddr;
    property sTo: string read GetsTo write SetsTo;

    // SMSMessage Conf and TSMSMessage
    procedure SetMessageConf(const Value: TSMSMessageConf);
    function GetMessageConf: TSMSMessageConf;
    property SMSMessage: TSMSMessage read GetSMSMessage write SetSMSMessage;
    property SMSMessageConf: TSMSMessageConf read GetMessageConf write SetMessageConf;

    // SMSSender
    function GetSMSSender: IJanuaSMSSender;
    procedure SetSMSSender(const Value: IJanuaSMSSender);
    property SMSSender: IJanuaSMSSender read GetSMSSender write SetSMSSender;

    // Business Logic
    function GenerateSMSMessage: TSMSMessage; overload;
    function GenerateSMSMessage(const aRecord: IJanuaRecord): TSMSMessage; overload;
    function GenerateSMSMessage(const aDataset: TDataset): TSMSMessage; overload;
    function GenerateSMSMessage(const aRecordSetSet: IJanuaRecordSet): TSMSMessage; overload;
    procedure SendSMS(const aRecord: IJanuaRecord; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
      aFinishProc: TProc); overload;
    procedure SendSMS(const aDataset: TDataset; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
      aFinishProc: TProc); overload;
    procedure SendSMS(const aRecordSet: IJanuaRecordSet; aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc;
      aFinishProc: TProc); overload;
    procedure SendSMS(aUpdateProc: TUpdateProc; aErrorProc: TExceptionProc; aFinishProc: TProc); overload;
  end;

  IJanuaSMSBuilderForm = interface
    function GetSMSMessageBuilder: IJanuaSMSBuilder;
    procedure SetSMSMessageBuilder(const Value: IJanuaSMSBuilder);
    property SMSMessageBuilder: IJanuaSMSBuilder read GetSMSMessageBuilder write SetSMSMessageBuilder;
  end;

  IJanuaSMSTwilio = interface(IJanuaSMSSender)
    ['{7FFAA8ED-B1A1-4E00-B054-46205C074936}']
  end;

  IJanuaWATwilio = interface(IJanuaSMSSender)
    ['{1FC60586-C26C-4ED7-83D1-BCEE2DDE6895}']
  end;

  IJanuaSMSEsendex = interface(IJanuaSMSSender)
    ['{61697C36-161C-4861-BD06-72DBDF6ACF31}']
  end;

implementation

initialization

RegisterInterface(TypeInfo(IJanuaSMSSender));
RegisterInterface(TypeInfo(IJanuaSMSTwilio));

end.
