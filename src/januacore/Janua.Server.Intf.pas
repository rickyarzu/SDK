unit Janua.Server.Intf;

{$I JANUACORE.INC}

interface

uses
{$IFDEF DELPHIXE} System.SysUtils, Spring.Collections, System.Json, {$ENDIF}
{$IFDEF FPC} SysUtils, Generics.Collections, fpjson, {$ENDIF}
  Janua.Core.DB.Intf, Janua.Orm.Intf, Janua.Core.Classes.Intf;

type
  /// <summary>
  /// IJanuaFuncResult is the envelope container of all 'messages' from server proedure to client
  /// procedures. Its Structure Extends a Record. Both Client and Server MUST use the same record
  /// Structure.
  /// </summary>
  IJanuaFuncResult = interface(IInterface)
    ['{745D9DCE-18CD-491C-82EE-8FF01255CD49}']
    function GetErrorMessage: string;
    procedure SetErrorMessage(const Value: string);
    function GetHasErrors: boolean;
    procedure SetHasErrors(const Value: boolean);
    function GetAsJsonObject: TJsonObject;
    procedure SetAsJsonObject(const Value: TJsonObject);
    function GetResult: IJanuaRecord;
    procedure SetParams(const Value: IJanuaParams);
    procedure SetResult(const Value: IJanuaRecord);
    function GetParams: IJanuaParams;
    function GetCount: integer;
    procedure SetCount(const Value: integer);
    // properties
    /// <summary>
    /// Error Messsages contans the las error based on a try...except function envelope.
    /// </summary>
    property ErrorMessage: string read GetErrorMessage write SetErrorMessage;
    property HasErrors: boolean read GetHasErrors write SetHasErrors;
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetAsJsonObject;
    property Params: IJanuaParams read GetParams write SetParams;
    property RecResult: IJanuaRecord read GetResult write SetResult;
    property Count: integer read GetCount write SetCount;
  end;

  /// <summary>
  /// TFunction is a set of parameter (TJanuaFields) tha returns a IJanuaFuncResult Record
  /// The record can just contain a simple Value or can be a 'void' method returning only
  /// a success or error message result. Reult can be also a Recordset or a Record.
  /// It can also be a complex structure composed by many records, recordsets and Values (Fields).
  /// </summary>
  // TFunction = TFunc<IJanuaParams, IJanuaFuncResult>; {$IFDEF fpc} {$ENDIF}
  TFunction = {$IFDEF delphixe} reference to {$ENDIF} function(const aParams: IJanuaParams): IJanuaFuncResult;
  /// <summary>
  /// TFunctions represents a list of all the functions exposed by a Server.
  /// Every function has a unique identifier that is a string.
  /// </summary>
{$IFDEF delphixe}
  TFunctions = IDictionary<string, TFunction>;
{$ELSE}
  TFunctions = TDictionary<string, TFunction>;
{$ENDIF}

  TFunctionLocation = record
    Server: string;
    Name: string;
    constructor Create(aServer, aName: string);
  end;

{$IFDEF delphixe}

  TFunctionLocations = IDictionary<string, TFunctionLocation>;
{$ELSE}
  TFunctionLocations = TDictionary<string, TFunctionLocation>;
{$ENDIF}

type
  TJanuaServerType = (jstDBServer, jstRestServer, jstRemoteClient, jstRestClient);

type
  IJanuaServer = interface(IJanuaInterface)
    ['{6A4C88EC-EB53-4FC2-B7E2-B7C97DF34E42}']
    function GetKeepAlive: boolean;
    procedure SetKeepAlive(const Value: boolean);
    /// <summary>
    /// KeepAlive Property setd the Store to not destroy its Dataset and to not close Database Connection
    /// </summary>
    property KeepAlive: boolean read GetKeepAlive write SetKeepAlive;

{$IFDEF delphixe}
    function GetRecordSets: IList<IJanuaRecordSet>;
    procedure SetRecordSets(const Value: IList<IJanuaRecordSet>);
    /// <summary>
    /// RecordSets is a List of Recordsets from the DataStore is public to help Classes
    /// to Access Dataset Content and to query them using Parameters
    /// </summary>
    property RecordSets: IList<IJanuaRecordSet> read GetRecordSets write SetRecordSets;
{$ELSE}
    function GetRecordSets: TList<IJanuaRecordSet>;
    procedure SetRecordSets(const Value: TList<IJanuaRecordSet>);
    property RecordSets: TList<IJanuaRecordSet> read GetRecordSets write SetRecordSets;
{$ENDIF}
    function GetIsServer: boolean;
    procedure SetIsServer(const Value: boolean);
    /// <summary>
    /// IJanuaServer can be a Server-Side object or a Rest client to a remote REST server.
    /// </summary>
    property IsServer: boolean read GetIsServer write SetIsServer;
    function GetFunctions: TFunctions;
    procedure SetFunctions(const Value: TFunctions);
    /// <summary>
    /// is a list of REST Functions (input and output are Json Objects). Functions are identified by a couple of
    /// strings <server name>.<function name>. Input and Output objects are the same for all functions.
    /// </summary>
    property Functions: TFunctions read GetFunctions write SetFunctions;
    function GetName: string;
    procedure SetName(const Value: string);
    /// <summary>
    /// Name is used to maintain a List of servers in a web-service environment (names must be unique)
    /// </summary>
    property Name: string read GetName write SetName;
  end;

implementation

{ TFunctionLocation }

constructor TFunctionLocation.Create(aServer, aName: string);
begin
  self.Server := aServer.ToLower;
  self.Name := aName.ToLower;
end;

end.
