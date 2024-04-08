unit Janua.Models.Templates;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes, Data.DB, System.Variants,
  Spring.Collections, FireDAC.Comp.Client,
  // Januaproject Framework
  Janua.Forms.Types, Janua.Core.Types, Janua.Core.DB.Types, Janua.Http.Types,
  // Orm
  Janua.Orm.Dataset.Intf, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Core.DB.Intf, Janua.Rest.Intf,
  // Libraries
  Janua.Core.Classes, Janua.Core.DB.Impl,
  // ViewModel
  Janua.Bindings.Intf, Janua.ViewModels.Intf, JOrm.System.Settings.Intf, Janua.Controls.Forms.Intf;

type
  TJanuaDataModuleTemplate = class(TJanuaInterfacedBindableObject, IJanuaDataModuleContainer, IJanuaBindable)
  strict private
    FMainDataModule: IJanuaDataModule;
    FMainDataset: IJanuaDBDataset;
    FLazyLoading: Boolean;
    FSelectedSchema: Integer;
    procedure AssignLazyLoading;
  strict protected
    FInternalCreate: TProc;
    procedure SetMainDataModule(const aDataModule: TDataModule);
    procedure GetInternalCreate; virtual;
  protected
    function GetLazyLoading: Boolean;
    procedure SetLazyLoading(const Value: Boolean);
    procedure SetMainDataset(const Value: IJanuaDBDataset);
    function GetSelectedSchema: Integer;
    procedure SetSelectedSchema(const Value: Integer); virtual;
  public
    constructor Create; override;
    destructor Destroy; override;
    // <summary> If there are some Detail Table it can update those Tables </summary>
    procedure RefreshDetails; virtual;
    /// <summary>  Boolean: If True then the Details are refreshed on demand when Record Is Loaded</summary>
    /// <seealso href="https://ergomercator.atlassian.net/jira/software/projects/JF/boards/1?selectedIssue=JF-71">
    /// Lazy Loading of Remote Dataset (master-detail) for better  control/peformances JF-71 </seealso>
    property LazyLoading: Boolean read GetLazyLoading write SetLazyLoading;
    // <summary> The main Dataset of the module (master) it points to one record using its uuid </summary>
    property MainDataset: IJanuaDBDataset read FMainDataset write SetMainDataset;
    property SelectedSchema: Integer read GetSelectedSchema write SetSelectedSchema;
  end;

