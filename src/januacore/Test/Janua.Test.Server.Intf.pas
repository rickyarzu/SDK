/// <summary>
/// This is a <b>Sample Demo and Documentation</b> on how to build a full Orm-Server solution with Janua
/// Orm and Server Framework.
/// <note type="note">
/// The basic Interface for a schema is made this way:
/// <list type="bullet">
/// <item>
/// A Generic Storage Definition
/// </item>
/// <item>
/// A More specific Storage Dataset defiition
/// </item>
/// <item>
/// A Cache System.
/// </item>
/// <item>
/// A Server Definition
/// </item>
/// <item>
/// A Factory to help to obtain all classes implementing those interfaces <br />
/// </item>
/// </list>
/// </note>
/// </summary>
/// <remarks>
/// Always include januacore.inc. And use Janua.Orm.* and Janua.Server.intf units. Orm Impl Template is
/// requested to help create and setup server factory
/// </remarks>
unit Janua.Test.Server.Intf;

{$I januacore.inc}

interface

uses
  // Janua Orm Framework and Server Framework are needed for any server implementation
  Janua.Orm.Intf, Janua.Server.Intf, Janua.Core.DB.Intf,
  // Includes Specific Test Orm Entities
  Janua.Orm.Test.Intf;

type
  /// <summary>
  /// Template for Test Storage Recorset Sources. Used for local/remote test storage
  /// </summary>
  /// <remarks>
  /// Extends IJanuaStorage Interface. It can represente a REST or RPC or whatever client using logical
  /// Recordset
  /// </remarks>
  IJanuaTestStorage = interface(IJanuaStorage)
    ['{F9F51DEB-D81C-4CC1-8856-0E77FFFE761A}']
    /// <summary>
    /// Opens the Dataset (or access a remote Resource on the web) and returns then number of records
    /// </summary>
    /// <exception cref="EErrorOpeningDataset">
    /// Can't connect or retrieve data from local/remote Dataset (DB, Storage or WebService)
    /// </exception>
    function OpenTest: NativeUInt;
    function GetTestRecordsetStorage: IJanuaRecordSetStorage;
    procedure SetTestRecordsetStorage(const Value: IJanuaRecordSetStorage);
    /// <summary>
    /// Defines a RecordsetStorage. In this case the sample for Test Recordset Model.
    /// </summary>
    /// <remarks>
    /// Note that it will implement only methods to access and store informations connecting dataset and
    /// recordset but it still does not know anythig about the recordset structure that will be injected by
    /// the implementation constructor based on Entity definition and Data origin (Web Service, DB, Custom)
    /// </remarks>
    property TestRecordsetStorage: IJanuaRecordSetStorage read GetTestRecordsetStorage write SetTestRecordsetStorage;
  end;

  /// <summary>
  /// Extends The basic interface with Local/Remote DB Dataset objects.
  /// </summary>
  IJanuaDBTestStorage = interface(IJanuaTestStorage)
    ['{13661B17-5225-453A-BD5E-0D4B9D6E8130}']
    function GetjdsDetail: IJanuaDBDataset;
    function GetjdsMaster: IJanuaDBDataset;
    procedure SetjdsDetail(Value: IJanuaDBDataset);
    procedure SetjdsMaster(Value: IJanuaDBDataset);
    /// <summary>
    /// Client Dataset Class Wrappert (it wraps methods, and params of the underlying data access library)
    /// and exposes them to local or remote database access. Acting as a bridge withing Janua and DB.
    /// </summary>
    property jdsDetail: IJanuaDBDataset read GetjdsDetail write SetjdsDetail;
    /// <summary>
    /// Master Dataset Class Wrappert (it wraps methods, and params of the underlying data access library)
    /// and exposes them to local or remote database access. Acting as a bridge withing Janua and DB.
    /// </summary>
    property jdsMaster: IJanuaDBDataset read GetjdsMaster write SetjdsMaster;

  end;

  IJanuaServerTest = interface;

  /// <summary>
  /// Caching Objects, such as Server(s) or Storage(s) using a thread pool access can be useful for scaling
  /// </summary>
  /// <remarks>
  /// Usually Storage access is stateless so having a ready made structure filled with data (uploaded
  /// asycronously from local or remote server) can speed up some operations.
  /// </remarks>
  IJanuaServerTestCache = interface
    ['{192DF686-E44D-4229-9F1A-3879C0AF9AA9}']
    function GetServerTest: IJanuaServerTest;
    procedure setServerTest(const Value: IJanuaServerTest);
    property ServerTest: IJanuaServerTest read GetServerTest write setServerTest;
    procedure LoadCache;
  end;

  /// <summary>
  /// Interface for specific 'Test' Server. It contains all objects, properties and methods to define the
  /// 'contract' for a model implementation of Test structure
  /// </summary>
  IJanuaServerTest = interface(IJanuaServer)
    ['{6F41DBA0-3231-41C8-9413-5415DD35C78B}']
    /// <summary>
    /// Opens the test Recordset (connecting to local or remote Storage) and returns the amount of records
    /// retrieved. That can be fetched all o in multi fetch arrays or pagination.
    /// </summary>
    function OpenTest: NativeUInt;
    function GetTestRecordSet: IJanuaTestRecordSet;
    procedure SetTestRecordSet(const Value: IJanuaTestRecordSet);
    /// <summary>
    /// The local Recordset that implements the Interface definition from Janua Recordset and inherits
    /// JanuaRecordset class Template
    /// </summary>
    property TestRecordSet: IJanuaTestRecordSet read GetTestRecordSet write SetTestRecordSet;
  end;

  /// <summary>
  /// Factory Interface (can be globally defined) to create Server and Storage(s) according to the
  /// underlying data storage management library (DB, Web Service and so on).
  /// </summary>
  IJanuaServerTestFactory = interface(IInterface)
    ['{9DD90C81-915D-4EC7-AFD9-E4135BCA0DE8}']
    /// <summary>
    /// Gets a Default Server creating an instance according to Factory classed uploaded.
    /// </summary>
    function GetServerTest: IJanuaServerTest; overload;
    function GetServerTest(const aLocalStorage, aRemoteStorage: IJanuaTestStorage): IJanuaServerTest; overload;
    function GetLocalTestStorage: IJanuaTestStorage;
    function GetRemoteTestStorage: IJanuaTestStorage;
  end;

implementation

end.
