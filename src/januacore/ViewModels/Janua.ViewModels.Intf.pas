unit Janua.ViewModels.Intf;

interface

uses
  // RTL
  System.SysUtils, System.Classes, Spring.Collections, Data.DB,
  // Janua Types
  Janua.Core.Types, Janua.Rest.Types, Janua.Core.DB.Types,
  // Janua Interfaces
  Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Controls.Forms.Intf, JOrm.System.Settings.Intf,
  Janua.Core.DB.Intf;

type
  /// <summary> Is the state of the model itself (according to the contained Dataset, Record or other features).</summary>
  TJanuaModelState = (
    /// <summary>   Set when model is created</summary>
    jmsDefault,
    /// <summary>  When Created/Inserted</summary>
    jmsInsert,
    /// <summary>  When Modified </summary>
    jmsEdit,
    /// <summary>   When Saved no changes done </summary>
    jmsSaved);
  IJanuaRecordSetModel = interface;
  TJanuaFilterOption = (jfoMemory, jfoDataset);

  /// <summary> Is the simplest Interface for Datasets, Recordsets, Objects Storage Container </summary>
  IJanuaBaseModel = interface(IJanuaBindableObject)
    ['{F02DA4E5-73D7-43C6-B03A-40557648015C}']
    function GetLastErrorMessage: string;
    procedure SetLastErrorMessage(const Value: string);
    function GetKeepAlive: boolean;
    procedure SetKeepAlive(const Value: boolean);
    property KeepAlive: boolean read GetKeepAlive write SetKeepAlive;
    property LastErrorMessage: string read GetLastErrorMessage write SetLastErrorMessage;
    function GetSelectedSchema: Integer;
    procedure SetSelectedSchema(const Value: Integer);
    property SelectedSchema: Integer read GetSelectedSchema write SetSelectedSchema;
  end;

  IJanuaBaseDataModel = interface(IJanuaStorage)
    ['{F03434EA-E07A-4CD3-898B-E8AE8EA1DBBC}']
    function GetInternalRecord: IJanuaRecord;
    /// <summary> Actual Model main Record casting to IJanuaRecord Interface</summary>
    property InternalRecord: IJanuaRecord read GetInternalRecord;
    // ---------- Record Public Procedures --------------------------------------------------------------
    procedure AddNewRecord;
    procedure AppendRecord;
    procedure PostRecord;
    procedure UndoChanges;
    procedure DeleteRecord;
    procedure BeginScroll;
    procedure EndScroll;
    procedure LoadRecord;
    procedure RefreshRecord;
    // Search Params -------------------------------------------------------------------------------------
    function GetMainSearchParams: IJanuaParams;
    /// <summary> List of Search parameters that are mutually exclusive related to Search Text </summary>
    property MainSearchParams: IJanuaParams read GetMainSearchParams;
    function SearchByParams(aParams: IJanuaParams): Integer;
    // ---------- Common Dataset Objects Procedures and Functions ----------------------------------------
    function GetjdsDataset: IJanuaDBDataset;
    /// <summary>  Main Dataset that is exposed to ViewModel or to the client.</summary>
    property jdsDataset: IJanuaDBDataset read GetjdsDataset;
    function GetParams: TJanuaVariantArray;
    procedure SetParams(const aParams: TJanuaVariantArray);
    property Params: TJanuaVariantArray read GetParams write SetParams;
    function SearchByGUID(const aGuid: TGUID): boolean;
    function SearchText(const aText: string; const aLimit: Word = 0; const aOffset: Word = 0): Integer;
  end;

  IJanuaSingleRecordDBModel = interface(IJanuaStorage)
    ['{BA163075-70C0-4A0D-85D8-CC34D43C6FAF}']
    // ---------- Common Dataset Objects Procedures and Functions ----------------------------------------
    // Search by GUID should be performed against
    function GetjdsRecordDataset: IJanuaDBDataset;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsRecordDataset: IJanuaDBDataset read GetjdsRecordDataset;
    // ---------- Common Dataset Objects Procedures and Functions ----------------------------------------
    function GetjdsDetail: IJanuaDBDataset;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsDetail: IJanuaDBDataset read GetjdsDetail;
    function GetCurrentRecord: IJanuaRecord;
    property CurrentRecord: IJanuaRecord read GetCurrentRecord;

    // ---------- Record Public Procedures --------------------------------------------------------------
    procedure AddNewRecord; overload;
    procedure AddNewRecord(const aRecord: IJanuaRecord); overload;
    procedure AddNewRecord(const aJson: string); overload;
    procedure AppendRecord; overload;
    procedure AppendRecord(const aRecord: IJanuaRecord); overload;
    procedure AppendRecord(const aJson: string); overload;
    procedure PostRecord; overload;
    procedure UndoChanges;
    procedure DeleteRecord; overload;
    procedure DeleteRecord(const aGuid: string); overload;
    procedure LoadRecord;
    procedure RefreshRecord;
  end;

  IJanuaSingleRecordClientModel = interface(IJanuaStorage)
    ['{6FDC503E-B261-4C8D-86AE-126EE0CF833E}']
    // ---------- Sub RecordSet Management --------------------------------------------------------------
    procedure RemoveSubModels;
    function GetDetailModels: IList<IJanuaRecordSetModel>;
    property DetailModels: IList<IJanuaRecordSetModel> read GetDetailModels;
    procedure AddDetailModel(const aModel: IJanuaRecordSetModel);
    function ModelCount: Integer;
    procedure GenerateSubModels;
    function GetCurrentRecord: IJanuaRecord;
    property CurrentRecord: IJanuaRecord read GetCurrentRecord;
    // ---------- Record Public Procedures --------------------------------------------------------------
    procedure AddNewRecord; overload;
    procedure AddNewRecord(const aRecord: IJanuaRecord); overload;
    procedure AddNewRecord(const aJson: string); overload;
    procedure AppendRecord; overload;
    procedure AppendRecord(const aRecord: IJanuaRecord); overload;
    procedure AppendRecord(const aJson: string); overload;
    procedure PostRecord; overload;
    procedure UndoChanges;
    procedure DeleteRecord; overload;
    procedure DeleteRecord(const aGuid: string); overload;
    procedure LoadRecord;
    procedure RefreshRecord;
  end;

  IJanuaClientModel = interface(IJanuaBaseDataModel)
    ['{FA40D114-A948-484E-9230-5DA5E35AFE15}']
    function GetMainSearchText: string;
    procedure SetMainSearchText(const Value: string);
    /// <summary> Main Search Text connects View-ViewModel-Model with Live-Bindings </summary>
    property MainSearchText: string read GetMainSearchText write SetMainSearchText;
    /// <summary> This function makes a Search according to MainSearchText and IsThreaded </summary>
    function Search: Integer;
    // ---------- Record Public Procedures --------------------------------------------------------------
    procedure First(const aProc: TProc; const aNotThreaded: boolean = False);
    procedure Last(const aProc: TProc; const aNotThreaded: boolean = False);
    procedure Next(const aProc: TProc; const aNotThreaded: boolean = False);
    procedure Prior(const aProc: TProc; const aNotThreaded: boolean = False);
    // MAIN GROUP used to select a portion of the Dataset (if necessary)
    function GetGroupGUID: TGUID;
    function GetGroupID: Integer;
    procedure SetGroupGUID(const Value: TGUID);
    procedure SetGroupID(const Value: Integer);
    property GroupGUID: TGUID read GetGroupGUID write SetGroupGUID;
    /// <summary>
    /// Used to generate Search Dataset. When data to search is grouped by  type
    /// </summary>
    property GroupID: Integer read GetGroupID write SetGroupID;
    // ---------- Sub RecordSet Management --------------------------------------------------------------
    function GetDetailModels: IList<IJanuaRecordSetModel>;
    property DetailModels: IList<IJanuaRecordSetModel> read GetDetailModels;
    procedure AddDetailModel(const aModel: IJanuaRecordSetModel);
    function ModelCount: Integer;
    procedure GenerateSubModels;
    procedure RemoveSubModels;
    function GetFilterParams: IJanuaParams;
    /// <summary> List of Search parameters that are not mutually exclusive </summary>
    property FilterParams: IJanuaParams read GetFilterParams;
    /// <summary> Opens the 'Master' Dataset and all Lookups and Detail Datasets setting up Objects </summary>
    procedure OpenAll(const aThreaded: boolean = False);
    procedure Refresh(aProc: TProc);
    function GetRecordCount: Integer;
    property RecordCount: Integer read GetRecordCount;
    function GetIsThreaded: boolean;
    procedure SetIsThreaded(const Value: boolean);
    property IsThreaded: boolean read GetIsThreaded write SetIsThreaded;
    function GetMainSelectedParam: IJanuaField;
    function GetSelectedItem: Integer;
    function GetState: TJanuaModelState;
    procedure SetSelectedItem(const Value: Integer);
    procedure SetState(const Value: TJanuaModelState);
    /// <summary> Selected Parameter to which apply Text Value for Search </summary>
    property SelectedParam: IJanuaField read GetMainSelectedParam;
    /// <summary> Selected Parameter Index for Text Search (set by a Selection) </summary>
    property SelectedItem: Integer read GetSelectedItem write SetSelectedItem;
    property State: TJanuaModelState read GetState write SetState;
    function GetDateFrom: TDate;
    function GetDateTo: TDate;
    procedure SetDateFrom(const Value: TDate);
    procedure SetDateTo(const Value: TDate);
    /// <summary> If Dataset can be searched between a set of Dates From-To Values can be set </summary>
    property DateFrom: TDate read GetDateFrom write SetDateFrom;
    /// <summary> If Dataset can be searched between a set of Dates From-To Values can be set </summary>
    property DateTo: TDate read GetDateTo write SetDateTo;
    function GetOrderByFields: IJanuaOrderByFields;
    /// <summary> List of index fields and order type (asc desc) for each one. </summary>
    property OrderByFields: IJanuaOrderByFields read GetOrderByFields;
    function GetDataSource: TDataSource;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property DataSource: TDataSource read GetDataSource;
    function GetCurrentRecord: IJanuaRecord;
    property CurrentRecord: IJanuaRecord read GetCurrentRecord;
    /// <summary> TJanuaFilterOption defines if filter will be applied in memory or query on DB </summary>
    function GetFilterOption: TJanuaFilterOption;
    procedure SetFilterOption(const Value: TJanuaFilterOption);
    property FilterOption: TJanuaFilterOption read GetFilterOption write SetFilterOption;
    function GetAfterOpen: TJanuaDBDataSetNotifyEvent;
    function GetAfterScroll: TJanuaDBDataSetNotifyEvent;
    procedure SetAfterOpen(Value: TJanuaDBDataSetNotifyEvent);
    procedure SetAfterScroll(Value: TJanuaDBDataSetNotifyEvent);
    property AfterOpen: TJanuaDBDataSetNotifyEvent read GetAfterOpen write SetAfterOpen;
    property AfterScroll: TJanuaDBDataSetNotifyEvent read GetAfterScroll write SetAfterScroll;
    function LocateByGUID(const aGuid: TGUID): boolean;
  end;

  IJanuaServerDBModel = interface(IJanuaBaseDataModel)
    ['{E0612AD2-3E29-4EE3-BE91-1A261180FCF5}']
    function RestGetDataset(const aFormat, aParams: string): string;
    function RestGetRecord(const aRecordGUID: string): string;
    function RestPostRecord(var aRecord: string): boolean;
    function RestUpdateRecord(var aRecord: string): boolean;
    function RestDelRecord(const aRecordGUID: string): boolean;
  end;

  IJanuaRESTClientModel = interface(IJanuaBaseModel)
    ['{A2FD589E-F85F-4B6B-89BC-74928DBBD05D}']
    function GetRestAPIEndpoint: string;
    function GetServerUrl: string;
    procedure SetRestAPIEndpoint(const Value: string);
    procedure SetServerUrl(const Value: string);
    function GetBaseUrl: string;
    function GetPort: Word;
    procedure SetPort(const Value: Word);
    property ServerUrl: string read GetServerUrl write SetServerUrl;
    property RestAPIEndpoint: string read GetRestAPIEndpoint write SetRestAPIEndpoint;
    property ServerPort: Word Read GetPort write SetPort;
    function GetClientFullUrl: string;
  end;

  IJanuaDataRESTModel = interface(IJanuaBaseDataModel)
    ['{B00FDB14-C9B1-4631-90A9-DC5B28D35839}']
    function GetLastErrorMessage: string;
    procedure SetLastErrorMessage(const Value: string);
    function GetRestAPIEndpoint: string;
    function GetServerUrl: string;
    procedure SetRestAPIEndpoint(const Value: string);
    procedure SetServerUrl(const Value: string);
    function GetBaseUrl: string;
    function GetPort: Word;
    procedure SetPort(const Value: Word);
    property LastErrorMessage: string read GetLastErrorMessage;
    property ServerUrl: string read GetServerUrl write SetServerUrl;
    property RestAPIEndpoint: string read GetRestAPIEndpoint write SetRestAPIEndpoint;
    property ServerPort: Word Read GetPort write SetPort;
    function GetDBClientFullUrl: string;
    function GetRecordClientFullUrl(const aGuid: TGUID): string;
    function GetClientFullUrl: string;
    procedure SetRestFormat(const Value: TRestFormat);
    function GetRestFormat: TRestFormat;
    property RestFormat: TRestFormat read GetRestFormat write SetRestFormat;
  end;

  IJanuaSingleRecordRESTModel = interface(IJanuaDataRESTModel)
    ['{6FDC503E-B261-4C8D-86AE-126EE0CF833E}']
    // ---------- Sub RecordSet Management --------------------------------------------------------------
    procedure RemoveSubModels;
    function GetDetailModels: IList<IJanuaRecordSetModel>;
    property DetailModels: IList<IJanuaRecordSetModel> read GetDetailModels;
    procedure AddDetailModel(const aModel: IJanuaRecordSetModel);
    function ModelCount: Integer;
    procedure GenerateSubModels;
    function SearchByGUID(const aGuid: TGUID): boolean;
    function GetCurrentRecord: IJanuaRecord;
    property CurrentRecord: IJanuaRecord read GetCurrentRecord;
    // ---------- Record Public Procedures --------------------------------------------------------------
    procedure AddNewRecord;
    procedure AppendRecord;
    procedure PostRecord;
    procedure UndoChanges;
    procedure DeleteRecord;
    procedure LoadRecord;
    procedure RefreshRecord;
  end;

  IJanuaModel = interface(IJanuaClientModel)
    ['{2E0FEBBD-3A9C-4675-A805-604A0960CC89}']
    // --------------------------------------------------------------------------------------------------
    // INDEX SEARCH PROCEDURES --------------------------------------------------------------------------
    {
      function GetIndexFieldName: string;
      procedure SetIndexFieldName(const Value: string);
    }
    { property IndexFieldName: string read GetIndexFieldName write SetIndexFieldName; }
    // ---------- Common Dataset Objects Procedures and Functions ----------------------------------------
    // Search by GUID should be performed against
    function GetjdsRecordDataset: IJanuaDBDataset;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsRecordDataset: IJanuaDBDataset read GetjdsRecordDataset;
    // ---------- Common Dataset Objects Procedures and Functions ----------------------------------------
    function GetjdsDetail: IJanuaDBDataset;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsDetail: IJanuaDBDataset read GetjdsDetail;
  end;

  IJanuaRecordSetModel = interface(IJanuaModel)
    ['{8AEE6588-38AB-4984-B5B9-8E36C08E451A}']
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(const Value: IJanuaRecordSet);
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
    /// <summary>  A Recordset Model Implements a JanuaRecordset. But can Generate a Virtual Dataset.</summary>
    procedure GenerateMemDataset;
    procedure ConnectToDataset(aDataset: IJanuaDBDataset);
  end;

  /// <summary>  Base Interface for Database access Models </summary>
  IJanuaDBModel = interface(IJanuaModel)
    ['{8AEE6588-38AB-4984-B5B9-8E36C08E451A}']
    function GetjdsDetail: IJanuaDBDataset;
    procedure SetjdsDetail(Value: IJanuaDBDataset);
    property jdsDetail: IJanuaDBDataset read GetjdsDetail write SetjdsDetail;
    function GetDetailDatasets: IList<IJanuaDBDataset>;
    procedure SetDetailDatasets(const Value: IList<IJanuaDBDataset>);
    property DetailDatasets: IList<IJanuaDBDataset> read GetDetailDatasets write SetDetailDatasets;
    function GetLazyLoading: boolean;
    procedure SetLazyLoading(const Value: boolean);
    /// <summary>  Boolean: If True then the Details are refreshd on demand when Record Is Loaded</summary>
    /// <seealso href="https://ergomercator.atlassian.net/jira/software/projects/JF/boards/1?selectedIssue=JF-71">
    /// Lazy Loading of Remote Dataset (master-detail) for better  control/peformances JF-71 </seealso>
    property LazyLoading: boolean read GetLazyLoading write SetLazyLoading;
    procedure StartSearch;
    procedure RefreshDetails;
    function RestGetDataset(const aFormat, aParams: string): string;
  end;

  IJanuaRecordEditDialog = interface;

  IJanuaBaseViewModel = interface(IJanuaBindableObject)
    function GetMainActionList: IJanuaActionList;
    property MainActionList: IJanuaActionList read GetMainActionList;
    function GetFormActionList: IJanuaActionList;
    /// <summary> A reduced Actions Set for Edit Form. </summary>
    property FormActionList: IJanuaActionList read GetFormActionList;
    /// <summary> Action Edit can Launch an Edit-Form can be triggered (also) by Double click. </summary>
    function GetActionEdit: IJanuaAction;
    /// <summary> Action Edit can Launch an Edit-Form can be triggered (also) by Double click. </summary>
    property ActionEdit: IJanuaAction read GetActionEdit;
    function GetFormTitle: string;
    procedure SetFormTitle(const Value: string);
    /// <summary> Sets the Form's Title if the form Does have one </summary>
    property FormTitle: string read GetFormTitle write SetFormTitle;
    function GetIsThreaded: boolean;
    function GetUseThreads: boolean;
    procedure SetUseThreads(const Value: boolean);
    /// <summary> Define if use or not threaded Search, may be useful for long queries </summary>
    property UseThreads: boolean read GetUseThreads write SetUseThreads;
    procedure SetIsThreaded(const Value: boolean);
    property IsThreaded: boolean read GetIsThreaded write SetIsThreaded;
    function GetFormDialog: IJanuaRecordEditDialog;
    property FormDialog: IJanuaRecordEditDialog read GetFormDialog;
    function GetModel: IJanuaBaseModel;
    property Model: IJanuaBaseModel read GetModel;
  end;

  IJanuaDataViewModel = interface(IJanuaBaseViewModel)
    ['{D33BEB04-2F60-4799-9456-BCD7744D43FD}']
    function GetGridActionList: IJanuaActionList;
    property GridActionList: IJanuaActionList read GetGridActionList;
    function GetActionPreview: IJanuaAction;
    /// <summary> Action Preview can Create a Report Preview in Html/PDF/Custom be triggered (also) by Double click. </summary>
    property ActionPreview: IJanuaAction read GetActionPreview;
    function GetRecordEditDialog: TGUID;
    procedure SetRecordEditDialog(const Value: TGUID);
    /// <summary> This is the GUID of the interface of the Edit Record Dialog (if it is set) </summary>
    property RecordEditDialog: TGUID read GetRecordEditDialog write SetRecordEditDialog;
    function ExecuteEditDialog: boolean;
    function GetGroupID: Integer;
    procedure SetGroupID(const Value: Integer);
    property GroupID: Integer read GetGroupID write SetGroupID;
    function GetParams: TJanuaVariantArray;
    procedure SetParams(const aParams: TJanuaVariantArray);
    property Params: TJanuaVariantArray read GetParams write SetParams;
    /// <summary> Can be called to post the Current record to Dataset.
    /// To be used for Testing or Batch operations. Better use directly the action instead </summary>
    procedure PostRecord;
    function LocateByGUID(const aGuid: TGUID): boolean;
  end;

  /// <summary>  Base Interface for a ViewModel Implementation (Template) </summary>
  IJanuaViewModel = interface(IJanuaDataViewModel)
    ['{4839EDC9-A928-4E72-8030-21F0052CE8E9}']
    function GetMainSearchParams: IJanuaParams;
    /// <summary>IJanuaParams:  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property MainSearchParams: IJanuaParams read GetMainSearchParams;
    function GetMainSearchText: string;
    procedure SetMainSearchText(const Value: string);
    /// <summary> Main Search Text connects View-ViewModel-Model with Live-Bindings </summary>
    property MainSearchText: string read GetMainSearchText write SetMainSearchText;
    function GetActionSearch: IJanuaAction;
    property ActionSearch: IJanuaAction read GetActionSearch;
    function GetFilterParams: IJanuaParams;
    /// <summary>IJanuaParams:  Directly connected with Search Params in Model (First Assign Then Bind).</summary>
    property FilterParams: IJanuaParams read GetFilterParams;
    function GetDateFrom: TDate;
    function GetDateTo: TDate;
    procedure SetDateFrom(const Value: TDate);
    procedure SetDateTo(const Value: TDate);
    property DateFrom: TDate read GetDateFrom write SetDateFrom;
    property DateTo: TDate read GetDateTo write SetDateTo;
    function GetHasSearchList: boolean;
    /// <summary> True if there is a list of alternative options for Text Search. </summary>
    property HasSearchList: boolean read GetHasSearchList;
    { function GetIndexFieldName: string;
      procedure SetIndexFieldName(const Value: string);
      property IndexFieldName: string read GetIndexFieldName write SetIndexFieldName; }
    function GetOrderByFields: IJanuaOrderByFields;
    /// <summary> List of index fields and order type (asc desc) for each one. </summary>
    property OrderByFields: IJanuaOrderByFields read GetOrderByFields;
    function GetMainSearchLabel: string;
    procedure SetMainSearchLabel(const Value: string);
    function GetFilterDate: boolean;
    procedure SetFilterDate(const Value: boolean);
    function GetSelectedItem: Integer;
    procedure SetSelectedItem(const Value: Integer);
    function GetHasDetail: boolean;
    /// <summary> Checks if Detail dataset is not nil and is defined as Detail Dataset </summary>
    property HasDetail: boolean read GetHasDetail;
    /// <summary> Define if user wants to filter result by Date </summary>
    property FilterDate: boolean read GetFilterDate write SetFilterDate;
    /// <summary> Selected Parameter to which apply Text Value for Search </summary>
    property SelectedItem: Integer read GetSelectedItem write SetSelectedItem;
    /// <summary> Main Search Text Label's Caption (changes accordingly with Sel. Item) </summary>
    property MainSearchLabel: string read GetMainSearchLabel write SetMainSearchLabel;
    function GetDetailsActive: boolean;
    property DetailsActive: boolean read GetDetailsActive;
    function GetDetails: IList<IJanuaViewModel>;
    /// <summary> List of SubModels usually IJanuaRecordSetViewModel  </summary>
    property Details: IList<IJanuaViewModel> read GetDetails;
    function GetDetailCount: Integer;
    property DetailCount: Integer read GetDetailCount;
    procedure GenerateSubModels;
    procedure RemoveSubModels;
    function GetDetailActionList: IJanuaActionList;
    property DetailActionList: IJanuaActionList read GetDetailActionList;
    function NewRecord: boolean;
    function GetOnNewRecord: TNotifyEvent;
    procedure SetOnNewRecord(const Value: TNotifyEvent);
    property OnNewRecord: TNotifyEvent read GetOnNewRecord write SetOnNewRecord;
    procedure StartSearch;
    procedure Refresh;
    /// <summary> Opens Main or search Dataset and all Lookups and Detail Datasets setting up Objects </summary>
    procedure OpenAll(const aThreaded: boolean = False);
    // ---------- Common Dataset Objects Procedures and Functions ----------------------------------------
    function GetjdsDataset: IJanuaDBDataset;
    /// <summary>  Main Dataset that is exposed to ViewModel or to the client.</summary>
    property jdsDataset: IJanuaDBDataset read GetjdsDataset;
  end;

  /// <summary>
  /// Base Interface for a ViewModel Implementation (Template)
  /// </summary>
  IJanuaRESTViewModel = interface(IJanuaViewModel)
    ['{1F46094B-DC3C-4704-BC2A-849107E13C44}']
  end;

  /// <summary> DB ViewModel should be connected with a DataModule based Model or a Virtual Dataset Model </summary>
  IJanuaDBViewModel = interface(IJanuaViewModel)
    ['{653123A7-BCFD-414A-A5EC-36DB55334D8A}']
    function GetdsMaster: TDataSource;
    property dsMaster: TDataSource read GetdsMaster;
    function GetJdsMaster: IJanuaDBDataset;
    property jdsMaster: IJanuaDBDataset read GetJdsMaster;
    function GetdsDetail: TDataSource;
    property dsDetail: TDataSource read GetdsDetail;
    function GetjdsDetail: IJanuaDBDataset;
    property jdsDetail: IJanuaDBDataset read GetjdsDetail;
  end;

  /// <summary> Has the same features of a DB ViewModel but based on JanuaRecordSet insted of DataModule </summary>
  IJanuaRecordSetViewModel = interface(IJanuaViewModel)
    ['{09B40EBA-F582-431E-BCD9-3D0E835C669E}']
    function GetRecordSet: IJanuaRecordSet;
    property RecordSet: IJanuaRecordSet read GetRecordSet;
  end;

  IJanuaRecordEditDialog = interface(IJanuaForm)
    ['{7D25819E-F14A-4E3F-B62A-CB213C8436CE}']
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
  end;

implementation

end.