type
  TJanuaSingleRecordSrvModel = class(TJanuaStorage, IJanuaSingleRecordSrvModel, IJanuaStorage)
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    destructor Destroy; override;
    // ---------- Common Dataset Objects Procedures and Functions ----------------------------------------
  private
    [weak]
    FCurrentRecord: IJanuaRecord;
    [weak]
    FDataModule: IJanuaDataModuleContainer;
  strict private
    procedure SetCurrentRecord(const aRecord: IJanuaRecord);
  protected
    // Search by GUID should be performed against
    function GetjdsRecordDataset: IJanuaDBDataset;
    function GetjdsDetail: IJanuaDBDataset;
    function GetCurrentRecord: IJanuaRecord;
  public
    function SearchByGUID(const aGuid: TGUID): Boolean;
    // ---------- Record Public Procedures --------------------------------------------------------------
    procedure AddNewRecord; overload;
    procedure AddNewRecord(const aRecord: IJanuaRecord); overload;
    procedure AddNewRecord(const aJson: string); overload;
    procedure AppendRecord; overload;
    procedure AppendRecord(const aRecord: IJanuaRecord); overload;
    procedure AppendRecord(const aJson: string); overload;
    procedure DeleteRecord; overload;
    procedure DeleteRecord(const aGUID: string); overload;
    procedure PostRecord;
    procedure UndoChanges;
    procedure LoadRecord;
    procedure RefreshRecord;
  public
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsRecordDataset: IJanuaDBDataset read GetjdsRecordDataset;
    // ---------- Common Dataset Objects Procedures and Functions ----------------------------------------
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsDetail: IJanuaDBDataset read GetjdsDetail;
    property CurrentRecord: IJanuaRecord read GetCurrentRecord;
  end;

  TJanuaBaseModelTemplate = class(TJanuaStorage, IJanuaBaseModel, IJanuaStorage, IJanuaInterface)
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    destructor Destroy; override;
  strict private
    FGroupID: Integer;
    FState: TJanuaModelState;
    [weak]
    FInternalRecord: IJanuaRecord;
    FFilterOption: TJanuaFilterOption;
  private
    function GetParams: TJanuaVariantArray;
    function GetState: TJanuaModelState;
  strict protected
    // Accessed only by Descendant and not by other unit's Objects or procedures
    FParams: TArray<Variant>;
    [weak]
    FjdsDataset: IJanuaDBDataset;
    procedure SetParams(const aParams: TJanuaVariantArray); virtual;
    function GetMainSearchParams: IJanuaParams;
    procedure SetInternalDataset(aDataset: IJanuaDBDataset); virtual;
    function GetFilterOption: TJanuaFilterOption;
    procedure SetFilterOption(const Value: TJanuaFilterOption);
    function GetRecordCount: Integer;
  protected
    function GetInternalRecord: IJanuaRecord;
    procedure SetInternalRecord(const aRecord: IJanuaRecord); virtual;
    function GetCurrentRecord: IJanuaRecord;
    procedure SetState(const Value: TJanuaModelState);
    function GetjdsDataset: IJanuaDBDataset;
    function GetGroupID: Integer;
    procedure SetGroupID(const Value: Integer); virtual;
  public // Dataset Related Procedures
    procedure First(const aProc: TProc; const aNotThreaded: Boolean =
{$IFDEF JANUA_TEST}True{$ELSE}False{$ENDIF}); virtual;
    procedure Last(const aProc: TProc; const aNotThreaded: Boolean =
{$IFDEF JANUA_TEST}True{$ELSE}False{$ENDIF}); virtual;
    procedure Prior(const aProc: TProc; const aNotThreaded: Boolean =
{$IFDEF JANUA_TEST}True{$ELSE}False{$ENDIF}); virtual;
    procedure Next(const aProc: TProc; const aNotThreaded: Boolean =
{$IFDEF JANUA_TEST}True{$ELSE}False{$ENDIF}); virtual;
  public // Record and RecordSet Related Procedures
    procedure AddNewRecord; virtual;
    procedure AppendRecord; virtual; abstract;
    procedure PostRecord; virtual; abstract;
    procedure UndoChanges; virtual; abstract;
    procedure DeleteRecord; virtual; abstract;
    procedure BeginScroll; virtual; abstract;
    procedure EndScroll; virtual; abstract;
    procedure LoadRecord; virtual;
    procedure RefreshDetails; virtual; Abstract;
    procedure RefreshRecord; virtual; Abstract;
    property CurrentRecord: IJanuaRecord read GetCurrentRecord;
    function SearchText(const aText: string; const aLimit: Word = 0; const aOffset: Word = 0): Integer;
    function SearchByGUID(const aGuid: TGUID): Boolean; virtual;
    function SearchByParams(aParams: IJanuaParams): Integer; virtual;
  public
    /// <summary> Actual Model main Record casting to IJanuaRecord Interface can be searched by GUID</summary>
    property InternalRecord: IJanuaRecord read GetInternalRecord;
    /// <summary> The state of the main Record of the Model (inserting, editing, default) </summary>
    property State: TJanuaModelState read GetState write SetState;
    /// <summary>  Used to generate Search Dataset. When data to search is grouped by  type </summary>
    property GroupID: Integer read GetGroupID write SetGroupID;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsDataset: IJanuaDBDataset read GetjdsDataset;
    /// <summary> List of Search parameters that are mutually exclusive related to Search Text </summary>
    property MainSearchParams: IJanuaParams read GetMainSearchParams;
  end;

  TJanuaBaseModelTemplateClass = class of TJanuaBaseModelTemplate;
  TJanuaDataModuleTemplateClass = class of TJanuaDataModuleTemplate;

  TJanuaMVCSModelTemplate = class(TJanuaBaseModelTemplate, IJanuaBaseModel, IJanuaStorage, IJanuaInterface)
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    destructor Destroy; override;
  strict private
    // ---- Recordset Editing Procedures ---------------------------------------------------------------------
    FDetailModels: IList<IJanuaRecordSetModel>;
    // ---- Main Search Fields, Parameters and Action
    FMainSearchText: string;
    FMainSearchLabel: string;
    FDateFrom: TDate;
    FDateTo: TDate;
    FGroupGUID: TGUID;
    FAfterOpen: TJanuaDBDataSetNotifyEvent;
    FAfterSCroll: TJanuaDBDataSetNotifyEvent;
    // Current GUID can be used to not repeat calls triggered by messages and events
    FMasterGUID: TGUID;
    FSelectedItem: Integer;
    FIsThreaded: Boolean;
  strict protected
    function GetDateFrom: TDate;
    function GetDateTo: TDate;
    procedure SetDateFrom(const Value: TDate); virtual;
    procedure SetDateTo(const Value: TDate); virtual;
    procedure ActivateDetails; virtual;
  protected
    procedure UpdateDataset; virtual;
    function GetSelectedItem: Integer;
    procedure SetSelectedItem(const Value: Integer);
    function GetIsThreaded: Boolean;
    procedure SetIsThreaded(const Value: Boolean);
    procedure SetGroupGUID(const Value: TGUID); virtual;
    /// <summary> Event triggered on Dataset Scroll/Open/Close/Refresh </summary>
    procedure DoAfterScroll(aDataset: IJanuaDBCustomDataset); virtual;
    /// <summary> Event triggered on Dataset Scroll/Open/Close/Refresh </summary>
    procedure DoAfterOpen(aDataset: IJanuaDBDataset); virtual;
    procedure IncrementalSearch(const aSearchText: string); virtual; abstract;
    function GetFilterParams: IJanuaParams;
    function GetMainSelectedParam: IJanuaField;
    function GetMainSearchText: string;
    procedure SetMainSearchText(const Value: string); virtual;
    // INDEX SEARCH PROCEDURES --------------------------------------------------------------------------
    function GetDataSource: TDataSource;
    // function GetActionSearch: IJanuaAction;
    // ---------- Sub RecordSet Management --------------------------------------------------------------
    function GetDetailModels: IList<IJanuaRecordSetModel>;
    procedure AddDetailModel(const aModel: IJanuaRecordSetModel);
    function GetAfterOpen: TJanuaDBDataSetNotifyEvent;
    function GetAfterScroll: TJanuaDBDataSetNotifyEvent;
    function ModelCount: Integer;
    function GetOrderByFields: IJanuaOrderByFields;
    procedure SetAfterOpen(Value: TJanuaDBDataSetNotifyEvent);
    procedure SetAfterScroll(Value: TJanuaDBDataSetNotifyEvent);
  strict protected
    // MAIN GROUP used to select a portion of the Dataset (if necessary)
    function GetGroupGUID: TGUID;
  public
    procedure GenerateSubModels; virtual;
    procedure RemoveSubModels; virtual;
    function LocateByGUID(const aGuid: TGUID): Boolean; virtual;
  public
    property DateFrom: TDate read GetDateFrom write SetDateFrom;
    property DateTo: TDate read GetDateTo write SetDateTo;
    property GroupGUID: TGUID read GetGroupGUID write SetGroupGUID;
    /// <summary> If True Datasets are managed in separate Threads</summary>
    property IsThreaded: Boolean read GetIsThreaded write SetIsThreaded;
    /// <summary> List of index fields and order type (asc desc) for each one.</summmary>
    property OrderByFields: IJanuaOrderByFields read GetOrderByFields;
    /// <summary> List of Filter parameters descendants should set the property </summary>
    property FilterParams: IJanuaParams read GetFilterParams;
    // ---------- Sub RecordSet Management --------------------------------------------------------------
    property DetailModels: IList<IJanuaRecordSetModel> read GetDetailModels;
    property FilterOption: TJanuaFilterOption read GetFilterOption write SetFilterOption;
    /// <summary> Event triggered on Dataset Scroll/Open/Close/Refresh </summary>
    property AfterOpen: TJanuaDBDataSetNotifyEvent read GetAfterOpen write SetAfterOpen;
    /// <summary> Event triggered on Dataset Scroll/Open/Close/Refresh </summary>
    property AfterScroll: TJanuaDBDataSetNotifyEvent read GetAfterScroll write SetAfterScroll;
    /// <summary> Main Search Text connects View-ViewModel-Model with Live-Bindings </summary>
    property MainSearchText: string read GetMainSearchText write SetMainSearchText;
  end;

  TJanuaRESTModelTemplate = class(TJanuaMVCSModelTemplate, IJanuaBaseModel, IJanuaRESTModel, IJanuaStorage,
    IJanuaInterface, IJanuaClientModel)
  private
    class var FDBDatasetFactory: IJanuaDBDatasetFactory;
  protected
    class function GetDBDatasetFactory: IJanuaDBDatasetFactory;
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    destructor Destroy; override;
  strict private
    FRESTRecordClient: IRESTRecordClient;
    FRESTDBClient: IRESTDBClient;
    FRESTClient: IJanuaRESTClient;
  strict protected
    FjdsRESTRemotDataset: IJanuaVirtualDBDataset;
  protected
    function GetRESTRecordClient: IRESTRecordClient;
    function GetRESTDBClient: IRESTDBClient;
    function GetRESTClient: IJanuaRESTClient;
    function GetRESTRemotDataset: IJanuaVirtualDBDataset;
    procedure SetjdsRESTRemotDataset(const aDataset: IJanuaVirtualDBDataset);
  protected
    property RESTRecordClient: IRESTRecordClient read GetRESTRecordClient;
    property RESTDBClient: IRESTDBClient read GetRESTDBClient;
    property RESTClient: IJanuaRESTClient read GetRESTClient;
    property jdsRESTRemotDataset: IJanuaVirtualDBDataset read GetRESTRemotDataset;
  private
    FRestFormat: TRestFormat;
    FLastErrorMessage: string;
    FServerUrl: string;
    FRestAPIEndpoint: string;
    FPort: Word;
  protected
    procedure SetInternalRecord(const aRecord: IJanuaRecord); override;
  public
    procedure AppendRecord; override;
    procedure PostRecord; override;
    procedure UndoChanges; override;
    procedure DeleteRecord; override;
    procedure LoadRecord; override;
    procedure RefreshRecord; override;
    procedure BeginScroll; override;
    procedure EndScroll; override;
    procedure RefreshDataset;
    function TryGetDetailDataset(const aName: string; out aDataset: IJanuaDBDataset): Boolean;
    function Search: Integer;
    procedure OpenAll(const aThreaded: Boolean = False);
    procedure Refresh(aProc: TProc);
    procedure CAllBackAfterOpen; Virtual;
    procedure StartSearch; Virtual;
    function GetRestAPIEndpoint: string;
    function GetServerUrl: string;
  protected
    procedure SetRestAPIEndpoint(const Value: string); virtual;
    procedure SetServerUrl(const Value: string); virtual;
    function GetLastErrorMessage: string;
    procedure SetLastErrorMessage(const Value: string);
    procedure SetRestFormat(const Value: TRestFormat); virtual;
    function GetRestFormat: TRestFormat;
    function GetPort: Word;
    procedure SetPort(const Value: Word); virtual;
  public
    function SearchByGUID(const aGuid: TGUID): Boolean; override;
    function GetBaseUrl: string;
    function GetDBClientFullUrl: string;
    function GetRecordClientFullUrl(const aGuid: TGUID): string;
    function GetClientFullUrl: string;
    property LastErrorMessage: string read GetLastErrorMessage;
    property ServerUrl: string read GetServerUrl write SetServerUrl;
    property RestAPIEndpoint: string read GetRestAPIEndpoint write SetRestAPIEndpoint;
    property ServerPort: Word Read GetPort write SetPort;
    property RestFormat: TRestFormat read GetRestFormat write SetRestFormat;
  end;

  TJanuaModelTemplate = class(TJanuaMVCSModelTemplate, IJanuaStorage, IJanuaInterface)
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    destructor Destroy; override;
  strict private
    // Set by Create
    // procedure SetClearCurrentRecord(const Value: TProc);
    // procedure SetUpdateCurrentRecord(const Value: TProc);
    FDetailDatasets: IList<IJanuaDBDataset>;
    [weak]
    FjdsRecordDataset: IJanuaDBDataset;
  strict protected
    procedure SetRecordDataset(aDataset: IJanuaDBDataset); virtual;
    function GetjdsRecordDataset: IJanuaDBDataset;
    procedure SetjdsRecordDataset(aDataset: IJanuaDBDataset);
  protected
    procedure AddDetailDataset(const aDataset: IJanuaDBDataset);
    /// <summary> Returns True id Detail Dataset are active or opened</summary>
    function GetDetailsActive: Boolean;
    // ---------- Record Public Procedures -------------------------------------------------------------------
    function GetDetailDatasets: IList<IJanuaDBDataset>;
    procedure SetDetailDatasets(const Value: IList<IJanuaDBDataset>);
    { procedure SetDefaultParams; virtual; abstract; }
  public
    function SearchByGUID(const aGuid: TGUID): Boolean; override;
  public
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsRecordDataset: IJanuaDBDataset read GetjdsRecordDataset;
    /// <summary> List of Detail Datasets linked the the Model Master Dataset </summary>
    property DetailDatasets: IList<IJanuaDBDataset> read GetDetailDatasets write SetDetailDatasets;
    /// <summary> Selected Parameter to which apply Text Value for Search </summary>
    property SelectedItem: Integer read GetSelectedItem write SetSelectedItem;
    // ---------- Common Dataset Objects Procedures and Functions ----------------------------------------
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property DataSource: TDataSource read GetDataSource;
    // -------------------- Detail Models Management ------------------------------------------------------------
    property DetailsActive: Boolean read GetDetailsActive;
  end;

  TJanuaServerDBModelTemplate = class(TJanuaModelTemplate, IJanuaServerDBModel, IJanuaStorage,
    IJanuaInterface)
  strict private
    FLazyLoading: Boolean;
    [weak]
    FjdsDetail: IJanuaDBDataset;
    [weak]
    FDataModule: IJanuaDataModuleContainer;
  public
    procedure AppendRecord; override;
    procedure PostRecord; override;
    procedure UndoChanges; override;
    procedure DeleteRecord; override;
    procedure LoadRecord; override;
    procedure RefreshRecord; override;
    procedure BeginScroll; override;
    procedure EndScroll; override;
  strict protected
    function GetjdsMaster: IJanuaDBDataset;
    procedure SetjdsMaster(Value: IJanuaDBDataset);
    function GetjdsDetail: IJanuaDBDataset;
    procedure SetjdsDetail(Value: IJanuaDBDataset);
    function GetLazyLoading: Boolean;
    procedure SetLazyLoading(const Value: Boolean);
    procedure SetInternalDataModule(aDataModule: IJanuaDataModuleContainer);
    function GetInternalDataModule: IJanuaDataModuleContainer;
  public
    /// <summary> Detail Recordset (IJanuaDataset) <br /> </summary>
    property jdsDetail: IJanuaDBDataset read GetjdsDetail write SetjdsDetail;
    /// <summary> Master Recordset (IJanuaDataset) </summary>
    property jdsMaster: IJanuaDBDataset read GetjdsMaster write SetjdsMaster;
    /// <summary> if "Lazy" loading is set a Scroll/Open Event from the dataset does not call loadRecord </summary>
    property LazyLoading: Boolean read GetLazyLoading write SetLazyLoading;

    property InternalDataModule: IJanuaDataModuleContainer read GetInternalDataModule;
  public
    function RestGetDataset(const aFormat, aParams: string): string;
    function RestGetRecord(const aRecordGUID: string): string;
    function RestPostRecord(var aRecord: string): Boolean;
    function RestUpdateRecord(var aRecord: string): Boolean;
    function RestDelRecord(const aRecordGUID: string): Boolean;
  end;

  TJanuaModelRecordSetTemplate = class(TJanuaModelTemplate, IJanuaRecordSetModel, IJanuaStorage,
    IJanuaInterface)
  private
    // FRsMaster: IJanuaDBDataset;
    FSerialization: IJanuaDatasetSerialization;
    FModelDetail: IJanuaRecordSetModel;
    FUpdateCurrentRecord: TProc;
    FClearCurrentRecord: TProc;
    FInternalRecordSet: IJanuaRecordSet;
    procedure RefreshRecord; override;
  strict private
    function GenerateSerialization: IJanuaDatasetSerialization;
  strict protected
    function Filter: Integer;
    procedure SetInternalDataset(aDataset: IJanuaDBDataset); override;
    procedure IncrementalSearch(const aSearchText: string); override;
    // 2020-11-30 GetSearch and SetSearch are now replaced by MainSearchText Getters and Setters
  protected
    function GetMainSelectedParam: IJanuaField;
    function GetRecordCount: Integer;
  public
    // ---------- Record Public Procedures --------------------------------------------------------------
    procedure AddNewRecord; override;
    procedure AppendRecord; override;
    procedure PostRecord; override;
    procedure UndoChanges; override;
    procedure DeleteRecord; override;
    procedure BeginScroll; override;
    procedure EndScroll; override;
    procedure LoadRecord; override;
    procedure First(const aProc: TProc; const aNotThreaded: Boolean = False); reintroduce;
    procedure Last(const aProc: TProc; const aNotThreaded: Boolean = False); reintroduce;
    procedure Next(const aProc: TProc; const aNotThreaded: Boolean = False); reintroduce;
    procedure Prior(const aProc: TProc; const aNotThreaded: Boolean = False); reintroduce;
  protected
    function GetjdsDataset: IJanuaDBDataset;
    function GetjdsDetail: IJanuaDBDataset;
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(const Value: IJanuaRecordSet);
    function GetDataSource: TDataSource;
  strict protected
    function InternalActivate: Boolean; override;
  public
    function Search: Integer;
    procedure OpenAll(const aThreaded: Boolean = False);
    procedure Refresh(aProc: TProc);
    procedure RefreshDataset;
    procedure RefreshDetails; override;
    procedure GenerateMemDataset;
    procedure ConnectToDataset(aDataset: IJanuaDBDataset);
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    Destructor Destroy; override;
    constructor Create(aRecordSet: IJanuaRecordSet); overload; virtual;
  public
    /// <summary> Number of Records from the Main Recordset in the Model  </summary>
    property RecordCount: Integer read GetRecordCount;
    /// <summary> Selected Parameter to which apply Text Value for Search </summary>
    property SelectedParam: IJanuaField read GetMainSelectedParam;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsDataset: IJanuaDBDataset read GetjdsDataset;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property DataSource: TDataSource read GetDataSource;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsDetail: IJanuaDBDataset read GetjdsDetail;
    // -- end Recordset Specific Procedures ------------------------------------------------------------------
    property AfterOpen: TJanuaDBDataSetNotifyEvent read GetAfterOpen write SetAfterOpen;
    property AfterScroll: TJanuaDBDataSetNotifyEvent read GetAfterScroll write SetAfterScroll;
  end;

