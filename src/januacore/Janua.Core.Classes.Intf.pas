unit Janua.Core.Classes.Intf;

{$I JANUACORE.INC}

interface

{$IFDEF DELPHIXE}

uses System.SysUtils, System.Classes, System.Rtti, System.UITypes, System.Types, System.IOUtils,
  System.Variants, System.StrUtils, System.TypInfo, System.Generics.Collections, System.JSON,
  Janua.Bindings.Intf, Janua.Core.Types, Spring.Collections;
{$ENDIF DELPHIXE}

type
  IEnumerator<T> = interface
    function GetCurrent: T;
    function MoveNext: Boolean;
    procedure Reset;
    property Current: T read GetCurrent;
  end;

  IEnumerable<T> = interface
    function GetEnumerator: IEnumerator<T>;
  end;

  IJanuaAction = interface;

  /// <summary>   Interface for components that implement TAction Support for VCL/FMX/UniGUI </summary>
  IJanuaActionable = interface
    ['{B93578C3-2EDF-485F-AC86-E7633DE4A71A}']

    function JGetAction: TBasicAction;
    procedure JSetAction(Value: TBasicAction);
    property Action: TBasicAction read JGetAction write JSetAction;

    function JGetOnClick: TNotifyEvent;
    procedure JSetOnClick(const Value: TNotifyEvent);
    property OnClick: TNotifyEvent read JGetOnClick write JSetOnClick;
  end;

  /// <summary>Event Definition for a Janua Action </summary> type:<param name="aAction"> (IJanuaAction) </param>
  TJanuaActionEvent = procedure(const aAction: IJanuaAction) of Object;

  /// <summary> List of Standard Actions for Recordset Model Management </summary>
  TJanuaStandardAction = (
    /// <summary> Undefined Procedure</summary>
    jasUnknown,
    /// <summary>  Navigate First Record </summary>
    jasFirst,
    /// <summary> Navigate Last Record </summary>
    jasLast,
    /// <summary>  Navigate Next Record </summary>
    jasNext,
    /// <summary>  Navigate to Prior Record</summary>
    jasPrev,
    /// <summary> Edit a Record</summary>
    jasEdit,
    /// <summary>Append a New Record after last one</summary>
    jasAppend,
    /// <summary>Insert a new Record as First Record</summary>
    jasInsert,
    /// <summary>Post (Saves) a record to DB</summary>
    jasPost,
    /// <summary>Undo Changes to Record</summary>
    jasCancel,
    /// <summary>Delete a Record</summary>
    jasDelete,
    /// <summary>Prints a Recordset to Print Device <br /></summary>
    jasPrint,
    /// <summary> Prints a Preview of Recordset on Screen</summary>
    jasPreview,
    /// <summary>Export a Dataset to an External source (CSV Excel) ...</summary>
    jasExport,
    /// <summary> Search a record according to Filter </summary>
    jasSearch,
    /// <summary> Updates memory Object from database or REST Server </summary>
    jasRefresh,
    /// <summary>Not Standard Action</summary>
    jasCustom);

  // type TNumbers = packed array [1..100] of Real;
  TJanuaStandardActions = array [jasUnknown .. jasCustom] of IJanuaAction;
  TJanuaSetActions = set of TJanuaStandardAction;

  IJanuaActionList = interface;

  /// <summary>Janua Action is the core for binding a control to a managed event in a IJanuaControl. </summary>
  IJanuaAction = interface(IJanuaBindable)
    ['{22C7BC86-B580-4B97-9780-F71A5384D891}']
    function GetCaption: string;
    procedure SetCaption(const Value: string);

    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    /// <summary> Enabled property reflects also on Graphi framework's enabled properties of menus/buttons </summary>
    property Enabled: Boolean read GetEnabled write SetEnabled;

    function GetVisible: Boolean;
    procedure SetVisible(const Value: Boolean);
    /// <summary> Use Visibile to Hide objects from the Forms </summary>
    property Visible: Boolean read GetVisible write SetVisible;

    property Caption: string read GetCaption write SetCaption;
    function GetOnExecute: TJanuaActionEvent;
    procedure SetOnExecute(const Value: TJanuaActionEvent);
    property OnExecute: TJanuaActionEvent read GetOnExecute write SetOnExecute;
    function GetProc: TProc<IJanuaAction>;
    procedure SetProc(const Value: TProc<IJanuaAction>);
    property ExecuteProc: TProc<IJanuaAction> read GetProc write SetProc;
    procedure ExecuteAction(Sender: TObject);
    procedure Execute;
    function GetImageIndex: TImageIndex;
    procedure SetImageIndex(const Value: TImageIndex);
    property ImageIndex: TImageIndex read GetImageIndex write SetImageIndex;

    function GetHasDropDown: Boolean;
    procedure SetHasDropDown(const Value: Boolean);
    /// <summary> An Action (intendes as an 'action button' can have an action List to Drop Down </summary>
    property HasDropDown: Boolean read GetHasDropDown write SetHasDropDown;

    procedure SetDropDownList(const Value: IJanuaActionList);
    function GetDropDownList: IJanuaActionList;
    /// <summary> An Action (intendes as an 'action button' can have an action List to Drop Down </summary>
    property DropDownList: IJanuaActionList read GetDropDownList write SetDropDownList;

    function GetTag: Integer;
    procedure SetTag(const Value: Integer);
    property Tag: Integer read GetTag write SetTag;

    function GetGUID: TGUID;
    function GetName: string;
    procedure SetGUID(const Value: TGUID);
    procedure SetName(const Value: string);
    property GUID: TGUID read GetGUID write SetGUID;
    property Name: string read GetName write SetName;
    procedure UpdateName(const aName, aCaption: string; aGuid: TGUID);

  end;

  IJanuaActionList = interface
    ['{E6460987-5DA8-4259-8998-E6EF8F2ABE4D}']
    function Add(const aCaption: string; aEnabled: Boolean; aProc: TProc<IJanuaAction>;
      aStd: TJanuaStandardAction; aImageIndex: TImageIndex = -1; aGuid: string = ''): IJanuaAction; overload;
    function Add(const aAction: IJanuaAction; aStd: TJanuaStandardAction): IJanuaAction; overload;
    function GetActions: IList<IJanuaAction>;
    property Actions: IList<IJanuaAction> read GetActions;
    function FindAction(const aActionName: string): Boolean;
    function GetItems(Index: String): IJanuaAction;
    procedure SetItemIndex(const Value: Integer);
    function GetItemIndex: Integer;
    procedure SetItems(Index: String; const Value: IJanuaAction);
    property Items[Index: string]: IJanuaAction read GetItems write SetItems;
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    function GetStdActions(Index: TJanuaStandardAction): IJanuaAction;

    property StdActions[Index: TJanuaStandardAction]: IJanuaAction read GetStdActions; default;
    procedure ClearActions;

    function GetOnUpdateAction: TNotifyEvent; stdcall;
    procedure SetOnUpdateAction(Value: TNotifyEvent); stdcall;
    property OnUpdateAction: TNotifyEvent read GetOnUpdateAction write SetOnUpdateAction;
    procedure DoUpdateActions;

  end;

  IJanuaInterface = interface
    ['{EA63A46B-1500-4186-823D-23BAEA4306BE}']
    /// <summary> Read record logs and Builds a string separating logs with line breaks </summary>
    function GetLogString: string;
    /// <summary> Expose internal Log as String </summary>
    property LogString: string read GetLogString;

    /// <summary> Can be called to initialize the Object (after creating it or in a IInd time) </summary>
    function Activate: Boolean;
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
    /// <summary> Can be Set to initialize the Object (after creating it or in a IInd time) </summary>
    Property Active: Boolean read GetActive write SetActive;

    /// <summary> Sometimes it can be useful to get back the underlying object of a class ... </summary>
    function GetSelf: TObject;

    function GetAfterActivate: TProc;
    procedure SetAfterActivate(const Value: TProc);
    property AfterActivate: TProc Read GetAfterActivate write SetAfterActivate;
  end;

  IJanuaBindableObject = interface(IJanuaInterface)
    ['{E7EDFF21-C3E8-4700-ABE0-410B3ACA6052}']
    /// <summary> ClearBindings can be called externally when the object is no longer needed </summary>
    procedure ClearBindings;

    function GetBindManager: IJanuaBindManager;
    property BindManager: IJanuaBindManager read GetBindManager;

    function GetSelf: TObject;
    property AsObject: TObject read GetSelf;

    { procedure AttachObserver(const aObserver: TObject; aProc: TProc);
      procedure Detach(const aObserved: TObject); }

    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);

    // Log Procedure
    function GetLogProc: TMessageLogProc;
    procedure SetLogProc(const Value: TMessageLogProc);
    /// <summary> Log can now be maintained 'outside' an object with a custom Message Log Procedure </summary>
    property LogProc: TMessageLogProc read GetLogProc write SetLogProc;
  end;

