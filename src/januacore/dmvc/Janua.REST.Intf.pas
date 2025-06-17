unit Janua.REST.Intf;

interface

uses System.Classes, System.SysUtils,
  // Janua Types
  Janua.REST.Types, Janua.Core.Types, Janua.Http.Types, Janua.Orm.Intf, Janua.Core.DB.Types,
  // Janua Interfaces
  Janua.Bindings.Intf, Janua.Core.Classes.Intf;

type
  IJanuaRESTClient = interface(IJanuaBindableObject)
    ['{08B37C73-073B-426C-A059-5ABBF1180A49}']
    function GetServerPort: Word;
    function GetServerURL: string;
    function GetAfterExecute: TRESTClientEvent;
    procedure SetServerPort(const Value: Word);
    procedure SetServerURL(const Value: string);
    procedure SetAfterExecute(const Value: TRESTClientEvent);
    procedure SetMimeType(const Value: TJanuaMimeType);
    procedure SetAPIUrl(const Value: string);
    function GetAPIUrl: string;
    function GetMimeType: TJanuaMimeType;
    procedure SetAuthenticationType(const Value: TAuthenticationType);
    function GetAuthenticationType: TAuthenticationType;
    function Execute(aMethod: TJanuaHttpMethod; aUrlParams: TStringArray = []): Boolean;
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetResponseCode: integer;
    function GetPasswordParam: string;
    procedure SetPasswordParam(const Value: string);
    function GetUserParam: string;
    procedure SetUserParam(const Value: string);
    function GetFullUrl: string;
    function GetBaseUrl: string;
    // Properties
    property MimeType: TJanuaMimeType read GetMimeType write SetMimeType;
    property UserParam: string read GetUserParam write SetUserParam;
    property PasswordParam: string read GetPasswordParam write SetPasswordParam;
    property Content: string read GetContent write SetContent;
    property ResponseCode: integer Read GetResponseCode;
    property ServerURL: string read GetServerURL write SetServerURL;
    property ServerPort: Word read GetServerPort write SetServerPort;
    property AfterExecute: TRESTClientEvent read GetAfterExecute write SetAfterExecute;
    property ApiUrl: string read GetAPIUrl write SetAPIUrl;
    property AuthenticationType: TAuthenticationType read GetAuthenticationType write SetAuthenticationType;
  end;

  IRESTLoginClient = interface(IJanuaRESTClient)
    ['{58864FA0-EEC4-41BF-ACB3-BB4F9B9F3E19}']
    function GetLoginResult: string;
    procedure SetPassword(const Value: string);
    procedure SetUsername(const Value: string);
    function GetPassword: string;
    function GetUsername: string;
    property LoginResult: string read GetLoginResult;
    property Username: string read GetUsername write SetUsername;
    property Password: string read GetPassword write SetPassword;
    function Login(aUsername, aPassword: string): Boolean; overload;
    function Login: Boolean; overload;
  end;

  IRESTProcClient = interface(IJanuaRESTClient)
    ['{EB47E0E1-5165-442B-ACC8-AC0C54AF59C1}']
    function GetJanuaParams: IJanuaParams;
    procedure SetJanuaParams(const Value: IJanuaParams);
    function Execute: Boolean;
    function GetMeta: Boolean;
    property Params: IJanuaParams read GetJanuaParams write SetJanuaParams;
  end;

  IRESTRecordClient = interface(IJanuaRESTClient)
    ['{B0A32DE7-6263-4016-B23F-22DBD6DE01CE}']
    procedure SetJanuaRecord(const Value: IJanuaRecord);
    function GetJanuaRecord: IJanuaRecord;
    /// <summary> Stores current record to the Server creating a new Record with new GUID </summary>
    function CreateRecord: Boolean;
    /// <summary> Updates current record to the Server using GUID as unique ID Parameter </summary>
    function Update: Boolean;
    /// <summary> Deletes a Record from the Server using a GUID as parameter </summary>
    function Delete(const aGUID: TGUID): Boolean; overload;
    /// <summary> Deletes current Record from the Server using its GUID as parameter </summary>
    function Delete: Boolean; overload;
    /// <summary> Retrieves a Record in Json Format from the Server and Stores it into Record Field </summary>
    function Retrieve(const aGUID: TGUID): Boolean;
    property JanuaRecord: IJanuaRecord read GetJanuaRecord write SetJanuaRecord;
    procedure SetGUID(const Value: TGUID);
    function GetGUID: TGUID;
    property GUID: TGUID read GetGUID write SetGUID;
  end;

  IRESTRecordSetClient = interface(IJanuaRESTClient)
    ['{B0A32DE7-6263-4016-B23F-22DBD6DE01CE}']
    procedure SetJanuaRecord(const Value: IJanuaRecord);
    function GetJanuaRecord: IJanuaRecord;
    /// <summary> Stores current record to the Server creating a new Record with new GUID </summary>
    function CreateRecord: Boolean;
    /// <summary> Updates current record to the Server using GUID as unique ID Parameter </summary>
    function Update: Boolean;
    /// <summary> Deletes a Record from the Server using a GUID as parameter </summary>
    function Delete(const aGUID: TGUID): Boolean; overload;
    /// <summary> Deletes current Record from the Server using its GUID as parameter </summary>
    function Delete: Boolean; overload;
    /// <summary> Retrieves a Record in Json Format from the Server and Stores it into Record Field </summary>
    function Retrieve(const aGUID: TGUID): Boolean;
    property JanuaRecord: IJanuaRecord read GetJanuaRecord write SetJanuaRecord;
  end;

  IRESTDBClient = interface(IJanuaRESTClient)
    ['{ECC15357-3F7D-4883-8994-90107902AC67}']
    procedure SetJanuaDataset(const Value: IJanuaDBDataset);
    function GetJanuaDataset: IJanuaDBDataset;
    procedure SetDatasetURL(const Value: string);
    function GetDatasetURL: string;
    property JanuaDataset: IJanuaDBDataset read GetJanuaDataset write SetJanuaDataset;
    property DatasetURL: string read GetDatasetURL write SetDatasetURL;

    function GetDataFormat: TRestFormat;
    procedure SetDataFormat(const Value: TRestFormat);
    property DataFormat: TRestFormat read GetDataFormat write SetDataFormat;

    function LoadData: Boolean;
    function DeleteRecord: Boolean;
    function UpdateRecord: Boolean;
    function AppendRecord: Boolean;
    function GetMeta: Boolean;
  end;

implementation

initialization

// procedure RegisterInterface(InterfaceType: PTypeInfo);
RegisterInterface(TypeInfo(IJanuaRESTClient));
RegisterInterface(TypeInfo(IRESTLoginClient));
RegisterInterface(TypeInfo(IRESTRecordClient));
RegisterInterface(TypeInfo(IRESTDBClient));
RegisterInterface(TypeInfo(IRESTProcClient));

end.