type
  TJanuaModelDBTemplate = class(TJanuaServerDBModelTemplate, IJanuaDBModel, IJanuaStorage, IJanuaInterface)
  private
    // ---- Main Search Fields, Parameters and Action
    FMainSearchLabel: string;
    FDateFrom: TDate;
    FDateTo: TDate;
    FMasterGUID: TGUID;
    FUpdateCurrentRecord: TProc;
    FClearCurrentRecord: TProc;
    procedure BeginDetailScroll;
    procedure DeleteDetailRecord;
    procedure EditDetailRecord;
    procedure EndDetailScroll;
    procedure LoadDetailRecord;
    procedure PostDetailRecord;
    procedure RefreshDetailRecord;
    procedure UndoDetailChanges;
  strict protected
    procedure UpdateDataset; override;
    function Filter(const aSearchText: string): Integer;
    function Query(const aSearchText: string): Integer;
    procedure IncrementalSearch(const aSearchText: string); override;
    procedure SetInternalDataset(aDataset: IJanuaDBDataset); override;
    function GetRecordCount: Integer;
  protected
    // *** On Open/Scroll Event manager. Is triggered if and only if GUID/recordcount changes ***//
    procedure InternalSetParams; virtual; abstract;
    function AddSearchTextParam(const aName, aTitle: string): IJanuaField;
    function AddSearchParam(const aName, aTitle: string; const aType: TJanuaFieldType;
      const aDefault: Variant; const aList: TJanuaLookupID = TJanuaLookupID.lklNone): IJanuaField;
  public
    procedure GenerateSubModels; override;
    procedure RefreshDataset;
    procedure RefreshDetails; override;
    function TryGetDetailDataset(const aName: string; out aDataset: IJanuaDBDataset): Boolean;
    function Search: Integer;
    procedure OpenAll(const aThreaded: Boolean = False);
    procedure Refresh(aProc: TProc);
    procedure CAllBackAfterOpen; Virtual;
    procedure StartSearch; Virtual;
    procedure First(const aProc: TProc; const aNotThreaded: Boolean =
{$IFDEF JANUA_TEST}True{$ELSE}False{$ENDIF}); reintroduce;
    procedure Last(const aProc: TProc; const aNotThreaded: Boolean =
{$IFDEF JANUA_TEST}True{$ELSE}False{$ENDIF}); reintroduce;
    procedure Prior(const aProc: TProc; const aNotThreaded: Boolean =
{$IFDEF JANUA_TEST}True{$ELSE}False{$ENDIF}); reintroduce;
    procedure Next(const aProc: TProc; const aNotThreaded: Boolean =
{$IFDEF JANUA_TEST}True{$ELSE}False{$ENDIF}); reintroduce;
  public
    /// <summary> List of Search parameters that are not mutually exclusive </summary>
    property FilterParams: IJanuaParams read GetFilterParams;
    /// <summary> Number of Records fetched in Main Dataset/RecordSet </summary>
    property RecordCount: Integer read GetRecordCount;
    /// <summary> Selected Parameter to which apply Text Value for Search </summary>
    property SelectedParam: IJanuaField read GetMainSelectedParam;
  public
    constructor Create; override;
  end;

implementation

uses Spring, System.StrUtils, System.Generics.Collections, Janua.Core.AsyncTask, Janua.Application.Framework,
  Janua.Orm.Types, Janua.Orm.Dataset.Impl, Janua.Core.Functions;

{ TJanuaModelDBTemplate }

function TJanuaModelDBTemplate.AddSearchParam(const aName, aTitle: string; const aType: TJanuaFieldType;
  const aDefault: Variant; const aList: TJanuaLookupID): IJanuaField;
begin
  try
    WriteLog('AddSearchParam', 'FInternalRecord.Clear;');
    InternalRecord.Clear;
  except
    {
      procedure CreateException(const aProcName: string; const aLog: string; aError: string;
      const aClass: TObject = nil); overload;
    }
    On e: Exception do
      Janua.Application.Framework.CreateException('AddSearchParam', LogString, e.Message, Self);
  end;

  Result := MainSearchParams.AddParam(aName, aType, TValue.From<Variant>(aDefault));
  Result.Title := TJanuaApplication.Title;
  Result.DefaultValue := TValue.From<Variant>(aDefault);
  Result.Default;
  Result.LookUpList := aList;
end;

function TJanuaModelDBTemplate.AddSearchTextParam(const aName, aTitle: string): IJanuaField;
begin
  Result := MainSearchParams.AddParam(aName, TJanuaFieldType.jptString, TValue.From<String>('%'));
  Result.Title := aTitle;
end;

procedure TJanuaModelDBTemplate.CAllBackAfterOpen;
begin
  // chiamo il gestore dell'evento AfterScroll che potrebe anche inviare un 'messaggio' Broadcast
  // a tutti i soggetti iscritti all'oggetto.
  if Assigned(FjdsDataset) then
  begin
    if FMasterGUID <> FjdsDataset.GUID then
      DoAfterScroll(FjdsDataset);
  end;
end;

procedure TJanuaModelDBTemplate.BeginDetailScroll;
begin

end;

constructor TJanuaModelDBTemplate.Create;
begin
  // By Default every record is not updated (this was the original behaviour of the Model). So Lazy loading is inactive.
  LazyLoading := True;
  inherited;
end;

procedure TJanuaModelDBTemplate.DeleteDetailRecord;
begin
  jdsDetail.DeleteCurrentRecord;
end;

procedure TJanuaModelDBTemplate.EditDetailRecord;
begin

end;

procedure TJanuaModelDBTemplate.EndDetailScroll;
begin

end;

function TJanuaModelDBTemplate.Filter(const aSearchText: string): Integer;
begin
  Result := -1;
  try
    MonitorEnter(jdsMaster.GetSelf, 1000);
    try
      jdsMaster.FilterParams.ParamByName('search_index').AsString := aSearchText;
      begin
        BeginScroll;
        jdsMaster.FilterParams.Activate;
        jdsMaster.ApplyFilter;
        Result := jdsMaster.RecordCount;
        jdsMaster.First;
        EndScroll;
      end;
    finally
      MonitorExit(jdsMaster.GetSelf);
    end;
  except
    on e: Exception do
      Raise Exception.Create(ClassName + '.Filter ' + e.Message);
  end;
end;

procedure TJanuaModelDBTemplate.First(const aProc: TProc; const aNotThreaded: Boolean);
begin
  Guard.CheckNotNull(jdsMaster, ClassName + '.TJanuaModelDBTemplate.First: jdsMaster is nil');
  Guard.CheckNotNull(InternalRecord, ClassName + '.TJanuaModelDBTemplate.First: InternalRecord not set');
  if TJanuaApplication.UnitTesting or aNotThreaded then
  begin
    try
      jdsMaster.BeginScroll;
      jdsMaster.First;
      jdsMaster.EndScroll;
      if not LazyLoading then
        InternalRecord.LoadFromDataset;
      if Assigned(aProc) then
        aProc;
    except
      On e: Exception do
        Raise Exception.Create(ClassName + '.' + 'First ' + e.Message)
    end
  end
  else
    Async.Run<TProc>(
      function: TProc
      begin
        try
          // This is the "background" anonymous method. Runs in the
          // background thread, and its result is passed
          // to the "success" callback.
          // In this case the result is a String.
          Result := aProc;
          if Assigned(Self) then
          begin
            MonitorEnter(Self, 1000);
            try
              if Assigned(jdsMaster) then
              begin
                jdsMaster.BeginScroll;
                jdsMaster.First;
                jdsMaster.EndScroll;
              end;
            finally
              TMonitor.Exit(Self);
            end
          end
        except
          On e: Exception do
            Raise Exception.Create(ClassName + '.' + 'First ' + e.Message)
        end
      end,
      procedure(const lProc: TProc)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        // TMonitor.Exit(self);
        try
          Guard.CheckNotNull(GetInternalRecord, 'Internalrecord not set');
          if not LazyLoading then
            InternalRecord.LoadFromDataset;
          if Assigned(lProc) then
            lProc;
        except
          on e: Exception do
            Raise Exception.Create(ClassName + '.' + 'First Async ' + e.Message)
        end;
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        Raise Exception.Create(ClassName + '.' + 'First ' + Ex.Message)
      end);
end;

procedure TJanuaModelDBTemplate.GenerateSubModels;
begin
  // Because of 'lazy' loading the master record needs to be updated before Creating or Updating SubModels
  RefreshDetails;
  if not(State = TJanuaModelState.jmsInsert) then
    InternalRecord.LoadRecord;
  inherited;
end;

function TJanuaModelDBTemplate.GetRecordCount: Integer;
begin
  if Assigned(jdsMaster) then
    Result := jdsMaster.RecordCount
  else
    Result := -1
end;

procedure TJanuaModelDBTemplate.IncrementalSearch(const aSearchText: string);
begin
{$IFDEF JANUATEST}
  case FilterOption of
    TJanuaFilterOption.jfoMemory:
      Filter(aSearchText)
  else
    Query(aSearchText)
  end;
{$ELSE}
  // Uncomment this code for synchronous debugging and testing
  (* Filter(aSearchText); *)
  if TJanuaApplication.UnitTesting then
  begin
    case FilterOption of
      TJanuaFilterOption.jfoMemory:
        Filter(aSearchText)
    else
      Query(aSearchText)
    end;
  end
  else
    Async.Run<Boolean>(
      function: Boolean
      begin
        // This is the "background" anonymous method. Runs in the background thread, and its result is passed
        // to the "success" callback. In this case the result is a Boolean.
        // Note:
        Result := False;
        try
          TMonitor.Enter(Self, 1000);
          try
            case FilterOption of
              TJanuaFilterOption.jfoMemory:
                Result := Filter(aSearchText) > 0
            else
              Result := Query(aSearchText) > 0
            end;
          finally
            TMonitor.Exit(Self);
          end;
        except
          on e: Exception do
            Raise Exception.Create(ClassName + '.' + 'IncrementalSearch ' + e.Message)
        end;
      end,
      procedure(const aValue: Boolean)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        // TMonitor.Exit(self);
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        WriteLocalLog('IncrementalSearch', 'Incremental Search Error. ' + Ex.Message);
      end);
{$ENDIF}
end;

procedure TJanuaModelDBTemplate.Last(const aProc: TProc; const aNotThreaded: Boolean);
begin
  Guard.CheckNotNull(jdsMaster, ClassName + '.TJanuaModelDBTemplate.jdsMaster is nil');
  if aNotThreaded or TJanuaApplication.UnitTesting then
  begin
    try
      jdsMaster.BeginScroll;
      jdsMaster.Last;
      jdsMaster.EndScroll;
      if Assigned(aProc) then
        aProc;
    except
      On e: Exception do
        Raise Exception.Create(ClassName + '.' + 'First ' + e.Message)
    end
  end
  else
    Async.Run<TProc>(
      function: TProc
      begin
        // This is the "background" anonymous method. Runs in the
        // background thread, and its result is passed
        // to the "success" callback.
        // In this case the result is a String.
        try
          Result := aProc;
          MonitorEnter(Self, 1000);
          try
            if Assigned(jdsMaster) then
            begin
              jdsMaster.BeginScroll;
              jdsMaster.Last;
              jdsMaster.EndScroll;
            end;
          finally
            TMonitor.Exit(Self);
          end;
        except
          on e: Exception do
            Raise Exception.Create(ClassName + '.' + 'Last ' + e.Message)
        end;
      end,
      procedure(const lProc: TProc)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        // TMonitor.Exit(self);
        if not LazyLoading then
          InternalRecord.LoadFromDataset;
        if Assigned(lProc) then
          lProc;
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        WriteLocalLog('First', 'Dataset Error. ' + Ex.Message);
      end);
end;

procedure TJanuaModelDBTemplate.LoadDetailRecord;
begin
  if InternalRecord.RecordCount > 0 then
    InternalRecord.RecordSets[0].LoadFromDataset;
end;