type
  IJanuaBindableComponent = interface(IJanuaInterface)
    ['{9DEF69F3-1A61-4412-96DD-14F699260651}']
    function JanuaGetComponent: TComponent;
    procedure JanuaSetComponent(const Value: TComponent);
    /// <summary> Component to be connected to object properties or Fields </summary>
    property Component: TComponent read JanuaGetComponent write JanuaSetComponent;
    function GetNameJ: TComponentName;
    procedure SetNameJ(const Value: TComponentName);
    property Name: TComponentName read GetNameJ write SetNameJ;
  end;

type
  IJanuaJsonParser = interface
    ['{00BF6AB6-5FC4-4675-98EB-354A536FEAB1}']
    // protected
    function GetAsJsonString: string;
    function GetasJsonObject: TJsonObject;
    procedure SetasJsonObject(const Value: TJsonObject);
    procedure SetAsJsonString(const Value: string);
    // public
    function FindKey(const aKey: string): TJsonValue;
    procedure ParseJson(const aJson: string);
    // This function Stores a Value into a Json Variable ......................................
    procedure JsonValue(aParam: string; var aValue: string); overload;
    procedure JsonValue(aParam: string; var aValue: TDateTime); overload;
    procedure JsonValue(aParam: string; var aValue: Int64); overload;
    procedure JsonValue(aParam: string; var aValue: Integer); overload;
    procedure JsonValue(aParam: string; var aValue: Extended); overload;
    procedure JsonValue(aParam: string; var aValue: Double); overload;
    procedure JsonValue(aParam: string; var aValue: Boolean); overload;
    procedure JsonValue(aParam: string; var aValue: TJsonArray); overload;
    procedure JsonValue(aParam: string; var aValue: TJsonObject); overload;
    // properties
    property asJsonObject: TJsonObject read GetasJsonObject write SetasJsonObject;
    property AsJsonString: string read GetAsJsonString write SetAsJsonString;
  end;

  IJanuaBarcode = interface(IJanuaInterface)

  end;

  IJanuaJsonObjectSerializer = interface(IInterface)
    ['{9EC0457B-19A4-4597-AEEE-4638CE102979}']
    function GetJsonObjectsCollection: IDictionary<TGUID, TJsonObject>;
    function GetObjects(Index: TGUID): TJsonObject;
    procedure SetJsonObjectsCollection(const Value: IDictionary<TGUID, TJsonObject>);
    procedure SetObjects(Index: TGUID; const aValue: TJsonObject); stdcall;
    property JsonObjectsCollection: IDictionary<TGUID, TJsonObject> read GetJsonObjectsCollection
      write SetJsonObjectsCollection;
    property Objects[Index: TGUID]: TJsonObject read GetObjects write SetObjects;
    procedure StoreObject(const aGuid: TGUID; const aObject: TJsonObject);
    function TryGetObject(const aGuid: TGUID; out aObject: TJsonObject): Boolean;
  end;

  IJanuaDataModuleContainer = interface(IJanuaInterface)
    ['{191D9F76-941B-4BE9-BD92-F424B35A3BA1}']
    /// <summary> Expose as public the Refresh Details method to be called in case of a Lazy Loading scenario </summary>
    /// <seealso href="https://ergomercator.atlassian.net/jira/software/projects/JF/boards/1?selectedIssue=JF-71">
    /// Lazy Loading of Remote Dataset (master-detail) for better  control/peformances JF-71 </seealso>
    procedure RefreshDetails;

    procedure SetLazyLoading(const Value: Boolean);
    function GetLazyLoading: Boolean;
    /// <summary>  Boolean: If True then the Details are refreshd on demand when Record Is Loaded</summary>
    /// <seealso href="https://ergomercator.atlassian.net/jira/software/projects/JF/boards/1?selectedIssue=JF-71">
    /// Lazy Loading of Remote Dataset (master-detail) for better  control/peformances JF-71 </seealso>
    property LazyLoading: Boolean read GetLazyLoading write SetLazyLoading;

    function GetSelectedSchema: Integer;
    procedure SetSelectedSchema(const Value: Integer);
    /// <summary>  Integer: If not set at -1 should force the connection environment to use the schema_id</summary>
    property SelectedSchema: Integer read GetSelectedSchema write SetSelectedSchema;
  end;

  IJanuaLogger = interface(IJanuaInterface)
    ['{CBE4B690-C5D0-4D5F-B2EA-9375032B7977}']
    function GetLogRecords: TJanuaLogRecords;
    procedure SetlogRecords(const Value: TJanuaLogRecords);
    function GetDefaultProcedure: string;
    procedure SetDefaultProcedure(Value: string);
    procedure Startup;
    property Calendar: TJanuaLogRecords read GetLogRecords write SetlogRecords;
    procedure LogRecord(const aProcedure, aMessage: string; aClass: TObject); overload;
    procedure LogError(const aProcedure, aMessage: string; aClass: TObject; e: Exception); overload;
    procedure LogError(const aProcedure, aMessage: string; aClass: TObject); overload;
    Procedure LogWarning(const aProcedure, aMessage: string; aClass: TObject);
    procedure ClearLog;
    procedure ClearLocalLog(const aObject: TObject; aProcedure: string);
    procedure StartWatch;
    procedure StopWatch;
    procedure ResetWatch;
    procedure SaveLogToFile(aFileName: string);
    procedure StartLog;
    procedure StopLog;
    procedure ExportToCSV(aFileName: string);
    function LogString(const aClass: TObject = nil): string;
    function TailLog: string;
    procedure Initialize;
    procedure Terminate;
    procedure FlushLog;
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);
    property GUID: TGUID read GetGUID write SetGUID;
    property DefaultProcedure: string read GetDefaultProcedure write SetDefaultProcedure;
  end;

  IJanuaBasicLogger = interface(IJanuaLogger)
    ['{7A358A16-E3DE-4E54-B13B-01EE3BCA1B10}']
  end;

implementation

end.

