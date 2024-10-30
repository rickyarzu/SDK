unit Janua.Core.DB.Intf;

interface

uses
  System.Json, System.JSONConsts, System.Classes, System.SysUtils,
  // DB Libraries
  Data.DB, FireDAC.Comp.Client,
  // Spring
  Spring.Collections,
  // Janua
  // Types
  Janua.Core.DB.Types, Janua.Core.Entities, Janua.Core.Types,
  // Interfaces
  Janua.Orm.Intf, Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Classes.Intf;

type
  IDmJanuaCoreDBConnections = interface(IJanuaDatamodule)
    ['{DB641D6E-C364-4467-B94C-542A9E93EF95}']
    procedure SetLastErrorMessage(const Value: string);
    function GetLastErrorMessage: string;
    { Private declarations }
    function TestConnection: boolean;
    property LastErrorMessage: string read GetLastErrorMessage write SetLastErrorMessage;
  end;

type
  IJanuaDatasetFunctions = interface
    ['{EFB0B011-473E-4B73-B5E1-A84C01663834}']
    procedure TestDatasets(aParent: TComponent); overload;
    function DatasetToXml(const aDataset: TDataset): string;
    procedure PostDataset(const aDataset: TDataset);
    procedure OpenDataset(const aDataset: TDataset; DoRaise: boolean = true);
    procedure ReOpenDataset(const aDataset: TDataset);
    procedure PrepareDataset(const aDataset: TDataset);
    procedure ExecuteProcedure(aProcedure: TDataset);
    procedure CloseAllDatasets(aParent: TComponent); overload;
    procedure CloseAllDatasets; overload;
    function GetOwner: TComponent;
    procedure SetOwner(const Value: TComponent);
    property Owner: TComponent read GetOwner write SetOwner;
    procedure TestDatasets; overload;
    procedure OpenThreadedDataset(aDataset: TDataset; aDatasource: TDataSource = nil;
      aDoRaise: boolean = true; aCallBackProc: TProc = nil);
    function Activate: boolean; overload;
    function Activate(const aOwner: TComponent): boolean; overload;
    procedure StoreRecordToProcedure(const aRecord: IJanuaRecord; const aProcObject: TDataset;
      const aRefreshRecord: boolean);
  end;

type
  IJanuaServerFunctions = interface(IJanuaDatasetFunctions)
    ['{36799159-C05F-4C6E-882D-7D9281E33DA6}']
    procedure SetUserProfile(aQuery: TDataset; var aUser: TJanuaRecordUserProfile);
    function CheckUser(var Count: Integer; p_username, p_email: string; spUserTest: TDataset = nil): boolean;
    function CheckUserSocial(p_social_id, p_social_kind: string; spUserTest: TDataset = nil): boolean;
    function GetCountryByName(cName: string; qryCountries: TDataset): Integer;
    function GetCountryByCode(cCode: string; qryCountries: TDataset): Integer;
    function GetCountryByID(cID: Integer; qryCountries: TDataset): boolean;
    procedure ClearCountriesParams(qryCountries: TDataset);
  end;

type
  IJanuaServerDataModule = interface
    ['{377245A8-50F2-4328-830A-01C8369B16AC}']
    function GetCustomServerFunctions: IJanuaServerFunctions;
    procedure SetCustomServerFunctions(const Value: IJanuaServerFunctions);
    property ServerFunctions: IJanuaServerFunctions read GetCustomServerFunctions
      write SetCustomServerFunctions;
    procedure SetSessionKey(const Value: string);
    function GetSessionKey: string;
    property SessionKey: string read GetSessionKey write SetSessionKey;
    procedure TestDataModule;
    function TestConnect: boolean;
    function TestConnection: boolean;
    function GetLastErrorMessage: string;
    procedure SetLastErrorMessage(const Value: string);
    property LastErrorMessage: string read GetLastErrorMessage write SetLastErrorMessage;
    function GetLog: string;
    procedure SetLog(const Value: string);
    property Log: string read GetLog write SetLog;
    function GetDatasetErrors: TJanuaDBDatasetErrors;
    procedure SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
    property DatasetErrors: TJanuaDBDatasetErrors read GetDatasetErrors write SetDatasetErrors;
  end;

type
  IJanuaDBConnection = interface
    ['{9035D4FE-A1E7-46DD-9B7B-C530B7A31745}']
    function GetServerConf: TJanuaServerRecordConf;
    procedure SetServerConf(const Value: TJanuaServerRecordConf);
    // the Test Connection Function needs to be implemented in the inherited class regarding the DB Type Connection....
    function TestConnection: boolean;
    property ServerConf: TJanuaServerRecordConf read GetServerConf write SetServerConf;
    function GetLastErrorMessage: string;
    property LastErrorMessage: string read GetLastErrorMessage;
  end;