procedure TJanuaModelDBTemplate.Next(const aProc: TProc; const aNotThreaded: Boolean);
begin
  Guard.CheckNotNull(jdsMaster, ClassName + '.TJanuaModelDBTemplate.jdsMaster is nil');
  if TJanuaApplication.UnitTesting or aNotThreaded or not IsMultiThread then
  begin
    try
      jdsMaster.BeginScroll;
      jdsMaster.Next;
      jdsMaster.EndScroll;
      if Assigned(aProc) then
        aProc;
    except
      On e: Exception do
        Raise Exception.Create(ClassName + '.' + 'begin' + e.Message)
    end
  end
  else
    Async.Run<TProc>(
      function: TProc
      begin
        // This is the "background" anonymous method. Runs in the
        // background thread, and its result is passed
        // to the "success" callback.
        // In this case the result is a String.
        try
          Result := aProc;
          MonitorEnter(Self, 1000);
          try
            jdsMaster.BeginScroll;
            jdsMaster.Next;
            jdsMaster.EndScroll;
          finally
            TMonitor.Exit(Self);
          end;
        except
          on e: Exception do
            Raise Exception.Create(ClassName + '.' + 'Next' + e.Message);
        end;
      end,
      procedure(const lProc: TProc)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        // TMonitor.Exit(self);
        if not LazyLoading then
          InternalRecord.LoadFromDataset;
        if Assigned(lProc) then
          lProc;
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        WriteLocalLog('First', 'Dataset Error. ' + Ex.Message);
      end);
end;

procedure TJanuaModelDBTemplate.OpenAll(const aThreaded: Boolean);
begin
  try
    Guard.CheckNotNull(jdsMaster, ClassName + '.TJanuaModelDBTemplate.jdsMaster is nil');
    try
      InternalSetParams;
    except
      on e: Exception do
        Raise Exception.Create(ClassName + '.' + 'InternalSetParams' + e.Message);
    end;

    if aThreaded then
    begin
      MonitorEnter(Self);
      try
        jdsMaster.Close;
        jdsMaster.OpenThreaded(
          procedure
          begin
            MonitorEnter(Self);
            try
              jdsMaster.ApplyFilter;
              if Assigned(jdsDetail) and not(jdsDetail.Active) then
                jdsDetail.Open;
              CAllBackAfterOpen;
            finally
              MonitorExit(Self);
            end;
          end);
        IsThreaded := True;
      finally
        MonitorExit(Self);
      end;
    end
    else
    begin
      jdsMaster.Open;
      jdsMaster.ApplyFilter;
      CAllBackAfterOpen;
      if Assigned(jdsDetail) and not(jdsDetail.Active) then
        jdsDetail.Open;
    end;
  except
    On e: Exception do
      Raise Exception.Create(ClassName + '.' + 'OpenAll' + e.Message);
  end;
end;

procedure TJanuaModelDBTemplate.PostDetailRecord;
begin

end;

procedure TJanuaModelDBTemplate.Prior(const aProc: TProc; const aNotThreaded: Boolean);
begin
  Guard.CheckNotNull(jdsMaster, ClassName + '.TJanuaModelDBTemplate.jdsMaster is nil');
  if TJanuaApplication.UnitTesting or aNotThreaded then
  begin
    jdsMaster.BeginScroll;
    jdsMaster.Prior;
    jdsMaster.EndScroll;
    if Assigned(InternalRecord) then
      if not LazyLoading then
        InternalRecord.LoadFromDataset;
    if Assigned(aProc) then
      aProc;
  end
  else
    Async.Run<TProc>(
      function: TProc
      begin
        // This is the "background" anonymous method. Runs in the
        // background thread, and its result is passed
        // to the "success" callback.
        // In this case the result is a String.
        try
          Result := aProc;
          TMonitor.Enter(Self);
          try
            if Assigned(jdsMaster) then
            begin
              jdsMaster.BeginScroll;
              jdsMaster.Prior;
              jdsMaster.EndScroll;
            end;
          finally
            TMonitor.Exit(Self);
          end;
        except
          on e: Exception do
            Raise Exception.Create(ClassName + '.' + 'Prior' + e.Message);
        end;
      end,
      procedure(const lProc: TProc)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        // TMonitor.Exit(self);
        if Assigned(InternalRecord) then
          if not LazyLoading then
            InternalRecord.LoadFromDataset;
        if Assigned(lProc) then
          lProc;
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        WriteLocalLog('First', 'Dataset Error. ' + Ex.Message);
      end);
end;

function TJanuaModelDBTemplate.Query(const aSearchText: string): Integer;
begin
  Result := 0;
  if Assigned(jdsMaster) then
  begin
    if MainSearchText <> StripString(jdsMaster.ParamByName('p_search_name').AsString) then
      jdsMaster.ParamByName('p_search_name').AsString :=
        '%' + IfThen((MainSearchText <> '%') and (MainSearchText <> ''), MainSearchText + '%', '');

    if (Length(MainSearchText) >= 3) then
    begin
      jdsMaster.Close;
      jdsMaster.Open;
      Result := jdsMaster.RecordCount;
    end;
  end;
end;

procedure TJanuaModelDBTemplate.Refresh(aProc: TProc);
begin
  Guard.CheckNotNull(jdsMaster, ClassName + '.TJanuaModelDBTemplate.Refresh.jdsMaster is nil');
  jdsMaster.Close;
  jdsMaster.OpenThreaded(aProc);
end;

procedure TJanuaModelDBTemplate.RefreshDataset;
begin
  if Assigned(FjdsDataset) then
  begin
    FjdsDataset.DataSource.Enabled := False;
    FjdsDataset.Close;
    FjdsDataset.Filtered := False;
    OpenAll(True);
  end;
end;

procedure TJanuaModelDBTemplate.RefreshDetailRecord;
begin

end;

procedure TJanuaModelDBTemplate.RefreshDetails;
begin
  Guard.CheckNotNull(InternalDataModule, ClassName + '.RefreshDetails, FDataModule is Null');
  InternalDataModule.RefreshDetails;
end;

function TJanuaModelDBTemplate.Search: Integer;
var
  I, J: Integer;
  lParam: IJanuaField;
begin
  Result := 0;
  try
    Guard.CheckNotNull(jdsMaster, ClassName + '.TJanuaModelDBTemplate.Search.jdsMaster is nil');
    for I := 0 to MainSearchParams.ParamCount - 1 do
    begin
      { If param is not selected the it is set to its Default, otherwise is set to the Main Search Text }
      if I = SelectedItem then
        MainSearchParams.Params[I].AsString := MainSearchText
      else
        MainSearchParams.Params[I].Default;

      lParam := MainSearchParams.Params[I];

      if jdsMaster.FindParam(MainSearchParams.Params[I].DBField, lParam) then
        lParam.AsString := MainSearchParams.Params[I].AsString;
    end;
    jdsMaster.Open;
    Result := jdsMaster.RecordCount;
    if Assigned(jdsDetail) and not(jdsDetail.Active) then
      jdsDetail.Open;
  except
    on e: Exception do
      Raise Exception.Create(ClassName + '.' + 'Search' + e.Message);
  end;
end;
(*
  procedure TJanuaModelDBTemplate.SetClearCurrentRecord(const Value: TProc);
  begin
  FClearCurrentRecord := Value;
  end;
*)

procedure TJanuaModelDBTemplate.SetInternalDataset(aDataset: IJanuaDBDataset);
begin
  inherited;
  FjdsDataset.OnScroll := DoAfterScroll;
  FjdsDataset.AfterOpen := DoAfterOpen;
  if FjdsDataset.Active then
    DoAfterOpen(FjdsDataset);
end;

procedure TJanuaModelDBTemplate.StartSearch;
begin
  if Assigned(jdsDataset) then
    jdsDataset.ApplyFilter;
end;

function TJanuaModelDBTemplate.TryGetDetailDataset(const aName: string;
out aDataset: IJanuaDBDataset): Boolean;
var
  lDataset: IJanuaDBDataset;
begin
  Result := False;
  for lDataset in DetailDatasets do
    if LowerCase(lDataset.Dataset.Name) = aName.ToLower then
    begin
      aDataset := lDataset;
      Exit(True)
    end;
end;

(*
  procedure TJanuaModelDBTemplate.SetUpdateCurrentRecord(const Value: TProc);
  begin
  FUpdateCurrentRecord := Value;
  end;
*)

procedure TJanuaModelDBTemplate.UndoDetailChanges;
begin

end;

procedure TJanuaModelDBTemplate.UpdateDataset;
var
  aField: TField;
  aGuid: TGUID;
begin
  inherited;
  if Assigned(Self) and Assigned(jdsDataset) and Assigned(InternalRecord) then
    try
      aGuid := GUID_NULL;
      if jdsDataset.RecordCount = 0 then
      begin
        Guard.CheckTrue(Assigned(InternalRecord), 'FInternalRecord not set');
        InternalRecord.Clear;
      end
      else
      begin
        aGuid := jdsDataset.GUID;
        if aGuid = GUID_NULL then
        begin
          aField := jdsDataset.Dataset.FindField('jguid');
          if Assigned(aField) and (aField.AsGuid <> GUID_NULL) then
            aGuid := aField.AsGuid;
        end;
      end;

      if not LazyLoading and (jdsDataset.RecordCount > 0) and ((aGuid <> FMasterGUID) or (aGuid = GUID_NULL))
      then
      begin
        FMasterGUID := aGuid;
        Guard.CheckTrue(Assigned(InternalRecord), 'FInternalRecord is nil');
        InternalRecord.LoadFromDataset;
      end;

    except
      on e: Exception do
        Raise Exception.Create(ClassName + '.' + 'RefreshDataset' + e.Message);
    end;
end;

{ TJanuaModelRecordSetTemplate }

procedure TJanuaModelRecordSetTemplate.AddNewRecord;
begin
  AppendRecord
end;

procedure TJanuaModelRecordSetTemplate.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaModelRecordSetTemplate.AppendRecord;
begin
  SetState(TJanuaModelState.jmsInsert);
  FInternalRecordSet.Append
end;

procedure TJanuaModelRecordSetTemplate.BeforeDestruction;
begin
  inherited;
  FUpdateCurrentRecord := nil;
  FClearCurrentRecord := nil;
end;

procedure TJanuaModelRecordSetTemplate.BeginScroll;
begin

end;

procedure TJanuaModelRecordSetTemplate.ConnectToDataset(aDataset: IJanuaDBDataset);
begin

end;

constructor TJanuaModelRecordSetTemplate.Create(aRecordSet: IJanuaRecordSet);
begin
{$IFDEF DEBUG} Guard.CheckNotNull(aRecordSet, ClassName + '.Create aSubrecordset'); {$ENDIF}
  Create;
  SetRecordSet(aRecordSet);
end;

procedure TJanuaModelRecordSetTemplate.DeleteRecord;
begin
  FInternalRecordSet.Delete;
end;

destructor TJanuaModelRecordSetTemplate.Destroy;
begin
  if Assigned(FSerialization) and (TInterfacedObject(FSerialization).RefCount > 2) then
    TJanuaInterfacedObject(FSerialization.GetSelf).Release;
  FSerialization := nil;
  FInternalRecordSet := nil;
  inherited;
end;

procedure TJanuaModelRecordSetTemplate.EndScroll;
begin

end;

function TJanuaModelRecordSetTemplate.Filter: Integer;
begin
  Result := 0;
  { TODO : Filtering has to be implemented yet }
end;

procedure TJanuaModelRecordSetTemplate.First(const aProc: TProc; const aNotThreaded: Boolean = False);
begin
  FInternalRecordSet.First;
  if Assigned(aProc) then
    aProc;
end;

procedure TJanuaModelRecordSetTemplate.GenerateMemDataset;
begin
  FSerialization := GenerateSerialization;
  FSerialization.Activate;
  SetInternalDataset(FSerialization.Dataset);
end;

function TJanuaModelRecordSetTemplate.GenerateSerialization: IJanuaDatasetSerialization;
begin
  try
    Guard.CheckNotNull(FInternalRecordSet, ' FInternalRecordSet is nil');
    Result := TOrmDatasetFactory.CreateDatasetSerialization(FInternalRecordSet);
  except
    on e: Exception do
    begin
      Raise Exception.Create(ClassName + '.' + 'GenerateSerialization' + e.Message);
    end;
  end;
