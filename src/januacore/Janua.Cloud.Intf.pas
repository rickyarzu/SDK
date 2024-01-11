unit Janua.Cloud.Intf;

interface

uses
  Data.DB, System.Classes, System.SysUtils,
  // Janua Intf-Common
  Janua.Cloud.Conf, Janua.Core.Classes.Intf, Janua.Cloud.Types, Janua.Core.Types, Janua.Orm.Intf,
  Janua.REST.Types, Janua.Core.System.Types;

Type
  IJanuaOAuthEngine = interface
    function GetSettings: TJanuaOAuthAppSettings;
    procedure SetSettings(const Value: TJanuaOAuthAppSettings);
    property Settings: TJanuaOAuthAppSettings read GetSettings write SetSettings;
  end;

  IJanuaCloudFileEngine = interface
    function StoreFileToCloud(const aFileName: TFileName): TGUID;
    procedure ExtractToFile(const aFileName: TFileName);
    procedure ExtractToDirectory(const aDirectory: TFileName);
    procedure ExtractToJanuaBlob(var aJanuaBlob: TJanuaBlob);
    function GetConnected: boolean;
    property Connected: boolean read GetConnected;
    function Connect: boolean;
  end;

  IJanuaCloudApplication = interface(IJanuaBindableObject)

  end;

  IJanuaMessageBuilder = interface(IJanuaBindableObject)
    // StrinLists ........//
    function GetMsgText: TStrings;
    function GetSent: boolean;
    procedure SetMsgText(const Value: TStrings);
    property Sent: boolean read GetSent;

    procedure LoadSettings;
    property MsgText: TStrings read GetMsgText write SetMsgText;

    function GetsText: string;
    procedure SetsText(const Value: string);
    property sText: string read GetsText write SetsText;

    function GetSettingLocation: TJanuaSettingLocation;
    procedure SetSettingLocation(const Value: TJanuaSettingLocation);
    property SettingLocation: TJanuaSettingLocation read GetSettingLocation write SetSettingLocation;

    function GetSettingKey: string;
    procedure SetSettingKey(const Value: string);
    property SettingKey: string read GetSettingKey write SetSettingKey;

    function GetAfterMessageSent: TSendMessageEvent;
    procedure SetAfterMessageSent(const Value: TSendMessageEvent);
    property AfterMessageSent: TSendMessageEvent read GetAfterMessageSent write SetAfterMessageSent;

    // Datasets/Records Management
    function GetJanuaRecordSet: IJanuaRecordSet;
    procedure SetJanuaRecordSet(const Value: IJanuaRecordSet);
    function GetJanuaRecord: IJanuaRecord;
    procedure SetJanuaRecord(const Value: IJanuaRecord);
    function GetDataset: TDataset;
    procedure SetDataset(const Value: TDataset);
    property Dataset: TDataset read GetDataset write SetDataset;
    property JanuaRecord: IJanuaRecord read GetJanuaRecord write SetJanuaRecord;
    property JanuaRecordSet: IJanuaRecordSet read GetJanuaRecordSet write SetJanuaRecordSet;
    procedure NilDatasets;
  end;

  IJanuaLandingMessageBuilder = interface(IJanuaMessageBuilder)
    ['{8D0DDCBD-F2C3-4A63-84DB-2192492F93B0}']
    procedure SetMessageConf(const Value: TLandingMessageConf);
    function GetMessageConf: TLandingMessageConf;
    property MessageConf: TLandingMessageConf read GetMessageConf write SetMessageConf;

    procedure SetTitle(const Value: string);
    function GetTitle: string;
    property Title: string read GetTitle write SetTitle;

    procedure SetUrl(const Value: string);
    function GetUrl: string;
    property Url: string read GetUrl write SetUrl;

    function GenerateLandingMessage: TLandingMessage; overload;
    function GenerateLandingMessage(const aRecord: IJanuaRecord): TLandingMessage; overload;
    function GenerateLandingMessage(const aDataset: TDataset): TLandingMessage; overload;
  end;

implementation

end.
