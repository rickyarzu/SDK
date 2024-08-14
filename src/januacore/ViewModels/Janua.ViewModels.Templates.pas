unit Janua.ViewModels.Templates;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes, Data.DB, System.Variants,
  Spring.Collections, FireDAC.Comp.Client,
  // Januaproject Framework
  Janua.Forms.Types, Janua.Core.Types, Janua.Orm.Dataset.Intf,
  Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Controls.Intf, Janua.ViewModels.Intf,
  Janua.Controls.Forms.Intf, Janua.Core.Classes, Janua.Reporting.Intf;

type
  TJanuaViewModelSettingTemplate = class(TJanuaInterfacedBindableObject)
  end;

  TJanuaViewModelSettingsTemplate = class(TJanuaInterfacedBindableObject)
  end;

  /// <summary> This is a Base template  </summary>
  TJanuaViewModelBaseTemplate = class(TJanuaInterfacedBindableObject, IJanuaBaseViewModel)
  public
    procedure RefreshActions; virtual; abstract;
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  private
    // ---- Action Lists for Master, Detail, Search engine and Grids ------------------------------------
    FMainActionList: IJanuaActionList;
    FBaseModel: IJanuaBaseModel;
  strict protected
    FActionEdit: IJanuaAction;
    procedure SetBaseModel(aBaseModel: IJanuaBaseModel);
  protected
    function GetMainActionList: IJanuaActionList;
    procedure CreateModel; virtual;
  public
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

  TJanuaViewModelDataTemplate = class(TJanuaViewModelBaseTemplate, IJanuaDataViewModel)
  private
    // ---- Action Lists for Master, Detail, Search engine and Grids ------------------------------------
    FGridActionList: IJanuaActionList;
    // Record Editing -----------------------------------------------------------------------------------
    FFormDialog: IJanuaRecordEditDialog;
    FFormActionList: IJanuaActionList;
    // ----- Bindable Form Layout Variables -------------------------------------------------------------
    FFormTitle: string;
    FIsThreaded: boolean;
    FUseThreads: boolean;
    FParams: TJanuaVariantArray;
    FGroupID: Integer;
  private
    function GetParams: TJanuaVariantArray;
    procedure SetParams(const aParams: TJanuaVariantArray);
  strict protected
    // Model uses a weak reference because the owner will be the descendant
  [weak]
    FJanuaModel: IJanuaModel;
    FRecordEditDialog: TGUID;
    // Create Model Procedure is set as an anonymous Method by the descendants and Sets FJanuaModel
    { FCreateModel: TProc; }
    /// <summary> This methods (in the descendant) must set the correct model for the VM </summary>
    procedure CreateModel; override;
    /// <summary> Before Showing the edit Dialog sets up Callbacks and Binds SearchText  </summary>
    procedure SetupSearchCallBack; virtual;
    /// <summary> Before Showing the edit Dialog sets Callbacks to nil and Clears SearchText Bindings </summary>
    procedure ClearSearchModels; virtual;
    function GetFormDialog: IJanuaRecordEditDialog;
    function GetInternalRecord: IJanuaRecord;
    property InternalRecord: IJanuaRecord read GetInternalRecord;
    // function GetInternalRecord: IJanuaRecord;
    procedure SetFormDialog(const Value: IJanuaRecordEditDialog);
    procedure SetFormDialogFromInterface(const Value: IInterface);
    function GetIsThreaded: boolean;
    procedure SetIsThreaded(const Value: boolean);
    function GetRecordEditDialog: TGUID;
    procedure SetRecordEditDialog(const Value: TGUID);
    function GetFormActionList: IJanuaActionList;
    procedure SetFormActionList(const Value: IJanuaActionList);
    function GetGridActionList: IJanuaActionList;
    function GetFormTitle: string;
    procedure SetFormTitle(const Value: string);
    procedure SetModel(aModel: IJanuaModel);
  strict protected
    FGetHasDetail: TFunc<boolean>;
    function GetHasDetail: boolean;
    procedure InternalCheck; virtual;
    procedure ActivateDetails; virtual; abstract;
    procedure DeActivateDetails; virtual; Abstract;
  strict protected
    FActionPost: IJanuaAction;
    FActionPrint: IJanuaAction;
    FActionPreview: IJanuaAction;
    FActionExport: IJanuaAction;
    FActionUndo: IJanuaAction;
    FActionRefresh: IJanuaAction;
    function GetActionPreview: IJanuaAction;
  protected
    procedure MainRecordUndo(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordEdit(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordDelete(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordPrint(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordExport(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordPreview(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordPost(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordRefresh(aAction: IJanuaAction); virtual; abstract;
  protected // virtual methods
    FGenerateEditDialog: TFunc<IInterface>;
    function ExecuteEditDialog: boolean;
  protected
    function GetJdsMaster: IJanuaDBDataset;
    function GetGroupID: Integer;
    procedure SetGroupID(const Value: Integer); virtual;
  public
    procedure PostRecord; // Mainly for Testing purposes.
    function GetUseThreads: boolean;
    procedure SetUseThreads(const Value: boolean);
    /// <summary> Define if use or not threaded Search, may be useful for long queries </summary>
    property UseThreads: boolean read GetUseThreads write SetUseThreads;
    property IsThreaded: boolean read GetIsThreaded write SetIsThreaded;
    property FormDialog: IJanuaRecordEditDialog read GetFormDialog;
    /// <summary> Sets the Form's Title if the form Does have one </summary>
    property FormTitle: string read GetFormTitle write SetFormTitle;
    property ActionEdit: IJanuaAction read GetActionEdit;
    /// <summary> This is the GUID of the interface of the Edit Record Dialog (if it is set) </summary>
    property RecordEditDialog: TGUID read GetRecordEditDialog write SetRecordEditDialog;
    property FormActionList: IJanuaActionList read GetFormActionList write SetFormActionList;
    property jdsMaster: IJanuaDBDataset read GetJdsMaster;
    property GroupID: Integer read GetGroupID write SetGroupID;
  strict protected
    function InternalActivate: boolean; override;
    procedure ModelAfterOpen(aDataset: IJanuaDBDataset);
    procedure ModelAfterScroll(aDataset: IJanuaDBDataset);
  public
    procedure RefreshActions; override;
    procedure GenerateSubModels; virtual;
    procedure RemoveSubModels; virtual; abstract;
    constructor Create; override;
    constructor CreateWithGroupID(const aGroupID: Integer); overload;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function LocateByGUID(const aGuid: TGUID): boolean; virtual;
  end;

  TViewModelClass = class of TJanuaViewModelDataTemplate;

  TJanuaRecordViewModelTemplate = class(TJanuaViewModelDataTemplate, IJanuaDataViewModel)
  public
    constructor Create; override;
  end;

  // Forward Declaration
  TJanuaRecordSetViewModelTemplate = class;
  TRecordSetViewModelTemplateClass = class of TJanuaRecordSetViewModelTemplate;

  TJanuaViewModelTemplate = class(TJanuaViewModelDataTemplate, IJanuaViewModel)
  public
    procedure BeforeDestruction; override;
    procedure AfterConstruction; override;
    constructor Create; override;
    destructor Destroy; override;
  private
    // ---- Main Search Fields, Parameters and Action
    FStrippedText: string;
    FMainSearchLabel: string;
    FDateFrom: TDate;
    FDateTo: TDate;
    // ----- Bindable Form Layout Variables -------------------------------------------------------------
    FFilterDate: boolean;
    // ----- Reporting Exporting (and maybe Importing) Engine -------------------------------------------
    FReportingList: IJanuaReportingList;
    FExportList: IJanuaReportingList;
    FReportingPreviewList: IJanuaReportingList;
    FExportPreviewList: IJanuaReportingList;
    FDetails: IList<IJanuaViewModel>;
    FDetailActionList: IJanuaActionList;
    function GetSelectedItem: Integer;
    procedure SetSelectedItem(const Value: Integer);
  strict protected
    FOnNewRecord: TNotifyEvent;
    /// <summary> If after an edit/append action the user choose to post the record then EditResult is True </summary>
    FEditResult: boolean;
    /// <summary> GetSet State Procedure can be called by descendants but only inside the class </summary>
    function GetState: TJanuaModelState;
    /// <summary> Set State Procedure can be called by descendants but only inside the class </summary>
    procedure SetState(const Value: TJanuaModelState);
    function GetActionSearch: IJanuaAction;
    function GetHasSearchList: boolean;
    procedure SetReportingPreviewList(const Value: IJanuaReportingList);
    procedure BindActionPost;
    procedure AddDetail(aDetail: IJanuaViewModel);
  protected
    function GetdsMaster: TDataSource;
    function GetdsDetail: TDataSource;
    function GetMainSearchParams: IJanuaParams;
    property MainSearchParams: IJanuaParams read GetMainSearchParams;
    function GetReportingList: IJanuaReportingList;
    function GetExportList: IJanuaReportingList;
    function GetReportingPreviewList: IJanuaReportingList;
    procedure SetGetReportingPreviewList(const Value: IJanuaReportingList);
    procedure SetExportList(const Value: IJanuaReportingList);
    procedure SetReportingList(const Value: IJanuaReportingList);
    function GetFilterParams: IJanuaParams;
    function GetMainSearchText: string;
    procedure SetMainSearchText(const Value: string);
    function GetDateFrom: TDate;
    function GetDateTo: TDate;
    procedure SetDateFrom(const Value: TDate);
    procedure SetDateTo(const Value: TDate);
    function GetMainSearchLabel: string;
    procedure SetMainSearchLabel(const Value: string);
    function GetFilterDate: boolean;
    procedure SetFilterDate(const Value: boolean);
    function GetDetailsActive: boolean;
    function GetjdsDataset: IJanuaDBDataset;
    function GetjdsDetail: IJanuaDBDataset;
    function GetDetailCount: Integer;
    function GetDetails: IList<IJanuaViewModel>;
    function GetOrderByFields: IJanuaOrderByFields;
    function GetDetailActionList: IJanuaActionList;
  strict protected
    FActionSearch: IJanuaAction;
    FACtionFirst: IJanuaAction;
    FACtionLast: IJanuaAction;
    FACtionPrev: IJanuaAction;
    FACtionNext: IJanuaAction;
    FActionDelete: IJanuaAction;
    FActionAdd: IJanuaAction;
  protected
    procedure MainRecordFirst(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordPrev(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordNext(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordLast(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordAdd(aAction: IJanuaAction); virtual; abstract;
    procedure MainRecordSearch(aAction: IJanuaAction); virtual; abstract;
  protected
    function GetOnNewRecord: TNotifyEvent;
    procedure SetOnNewRecord(const Value: TNotifyEvent);
  public
    property ActionSearch: IJanuaAction read GetActionSearch;
    // FReportingList: IJanuaReportingList;
    property ReportingList: IJanuaReportingList read GetReportingList write SetReportingList;
    // FReportingPreviewList: IJanuaReportingList;
    property ReportingPreviewList: IJanuaReportingList read GetReportingPreviewList
      write SetReportingPreviewList;
    /// <summary> Sets the Form's Title if the form Does have one </summary>
    property MainSearchText: string read GetMainSearchText write SetMainSearchText;
    { property IndexFieldName: string read GetIndexFieldName write SetIndexFieldName; }
    /// <summary> List of index fields and order type (asc desc) for each one.</summmary>
    property OrderByFields: IJanuaOrderByFields read GetOrderByFields;
    /// <summary> Main Search Text Label's Caption (changes accordingly with Sel. Item) </summary>
    property MainSearchLabel: string read GetMainSearchLabel write SetMainSearchLabel;
    /// <summary> Checks if Detail dataset is not nil and is defined as Detail Dataset </summary>
    property HasDetail: boolean read GetHasDetail;
    /// <summary> Define if user wants to filter result by Date </summary>
    property FilterDate: boolean read GetFilterDate write SetFilterDate;
    /// <summary> Selected Parameter to which apply Text Value for Search </summary>
    property SelectedItem: Integer read GetSelectedItem write SetSelectedItem;
    property GridActionList: IJanuaActionList read GetGridActionList;
    property DateFrom: TDate read GetDateFrom write SetDateFrom;
    property DateTo: TDate read GetDateTo write SetDateTo;
    /// <summary> True if there is a list of alternative options for Text Search. </summary>
    property HasSearchList: boolean read GetHasSearchList;
    property FilterParams: IJanuaParams read GetFilterParams;
    property jdsDataset: IJanuaDBDataset read GetjdsDataset;
    property DetailsActive: boolean read GetDetailsActive;
    /// <summary> List of SubModels usually IJanuaRecordSetViewModel  </summary>
    property Details: IList<IJanuaViewModel> read GetDetails;
    property DetailCount: Integer read GetDetailCount;
    property DetailActionList: IJanuaActionList read GetDetailActionList;
    property OnNewRecord: TNotifyEvent read GetOnNewRecord write SetOnNewRecord;
    /// <summary> Tells us the state of the viewmodel usually according to the underling model </summary>
    property State: TJanuaModelState read GetState;

  public
    function NewRecord: boolean;
    procedure StartSearch; virtual;
    procedure Refresh; Virtual;
    procedure RefreshActions; Override;
    procedure RemoveSubModels; override;
    procedure OpenAll(const aThreaded: boolean = False); virtual;
  end;

  TJanuaRecordSetViewModelTemplate = class(TJanuaViewModelTemplate, IJanuaRecordSetViewModel,
    IJanuaDBViewModel, IJanuaViewModel)
  private
    FRecordSetModel: IJanuaRecordSetModel;
  strict protected
    procedure SetRecordSetModel(const aModel: IJanuaRecordSetModel);
    function SupportsModel(const Instance: IInterface): IJanuaRecordSetModel;
  protected
    procedure MainRecordUndo(aAction: IJanuaAction); override;
    procedure MainRecordFirst(aAction: IJanuaAction); override;
    procedure MainRecordPrev(aAction: IJanuaAction); override;
    procedure MainRecordNext(aAction: IJanuaAction); override;
    procedure MainRecordLast(aAction: IJanuaAction); override;
    procedure MainRecordAdd(aAction: IJanuaAction); override;
    procedure MainRecordEdit(aAction: IJanuaAction); override;
    procedure MainRecordDelete(aAction: IJanuaAction); override;
    procedure MainRecordPrint(aAction: IJanuaAction); override;
    procedure MainRecordExport(aAction: IJanuaAction); override;
    procedure MainRecordPreview(aAction: IJanuaAction); override;
    procedure MainRecordPost(aAction: IJanuaAction); override;
    procedure MainRecordSearch(aAction: IJanuaAction); override;
    procedure MainRecordRefresh(aAction: IJanuaAction); override;
  public
    function GetActionSearch: IJanuaAction;
    //
    procedure OpenAll(const aThreaded: boolean = False); override;
    procedure StartSearch;
    procedure Refresh;
  public
    constructor Create; override;
    constructor Create(aRecordSetModel: IJanuaRecordSetModel); overload; virtual;
    procedure AfterConstruction; override;
    destructor Destroy; override;
  protected
    function GetRecordSet: IJanuaRecordSet;
  public
    property RecordSet: IJanuaRecordSet read GetRecordSet;
  end;

type
  TJanuaViewModelDBTemplate = class(TJanuaViewModelTemplate, IJanuaViewModel, IJanuaDBViewModel)
    // ---- Model Connection for ViewModel --------------------------------------------------------------------
  strict protected
    // Model and Proc
    { [weak] }
    FJanuadbModel: IJanuaDBModel;
    /// <summary> This procedure Sets the internal Field FCreateDBModel for the custom descendant VM </summary>
    function CreateDBModel: IJanuaDBModel; virtual;
    procedure CreateModel; override;
  protected
    procedure MainRecordUndo(aAction: IJanuaAction); override;
    procedure MainRecordFirst(aAction: IJanuaAction); override;
    procedure MainRecordPrev(aAction: IJanuaAction); override;
    procedure MainRecordNext(aAction: IJanuaAction); override;
    procedure MainRecordLast(aAction: IJanuaAction); override;
    procedure MainRecordAdd(aAction: IJanuaAction); override;
    procedure MainRecordEdit(aAction: IJanuaAction); override;
    procedure MainRecordDelete(aAction: IJanuaAction); override;
    procedure MainRecordPrint(aAction: IJanuaAction); override;
    procedure MainRecordExport(aAction: IJanuaAction); override;
    procedure MainRecordPreview(aAction: IJanuaAction); override;
    procedure MainRecordPost(aAction: IJanuaAction); override;
    procedure MainRecordSearch(aAction: IJanuaAction); override;
    procedure MainRecordRefresh(aAction: IJanuaAction); override;
  protected
    { Protected declarations }
    // function GetGridRecordActionList: IJanuaActionList;
    procedure SetJanuaMDModel(const Value: IJanuaDBModel);
    function GetdsDetail: TDataSource;
    function GetSelectedItem: Integer;
    procedure SetSelectedItem(const Value: Integer);
    function GetjdsDetail: IJanuaDBDataset;
    property jdsDetail: IJanuaDBDataset read GetjdsDetail;
  public
    // On Search Click will be connected both to search buttun and on presskey search
    procedure OnSearchClick(Sender: TObject); virtual;
    // State Change is Connected With DataSource and is triggered when Open/Scroll Event is Triggered
    // But also when modification on the Record is Active.
    procedure OnMasterStateChange(Sender: TObject);
    procedure RefreshActions; Override;
  strict protected // virtual methods
    /// <summary> This methods (in the descendant) must set the correct model for the VM </summary>
    function InternalActivate: boolean; override;
    procedure InternalCheck; override;
  public
    constructor Create; override;
    destructor Destroy; override;
  public
    property dsMaster: TDataSource read GetdsMaster;
    property dsDetail: TDataSource read GetdsDetail;
  end;

type
  TJanuaViewModelDetailTemplate = class(TJanuaRecordSetViewModelTemplate, IJanuaViewModel, IJanuaDBViewModel)
  public
    /// <summary> After Creations can set properties to customize Detail properties and Settings </summary>
    procedure AfterConstruction; override;
  end;

implementation

uses Spring, System.StrUtils, Janua.Core.AsyncTask, Janua.Application.Framework, Janua.Controls.Dialogs.Intf,
  Janua.Core.Functions;

{ TJanuaViewModelDBTemplate }
function TJanuaViewModelDBTemplate.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if GetHasDetail then
          FJanuadbModel.jdsDetail.DataSource.Enabled := True;
        FJanuadbModel.jdsDataset.DataSource.Enabled := True;
        FJanuadbModel.jdsDataset.DataSource.OnStateChange := OnMasterStateChange;
        FDateFrom := Date() - 365;
        FDateTo := Date();
        BindActionPost;
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, Self);
    end;
end;

procedure TJanuaViewModelDBTemplate.InternalCheck;
begin
  inherited;
  Assert(Assigned(FJanuadbModel.jdsDataset), ClassName + '.Initialize jdsMaster is nil');
end;

procedure TJanuaViewModelDBTemplate.MainRecordAdd(aAction: IJanuaAction);
begin
  try
    FJanuadbModel.BeginScroll;
    try
      WriteLocalLog('MainRecordAdd', 'FGenerateEditDialog');
      FJanuadbModel.AddNewRecord;
      MainRecordEdit(aAction);
      ClearLocalLog('MainRecordAdd');
    finally
      FJanuadbModel.EndScroll;
    end;
  except
    on E: Exception do
      RaiseException('MainRecordAdd', E, Self, Self.LogString);
  end;
end;

procedure TJanuaViewModelDBTemplate.MainRecordDelete(aAction: IJanuaAction);
begin
  FJanuadbModel.DeleteRecord;
end;

procedure TJanuaViewModelDBTemplate.MainRecordEdit(aAction: IJanuaAction);
begin
  FEditResult := False;
  try
    WriteLog('MainRecordEdit', 'BeginScroll');
    FJanuadbModel.jdsDataset.BeginScroll;
    try
      // To be sure that Record is synced with the Dataset
      if not(FJanuadbModel.State in [TJanuaModelState.jmsInsert]) then
        FJanuadbModel.RefreshRecord { LoadRecord };

      // SubModels are used only as a Support to the record Edit Dialog after must be removed.
      GenerateSubModels;
      try
        FEditResult := ExecuteEditDialog
      finally
        RemoveSubModels;
      end;

      if FEditResult then
        MainRecordPost(aAction)
      else
        FJanuadbModel.LoadRecord;

    finally
      FJanuadbModel.jdsDataset.EndScroll;
    end;
    ClearLocalLog('MainRecordEdit');
  except
    on E: Exception do
      RaiseException('MainRecordEdit', E, Self, LogString);
  end;
end;

// MainRecordPost
procedure TJanuaViewModelDBTemplate.MainRecordPost(aAction: IJanuaAction);
begin
  FJanuadbModel.PostRecord;
  (*
    if FJanuaDBModel.jdsMaster.Dataset.State in [dsEdit, dsInsert] then
    FJanuaDBModel.jdsMaster.Dataset.Edit;
  *)
end;

procedure TJanuaViewModelDBTemplate.MainRecordUndo(aAction: IJanuaAction);
begin
  FJanuadbModel.UndoChanges;
end;

procedure TJanuaViewModelDBTemplate.MainRecordExport(aAction: IJanuaAction);
begin
  MainRecordPost(aAction);
end;

procedure TJanuaViewModelDBTemplate.MainRecordFirst(aAction: IJanuaAction);
begin
  FJanuadbModel.First(RefreshActions, True);
end;

procedure TJanuaViewModelDBTemplate.MainRecordLast(aAction: IJanuaAction);
begin
  FJanuadbModel.Last(RefreshActions, True);
end;

procedure TJanuaViewModelDBTemplate.MainRecordNext(aAction: IJanuaAction);
begin
  FJanuadbModel.Next(RefreshActions, True);
end;

procedure TJanuaViewModelDBTemplate.MainRecordPrev(aAction: IJanuaAction);
begin
  FJanuadbModel.Prior(RefreshActions);
end;

procedure TJanuaViewModelDBTemplate.MainRecordPreview(aAction: IJanuaAction);
begin
  if Assigned(FReportingList) and FReportingList.SelectReporter then
    FReportingList.SelectedItem.Execute(True);
end;

procedure TJanuaViewModelDBTemplate.MainRecordPrint(aAction: IJanuaAction);
var
  sArray: TArray<string>;
  iArray: TArray<Integer>;
  I: Integer;
begin
  {
    FReportingList: IJanuaReportingList;
    FExportList: IJanuaReportingList;
  }
  if Assigned(Self.FReportingList) and (FReportingList.Items.Count > 0) then
  begin
    if FReportingList.Items.Count > 1 then
    begin
      SetLength(sArray, FReportingList.Items.Count);
      SetLength(iArray, FReportingList.Items.Count);
      for I := 0 to Pred(FReportingList.Items.Count) do
      begin
        sArray[I] := FReportingList.Items[I].Title;
        iArray[I] := FReportingList.Items[I].ImageIndex;
      end;
      I := TJanuaApplication.Dialogs.SelectMultiString('Select Report', sArray { Reports } ,
        iArray { Icons } );
    end
    else
      I := 0;
    if I > -1 { One Item was selected or operation aborted? } then
      FReportingList.Items[I].Execute(False { Boolean Preview } );
  end;
end;

procedure TJanuaViewModelDBTemplate.MainRecordRefresh(aAction: IJanuaAction);
begin
  FJanuadbModel.Refresh(nil);
end;

procedure TJanuaViewModelDBTemplate.MainRecordSearch(aAction: IJanuaAction);
begin
  StartSearch;
end;

constructor TJanuaViewModelDBTemplate.Create;
begin
  FGetHasDetail := function: boolean
    begin
      Result := Assigned(FJanuadbModel.jdsDetail);
    end;
  inherited;
  TJanuaApplicationFactory.TryGetInterface(IJanuaReportingList, FExportList);
  TJanuaApplicationFactory.TryGetInterface(IJanuaReportingList, FReportingPreviewList);
  FReportingPreviewList.Preview := True;
  TJanuaApplicationFactory.TryGetInterface(IJanuaReportingList, FExportPreviewList);
  FExportPreviewList.Preview := True;
end;

function TJanuaViewModelDBTemplate.CreateDBModel: IJanuaDBModel;
begin
  Result := nil;
end;

destructor TJanuaViewModelDBTemplate.Destroy;
begin
  if Assigned(FJanuadbModel) and (TInterfacedObject(FJanuadbModel.GetSelf).RefCount > 0) then
    TJanuaInterfacedObject(FJanuadbModel.GetSelf).Release;
  FJanuadbModel := nil;
  inherited;
end;

procedure TJanuaViewModelDBTemplate.CreateModel;
begin
  inherited;
  try
    try
      FJanuadbModel := CreateDBModel;
      Guard.CheckNotNull(FJanuadbModel, 'FJanuaDBModel is nil');
      if Assigned(FJanuadbModel) then
        FJanuadbModel.Params := FParams;
      SetModel(FJanuaDBModel);
    except
      on E: Exception do
        raise Exception.Create(Self.ClassName + '.CreateDBModel Error: ' + E.Message);
    end;

    FJanuadbModel.DataSource.OnStateChange := Self.OnMasterStateChange;
    FJanuadbModel.jdsDataset.DataSource.Enabled := False;
    if GetHasDetail then
      FJanuadbModel.jdsDetail.DataSource.Enabled := False;
    FJanuadbModel.jdsDataset.DataSource.OnStateChange := OnMasterStateChange;
    FJanuadbModel.IsThreaded := IsThreaded;
    FJanuadbModel.Bind('IsThreaded', Self, 'IsThreaded');
    Guard.CheckNotNull(FJanuadbModel.jdsDataset, 'jdsMaster');
    Guard.CheckNotNull(FJanuadbModel.jdsDataset.Dataset, 'jdsMaster.Dataset');
    // Finally Returns
    if not Supports(FJanuadbModel, IJanuaModel, FJanuaModel) then
      raise Exception.Create('FJanuadbModel not supports IJanuaModel');
  except
    on E: Exception do
      RaiseException('CreateModel', E, Self, Self.LogString);
  end;
end;

function TJanuaViewModelDBTemplate.GetdsDetail: TDataSource;
begin
  Result := nil;
  if GetHasDetail then
    Result := FJanuadbModel.jdsDetail.DataSource
end;

function TJanuaViewModelDBTemplate.GetjdsDetail: IJanuaDBDataset;
begin
  Result := nil;
  if GetHasDetail then
    Result := FJanuadbModel.jdsDetail
end;

function TJanuaViewModelDBTemplate.GetSelectedItem: Integer;
begin
  Result := FJanuadbModel.SelectedItem
end;

procedure TJanuaViewModelDBTemplate.OnMasterStateChange(Sender: TObject);
begin
  RefreshActions;
end;

procedure TJanuaViewModelDBTemplate.OnSearchClick(Sender: TObject);
begin
  Self.StartSearch;
end;

procedure TJanuaViewModelDBTemplate.RefreshActions;
begin
  inherited
end;

procedure TJanuaViewModelDBTemplate.SetJanuaMDModel(const Value: IJanuaDBModel);
begin
  FJanuadbModel := Value;
end;

procedure TJanuaViewModelDBTemplate.SetSelectedItem(const Value: Integer);
begin
  FJanuadbModel.SelectedItem := Value
end;

{ TJanuaRecordSetViewModelTemplate }
constructor TJanuaRecordSetViewModelTemplate.Create;
begin
  inherited;
  FGetHasDetail := function: boolean
    begin
      Result := Assigned(FRecordSetModel) and
        (FRecordSetModel.RecordSet.CurrentRecord.RecordSetCount(False) > 0);
    end;
end;

procedure TJanuaRecordSetViewModelTemplate.AfterConstruction;
begin
  inherited;
end;

constructor TJanuaRecordSetViewModelTemplate.Create(aRecordSetModel: IJanuaRecordSetModel);
begin
  Guard.CheckNotNull(FRecordSetModel, ClassName + '.Create FRecordSetModel');
  Create;
  SetRecordSetModel(aRecordSetModel);
end;

destructor TJanuaRecordSetViewModelTemplate.Destroy;
begin
  inherited;
end;

function TJanuaRecordSetViewModelTemplate.GetActionSearch: IJanuaAction;
begin
  Result := FActionSearch
end;

function TJanuaRecordSetViewModelTemplate.GetRecordSet: IJanuaRecordSet;
begin
  Result := FRecordSetModel.RecordSet;
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordAdd(aAction: IJanuaAction);
begin
  FRecordSetModel.AppendRecord;
  MainRecordEdit(aAction);
  if Assigned(FOnNewRecord) then
    FOnNewRecord(nil);
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordDelete(aAction: IJanuaAction);
begin
  if JMessageDlg('Are you sure to Delete this Record?') then
    FRecordSetModel.DeleteRecord;
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordEdit(aAction: IJanuaAction);
begin
  try
    WriteLog('MainRecordEdit', 'BeginScroll');
    // No Need to LoadRecord Because we are 'moving' inside a Recordset so the pointer is already set;
    if ExecuteEditDialog then
      MainRecordPost(aAction)
    else
      FRecordSetModel.LoadRecord;
    ClearLocalLog('MainRecordEdit');
  except
    on E: Exception do
      RaiseException('MainRecordEdit', E, Self, '');
  end;
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordExport(aAction: IJanuaAction);
begin
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordFirst(aAction: IJanuaAction);
begin
  FRecordSetModel.First(nil);
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordLast(aAction: IJanuaAction);
begin
  FRecordSetModel.Last(nil);
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordNext(aAction: IJanuaAction);
begin
  FRecordSetModel.Next(nil);
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordPost(aAction: IJanuaAction);
begin
  FRecordSetModel.PostRecord;
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordPrev(aAction: IJanuaAction);
begin
  FRecordSetModel.Prior(nil);
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordPreview(aAction: IJanuaAction);
begin
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordPrint(aAction: IJanuaAction);
begin
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordRefresh(aAction: IJanuaAction);
begin
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordSearch(aAction: IJanuaAction);
begin
end;

procedure TJanuaRecordSetViewModelTemplate.MainRecordUndo(aAction: IJanuaAction);
begin
end;

procedure TJanuaRecordSetViewModelTemplate.OpenAll(const aThreaded: boolean);
begin
  try
    if Assigned(FJanuaModel) then
      FJanuaModel.OpenAll(aThreaded);
    RefreshActions;
  except
    on E: Exception do
    begin
      RaiseException('OpenAll', E, Self, Self.LogString);
    end;
  end;
end;

procedure TJanuaRecordSetViewModelTemplate.Refresh;
begin
  FJanuaModel.Refresh(RefreshActions);
end;

procedure TJanuaRecordSetViewModelTemplate.SetRecordSetModel(const aModel: IJanuaRecordSetModel);
begin
  try
    FRecordSetModel := aModel;
    Guard.CheckNotNull(FRecordSetModel.RecordSet, 'Recorset from Model not set');
    FRecordSetModel.AfterOpen := Self.ModelAfterOpen;
    FRecordSetModel.AfterScroll := Self.ModelAfterScroll;
    if Assigned(FRecordSetModel.jdsDataset) and FRecordSetModel.jdsDataset.Active then
      RefreshActions;
  except
    on E: Exception do
      RaiseException('SetRecordSetModel', E, Self);
  end;
end;

procedure TJanuaRecordSetViewModelTemplate.StartSearch;
begin
  // code to setup parameters as in Model.
  jdsDataset.ApplyFilter;
end;

function TJanuaRecordSetViewModelTemplate.SupportsModel(const Instance: IInterface): IJanuaRecordSetModel;
begin
  // function Supports(const Instance: IInterface; const IID: TGUID; out Intf): Boolean;
  Guard.CheckNotNull(Instance, ClassName + '.SupportsModel Instance is nil');
  if not Supports(Instance, IJanuaRecordSetModel, Result) then
    raise Exception.Create('IJanuaRecordSetModel not supported');
end;

{ TJanuaViewModelTemplate }
procedure TJanuaViewModelTemplate.AddDetail(aDetail: IJanuaViewModel);
begin
  FDetails.Add(aDetail);
end;

procedure TJanuaViewModelTemplate.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaViewModelTemplate.BeforeDestruction;
begin
  inherited;
  try
    if Assigned(FReportingList) then
      FReportingList.Items.Clear;
    if Assigned(FExportList) then
      FExportList.Items.Clear;
    if Assigned(FReportingPreviewList) then
      FReportingPreviewList.Items.Clear;
    if Assigned(FExportPreviewList) then
      FExportPreviewList.Items.Clear;
    if Assigned(FDetails) then
      FDetails.Clear;
    if Assigned(FDetailActionList) then
      FDetailActionList.Actions.Clear;
  except
    on E: Exception do
      LogException('AfterConstruction', E, Self);
  end;
end;

procedure TJanuaViewModelTemplate.BindActionPost;
begin
  try
    if Assigned(InternalRecord) and Assigned(FActionPost) then
    begin
      FActionPost.Enabled := InternalRecord.Modified;
      InternalRecord.Bind('Modified', FActionPost.GetSelf, 'Enabled'); // , True, [jbcNotifyOutput]);
      FActionUndo.Enabled := InternalRecord.Modified;
      InternalRecord.Bind('Modified', FActionUndo.GetSelf, 'Enabled'); // , True);
    end;
  except
    on E: Exception do
    begin
      RaiseException('BindActionPost', E, Self, Self.LogString);
    end;
  end;
end;

constructor TJanuaViewModelTemplate.Create;
begin
  try
    inherited;
    // FMainSearchLabel
    FMainSearchLabel := TJanuaApplication.GetLocalText('Text to Search',
      '{A7AB23CE-C685-4C19-81B5-7EEF1F43D6B3}');
    // FReportingList: IJanuaReportingList;
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaReportingList, FReportingList) then
      raise Exception.Create('TJanuaViewModelDBTemplate.Create IJanuaReportingList not set');
    // Record Navigation Functions
    FACtionFirst := MainActionList.Add('First', False, MainRecordFirst, jasFirst, 10 { File New Font } );
    FACtionPrev := MainActionList.Add('Prior', False, MainRecordPrev, jasPrev, 11 { File New Font } );
    FACtionNext := MainActionList.Add('Next', False, MainRecordNext, jasNext, 12 { File New Font } );
    FACtionLast := MainActionList.Add('Last', False, MainRecordLast, jasLast, 13 { File New Font } );
    // property MainActionList: IJanuaActionList read GetMainActionList;
    FActionAdd := MainActionList.Add('New', False, MainRecordAdd, jasAppend, 0 { File New Font } );
    FActionEdit := MainActionList.Add('Edit', False, MainRecordEdit, jasEdit, 1 { edit-black } );
    FActionPost := MainActionList.Add('Save', False, MainRecordPost, jasPost, 4 { ic_save } );
    FActionUndo := MainActionList.Add('Undo', False, MainRecordUndo, jasCancel, 14 { ic_undo } );
    // IJanuaAction;
    FActionDelete := MainActionList.Add('Delete', False, MainRecordDelete, jasDelete, 5 { ic_delete } );
    // IJanuaAction;
    FActionPrint := MainActionList.Add('Print', False, MainRecordPrint, jasPrint, 298 { 6 Print } );
    // IJanuaAction;
    FActionPreview := MainActionList.Add('Preview', False, MainRecordPreview, jasPreview, 115);
    // IJanuaAction;
    FActionExport := MainActionList.Add('Export', False, MainRecordExport, jasExport, 28 { import_expor } );
    // IJanuaAction;
    FActionSearch := MainActionList.Add('Search', False, MainRecordSearch, jasSearch, 8 { Find in ... } );
    // IJanuaAction;
    FActionRefresh := MainActionList.Add('Refresh', True, MainRecordRefresh, jasRefresh, 17);
    // IJanuaAction;
    FFormActionList.Add(FActionPost, jasPost);
    FFormActionList.Add(FActionUndo, jasCancel);
    FFormActionList.Add(FActionDelete, jasDelete);
    FFormActionList.Add(FActionPrint, jasPrint);
    FFormActionList.Add(FActionPreview, jasPreview);
    FDetails := TCollections.CreateList<IJanuaViewModel>; // IList<IJanuaViewModel>
    // FDetailActionList:= IJanuaActionList;
    TJanuaApplicationFactory.TryGetInterface(IJanuaActionList, FDetailActionList);
  except
    on E: Exception do
      RaiseException('TJanuaViewModelTemplate.Create', E, Self, Self.LogString);
  end;
end;

destructor TJanuaViewModelTemplate.Destroy;
begin
  FReportingList := nil;
  FExportPreviewList := nil;
  FReportingPreviewList := nil;
  FDetails := nil;
  FExportList := nil;
  FDetailActionList := nil;
  inherited;
end;

function TJanuaViewModelTemplate.GetActionSearch: IJanuaAction;
begin
  Result := FActionSearch;
end;

function TJanuaViewModelTemplate.GetDateFrom: TDate;
begin
  Result := FDateFrom;
end;

function TJanuaViewModelTemplate.GetDateTo: TDate;
begin
  Result := FDateTo;
end;

function TJanuaViewModelTemplate.GetDetailActionList: IJanuaActionList;
begin
  Result := FDetailActionList
end;

function TJanuaViewModelTemplate.GetDetailCount: Integer;
begin
  Result := FDetails.Count;
end;

function TJanuaViewModelTemplate.GetDetails: IList<IJanuaViewModel>;
begin
  Result := FDetails
end;

function TJanuaViewModelTemplate.GetDetailsActive: boolean;
begin
  Result := False;
  if Assigned(Self.FJanuaModel) and Assigned(Self.FJanuaModel.jdsDetail) then
    Result := FJanuaModel.jdsDataset.Active
end;

function TJanuaViewModelTemplate.GetdsDetail: TDataSource;
begin
  Result := nil;
  if Assigned(Self.FJanuaModel) and Assigned(Self.FJanuaModel.jdsDetail) then
    Result := FJanuaModel.jdsDataset.DataSource
end;

function TJanuaViewModelTemplate.GetdsMaster: TDataSource;
begin
  Result := nil;
  if Assigned(FJanuaModel.jdsDataset) then
    Result := FJanuaModel.jdsDataset.DataSource
end;

function TJanuaViewModelTemplate.GetExportList: IJanuaReportingList;
begin
  Result := Self.FExportList
end;

function TJanuaViewModelTemplate.GetFilterDate: boolean;
begin
  Result := FFilterDate;
end;

function TJanuaViewModelTemplate.GetHasSearchList: boolean;
begin
  Result := FJanuaModel.MainSearchParams.ParamCount > 0
end;

function TJanuaViewModelTemplate.GetjdsDataset: IJanuaDBDataset;
begin
  Result := nil;
  if Assigned(FJanuaModel) then
    Result := FJanuaModel.jdsDataset
end;

function TJanuaViewModelTemplate.GetjdsDetail: IJanuaDBDataset;
begin
  Result := nil;
  if Assigned(FJanuaModel) then
    Result := FJanuaModel.jdsDetail
end;

function TJanuaViewModelTemplate.GetMainSearchLabel: string;
begin
  Result := FMainSearchLabel;
end;

function TJanuaViewModelTemplate.GetMainSearchParams: IJanuaParams;
begin
  Result := FJanuaModel.MainSearchParams
end;

function TJanuaViewModelTemplate.GetMainSearchText: string;
begin
  Result := Self.FJanuaModel.MainSearchText
end;

function TJanuaViewModelTemplate.GetOrderByFields: IJanuaOrderByFields;
begin
  Result := FJanuaModel.OrderByFields
end;

function TJanuaViewModelTemplate.GetReportingList: IJanuaReportingList;
begin
  Result := Self.FReportingList
end;

function TJanuaViewModelTemplate.GetReportingPreviewList: IJanuaReportingList;
begin
  Result := FReportingPreviewList
end;

function TJanuaViewModelTemplate.GetFilterParams: IJanuaParams;
begin
  Result := FJanuaModel.FilterParams
end;

function TJanuaViewModelTemplate.GetOnNewRecord: TNotifyEvent;
begin
  Result := FOnNewRecord;
end;

function TJanuaViewModelTemplate.GetSelectedItem: Integer;
begin
  // Result := FSelectedItem;
  Result := -1;
  { TODO: Check if GetSelectedItem is still used }
end;

function TJanuaViewModelTemplate.GetState: TJanuaModelState;
begin
  Result := FJanuaModel.State
end;

function TJanuaViewModelTemplate.NewRecord: boolean;
begin
  MainRecordAdd(FActionAdd);
  Result := FEditResult;
end;

procedure TJanuaViewModelTemplate.OpenAll(const aThreaded: boolean);
begin
  try
    if Assigned(FJanuaModel) then
      FJanuaModel.OpenAll(aThreaded);
    RefreshActions;
  except
    on E: Exception do
    begin
      RaiseException('OpenAll', E, Self, Self.LogString);
    end;
  end;
end;

procedure TJanuaViewModelTemplate.Refresh;
begin
  FJanuaModel.Refresh(
    procedure
    begin
      RefreshActions
    end);
end;

procedure TJanuaViewModelTemplate.RefreshActions;
var
  lHasRecords { , lActive } : boolean;
begin
  inherited;
  try
    if Assigned(jdsDataset) and Assigned(FMainActionList) and (FMainActionList.Actions.Count > 0) then
    begin
      { lActive := jdsDataset.Dataset.Active; }
      lHasRecords := jdsDataset.Dataset.Active and (jdsDataset.Dataset.RecordCount > 0);
      FActionSearch.Enabled := lHasRecords;
      FACtionFirst.Enabled := jdsDataset.Dataset.Active and not jdsDataset.Dataset.Bof;
      FACtionPrev.Enabled := jdsDataset.Dataset.Active and not jdsDataset.Dataset.Bof;
      FACtionLast.Enabled := jdsDataset.Dataset.Active and not jdsDataset.Dataset.Eof;
      FACtionNext.Enabled := jdsDataset.Dataset.Active and not jdsDataset.Dataset.Eof;
      FActionAdd.Enabled := jdsDataset.Dataset.Active;
      FActionDelete.Enabled := lHasRecords;
      FActionPreview.Enabled := lHasRecords and (ReportingList.Items.Count > 0);
      FActionPrint.Enabled := lHasRecords and (ReportingList.Items.Count > 0);
      FMainActionList.DoUpdateActions;
    end
  except
    on E: Exception do
    begin
      RaiseException('RefreshActions', E, Self, Self.LogString);
    end;
  end;
end;

procedure TJanuaViewModelTemplate.RemoveSubModels;
begin
  if DetailCount > 0 then
    try
      DeActivateDetails;
      FDetails.Clear;
    except
      on E: Exception do
        RaiseException('DeActivateDetails: ', E, Self);
    end;
  FJanuaModel.RemoveSubModels;
end;

procedure TJanuaViewModelTemplate.SetDateFrom(const Value: TDate);
begin
  FDateFrom := Value;
end;

procedure TJanuaViewModelTemplate.SetDateTo(const Value: TDate);
begin
  FDateTo := Value;
end;

procedure TJanuaViewModelTemplate.SetExportList(const Value: IJanuaReportingList);
begin
  FExportList := Value;
end;

procedure TJanuaViewModelTemplate.SetFilterDate(const Value: boolean);
begin
  FFilterDate := Value;
end;

procedure TJanuaViewModelTemplate.SetGetReportingPreviewList(const Value: IJanuaReportingList);
begin
end;

procedure TJanuaViewModelTemplate.SetReportingPreviewList(const Value: IJanuaReportingList);
begin
  FReportingPreviewList := Value;
end;

procedure TJanuaViewModelTemplate.SetSelectedItem(const Value: Integer);
begin
end;

procedure TJanuaViewModelTemplate.SetState(const Value: TJanuaModelState);
begin
  FJanuaModel.State := Value;
end;

procedure TJanuaViewModelTemplate.StartSearch;
begin

end;

procedure TJanuaViewModelTemplate.SetMainSearchLabel(const Value: string);
begin
  try
    if Value <> FMainSearchLabel then
    begin
      FMainSearchLabel := Value;
      BindManager.Notify('MainSearchLabel');
    end;
  except
    on E: Exception do
      RaiseException('SetMainSearchLabel', E, Self);
  end;
end;

procedure TJanuaViewModelTemplate.SetMainSearchText(const Value: string);
begin
  try
    Sleep(100);
    if StripString(Value) <> FStrippedText then
    begin
      FJanuaModel.MainSearchText := Value;
      BindManager.Notify('MainSearchText');
      FStrippedText := StripString(Value);
    end;
  except
    on E: Exception do
      RaiseException('SetMainSearchText', E, Self);
  end;
end;

procedure TJanuaViewModelTemplate.SetOnNewRecord(const Value: TNotifyEvent);
begin
  FOnNewRecord := Value;
end;

procedure TJanuaViewModelTemplate.SetReportingList(const Value: IJanuaReportingList);
begin
  FReportingList := Value;
end;

{ TJanuaViewModelDataTemplate }
procedure TJanuaViewModelDataTemplate.AfterConstruction;
begin
  inherited;
  InternalCheck
end;

procedure TJanuaViewModelDataTemplate.BeforeDestruction;
begin
  inherited;
  try
    if Assigned(FGridActionList) then
      FGridActionList.ClearActions;
    if Assigned(FFormActionList) then
      FFormActionList.ClearActions;
  except
    on E: Exception do
      LogException('BeforeDestruction', E, Self);
  end;
end;

procedure TJanuaViewModelDataTemplate.ClearSearchModels;
begin
  // to be implemented by descendant
end;

constructor TJanuaViewModelDataTemplate.Create;
begin
  try
    inherited;
    FRecordEditDialog := GUID_NULL;
    // Virtual Abstract Method that has to be implemented by descendats
    Assert(Assigned(FJanuaModel), 'CreateModel: FJanuaModel is nil');
    // FJanuaDBModel IJanuaDBModel
    // Will be Set by the descendant class. To do this Constructor calls a virtual abstract method
    TJanuaApplicationFactory.TryGetInterface(IJanuaActionList, FMainActionList);
    TJanuaApplicationFactory.TryGetInterface(IJanuaActionList, FGridActionList);
    TJanuaApplicationFactory.TryGetInterface(IJanuaActionList, FFormActionList);
  except
    on E: Exception do
      RaiseException('Create', E, Self);
  end;
end;

destructor TJanuaViewModelDataTemplate.Destroy;
{$IFDEF DEBUG}
var
  vTest: Integer;
{$ENDIF}
begin
  if Assigned(FormDialog) then
  begin
    FormDialog.Component.Free;
    SetFormDialog(nil);
  end;

  // ---- Action Lists for Master, Detail, Search engine and Grids ------------------------------------
  FMainActionList := nil;
  FGridActionList := nil;
  // Record Editing -----------------------------------------------------------------------------------
  FFormDialog := nil;
  FFormActionList := nil;

  if Assigned(FJanuaModel) and Assigned(FJanuaModel.GetSelf) then
  begin
{$IFDEF DEBUG} vTest := TInterfacedObject(FJanuaModel.GetSelf).RefCount; {$ENDIF}
    if Assigned(FJanuaModel) and (TInterfacedObject(FJanuaModel.GetSelf).RefCount > 0) then
      TJanuaInterfacedObject(FJanuaModel.GetSelf).Release;
    FJanuaModel := nil;
    // Create Model Procedure is set as an anonymous Method by the descendants and Sets FJanuaModel
    { FCreateModel := nil; }
  end;

  inherited;
end;

function TJanuaViewModelDataTemplate.ExecuteEditDialog: boolean;
  procedure GenerateRecordEditDialog;
  var
    lTemp: IInterface;
    lComponent: IJanuaBindableComponent;
    lMessage: string;
  begin
    try
      SetupSearchCallBack;
      if not TJanuaApplicationFactory.TryGetComponent(FRecordEditDialog, nil, lTemp) then
        raise Exception.Create(ClassName + 'GenerateRecordEditDialog ' + FRecordEditDialog.ToString +
          ' not registered');
      if not Supports(lTemp, IJanuaRecordEditDialog, FFormDialog) then
      begin
        if Supports(lComponent, IJanuaBindableComponent, FFormDialog) then
          lMessage := lComponent.Component.ClassName + '(' + lComponent.Name + ')';
        raise Exception.Create(lMessage + ' IJanuaRecordEditDialog not supported');
      end;
      ClearSearchModels;
    except
      on E: Exception do
        RaiseException('ExecuteEditDialog', E, Self);
    end;
  end;

  function NewEditDialog: boolean;
  begin
    Result := False;
    try
      if Assigned(FGenerateEditDialog) then
        SetFormDialogFromInterface(FGenerateEditDialog)
      else if FRecordEditDialog <> GUID_NULL then
      begin
        GenerateRecordEditDialog;
        FFormDialog.ViewModel := Self as IJanuaViewModel;
      end;
      Result := Assigned(FormDialog)
    except
      on E: Exception do
        RaiseException('NewEditDialog', E, Self);
    end;
  end;

begin
  Result := False;
  try
    WriteLog('ExecuteEditDialog', 'FGenerateEditDialog');
    if Assigned(FormDialog) or NewEditDialog then
      try
        WriteLog('ExecuteEditDialog', 'ShowOverlay');
        TJanuaApplication.WindowsManager.ShowOverlay;
        try
          WriteLog('ExecuteEditDialog', 'ShowModal');
          Result := FormDialog.ShowModal = mrOK;
        finally
          TJanuaApplication.WindowsManager.HideOverlay;
        end;
      finally
        FormDialog.Component.Free;
        SetFormDialog(nil);
      end;
    ClearLocalLog('ExecuteEditDialog');
  except
    on E: Exception do
      RaiseException('ExecuteEditDialog', E, Self, Self.LogString);
  end;
end;

procedure TJanuaViewModelDataTemplate.GenerateSubModels;
begin
  try
    if Assigned(FJanuaModel) then
    begin
      FJanuaModel.GenerateSubModels;
      if FJanuaModel.GetDetailModels.Count > 0 then
        ActivateDetails;
    end;
  except
    on E: Exception do
      RaiseException('GenerateSubModels', E, Self, Self.LogString);
  end;
end;

function TJanuaViewModelDataTemplate.GetActionPreview: IJanuaAction;
begin
  Result := FActionPreview;
end;

procedure TJanuaViewModelDataTemplate.CreateModel;
begin
  inherited;
  FJanuaModel := nil;
end;

constructor TJanuaViewModelDataTemplate.CreateWithGroupID(const aGroupID: Integer);
begin
  SetGroupID(aGroupID);
  Create;
end;

function TJanuaViewModelDataTemplate.GetFormActionList: IJanuaActionList;
begin
  Result := FFormActionList;
end;

function TJanuaViewModelDataTemplate.GetFormDialog: IJanuaRecordEditDialog;
begin
  Result := FFormDialog;
  // Must Be implemented by a Descendat for lazy loading .................................
end;

function TJanuaViewModelDataTemplate.GetFormTitle: string;
begin
  Result := FFormTitle;
end;

function TJanuaViewModelDataTemplate.GetGridActionList: IJanuaActionList;
begin
  Result := Self.FGridActionList
end;

function TJanuaViewModelDataTemplate.GetGroupID: Integer;
begin
  Result := FGroupID
end;

function TJanuaViewModelDataTemplate.GetHasDetail: boolean;
begin
  Result := False;
  try
    Assert(Assigned(FGetHasDetail), 'FHasDetail Function not assigned');
    Result := FGetHasDetail;
  except
    on E: Exception do
      RaiseException('GetHasDetail', E, Self);
  end;
end;

function TJanuaViewModelDataTemplate.GetInternalRecord: IJanuaRecord;
begin
  if Assigned(Self) and Assigned(FJanuaModel) then
    try
      Result := FJanuaModel.InternalRecord;
    except
      on E: Exception do
        RaiseException('GetInternalRecord', E, Self);
    end;
end;

function TJanuaViewModelDataTemplate.GetIsThreaded: boolean;
begin
  Result := FIsThreaded
end;

function TJanuaViewModelDataTemplate.GetJdsMaster: IJanuaDBDataset;
begin
  Result := nil;
  if Assigned(FJanuaModel) then
    Result := FJanuaModel.jdsDataset;
end;

function TJanuaViewModelDataTemplate.GetParams: TJanuaVariantArray;
begin
  Result := FParams;
end;

function TJanuaViewModelDataTemplate.GetRecordEditDialog: TGUID;
begin
  Result := FRecordEditDialog
end;

function TJanuaViewModelDataTemplate.GetUseThreads: boolean;
begin
  Result := FUseThreads;
end;

function TJanuaViewModelDataTemplate.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        InternalCheck;
        FJanuaModel.AfterOpen := ModelAfterOpen;
        FJanuaModel.AfterScroll := ModelAfterScroll;
        if Assigned(FJanuaModel.jdsDataset) and FJanuaModel.jdsDataset.Active then
          ModelAfterOpen(FJanuaModel.jdsDataset);
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, Self);
    end;
end;

procedure TJanuaViewModelDataTemplate.InternalCheck;
begin
  Guard.CheckNotNull(FMainActionList, 'FMainActionList');
  Guard.CheckNotNull(FGridActionList, 'FGridActionList');
  Guard.CheckNotNull(FFormActionList, 'FFormActionList');
end;

function TJanuaViewModelDataTemplate.LocateByGUID(const aGuid: TGUID): boolean;
begin
  Result := Assigned(FJanuaModel) and FJanuaModel.LocateByGUID(aGuid);
end;

procedure TJanuaViewModelDataTemplate.ModelAfterOpen(aDataset: IJanuaDBDataset);
begin
  RefreshActions
end;

procedure TJanuaViewModelDataTemplate.ModelAfterScroll(aDataset: IJanuaDBDataset);
begin
  RefreshActions
end;

procedure TJanuaViewModelDataTemplate.PostRecord;
begin
  MainRecordPost(FActionPost);
end;

procedure TJanuaViewModelDataTemplate.SetFormActionList(const Value: IJanuaActionList);
begin
  FFormActionList := Value;
end;

procedure TJanuaViewModelDataTemplate.SetFormDialog(const Value: IJanuaRecordEditDialog);
begin
  FFormDialog := Value;
end;

procedure TJanuaViewModelDataTemplate.SetFormDialogFromInterface(const Value: IInterface);
begin
  try
    Guard.CheckNotNull(Value, 'Input Value');
    if not Supports(Value, IJanuaRecordEditDialog, FFormDialog) then
      raise Exception.Create('IJanuaForm interface not supported');
    FFormDialog.ViewModel := Self as IJanuaViewModel;
  except
    on E: Exception do
      RaiseException('SetFormDialogFromInterface', E, Self, Self.LogString);
  end;
end;

procedure TJanuaViewModelDataTemplate.SetFormTitle(const Value: string);
begin
  try
    if (FFormTitle <> Value) then
    begin
      FFormTitle := Value;
      if BindManager.GetHasBindings then
        BindManager.Notify('FormTitle');
    end;
  except
    on E: Exception do
      RaiseException('SetFormTitle', E, Self, Self.LogString);
  end;
end;

procedure TJanuaViewModelDataTemplate.SetGroupID(const Value: Integer);
begin
  FGroupID := Value;
  if Assigned(FJanuaModel) then
    FJanuaModel.GroupID := FGroupID
end;

procedure TJanuaViewModelDataTemplate.SetIsThreaded(const Value: boolean);
begin
  if (FIsThreaded <> Value) then
  begin
    FIsThreaded := Value;
    if BindManager.GetHasBindings then
      BindManager.Notify('IsThreaded');
  end;
end;

procedure TJanuaViewModelDataTemplate.SetModel(aModel: IJanuaModel);
var
  lBaseModel: IJanuaBaseModel;
begin
  FJanuaModel := aModel;
  if Supports(FJanuaModel, IJanuaBaseModel, lBaseModel) then
    SetBaseModel(lBaseModel);
end;

procedure TJanuaViewModelDataTemplate.SetParams(const aParams: TJanuaVariantArray);
begin
  FParams := aParams;
  if Assigned(FJanuaModel) then
    FJanuaModel.Params := FParams;
  if Length(FParams) > 0 then
    GroupID := FParams[0];
end;

procedure TJanuaViewModelDataTemplate.SetRecordEditDialog(const Value: TGUID);
begin
  FRecordEditDialog := Value;
end;

procedure TJanuaViewModelDataTemplate.SetupSearchCallBack;
begin
  // to be implemented by Descendants
end;

procedure TJanuaViewModelDataTemplate.SetUseThreads(const Value: boolean);
begin
  FUseThreads := Value;
end;

procedure TJanuaViewModelDataTemplate.RefreshActions;
begin
  if Assigned(FMainActionList) and (FMainActionList.Actions.Count > 0) then
  begin
    FActionEdit.Enabled := FJanuaModel.jdsDataset.RecordCount > 0;
    FActionPost.Enabled := FActionEdit.Enabled;
    FActionUndo.Enabled := FActionEdit.Enabled;
    FActionPost.Enabled := InternalRecord.Modified;
    // jdsDataset.Dataset.State in [TDataSetState.dsEdit, TDataSetState.dsInsert];
    FActionUndo.Enabled := InternalRecord.Modified;
    FActionPrint.Enabled := FActionPrint.Visible and FActionEdit.Enabled;
    FActionPreview.Enabled := FActionPrint.Enabled;
    FActionExport.Enabled := FActionEdit.Enabled;
    FMainActionList.DoUpdateActions;
  end;
end;

{ TJanuaRecordViewModelTemplate }
constructor TJanuaRecordViewModelTemplate.Create;
begin
  try
    inherited;
    // property FMainActionList: IJanuaActionList read GetMainActionList;
    FActionEdit := MainActionList.Add('Edit', False, MainRecordEdit, jasEdit, 1 { edit-black } );
    FActionPost := MainActionList.Add('Save', False, MainRecordPost, jasPost, 4 { ic_save } );
    FActionUndo := MainActionList.Add('Undo', False, MainRecordUndo, jasCancel, 14 { ic_undo } );
    // IJanuaAction;
    // IJanuaAction;
    FActionPrint := MainActionList.Add('Print', False, MainRecordPrint, jasPrint, 351 { 6 Print } );
    // IJanuaAction;
    FActionPreview := MainActionList.Add('Preview', False, MainRecordPreview, jasPreview, 19);
    // IJanuaAction;
    FActionExport := MainActionList.Add('Export', False, MainRecordExport, jasExport, 28 { import_expor } );
    // IJanuaAction;
    FActionRefresh := MainActionList.Add('Refresh', True, MainRecordRefresh, jasRefresh, 17 { } );
    // IJanuaAction;
    FFormActionList.Add(FActionPost, jasPost);
    FFormActionList.Add(FActionUndo, jasCancel);
    FFormActionList.Add(FActionPrint, jasPrint);
    FFormActionList.Add(FActionPreview, jasPreview);
  except
    on E: Exception do
      RaiseException('Create', E, Self);
  end;
end;

{ TJanuaViewModelDetailTemplate }

procedure TJanuaViewModelDetailTemplate.AfterConstruction;
begin
  inherited;
  { Some Actions are disabled by ddefault on Detail RecordSet/Dataset }
  ActionSearch.Visible := False;
  ActionSearch.Enabled := False;

  FActionPrint.Visible := False;
  FActionPrint.Enabled := False;

  FActionPreview.Visible := False;
  FActionPreview.Enabled := False;

  FActionExport.Visible := False;
  FActionExport.Enabled := False;

  FActionRefresh.Visible := False;
  FActionRefresh.Enabled := False;
end;

{ TJanuaViewModelBaseTemplate }

procedure TJanuaViewModelBaseTemplate.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaViewModelBaseTemplate.BeforeDestruction;
begin
  inherited;
  try
    if Assigned(FMainActionList) then
      FMainActionList.ClearActions;
  except
    on E: Exception do
    begin
      LogException('BeforeDestruction', E, Self);
      raise
    end;
  end;
end;

constructor TJanuaViewModelBaseTemplate.Create;
begin
  try
    inherited;
    CreateModel;
    // Virtual Abstract Method that has to be implemented by descendats
    Assert(Assigned(FBaseModel), 'CreateModel: FJanuaBaseModel is nil');
    // FJanuaDBModel IJanuaDBModel
    // Will be Set by the descendant class. To do this Constructor calls a virtual abstract method
    TJanuaApplicationFactory.TryGetInterface(IJanuaActionList, FMainActionList);
  except
    on E: Exception do
    begin
      LogException('Create', E, Self);
      raise
    end;
  end;
end;

procedure TJanuaViewModelBaseTemplate.CreateModel;
begin
  FBaseModel := nil;
end;

destructor TJanuaViewModelBaseTemplate.Destroy;
begin

  inherited;
end;

function TJanuaViewModelBaseTemplate.GetActionEdit: IJanuaAction;
begin
  Result := FActionEdit;
end;

function TJanuaViewModelBaseTemplate.GetFormActionList: IJanuaActionList;
begin

end;

function TJanuaViewModelBaseTemplate.GetFormDialog: IJanuaRecordEditDialog;
begin

end;

function TJanuaViewModelBaseTemplate.GetFormTitle: string;
begin

end;

function TJanuaViewModelBaseTemplate.GetIsThreaded: boolean;
begin

end;

function TJanuaViewModelBaseTemplate.GetMainActionList: IJanuaActionList;
begin
  Result := FMainActionList;
end;

function TJanuaViewModelBaseTemplate.GetModel: IJanuaBaseModel;
begin
  Result := FBaseModel;
end;

function TJanuaViewModelBaseTemplate.GetUseThreads: boolean;
begin

end;

procedure TJanuaViewModelBaseTemplate.SetBaseModel(aBaseModel: IJanuaBaseModel);
begin
  FBaseModel := aBaseModel;
end;

procedure TJanuaViewModelBaseTemplate.SetFormTitle(const Value: string);
begin

end;

procedure TJanuaViewModelBaseTemplate.SetIsThreaded(const Value: boolean);
begin

end;

procedure TJanuaViewModelBaseTemplate.SetUseThreads(const Value: boolean);
begin

end;

end.