end;

function TJanuaModelRecordSetTemplate.GetDataSource: TDataSource;
begin
  Result := FSerialization.DataSource;
  // Result := FInternalRecordSet.SyncDataset.DataSource
end;

function TJanuaModelRecordSetTemplate.GetjdsDataset: IJanuaDBDataset;
begin
  Result := FSerialization.Dataset
end;

function TJanuaModelRecordSetTemplate.GetjdsDetail: IJanuaDBDataset;
begin
  if Assigned(FModelDetail) then
    Result := FModelDetail.jdsDataset
end;

function TJanuaModelRecordSetTemplate.GetMainSelectedParam: IJanuaField;
begin

end;

function TJanuaModelRecordSetTemplate.GetRecordCount: Integer;
begin
  Result := FInternalRecordSet.RecordCount;
end;

function TJanuaModelRecordSetTemplate.GetRecordSet: IJanuaRecordSet;
begin
  Result := FInternalRecordSet;
end;

procedure TJanuaModelRecordSetTemplate.IncrementalSearch;
begin
  Filter;
end;

function TJanuaModelRecordSetTemplate.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
{$IFDEF DEBUG} Guard.CheckNotNull(RecordSet, 'ModelRecordSet cannot init RecordSet not set'); {$ENDIF}
        FSerialization := TOrmDatasetFactory.CreateDatasetSerialization(RecordSet);
{$IFDEF DEBUG} Guard.CheckNotNull(FSerialization, 'FSerialization'); {$ENDIF}
        if FSerialization.Activate then
          SetInternalDataset(FSerialization.Dataset);
      end;
    except
      on e: Exception do
        Raise Exception.Create(ClassName + '.' + 'InternalActivate' + e.Message);
    end;

end;

procedure TJanuaModelRecordSetTemplate.Last(const aProc: TProc; const aNotThreaded: Boolean = False);
begin
  if Assigned(FInternalRecordSet) then
    try
      FInternalRecordSet.Last;
      if Assigned(aProc) then
        aProc
    except
      on e: Exception do
      begin
        Raise Exception.Create(ClassName + '.' + 'Last' + e.Message);
      end;
    end;
end;

procedure TJanuaModelRecordSetTemplate.LoadRecord;
begin

end;

procedure TJanuaModelRecordSetTemplate.Next(const aProc: TProc; const aNotThreaded: Boolean = False);
begin
  try
    FInternalRecordSet.Next;
    if Assigned(aProc) then
      aProc
  except
    on e: Exception do
    begin
      Raise Exception.Create(ClassName + '.' + 'Next' + e.Message);
    end;
  end;
end;

procedure TJanuaModelRecordSetTemplate.OpenAll(const aThreaded: Boolean);
begin

end;

procedure TJanuaModelRecordSetTemplate.PostRecord;
begin
  try
    FInternalRecordSet.Post;
  except
    on e: Exception do
    begin
      Raise Exception.Create(ClassName + '.' + 'PostRecord' + e.Message);
    end;
  end;
end;

procedure TJanuaModelRecordSetTemplate.Prior(const aProc: TProc; const aNotThreaded: Boolean = False);
begin
  try
    FInternalRecordSet.Prev;
    if Assigned(aProc) then
      aProc
  except
    on e: Exception do
    begin
      Raise Exception.Create(ClassName + '.' + 'Prior' + e.Message);
    end;
  end;
end;

procedure TJanuaModelRecordSetTemplate.Refresh(aProc: TProc);
begin
  Async.Run<TProc>(
    function: TProc
    begin
      // This is the "background" anonymous method. Runs in the
      // background thread, and its result is passed
      // to the "success" callback.
      // In this case the result is a String.
      try
        Result := aProc;
        if Assigned(Self) then
        begin
          MonitorEnter(Self, 1000);
          try
            if Assigned(FInternalRecordSet) then
              FInternalRecordSet.LoadFromDataset;
          finally
            MonitorExit(Self);
          end;
        end
      except
        On e: Exception do
          Raise Exception.Create(ClassName + '.' + 'Refresh' + e.Message)
      end
    end,
    procedure(const lProc: TProc)
    begin
      // This is the "success" callback. Runs in the UI thread and
      // gets the result of the "background" anonymous method.
      // TMonitor.Exit(self);
      if Assigned(lProc) then
        lProc;
    end,
    procedure(const Ex: Exception)
    begin
      // This is the "error" callback.
      // Runs in the UI thread and is called only if the
      // "background" anonymous method raises an exception.
      Raise Exception.Create(ClassName + '.' + 'RefreshDataset' + Ex.Message);
    end);

end;

procedure TJanuaModelRecordSetTemplate.RefreshDataset;
begin
  FSerialization.DataSource.Enabled := False;
  Refresh(
    procedure
    begin
      FSerialization.ClearDataSet;
      FSerialization.FetchRecordSet;
      FSerialization.DataSource.Enabled := True;
    end);
end;

procedure TJanuaModelRecordSetTemplate.RefreshDetails;
begin
  // nothing to do here
end;

procedure TJanuaModelRecordSetTemplate.RefreshRecord;
begin
  if RecordSet.CurrentRecord.Modified then
    RecordSet.Post;
end;

function TJanuaModelRecordSetTemplate.Search: Integer;
begin
  Result := -1;
  { TODO : Implement TJanuaModelRecordSetTemplate.Search }
end;

procedure TJanuaModelRecordSetTemplate.SetInternalDataset(aDataset: IJanuaDBDataset);
begin
  inherited;

end;

procedure TJanuaModelRecordSetTemplate.SetRecordSet(const Value: IJanuaRecordSet);
begin
  try
    FInternalRecordSet := Value;
    if Assigned(FInternalRecordSet) then
    begin
      GenerateSerialization;
      SetInternalRecord(FInternalRecordSet.CurrentRecord);
    end;
  except
    on e: Exception do
    begin
      Raise Exception.Create(ClassName + '.' + 'SetRecordSet' + e.Message);
    end;
  end;
end;

procedure TJanuaModelRecordSetTemplate.UndoChanges;
begin

end;

{ TJanuaModelTemplate }

procedure TJanuaModelTemplate.AddDetailDataset(const aDataset: IJanuaDBDataset);
var
  lDataset: IJanuaDBDataset;
begin
  if Assigned(aDataset) then
    try
      for lDataset in FDetailDatasets do
        if lDataset = aDataset then
          Exit;
      FDetailDatasets.Add(aDataset);
    except
      on e: Exception do
      begin
        Raise Exception.Create(ClassName + '.' + 'AddDetailDataset' + e.Message);
      end;
    end;
end;

procedure TJanuaModelTemplate.AfterConstruction;
begin
  inherited;
  // adds a 'deleted' filter params to Memory Filters

end;

procedure TJanuaModelTemplate.BeforeDestruction;
begin
  if Assigned(MainSearchParams) then
  begin
    MainSearchParams.ClearParams;
  end;
  if Assigned(FDetailDatasets) then
  begin
    FDetailDatasets.Clear;
  end;
  inherited;
end;

constructor TJanuaModelTemplate.Create;
begin
  inherited;
  try
    SetGroupID(0);
    SetGroupGUID(GUID_NULL);
    FDetailDatasets := Spring.Collections.TCollections.CreateList<IJanuaDBDataset>;
    // IList<IJanuaDBDataset>;
    ClearLocalLog('Create');
  except
    on e: Exception do
      Raise Exception.Create(ClassName + '.Create ' + e.Message);
  end;
end;

destructor TJanuaModelTemplate.Destroy;
begin
  // ---- Recordset Editing Procedures ---------------------------------------------------------------------
  FDetailDatasets := nil;
  FjdsDataset := nil;
  inherited;
end;

function TJanuaModelTemplate.GetDetailDatasets: IList<IJanuaDBDataset>;
begin
  Result := Self.FDetailDatasets
end;

function TJanuaModelTemplate.SearchByGUID(const aGuid: TGUID): Boolean;
begin
  Result := False;
  if Assigned(jdsRecordDataset) then
  begin
    // All Params should be set to 'default'
    FjdsDataset.Params.ClearParams;
    // Result is OK if params is found and record corresponding to param is found too.
    Result := jdsRecordDataset.SearchRecord(aGuid);
    if Result then
      CurrentRecord.LoadFromDataset;
  end
  else
    inherited;
end;

procedure TJanuaModelTemplate.SetDetailDatasets(const Value: IList<IJanuaDBDataset>);
begin
  FDetailDatasets := Value;
end;

procedure TJanuaModelTemplate.SetjdsRecordDataset(aDataset: IJanuaDBDataset);
begin
  FjdsRecordDataset := aDataset
end;

procedure TJanuaModelTemplate.SetRecordDataset(aDataset: IJanuaDBDataset);
begin
  FjdsRecordDataset := aDataset
end;

function TJanuaModelTemplate.GetjdsRecordDataset: IJanuaDBDataset;
begin
  if Assigned(FjdsRecordDataset) then
    Result := FjdsRecordDataset
  else
    Result := FjdsDataset
end;

function TJanuaModelTemplate.GetDetailsActive: Boolean;
begin
  Result := (FDetailDatasets.Count > 0) and (FDetailDatasets[0].RecordCount > 0)
end;

{ TJanuaDataModuleTemplate }

procedure TJanuaDataModuleTemplate.AssignLazyLoading;
begin
  if Assigned(FMainDataModule) then
    FMainDataModule.LazyLoading := FLazyLoading;
end;

constructor TJanuaDataModuleTemplate.Create;
var
  lParam: IJanuaField;
begin
  try
    inherited;
    GetInternalCreate;
    try
      Assert(Assigned(FInternalCreate), 'lInternalCreate not set');
      FInternalCreate;
      // I release FInternalCreate to avoid internal reference cycles.
    finally
      FInternalCreate := nil;
    end;

    Assert(Assigned(FMainDataset), 'MainDataset not Assigned');
    FMainDataset.AppendFirst := True;
    if Assigned(FMainDataset.FilterParams) and Assigned(FMainDataset.FilterParams.ParamByName('search_index'))
    then
    begin
      lParam := FMainDataset.FilterParams.ParamByName('search_index');
      lParam.AsString := '';
      lParam.ParamOperator := TJanuaOperator.LikeStrippedUpper;
      lParam.Activate;
      FMainDataset.FilterParams.Activate;
      FMainDataset.Filtered := False;
    end;
  except
    on e: Exception do
      Raise Exception.Create(ClassName + '.' + 'Create' + e.Message);
  end;
end;

destructor TJanuaDataModuleTemplate.Destroy;
begin
  FMainDataset := nil;
  FInternalCreate := nil;
  inherited;
end;

procedure TJanuaDataModuleTemplate.GetInternalCreate;
begin
  FInternalCreate := nil;
end;

function TJanuaDataModuleTemplate.GetLazyLoading: Boolean;
begin
  Result := FLazyLoading;
end;

function TJanuaDataModuleTemplate.GetSelectedSchema: Integer;
begin
  Result := FSelectedSchema
end;

procedure TJanuaDataModuleTemplate.RefreshDetails;
begin
  if Assigned(FMainDataModule) then
    FMainDataModule.RefreshDetails;
end;

procedure TJanuaDataModuleTemplate.SetLazyLoading(const Value: Boolean);
begin
  FLazyLoading := Value;
end;

procedure TJanuaDataModuleTemplate.SetMainDataModule(const aDataModule: TDataModule);
begin
  Guard.CheckNotNull(Self, 'Classe non istanziata');

  if Assigned(aDataModule) and not Supports(aDataModule, IJanuaDataModule, FMainDataModule) then
    raise Exception.Create('SetMainDataModule: IJanuaDataModule not supported');
end;