type
  IJanuaSearchParam = interface
    ['{1B61AB58-98E4-41A0-AA3D-62BF1B9DA9D5}']
    // private
    function GetParamType: TJanuaFieldType;
    function GetName: string;
    function GetTitle: string;
    procedure SetName(const Value: string);
    procedure SetParamType(const Value: TJanuaFieldType);
    procedure SetTitle(const Value: string);
    // public
    property Name: string read GetName write SetName;
    property Title: string read GetTitle write SetTitle;
    property ParamType: TJanuaFieldType read GetParamType write SetParamType;
  end;

type

  IJanuaDatasetSearchParams = interface
    ['{2A207975-D0BD-4D96-A349-67629FB36BBD}']
    function GetParams: IList<IJanuaSearchParam>;
    function ParamCount: Integer;
    procedure AddParam(const aName, aTitle: string; const aParamType: TJanuaFieldType);
    property Params: IList<IJanuaSearchParam> read GetParams;
  end;

  /// <summary> A Factory that can be registered to main Application Factory as
  /// 'responsible' of producing LookUp Datasets or Lists</summary>
  IJanuaLookupModuleFactory = interface
    ['{761D4555-EF95-49A9-884D-8E0B521F8AA5}']
    function GetLookUpList: IList<TJanuaLookupID>;
    procedure SetLookUpList(const Value: IList<TJanuaLookupID>);
    /// <summary>
    /// List of ID's Managed by This Factory. A Facotry can Rely on one or
    /// More Models to Build It's Lists.
    /// </summary>
    property LookUpIDList: IList<TJanuaLookupID> read GetLookUpList write SetLookUpList;
    function GetLookUpObject(const aID: TJanuaLookupID; const aClone: boolean = true;
      const aThreaded: boolean = False; aCallBackProc: TProc<IJanuaLookUp> = nil): IJanuaLookUp; overload;
    /// <summary>  Finds an Object and assigns it to a Field </summary>
    /// <param name="aID">   LookupID Enumerator </param>
    /// <param name="aField">  Destination Field </param>
    function TryGetLookUpObject(const aID: TJanuaLookupID; const aField: IJanuaField): boolean; overload;
  end;

type
  /// <summary> Is the simplest Interface for Datasets, Recordsets, Objects Storage Container </summary>
  IJanuaStorage = interface(IJanuaBindableObject)
    ['{E663838E-22F9-4504-999D-B8A3D675FC7E}']
    function GetLastErrorMessage: string;
    procedure SetLastErrorMessage(const Value: string);
    function getLimit: Word;
    function GetLastCount: Integer;
    procedure SetLastCount(const Value: Integer);
    function GetOffset: Word;
    procedure setLimit(const Value: Word);
    procedure SetOffset(const Value: Word);
    function GetKeepAlive: boolean;
    procedure SetKeepAlive(const Value: boolean);
    procedure CreateDataset;
    procedure DestroyDataset;
    property KeepAlive: boolean read GetKeepAlive write SetKeepAlive;
    // Limit and offset parameters to be used by queries if needed
    property Limit: Word read getLimit write setLimit;
    property Offset: Word read GetOffset write SetOffset;
    property LastCount: Integer read GetLastCount write SetLastCount;
    property LastErrorMessage: string read GetLastErrorMessage write SetLastErrorMessage;
    function GetSelectedSchema: Integer;
    procedure SetSelectedSchema(const Value: Integer);
    property SelectedSchema: Integer read GetSelectedSchema write SetSelectedSchema;
  end;

  /// <summary> Basic Interface for JanuaDataModels with Dataset Functions </summary>
  IJanuaDBStorage = interface(IJanuaStorage)
    ['{8E3D5EF8-5736-4B93-9B0D-DE7A0D1882B0}']
    function GetDBFunctions: IJanuaDatasetFunctions;
    procedure SetDBFunctions(const Value: IJanuaDatasetFunctions);
    /// <summary> Set of for Datasets and Stored Procedures with specific Error Handling and </summary>
    property DBFunctions: IJanuaDatasetFunctions read GetDBFunctions write SetDBFunctions;
  end;

var
  DBConnection: IJanuaDBConnection;

implementation

initialization

// IJanuaDatasetFunctions
RegisterInterface(TypeInfo(IJanuaDatasetFunctions));
// IJanuaDBStorage
RegisterInterface(TypeInfo(IJanuaDBStorage));
// IJanuaSearchParam
RegisterInterface(TypeInfo(IJanuaSearchParam));
// IJanuaLookupModuleFactory
RegisterInterface(TypeInfo(IJanuaLookupModuleFactory));
// IJanuaDatasetSearchParams
RegisterInterface(TypeInfo(IJanuaDatasetSearchParams));

end.