procedure TJanuaDataModuleTemplate.SetMainDataset(const Value: IJanuaDBDataset);
begin
  FMainDataset := nil;
  FMainDataset := Value;
  if Assigned(FMainDataset) then
    // if FMainDataset is set then the procedure tries to Add a parameter and set it to 'Active'
    FMainDataset.FilterParams.AddParam('search_index', jptString, '', False);
end;

procedure TJanuaDataModuleTemplate.SetSelectedSchema(const Value: Integer);
begin
  FSelectedSchema := Value;
end;

{ TJanuaBaseModelTemplate }

procedure TJanuaBaseModelTemplate.AddNewRecord;
begin
  try
    SetState(TJanuaModelState.jmsInsert);
    FInternalRecord.Append;
  except
    On e: Exception do
      WriteError('AddNewRecord', LogString, e);
  end;
end;

procedure TJanuaBaseModelTemplate.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaBaseModelTemplate.BeforeDestruction;
begin
  inherited;

end;

constructor TJanuaBaseModelTemplate.Create;
begin
  inherited;
  // Filter option in in memory by default; This is OK for 'fat-client' and not for Server
  FFilterOption := TJanuaFilterOption.jfoMemory;
end;

destructor TJanuaBaseModelTemplate.Destroy;
begin
  FInternalRecord := nil;
  inherited;
end;

procedure TJanuaBaseModelTemplate.First(const aProc: TProc; const aNotThreaded: Boolean);
begin
  Guard.CheckNotNull(jdsDataset, ClassName + '.TJanuaModelDBTemplate.First: jdsMaster is nil');
  Guard.CheckNotNull(InternalRecord, ClassName + '.TJanuaModelDBTemplate.First: InternalRecord not set');
  if TJanuaApplication.UnitTesting or aNotThreaded then
  begin
    try
      jdsDataset.BeginScroll;
      jdsDataset.First;
      jdsDataset.EndScroll;
      if Assigned(aProc) then
        aProc;
    except
      On e: Exception do
        Raise Exception.Create(ClassName + '.' + 'First ' + e.Message)
    end
  end
  else
    Async.Run<TProc>(
      function: TProc
      begin
        try
          // This is the "background" anonymous method. Runs in the
          // background thread, and its result is passed
          // to the "success" callback.
          // In this case the result is a String.
          Result := aProc;
          if Assigned(Self) then
          begin
            MonitorEnter(Self, 1000);
            try
              if Assigned(jdsDataset) then
              begin
                jdsDataset.BeginScroll;
                jdsDataset.First;
                jdsDataset.EndScroll;
              end;
            finally
              TMonitor.Exit(Self);
            end
          end
        except
          On e: Exception do
            Raise Exception.Create(ClassName + '.' + 'First ' + e.Message)
        end
      end,
      procedure(const lProc: TProc)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        // TMonitor.Exit(self);
        try
          Guard.CheckNotNull(GetInternalRecord, 'Internalrecord not set');
          if Assigned(lProc) then
            lProc;
        except
          on e: Exception do
            Raise Exception.Create(ClassName + '.' + 'First Async ' + e.Message)
        end;
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        Raise Exception.Create(ClassName + '.' + 'First ' + Ex.Message)
      end);

end;

function TJanuaBaseModelTemplate.GetCurrentRecord: IJanuaRecord;
begin
  Result := FInternalRecord
end;

function TJanuaBaseModelTemplate.GetFilterOption: TJanuaFilterOption;
begin
  Result := Self.FFilterOption
end;

function TJanuaBaseModelTemplate.GetGroupID: Integer;
begin
  Result := FGroupID
end;

function TJanuaBaseModelTemplate.GetInternalRecord: IJanuaRecord;
begin
  try
    Result := FInternalRecord;
    if not Assigned(Result) then
      raise Exception.Create('FInternalRecord is nil set it callling SetInternalRecord');
  except
    on e: Exception do
      Raise Exception.Create(ClassName + '.' + 'GetInternalRecord ' + e.Message)
  end;
end;

function TJanuaBaseModelTemplate.GetjdsDataset: IJanuaDBDataset;
begin
  Result := FjdsDataset;
end;

function TJanuaBaseModelTemplate.GetMainSearchParams: IJanuaParams;
begin
  if Assigned(FjdsDataset) then
    Result := FjdsDataset.Params
  else
    Result := nil;
end;

function TJanuaBaseModelTemplate.GetParams: TJanuaVariantArray;
begin
  Result := FParams
end;

function TJanuaBaseModelTemplate.GetRecordCount: Integer;
begin
  Result := FjdsDataset.RecordCount;
end;

function TJanuaBaseModelTemplate.GetState: TJanuaModelState;
begin
  Result := FState
end;

procedure TJanuaBaseModelTemplate.Last(const aProc: TProc; const aNotThreaded: Boolean);
begin
  Guard.CheckNotNull(jdsDataset, ClassName + '.TJanuaModelDBTemplate.jdsMaster is nil');
  if aNotThreaded or TJanuaApplication.UnitTesting then
  begin
    try
      jdsDataset.BeginScroll;
      jdsDataset.Last;
      jdsDataset.EndScroll;
      if Assigned(aProc) then
        aProc;
    except
      On e: Exception do
        Raise Exception.Create(ClassName + '.' + 'First ' + e.Message)
    end
  end
  else
    Async.Run<TProc>(
      function: TProc
      begin
        // This is the "background" anonymous method. Runs in the
        // background thread, and its result is passed
        // to the "success" callback.
        // In this case the result is a String.
        try
          Result := aProc;
          MonitorEnter(Self, 1000);
          try
            if Assigned(jdsDataset) then
            begin
              jdsDataset.BeginScroll;
              jdsDataset.Last;
              jdsDataset.EndScroll;
            end;
          finally
            TMonitor.Exit(Self);
          end;
        except
          on e: Exception do
            Raise Exception.Create(ClassName + '.' + 'Last ' + e.Message)
        end;
      end,
      procedure(const lProc: TProc)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        // TMonitor.Exit(self);
        if Assigned(lProc) then
          lProc;
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        WriteLocalLog('First', 'Dataset Error. ' + Ex.Message);
      end);
end;

procedure TJanuaBaseModelTemplate.LoadRecord;
begin
  RefreshRecord;
end;

procedure TJanuaBaseModelTemplate.Next(const aProc: TProc; const aNotThreaded: Boolean);
begin
  Guard.CheckNotNull(jdsDataset, ClassName + '.TJanuaModelDBTemplate.jdsDataset is nil');
  if TJanuaApplication.UnitTesting or aNotThreaded or not IsMultiThread then
  begin
    try
      jdsDataset.BeginScroll;
      jdsDataset.Next;
      jdsDataset.EndScroll;
      if Assigned(aProc) then
        aProc;
    except
      On e: Exception do
        Raise Exception.Create(ClassName + '.' + 'begin' + e.Message)
    end
  end
  else
    Async.Run<TProc>(
      function: TProc
      begin
        // This is the "background" anonymous method. Runs in the
        // background thread, and its result is passed
        // to the "success" callback.
        // In this case the result is a String.
        try
          Result := aProc;
          MonitorEnter(Self, 1000);
          try
            jdsDataset.BeginScroll;
            jdsDataset.Next;
            jdsDataset.EndScroll;
          finally
            TMonitor.Exit(Self);
          end;
        except
          on e: Exception do
            Raise Exception.Create(ClassName + '.' + 'Next' + e.Message);
        end;
      end,
      procedure(const lProc: TProc)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        // TMonitor.Exit(self);
        if Assigned(lProc) then
          lProc;
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        WriteLocalLog('First', 'Dataset Error. ' + Ex.Message);
      end);
end;

procedure TJanuaBaseModelTemplate.Prior(const aProc: TProc; const aNotThreaded: Boolean);
begin
  Guard.CheckNotNull(jdsDataset, ClassName + '.TJanuaModelDBTemplate.jdsDataset is nil');
  if TJanuaApplication.UnitTesting or aNotThreaded then
  begin
    jdsDataset.BeginScroll;
    jdsDataset.Prior;
    jdsDataset.EndScroll;
    if Assigned(aProc) then
      aProc;
  end
  else
    Async.Run<TProc>(
      function: TProc
      begin
        // This is the "background" anonymous method. Runs in the
        // background thread, and its result is passed
        // to the "success" callback.
        // In this case the result is a String.
        try
          Result := aProc;
          TMonitor.Enter(Self);
          try
            if Assigned(jdsDataset) then
            begin
              jdsDataset.BeginScroll;
              jdsDataset.Prior;
              jdsDataset.EndScroll;
            end;
          finally
            TMonitor.Exit(Self);
          end;
        except
          on e: Exception do
            Raise Exception.Create(ClassName + '.' + 'Prior' + e.Message);
        end;
      end,
      procedure(const lProc: TProc)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        // TMonitor.Exit(self);
        if Assigned(lProc) then
          lProc;
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        WriteLocalLog('First', 'Dataset Error. ' + Ex.Message);
      end);
end;

function TJanuaBaseModelTemplate.SearchByGUID(const aGuid: TGUID): Boolean;
begin
  Result := False;
  if Assigned(FjdsDataset) then
  begin
    // All Params should be set to 'default'
    FjdsDataset.Params.ClearParams;
    // Result is OK if params is found and record corresponding to param is found too.
    Result := FjdsDataset.SearchRecord(aGuid);
    if Result then
      FInternalRecord.LoadFromDataset;
  end;
end;

function TJanuaBaseModelTemplate.SearchByParams(aParams: IJanuaParams): Integer;
begin
  FjdsDataset.Close;
  FjdsDataset.Params.Assign(aParams);
  FjdsDataset.Open;
  Result := FjdsDataset.RecordCount;
end;

function TJanuaBaseModelTemplate.SearchText(const aText: string; const aLimit, aOffset: Word): Integer;
var
  aParam: IJanuaField;
begin
  Result := 0;
  if FjdsDataset.Params.FindParam('text', aParam) then
  begin
    FjdsDataset.Close;
    aParam.AsString := '%' + aText + '%';
    FjdsDataset.Open;
    Result := FjdsDataset.RecordCount;
  end;
end;

procedure TJanuaBaseModelTemplate.SetFilterOption(const Value: TJanuaFilterOption);
begin
  FFilterOption := Value;
end;

procedure TJanuaBaseModelTemplate.SetGroupID(const Value: Integer);
var
  aParam: IJanuaField;
begin
  if FGroupID <> Value then
  begin
    if Assigned(FjdsDataset) and FjdsDataset.FindParam('p_group_id', aParam) then
      aParam.AsVariant := Value;
    FGroupID := Value;
    BindManager.Notify('GroupID');
  end;
end;

procedure TJanuaBaseModelTemplate.SetInternalDataset(aDataset: IJanuaDBDataset);
begin
  FjdsDataset := aDataset;
end;

procedure TJanuaBaseModelTemplate.SetInternalRecord(const aRecord: IJanuaRecord);
begin
  FInternalRecord := aRecord;
end;

procedure TJanuaBaseModelTemplate.SetParams(const aParams: TJanuaVariantArray);
var
  aField: IJanuaField;
begin
  FParams := aParams;
  if Length(FParams) > 0 then
    SetGroupID(FParams[0]);
end;

procedure TJanuaBaseModelTemplate.SetState(const Value: TJanuaModelState);
begin
  FState := Value;
  // Set State should control connected Record Dataset and Datasource or bindource controls
end;

{ TJanuaServerDBModelTemplate }

procedure TJanuaServerDBModelTemplate.AppendRecord;
begin
{$IFDEF DEBUG}
  Guard.CheckNotNull(jdsDataset, 'jdsDataset');
{$ENDIF}
  PostRecord
end;

procedure TJanuaServerDBModelTemplate.BeginScroll;
begin
  jdsMaster.BeginScroll;
end;

procedure TJanuaServerDBModelTemplate.DeleteRecord;
begin
  jdsMaster.DeleteCurrentRecord;
end;

procedure TJanuaServerDBModelTemplate.EndScroll;
begin
  Sleep(20);
  jdsMaster.EndScroll;
  // after a Scroll the main Record is updated.
  if not FLazyLoading then
    LoadRecord;
end;

function TJanuaServerDBModelTemplate.GetInternalDataModule: IJanuaDataModuleContainer;
begin
  Result := FDataModule
end;

function TJanuaServerDBModelTemplate.GetjdsDetail: IJanuaDBDataset;
begin
  Result := FjdsDetail;
end;

function TJanuaServerDBModelTemplate.GetjdsMaster: IJanuaDBDataset;
begin
  Result := FjdsDataset;
end;

function TJanuaServerDBModelTemplate.GetLazyLoading: Boolean;
begin
  Result := FLazyLoading;
end;

procedure TJanuaServerDBModelTemplate.LoadRecord;
begin
  inherited;
end;

procedure TJanuaServerDBModelTemplate.PostRecord;
begin
  try
{$IFDEF DEBUG}
    Guard.CheckNotNull(jdsMaster, 'jdsMaster');
{$ENDIF}
    // InternalRecord.SaveToDataset dows GUID check and Insert/Edit Dataset
    InternalRecord.SaveToDataset;
    // after posting record to Dataset a Refresh is required to sync with local/remote DB Changes applied to the record
    InternalRecord.RefreshFromDataset;
  except
    on e: Exception do
      Raise Exception.Create(ClassName + '.' + 'PostRecord' + e.Message);
  end;
end;

procedure TJanuaServerDBModelTemplate.RefreshRecord;
{$IFDEF DEBUG}
var
  lRecord: IJanuaRecord;
{$ENDIF}
begin
  CurrentRecord.LoadFromDataset(True);
end;

function TJanuaServerDBModelTemplate.RestDelRecord(const aRecordGUID: string): Boolean;
begin
  if jdsDataset.SearchRecord(TGUID.Create(aRecordGUID)) then
    jdsDataset.DeleteCurrentRecord;
end;

function TJanuaServerDBModelTemplate.RestGetDataset(const aFormat, aParams: string): string;
begin
  jdsDataset.Close;
  jdsDataset.Params.AsBase64Url := aParams;
  jdsDataset.Open;
  Result := jdsDataset.Serialize(aFormat);
end;

function TJanuaServerDBModelTemplate.RestGetRecord(const aRecordGUID: string): string;
begin
  if SearchByGUID(TGUID.Create(URLDecode64(aRecordGUID))) then
    Result := InternalRecord.asJson;
end;

function TJanuaServerDBModelTemplate.RestPostRecord(var aRecord: string): Boolean;
begin
  InternalRecord.asJson := aRecord;
  PostRecord;
end;

function TJanuaServerDBModelTemplate.RestUpdateRecord(var aRecord: string): Boolean;
begin
  InternalRecord.asJson := aRecord;
  PostRecord;
end;

procedure TJanuaServerDBModelTemplate.SetInternalDataModule(aDataModule: IJanuaDataModuleContainer);
begin
  FDataModule := aDataModule;
  if Assigned(FDataModule) then
    FDataModule.LazyLoading := LazyLoading
end;

procedure TJanuaServerDBModelTemplate.SetjdsDetail(Value: IJanuaDBDataset);
begin
  if FjdsDetail <> Value then
    FjdsDetail := Value;
end;

procedure TJanuaServerDBModelTemplate.SetjdsMaster(Value: IJanuaDBDataset);
begin
  if FjdsDataset <> Value then
  begin
    FjdsDataset := Value;
    if Assigned(jdsDataset) then
    begin
      // Su evento Open/Scroll del Dataset Avvio DoAfterScroll.
      FjdsDataset.OnScroll := DoAfterScroll;
      if ExistFieldByName(FjdsDataset.Dataset, 'deleted') then
        FilterParams.AddParam('deleted', TJanuaFieldType.jptBoolean, False, False).Active := True;
      jdsDataset.ApplyFilter;
    end;
  end;
end;

procedure TJanuaServerDBModelTemplate.SetLazyLoading(const Value: Boolean);
begin
  FLazyLoading := Value;
  if Assigned(FDataModule) then
    FDataModule.LazyLoading := LazyLoading;
end;

procedure TJanuaServerDBModelTemplate.UndoChanges;
begin
  InternalRecord.LoadFromDataset(jdsMaster);
end;

{ TJanuaMVCSModelTemplate }

procedure TJanuaMVCSModelTemplate.ActivateDetails;
begin
  Guard.CheckNotNull(FDetailModels, ClassName + '.ActivateDetails FDetailModels');
  FDetailModels.Clear;
end;

procedure TJanuaMVCSModelTemplate.AddDetailModel(const aModel: IJanuaRecordSetModel);
begin

end;

procedure TJanuaMVCSModelTemplate.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaMVCSModelTemplate.BeforeDestruction;
begin
  if Assigned(FDetailModels) then
  begin
    FDetailModels.Clear;
  end;

  inherited;

end;

constructor TJanuaMVCSModelTemplate.Create;
begin
  inherited;
  FMasterGUID := GUID_NULL;
  FMainSearchText := '';
  { WriteLog('Create', 'TJanuaApplicationFactory.TryGetInterface(IJanuaParams, FSearchParams);');
    TJanuaApplicationFactory.TryGetInterface(IJanuaParams, FSearchParams); }
  WriteLog('Create', 'TCollections.CreateList<IJanuaRecordSetModel>');
  FDetailModels := TCollections.CreateList<IJanuaRecordSetModel>;
end;

destructor TJanuaMVCSModelTemplate.Destroy;
begin
  FDetailModels := nil;
  inherited;
end;

procedure TJanuaMVCSModelTemplate.DoAfterOpen(aDataset: IJanuaDBDataset);
begin
  try
    UpdateDataset;
    if Assigned(FAfterOpen) then
      FAfterOpen(jdsDataset);
  except
    on e: Exception do
      Raise Exception.Create(ClassName + '.' + 'DoAfterOpen' + e.Message);
  end;
end;

procedure TJanuaMVCSModelTemplate.DoAfterScroll(aDataset: IJanuaDBCustomDataset);
begin
  if (FMasterGUID = GUID_NULL) or (jdsDataset.GUID <> FMasterGUID) then
    try
      UpdateDataset;
      if Assigned(FAfterSCroll) then
        FAfterSCroll(jdsDataset);
      FMasterGUID := jdsDataset.GUID;
    except
      on e: Exception do
        Raise Exception.Create(ClassName + '.' + 'DoAfterScroll' + e.Message);
    end;
end;

procedure TJanuaMVCSModelTemplate.GenerateSubModels;
var
  LModel: IJanuaRecordSetModel;
begin
  try
    // Calls a Virtual Abstract Method that will be implementd by descendant according to
    // the structure of its Record and SubRecorsets.
    try
      ActivateDetails;
    except
      on e: EAbstractError do
        Raise Exception.Create(ClassName + '.' +
          'GenerateSubModels (ActivateDetails abstract error method not set)' + e.Message);
    end;
    if FDetailModels.Count > 0 then
      for LModel in FDetailModels do
        LModel.Activate;
  except
    on e: Exception do
      Raise Exception.Create(ClassName + '.' + 'GenerateSubModels' + e.Message);
  end;
end;

function TJanuaMVCSModelTemplate.GetAfterOpen: TJanuaDBDataSetNotifyEvent;
begin
  Result := FAfterOpen;
end;

function TJanuaMVCSModelTemplate.GetAfterScroll: TJanuaDBDataSetNotifyEvent;
begin
  // TODO -cMM: TJanuaModelTemplate.GetAfterScroll default body inserted
  Result := FAfterSCroll;
end;

function TJanuaMVCSModelTemplate.GetDataSource: TDataSource;
begin
  if Assigned(FjdsDataset) then
    Result := FjdsDataset.DataSource
  else
    Result := nil;
end;

function TJanuaMVCSModelTemplate.GetDateFrom: TDate;
begin
  Result := FDateFrom
end;

function TJanuaMVCSModelTemplate.GetDateTo: TDate;
begin
  Result := FDateTo
end;

function TJanuaMVCSModelTemplate.GetDetailModels: IList<IJanuaRecordSetModel>;
begin
  Result := FDetailModels
end;

function TJanuaMVCSModelTemplate.GetGroupGUID: TGUID;
begin
  Result := Self.FGroupGUID
end;

function TJanuaMVCSModelTemplate.GetIsThreaded: Boolean;
begin
  Result := FIsThreaded
end;

function TJanuaMVCSModelTemplate.GetMainSearchText: string;
begin
  Result := FMainSearchText
end;

function TJanuaMVCSModelTemplate.GetMainSelectedParam: IJanuaField;
begin
  Result := MainSearchParams.Params[FSelectedItem]
end;

function TJanuaMVCSModelTemplate.GetOrderByFields: IJanuaOrderByFields;
begin
  Result := nil;
  Assert(Assigned(FjdsDataset), ClassName + ' FjdsDataset Not Set');
  Assert(Assigned(FjdsDataset.OrderByFields), ClassName + ' FjdsDataset.OrderByFields Not Set');
  Result := FjdsDataset.OrderByFields
end;

function TJanuaMVCSModelTemplate.GetFilterParams: IJanuaParams;
begin
  Result := nil;
  Assert(Assigned(FjdsDataset), ClassName + ' FjdsDataset Not Set');
  Assert(Assigned(FjdsDataset.FilterParams), ClassName + ' FjdsDataset.FilterParams Not Set');
  Result := FjdsDataset.FilterParams;
end;

function TJanuaMVCSModelTemplate.GetSelectedItem: Integer;
begin
  Result := FSelectedItem;
end;

function TJanuaMVCSModelTemplate.LocateByGUID(const aGuid: TGUID): Boolean;
begin
  Result := Assigned(jdsDataset) and jdsDataset.LocateGUID(aGuid);
end;

function TJanuaMVCSModelTemplate.ModelCount: Integer;
begin
  Result := FDetailModels.Count;
end;

procedure TJanuaMVCSModelTemplate.UpdateDataset;
begin
  // At the moment does nothing
end;

procedure TJanuaMVCSModelTemplate.RemoveSubModels;
begin
  // Models are 'Reference Counted' so the Application simply removes them from the memory
  FDetailModels.Clear;
end;

procedure TJanuaMVCSModelTemplate.SetAfterOpen(Value: TJanuaDBDataSetNotifyEvent);
begin
  FAfterOpen := Value
end;

procedure TJanuaMVCSModelTemplate.SetAfterScroll(Value: TJanuaDBDataSetNotifyEvent);
begin
  FAfterSCroll := Value
end;

procedure TJanuaMVCSModelTemplate.SetDateFrom(const Value: TDate);
begin
  FDateFrom := Value
end;

procedure TJanuaMVCSModelTemplate.SetDateTo(const Value: TDate);
begin
  FDateTo := Value
end;

procedure TJanuaMVCSModelTemplate.SetGroupGUID(const Value: TGUID);
begin
  FGroupGUID := Value
end;

procedure TJanuaMVCSModelTemplate.SetIsThreaded(const Value: Boolean);
begin
  try
    if (FIsThreaded <> Value) then
    begin
      FIsThreaded := Value;
      BindManager.Notify('IsThreaded');
    end;
  except
    on e: Exception do
      Raise Exception.Create(ClassName + '.' + 'SetIsThreaded' + e.Message);
  end;
end;

procedure TJanuaMVCSModelTemplate.SetMainSearchText(const Value: string);
var
  iLength: Integer;
  bLength: Boolean;
  sStripSearch, sStripText: string;
begin
  if Value <> FMainSearchText then
    try
      BindManager.Notify('MainSearchText');
      sStripSearch := StripString(Value);
      sStripText := StripString(FMainSearchText);
      if sStripSearch <> FMainSearchText then
      begin
        iLength := Length(sStripSearch);
        bLength := ((iLength - Length(FMainSearchText)) < 0) or (iLength > 2);
        FMainSearchText := sStripSearch;
        if (bLength or ((FMainSearchText = '') or (FMainSearchText = '%'))) then
          IncrementalSearch(sStripSearch);
      end;
    except
      on e: Exception do
        Raise Exception.Create(ClassName + '.' + 'SetMainSearchText' + e.Message);
    end;
end;

procedure TJanuaMVCSModelTemplate.SetSelectedItem(const Value: Integer);
begin
  try
    if FSelectedItem <> Value then
    begin
      FSelectedItem := Value;
      BindManager.Notify('SelectedItem');
    end;
  except
    on e: Exception do
      Raise Exception.Create(ClassName + '.' + 'SetSelectedItem' + e.Message);
  end;
end;

{ TJanuaRESTModelTemplate }

procedure TJanuaRESTModelTemplate.AfterConstruction;
begin
  inherited;
  SetRestFormat(TRestFormat.rfBinary);
end;

procedure TJanuaRESTModelTemplate.AppendRecord;
begin
  inherited AddNewRecord;
end;

procedure TJanuaRESTModelTemplate.BeforeDestruction;
begin
  inherited;

end;

procedure TJanuaRESTModelTemplate.BeginScroll;
begin
  jdsDataset.BeginScroll;
end;

procedure TJanuaRESTModelTemplate.CAllBackAfterOpen;
begin

end;

constructor TJanuaRESTModelTemplate.Create;
begin
  inherited;
  // TJanuaApplicationFactory.TryGetInterface(const IID: TGUID; out Intf; const aRaise: Boolean = True)
  TJanuaApplicationFactory.TryGetInterface(IJanuaRESTClient, FRESTClient, True);
  // FRESTRecordClient: IRESTRecordClient;
  TJanuaApplicationFactory.TryGetInterface(IRESTRecordClient, FRESTRecordClient, True);
  FRESTRecordClient.ApiUrl := 'dataset';
  FRESTRecordClient.SetMimeType(TJanuaMimeType.jmtApplicationJson);
  // FRESTDBClient: IRESTDBClient;
  TJanuaApplicationFactory.TryGetInterface(IRESTDBClient, FRESTDBClient, True);
  // The default data is on
  FRESTDBClient.SetMimeType(TJanuaMimeType.jmtApplicationXml);
  FRESTDBClient.DataFormat := TRestFormat.rfXml;
  SetjdsRESTRemotDataset(GetDBDatasetFactory.CreateDataset);
  FjdsRESTRemotDataset.RemoteClient := FRESTDBClient as IRemoteDatasetClient;
end;

procedure TJanuaRESTModelTemplate.DeleteRecord;
begin
  if not FRESTRecordClient.Delete then
    raise Exception.Create('DeleteRecord: ' + FRESTRecordClient.LogString);
end;

destructor TJanuaRESTModelTemplate.Destroy;
begin

  inherited;
end;

procedure TJanuaRESTModelTemplate.EndScroll;
begin
  Sleep(20);
  jdsDataset.EndScroll;
end;

function TJanuaRESTModelTemplate.GetBaseUrl: string;
begin
  Result := GetRESTClient.GetBaseUrl;
  { ConcatUrl(FServerUrl + IfThen(FPort in [0, 80], '', ':' + FPort.ToString), FRestAPIEndpoint); }
end;

function TJanuaRESTModelTemplate.GetClientFullUrl: string;
begin
  Result := FRESTRecordClient.GetFullUrl
end;

function TJanuaRESTModelTemplate.GetDBClientFullUrl: string;
begin
  Result := FRESTDBClient.GetFullUrl
end;

class function TJanuaRESTModelTemplate.GetDBDatasetFactory: IJanuaDBDatasetFactory;
begin
  if not Assigned(FDBDatasetFactory) then
    TJanuaApplicationFactory.TryGetInterface(IJanuaDBDatasetFactory, FDBDatasetFactory, True);
  Result := FDBDatasetFactory;
end;

function TJanuaRESTModelTemplate.GetLastErrorMessage: string;
begin
  Result := FLastErrorMessage
end;

function TJanuaRESTModelTemplate.GetPort: Word;
begin
  Result := FPort
end;

function TJanuaRESTModelTemplate.GetRecordClientFullUrl(const aGuid: TGUID): string;
begin
  FRESTRecordClient.GUID := aGuid;
  Result := FRESTRecordClient.GetFullUrl;
end;

function TJanuaRESTModelTemplate.GetRestAPIEndpoint: string;
begin
  Result := FRestAPIEndpoint
end;

function TJanuaRESTModelTemplate.GetRESTClient: IJanuaRESTClient;
begin
  Result := FRESTClient
end;

function TJanuaRESTModelTemplate.GetRESTDBClient: IRESTDBClient;
begin
  Result := FRESTDBClient
end;

function TJanuaRESTModelTemplate.GetRestFormat: TRestFormat;
begin
  // Returns Rest Format
  Result := FRestFormat;
end;

function TJanuaRESTModelTemplate.GetRESTRecordClient: IRESTRecordClient;
begin
  Result := FRESTRecordClient
end;

function TJanuaRESTModelTemplate.GetRESTRemotDataset: IJanuaVirtualDBDataset;
begin
  Result := FjdsRESTRemotDataset
end;

function TJanuaRESTModelTemplate.GetServerUrl: string;
begin
  Result := FServerUrl
end;

procedure TJanuaRESTModelTemplate.LoadRecord;
begin
  // il caricamento Record avviene in base al Record 'puntato' dal Dataset.
  if jdsDataset.RecordCount > 0 then
    FRESTRecordClient.Retrieve(jdsDataset.GUID);
end;

procedure TJanuaRESTModelTemplate.OpenAll(const aThreaded: Boolean);
begin
  FRESTDBClient.LoadData;
end;

procedure TJanuaRESTModelTemplate.PostRecord;
begin
  FRESTRecordClient.CreateRecord;
end;

procedure TJanuaRESTModelTemplate.Refresh(aProc: TProc);
begin

end;

procedure TJanuaRESTModelTemplate.RefreshDataset;
begin

end;

procedure TJanuaRESTModelTemplate.RefreshRecord;
begin
  if not GetInternalRecord.GUID.IsEmpty then
    FRESTRecordClient.Retrieve(GetInternalRecord.GUID)
  else
    GetInternalRecord.Post;
end;

function TJanuaRESTModelTemplate.Search: Integer;
begin

end;

function TJanuaRESTModelTemplate.SearchByGUID(const aGuid: TGUID): Boolean;
begin
  Result := FRESTRecordClient.Retrieve(aGuid);
end;

procedure TJanuaRESTModelTemplate.SetInternalRecord(const aRecord: IJanuaRecord);
begin
  inherited;
  FRESTRecordClient.JanuaRecord := GetInternalRecord
end;

procedure TJanuaRESTModelTemplate.SetjdsRESTRemotDataset(const aDataset: IJanuaVirtualDBDataset);
begin
  FjdsRESTRemotDataset := aDataset;
  FjdsDataset := aDataset;
end;

procedure TJanuaRESTModelTemplate.SetLastErrorMessage(const Value: string);
begin
  FLastErrorMessage := Value
end;

procedure TJanuaRESTModelTemplate.SetPort(const Value: Word);
begin
  FPort := Value;
  FRESTDBClient.ServerPort := FPort;
  FRESTRecordClient.ServerPort := FPort;
  FRESTClient.ServerPort := FPort;
end;

procedure TJanuaRESTModelTemplate.SetRestAPIEndpoint(const Value: string);
begin
  FRestAPIEndpoint := Value;
  if FRestAPIEndpoint <> '' then
  begin
    FRESTRecordClient.ApiUrl := ConcatUrl(FRestAPIEndpoint, 'record');
    FRESTDBClient.ApiUrl := ConcatUrl(FRestAPIEndpoint, 'dataset');
    FRESTClient.ApiUrl := FRestAPIEndpoint;
  end
  else
  begin
    FRESTRecordClient.ApiUrl := 'record';
    FRESTDBClient.ApiUrl := 'dataset';
    FRESTClient.ApiUrl := '';
  end;
end;

procedure TJanuaRESTModelTemplate.SetRestFormat(const Value: TRestFormat);
begin
  FRestFormat := Value;
  if Assigned(FjdsDataset) then
    FjdsDataset.RemoteFormat := Value;
  if Assigned(FjdsRESTRemotDataset) then
    FjdsRESTRemotDataset.RemoteFormat := Value;
end;

procedure TJanuaRESTModelTemplate.SetServerUrl(const Value: string);
begin
  FServerUrl := Value;
  if FServerUrl <> '' then
  begin
    FRESTRecordClient.ServerUrl := FServerUrl;
    FRESTDBClient.ServerUrl := FServerUrl;
    FRESTClient.ServerUrl := FServerUrl;
  end;
end;

procedure TJanuaRESTModelTemplate.StartSearch;
begin
  // code to setup parameters as in Model.
  jdsDataset.ApplyFilter;
end;

function TJanuaRESTModelTemplate.TryGetDetailDataset(const aName: string;
out aDataset: IJanuaDBDataset): Boolean;
begin

end;

procedure TJanuaRESTModelTemplate.UndoChanges;
begin
  GetInternalRecord.UndoUpdates;
end;

{ TJanuaSingleRecordSrvModel }

procedure TJanuaSingleRecordSrvModel.AddNewRecord;
begin
  Self.CurrentRecord.Append;
end;

procedure TJanuaSingleRecordSrvModel.AddNewRecord(const aRecord: IJanuaRecord);
begin

end;

procedure TJanuaSingleRecordSrvModel.AddNewRecord(const aJson: string);
begin

end;

procedure TJanuaSingleRecordSrvModel.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaSingleRecordSrvModel.AppendRecord(const aRecord: IJanuaRecord);
begin
  CurrentRecord.Append;
  CurrentRecord.Assign(aRecord)
end;

procedure TJanuaSingleRecordSrvModel.AppendRecord(const aJson: string);
begin
  CurrentRecord.Append;
  CurrentRecord.asJson := aJson;
end;

procedure TJanuaSingleRecordSrvModel.AppendRecord;
begin
  CurrentRecord.Append;
end;

procedure TJanuaSingleRecordSrvModel.BeforeDestruction;
begin
  inherited;

end;

constructor TJanuaSingleRecordSrvModel.Create;
begin
  inherited;

end;

procedure TJanuaSingleRecordSrvModel.DeleteRecord;
begin
  // Code to be inserteed Here
end;

procedure TJanuaSingleRecordSrvModel.DeleteRecord(const aGUID: string);
begin
  if SearchByGUID(TGUID.Create(aGUID)) then
  begin

  end;
end;

destructor TJanuaSingleRecordSrvModel.Destroy;
begin
  FCurrentRecord := nil;
  inherited;
end;

function TJanuaSingleRecordSrvModel.GetCurrentRecord: IJanuaRecord;
begin

end;

function TJanuaSingleRecordSrvModel.GetjdsDetail: IJanuaDBDataset;
begin

end;

function TJanuaSingleRecordSrvModel.GetjdsRecordDataset: IJanuaDBDataset;
begin

end;

procedure TJanuaSingleRecordSrvModel.LoadRecord;
begin

end;

procedure TJanuaSingleRecordSrvModel.PostRecord;
begin

end;

procedure TJanuaSingleRecordSrvModel.RefreshRecord;
begin

end;

function TJanuaSingleRecordSrvModel.SearchByGUID(const aGuid: TGUID): Boolean;
begin

end;

procedure TJanuaSingleRecordSrvModel.SetCurrentRecord(const aRecord: IJanuaRecord);
begin

end;

procedure TJanuaSingleRecordSrvModel.UndoChanges;
begin

end;

end.
