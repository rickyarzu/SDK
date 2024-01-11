unit Janua.Search.ViewModels.Impl;

interface

uses Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB, JOrm.Documents.Intf,
  Janua.ViewModels.Intf, Janua.Search.ViewModels.Intf, Janua.Core.Classes, System.SysUtils, Janua.Core.Types;

type
  TSearchModel = class(TJanuaInterfacedBindableObject, ISearchModel, IJanuaInterface)
  private
    [weak]
    FCurrentRecord: IJanuaRecord;
    FjdsSearch: IJanuaDBDataset;
    FSearchText: string;
    FSearchParam: IJanuaField;
    FPrevSearchText: string;
    FCallBackSearch: TProc<Integer>;
    FEnabled: Boolean;
    FGroupGUID: TGUID;
    FGroupID: Integer;
    FUpdatesEnable: Boolean;
    FSearching: Boolean;
    function GetEnabled: Boolean;
    procedure OrderList;
    procedure SetEnabled(const Value: Boolean);
  protected
    function GetGroupGUID: TGUID;
    function GetGroupID: Integer;
    procedure SetGroupGUID(const Value: TGUID);
    procedure SetGroupID(const Value: Integer);
    procedure SetCallBackSearch(const Value: TProc<Integer>);
    function GetCallBackSearch: TProc<Integer>;
    function GetCurrentRecord: IJanuaRecord;
    function GetjdsSearch: IJanuaDBDataset;
    function GetSearchText: string;
    procedure SetCurrentRecord(const Value: IJanuaRecord);
    procedure SetjdsSearch(Value: IJanuaDBDataset);
    procedure SetSearchText(const Value: string);
    procedure SetUpdatesEnabled(const Value: Boolean);
    function GetUpdatesEnabled: Boolean;
    function GetIDField: string;
  strict protected
    FIDField: string;
    // does not need a GrouID parameter that can retrieve using GetGroupID
    function InternalCreateDataset: IJanuaDBDataset; virtual; abstract;
    function InternalCreateRecord: IJanuaRecord; virtual; abstract;
    function InternalActivate: Boolean; override;
  public
    property CurrentRecord: IJanuaRecord read GetCurrentRecord write SetCurrentRecord;
    property jdsSearch: IJanuaDBDataset read GetjdsSearch write SetjdsSearch;
    property SearchText: string read GetSearchText write SetSearchText;
    property CallBackSearch: TProc<Integer> read GetCallBackSearch write SetCallBackSearch;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property GroupGUID: TGUID read GetGroupGUID write SetGroupGUID;
    property GroupID: Integer read GetGroupID write SetGroupID;
    property UpdatesEnabled: Boolean read GetUpdatesEnabled write SetUpdatesEnabled;
  public
    // TJanuaDatasetEvent = procedure(aDataset: IJanuaDBCustomDataset) of Object;
    procedure OnScroll(aDataset: IJanuaDBCustomDataset);
    procedure EnterSearch;
    procedure StartSearch(aCallBackSearch: TProc<Integer> = nil);
    function Search: Integer;
    procedure IncrementalSearch;
    procedure StandardSearch;
    /// <summary> String: a unique identifier Field can be used for Lookups/Find by Locate method </summary>
    property IDField: string read GetIDField;
    /// <summary> Boolean: Returns true if a record based on GUID is found. </summary>
    function FindByJguid(const aGuid: TGUID): Boolean;
    /// <summary> Boolean: Returns true if a record based on ID is found; IDField must be set before. </summary>
    function FindByID(const aID: Variant): Boolean;
    /// <summary> String: Returns a Lookup Value based on an ID Serch on a Dictionary </summary>
    function LookupValue(const aID: Variant): string;
  public
    constructor Create(const aGroupID: Integer); overload; virtual;
    destructor Destroy; override;
    constructor Create(aDataset: IJanuaDBDataset); overload;
  end;

  TSearchModelClass = class of TSearchModel;

  TCustomSearchModel = class(TSearchModel)
  private
    FCustomRecord: IJanuaRecord;
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
    function InternalCreateRecord: IJanuaRecord; override;
  public
    constructor Create(const aGroupID: Integer; const aRecIntf, aDatasetIntf: TGUID); overload;
  end;

  TSearchViewModel = class(TJanuaInterfacedBindableObject, ISearchViewModel, IJanuaInterface)
  private
    { [weak]
      FCurrentRecord: IJanuaRecord; }
    FSearchModel: ISearchModel;
    FSearchForm: ISearchForm;
    FCallBackSearch: TProc<Integer>;
    FEnabled: Boolean;
    FIncrementalSearch: Boolean;
    FGroupID: Integer;
  protected
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetCurrentRecord: IJanuaRecord;
    function GetjdsSearch: IJanuaDBDataset;
    function GetSearchText: string;
    procedure SetCurrentRecord(const Value: IJanuaRecord);
    procedure SetjdsSearch(Value: IJanuaDBDataset);
    procedure SetSearchText(const Value: string);
    procedure SetdsSearch(const Value: TDataSource);
    function GetdsSearch: TDataSource;
    function GetSearchForm: ISearchForm;
    procedure SetSearchForm(const Value: ISearchForm);
    procedure SetCallBackSearch(const Value: TProc<Integer>);
    function GetCallBackSearch: TProc<Integer>;
    procedure ModelCallBack(aResult: Integer);
    function GetGroupGUID: TGUID;
    function GetGroupID: Integer;
    procedure SetGroupGUID(const Value: TGUID);
    procedure SetGroupID(const Value: Integer);
    function GetIDField: string;
  strict protected
    FjdsSearch: IJanuaDBDataset;
    function InternalCreateModel(const aGroupID: Integer): ISearchModel; virtual; abstract;
    function InternalActivate: Boolean; override;
  public
    property SearchForm: ISearchForm read GetSearchForm write SetSearchForm;
    property CurrentRecord: IJanuaRecord read GetCurrentRecord write SetCurrentRecord;
    property jdsSearch: IJanuaDBDataset read GetjdsSearch write SetjdsSearch;
    property SearchText: string read GetSearchText write SetSearchText;
    property dsSearch: TDataSource read GetdsSearch write SetdsSearch;
    property CallBackSearch: TProc<Integer> read GetCallBackSearch write SetCallBackSearch;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property GroupGUID: TGUID read GetGroupGUID write SetGroupGUID;
    property GroupID: Integer read GetGroupID write SetGroupID;
  public
    constructor Create; override;
    constructor Create(const aGroupID: Integer); overload; virtual;
    constructor Create(const aDataset: IJanuaDBDataset); overload;
    destructor Destroy; override;
    procedure AfterConstruction; override;
  public
    procedure EnterSearch;
    procedure StartSearch(aCallBackSearch: TProc<Integer> = nil);
    function Search: Boolean;
    /// <summary> String: a unique identifier Field can be used for Lookups/Find by Locate method </summary>
    property IDField: string read GetIDField;
    /// <summary> Boolean: Returns true if a record based on GUID is found. </summary>
    function FindByJguid(const aGuid: TGUID): Boolean;
    /// <summary> Boolean: Returns true if a record based on ID is found; IDField must be set before. </summary>
    function FindByID(const aID: Variant): Boolean;
    /// <summary> String: Returns a Lookup Value based on an ID Serch on a Dictionary </summary>
    function LookupValue(const aID: Variant): string;
  end;

  TSearchViewModelClass = class of TSearchViewModel;

  TCustomSearchViewModel = class(TSearchViewModel, ISearchViewModel, IJanuaInterface)
  private
    FRecIntf, FDatasetIntf: TGUID;
  protected
    function InternalCreateModel(const aGroupID: Integer): ISearchModel; override;
  public
    constructor Create(const aGroupID: Integer; const aRecIntf, aDatasetIntf: TGUID); overload;
  end;

  // ****************************** lookup Engine ********************************************

type
  TLookupModel = class(TJanuaInterfacedBindableObject, ILookupModel)
  private
    FjdsLookup: IJanuaDBDataset;
    FCurrentRecord: IJanuaRecord;
    FKeyField: TField;
    FDisplayField: TField;
    FGroupID: Variant;
    FCallBackSearch: TProc<Integer>;
    FKeyFieldName: string;
    FDisplayFieldName: string;
    FRecordSet: IJanuaRecord;
    FSelectedItem: string;
  strict protected
    // does not need a GrouID parameter that can retrieve using GetGroupID
    function InternalActivate: Boolean; override;
    function InternalCreateDataset: IJanuaDBDataset; virtual; abstract;
    function InternalCreateRecord: IJanuaRecord; virtual; abstract;
    function InternalCreateRecordSet: IJanuaRecord; virtual; abstract;
  protected
    function GetKeyFieldName: string;
    procedure SetKeyFieldName(const Value: string);
    function GetDisplayFieldName: string;
    procedure SetDisplayFieldName(const Value: string);
    function GetjdsLookup: IJanuaDBDataset;
    function GetIndexField: TField;
    function GetDisplayField: TField;
    function GetRecordSet: IJanuaRecord;
    function GetCurrentRecord: IJanuaRecord;
    procedure SetCallBackSearch(const Value: TProc<Integer>);
    function GetCallBackSearch: TProc<Integer>;
    function GetSelectedItem: string;
    function GetGroupID: Integer;
    procedure SetGroupID(const Value: Integer);
    procedure SetSelectedItem(const Value: string);
    function GetKeyFieldValue: string;
    function GetDisplayFieldValue: string;
  public
    constructor Create(const aGroupID: Integer); overload; virtual;
  public
    property SelectedItem: string read GetSelectedItem write SetSelectedItem;
    property CallBackSearch: TProc<Integer> read GetCallBackSearch write SetCallBackSearch;
    property CurrentRecord: IJanuaRecord read GetCurrentRecord;
    property RecordSet: IJanuaRecord read GetRecordSet;
    property DisplayField: TField read GetDisplayField;
    property GroupID: Integer read GetGroupID write SetGroupID;
    property jdsLookup: IJanuaDBDataset read GetjdsLookup;
    property IndexField: TField read GetIndexField;
    property KeyFieldName: string read GetKeyFieldName write SetKeyFieldName;
    property DisplayFieldName: string read GetDisplayFieldName write SetDisplayFieldName;
    property KeyFieldValue: string read GetKeyFieldValue;
    property DisplayFieldValue: string read GetDisplayFieldValue;
  end;

  TLookupModelClass = class of TLookupModel;

implementation

uses Spring, Janua.Orm.Types, Janua.Application.Framework, System.UITypes, System.StrUtils, Janua.Orm.Impl,
  Janua.Core.AsyncTask, Janua.Core.Functions;

{ TSearchModel }

constructor TSearchModel.Create(const aGroupID: Integer);
begin
  inherited Create;
  try
    FGroupID := aGroupID;
    FUpdatesEnable := False;
    FEnabled := False;
    FSearching := False;
    if not Assigned(jdsSearch) then
      SetjdsSearch(InternalCreateDataset);
    Guard.CheckNotNull(jdsSearch, 'jdsSearch');
    CurrentRecord := InternalCreateRecord; // : IJanuaDBDataset;
  except
    on e: exception do
      raiseexception('Create', e, self);
  end;
end;

procedure TSearchModel.OrderList;
begin
  if FEnabled then
    try
      FjdsSearch.First;
      while not FjdsSearch.EOF do
      begin
        FjdsSearch.Dataset.Edit;
        FjdsSearch.FieldByName('pos').asInteger :=
          Pos(UpperCase(FSearchText), FjdsSearch.FieldByName('search_index').AsString);
        FjdsSearch.Dataset.Post;
        FjdsSearch.Next;
      end;
      FjdsSearch.OrderByFields.ClearFields;
      FjdsSearch.OrderByFields.AddField('pos'); // := 'pos';
    except
      on e: exception do
        raiseexception('OrderList', e, self);
    end;
end;

constructor TSearchModel.Create(aDataset: IJanuaDBDataset);
begin
  inherited Create;
  try
    Guard.CheckNotNull(aDataset, 'aDataset');
    FUpdatesEnable := False;
    FEnabled := False;
    FSearching := False;
    SetjdsSearch(aDataset);
    CurrentRecord := InternalCreateRecord; // : IJanuaDBDataset;
  except
    on e: exception do
      raiseexception('Create', e, self);
  end;
end;

destructor TSearchModel.Destroy;
begin
  { Destroy anticipates clearing and destruction of interfaced objects to check errors on unit testing }
  try
    if Assigned(CurrentRecord) then
    begin
      CurrentRecord.ClearBindings;
      CurrentRecord.Clear;
    end;
    CurrentRecord := nil;

    if Assigned(jdsSearch) then
    begin
      jdsSearch.FilterParams.ClearParams;
      jdsSearch.OnScroll := nil;
    end;
    jdsSearch := nil;

  except
    on e: exception do
      LogException('Destroy', e, self);
  end;

  inherited;
end;

procedure TSearchModel.EnterSearch;
begin
  FPrevSearchText := StripString(FSearchText);
  { FEnabled := True; }
end;

function TSearchModel.FindByID(const aID: Variant): Boolean;
begin
  Result := (IDField <> '') and jdsSearch.Locate(IDField, aID, []);
  if Result then
    FCurrentRecord.LoadFromDataset;
end;

function TSearchModel.FindByJguid(const aGuid: TGUID): Boolean;
begin
  Result := jdsSearch.Locate('jguid', aGuid.ToString, []);
  if Result then
    FCurrentRecord.LoadFromDataset;
end;

function TSearchModel.GetCallBackSearch: TProc<Integer>;
begin
  Result := FCallBackSearch
end;

function TSearchModel.GetCurrentRecord: IJanuaRecord;
begin
  Result := FCurrentRecord
end;

function TSearchModel.GetEnabled: Boolean;
begin
  Result := FEnabled;
end;

function TSearchModel.GetGroupGUID: TGUID;
begin
  Result := FGroupGUID;
end;

function TSearchModel.GetGroupID: Integer;
begin
  Result := FGroupID;
end;

function TSearchModel.GetIDField: string;
begin
  Result := FIDField
end;

function TSearchModel.GetjdsSearch: IJanuaDBDataset;
begin
  Result := FjdsSearch
end;

function TSearchModel.GetSearchText: string;
begin
  Result := FSearchText
end;

function TSearchModel.GetUpdatesEnabled: Boolean;
begin
  Result := FUpdatesEnable
end;

procedure TSearchModel.IncrementalSearch;
begin
  if FEnabled then
    if TJanuaApplication.UnitTesting then
      Search
    else
      Async.Run<Boolean>(
        function: Boolean
        begin
          // This is the "background" anonymous method. Runs in the
          // background thread, and its result is passed
          // to the "success" callback.
          // In this case the result is a String.
          if FSearching then
            Sleep(100);
          FSearching := True;
          MonitorEnter(self);
          try
            Result := Search > 0;
          finally
            MonitorExit(self);
          end;
        end,
        procedure(const aValue: Boolean)
        begin
          // This is the "success" callback. Runs in the UI thread and
          // gets the result of the "background" anonymous method.
          // TMonitor.Exit(self);
          FSearching := False;
        end,
        procedure(const Ex: exception)
        begin
          // This is the "error" callback.
          // Runs in the UI thread and is called only if the
          // "background" anonymous method raises an exception.
          FSearching := False;
          WriteLocalLog('IncrementalSearch', 'Incremental Search Error. ' + Ex.Message);
        end);
end;

function TSearchModel.InternalActivate: Boolean;
begin
  Result := False;
  try
{$IFNDEF JANUATEST } MonitorEnter(self); {$ENDIF}
    try
      Result := Active;
      if not Result then
        Result := inherited;
      if Result then
      begin
        jdsSearch.OnScroll := OnScroll;
        if not jdsSearch.Active then
          jdsSearch.Open;
        if jdsSearch.Active then
          OnScroll(jdsSearch);
      end;
    finally
{$IFNDEF JANUATEST } MonitorExit(self); {$ENDIF}
    end;
  except
    on e: exception do
      raiseexception('InternalActivate', e, self);
  end;
end;

function TSearchModel.LookupValue(const aID: Variant): string;
begin

end;

procedure TSearchModel.OnScroll(aDataset: IJanuaDBCustomDataset);
var
  lDataset: IJanuaDBDataset;
begin
  if FEnabled and FUpdatesEnable and Assigned(FCurrentRecord) then
    if (FCurrentRecord.GUID.ToString <> FjdsSearch.FieldByName('jguid').AsString) then
      if Supports(jdsSearch, IJanuaDBDataset, lDataset) then
        FCurrentRecord.LoadFromDataset(lDataset);
end;

function TSearchModel.Search: Integer;
{ var
  lSearchString: string; }
begin
  Result := 0;
  try
{$IFNDEF JANUATEST } MonitorEnter(self); {$ENDIF}
    try
      UpdatesEnabled := False;
      { lSearchString := QuotedStr('%' + IfThen(FSearchText <> '', UpperCase(FSearchText) + '%', ''));
        FjdsSearch.SetSearchFilter('search_index like' + lSearchString);
        FjdsSearch.Filtered := True; }
      Guard.CheckNotNull(FjdsSearch, 'FjdsSearch');
      Guard.CheckNotNull(FSearchParam, 'FSearchParam');
      FSearchParam.AsString := FSearchText;
      FjdsSearch.FilterParams.Activate;
      Sleep(40);
      if FjdsSearch.FilterParams.Active then
        FjdsSearch.ApplyFilter;
      Result := FjdsSearch.RecordCount;

      if (Result > 1) and (Result < 100) then
        OrderList
      else
      begin
        FjdsSearch.OrderByFields.ClearFields;
        FjdsSearch.OrderByFields.AddField('search_index', jobASC, jocCaseInsensitive);
      end;

      FjdsSearch.First;
      UpdatesEnabled := True;
    finally
{$IFNDEF JANUATEST } MonitorExit(self); {$ENDIF}
    end;
  except
    on e: exception do
      raiseexception('Search', e, self);
  end;
end;

procedure TSearchModel.SetCallBackSearch(const Value: TProc<Integer>);
begin
  FCallBackSearch := Value;
end;

procedure TSearchModel.SetCurrentRecord(const Value: IJanuaRecord);
begin
  FCurrentRecord := Value
end;

procedure TSearchModel.SetEnabled(const Value: Boolean);
begin
  if FEnabled <> Value then
  begin
    FEnabled := Value;
    if FEnabled then
      IncrementalSearch;
  end;
end;

procedure TSearchModel.SetGroupGUID(const Value: TGUID);
begin
  FGroupGUID := Value
end;

procedure TSearchModel.SetGroupID(const Value: Integer);
begin
  FGroupID := Value
end;

procedure TSearchModel.SetjdsSearch(Value: IJanuaDBDataset);
begin
  if FjdsSearch <> Value then
  begin
    FjdsSearch := Value;
    if Assigned(FjdsSearch) then
    begin
      if not FjdsSearch.FilterParams.FindParam('search_index', FSearchParam) then
      begin
        FjdsSearch.FilterParams.ClearParams;
        FSearchParam := FjdsSearch.FilterParams.AddParam('search_index', jptString, '');
      end;
      FSearchParam.ParamOperator := TJanuaOperator.LikeStrippedLower;
      FSearchParam.AsString := '';
      FjdsSearch.FilterParams.Active := False;
    end
    else
    begin
      FSearchParam := nil;
    end;
  end;

end;

procedure TSearchModel.SetSearchText(const Value: string);
var
  iLength: Integer;
  bLength: Boolean;
  sStripSearch: string;
begin
  try
    if (Value <> FSearchText) then
    begin
      FSearchText := Value;
      sStripSearch := StripString(Value);
      if (FPrevSearchText <> sStripSearch) then
      begin
        iLength := Length(sStripSearch);
        bLength := ((iLength - Length(FPrevSearchText)) < 0) or (iLength > 2);
        FPrevSearchText := sStripSearch;
        if (bLength or ((FPrevSearchText = '') or (FPrevSearchText = '%'))) then
          IncrementalSearch { StandardSearch }; // use StandardSearch for Debugging
      end;
      { BindManager.Notify('MainSearchText'); }
    end;
  except
    on e: exception do
      raiseexception('SetMainSearchText', e, self, self.LogString);
  end;
end;

procedure TSearchModel.SetUpdatesEnabled(const Value: Boolean);
begin
  if FUpdatesEnable <> Value then
  begin
    FUpdatesEnable := Value;
    if Assigned(FjdsSearch) then
    begin
      FjdsSearch.DataSource.Enabled := FUpdatesEnable;
      if FUpdatesEnable then
        OnScroll(FjdsSearch);
    end;
    BindManager.Notify('UpdatesEnabled');
  end;
end;

procedure TSearchModel.StandardSearch;
begin
  UpdatesEnabled := False;
  Search;
  UpdatesEnabled := True;
end;

procedure TSearchModel.StartSearch(aCallBackSearch: TProc<Integer>);
var
  lResult: Integer;
begin
  if FEnabled and (FPrevSearchText.ToLower <> StripString(FSearchText)) then
    try
      lResult := Search;
{$IFDEF JANUATEST }
      if Assigned(FCallBackSearch) then
{$ELSE}
{$IFDEF DEBUG}
      Guard.CheckTrue(Assigned(FCallBackSearch), 'FCallBackSearch');
{$ENDIF}
{$ENDIF JANUATEST }
      CallBackSearch(lResult);
      if Assigned(aCallBackSearch) then
        aCallBackSearch(lResult)
    except
      on e: exception do
        raiseexception('StartSearch', e, self);
    end;
end;

{ TSearchViewModel }

procedure TSearchViewModel.AfterConstruction;
begin
  inherited;
end;

constructor TSearchViewModel.Create(const aGroupID: Integer);
begin
  Create;
  try
    // Incremental Search is not set by default, becomes Active where Main Search Form is Shown.
    FIncrementalSearch := False;
    FEnabled := False;
    FGroupID := aGroupID;
  except
    on e: exception do
      raiseexception('Create(' + aGroupID.ToString + ')', e, self);
  end;

end;

procedure TSearchViewModel.EnterSearch;
begin
  Enabled := True;
  FSearchModel.EnterSearch;
end;

function TSearchViewModel.FindByID(const aID: Variant): Boolean;
begin
  Result := FSearchModel.FindByID(aID)
end;

function TSearchViewModel.FindByJguid(const aGuid: TGUID): Boolean;
begin
  Result := FSearchModel.FindByJguid(aGuid)
end;

function TSearchViewModel.GetCallBackSearch: TProc<Integer>;
begin
  Result := FCallBackSearch
end;

function TSearchViewModel.GetCurrentRecord: IJanuaRecord;
begin
  Result := FSearchModel.CurrentRecord
end;

function TSearchViewModel.GetdsSearch: TDataSource;
begin
  Result := jdsSearch.DataSource
end;

function TSearchViewModel.GetGroupGUID: TGUID;
begin
  Result := FSearchModel.GetGroupGUID
end;

function TSearchViewModel.GetGroupID: Integer;
begin
  Result := FSearchModel.GroupID
end;

function TSearchViewModel.GetIDField: string;
begin
  Result := FSearchModel.IDField
end;

function TSearchViewModel.GetjdsSearch: IJanuaDBDataset;
begin
  Result := FjdsSearch
end;

function TSearchViewModel.GetSearchForm: ISearchForm;
begin
  if not Assigned(FSearchForm) and not TJanuaApplicationFactory.TryGetComponent(ISearchForm, nil, FSearchForm)
  then
    raise exception.Create('TSearchViewModel.Search ISearchForm not set');
  if not Assigned(FSearchForm.ViewModel) then
    FSearchForm.ViewModel := self as ISearchViewModel;
  Result := FSearchForm
end;

function TSearchViewModel.GetSearchText: string;
begin
  Result := FSearchModel.SearchText
end;

function TSearchViewModel.InternalActivate: Boolean;
var
  vTest: Boolean;
begin
  Result := False;
  try
{$IFNDEF JANUATEST } MonitorEnter(self); {$ENDIF}
    try
      Result := Active;
      if not Result then
        Result := inherited;
      if Result then
      begin
        // Method Extracted from Create;
        FSearchModel := InternalCreateModel(FGroupID);
        Guard.CheckNotNull(FSearchModel, Classname + 'Create(' + FGroupID.ToString + '). FSearchModel');
        vTest := FSearchModel.Activate;
        Guard.CheckTrue(vTest, 'FSearchModel failed to Activate');
        CurrentRecord := FSearchModel.CurrentRecord;
        Guard.CheckNotNull(FSearchModel, Classname + 'Create(' + FGroupID.ToString + '). CurrentRecord');
        jdsSearch := FSearchModel.jdsSearch;
        Guard.CheckNotNull(jdsSearch, Classname + 'Create(' + FGroupID.ToString + '). jdsSearch');
        FSearchModel.CallBackSearch := ModelCallBack;
      end;
    finally
{$IFNDEF JANUATEST } MonitorExit(self); {$ENDIF}
    end;
  except
    on e: exception do
      raiseexception('InternalActivate', e, self);
  end;
end;

function TSearchViewModel.LookupValue(const aID: Variant): string;
begin

end;

procedure TSearchViewModel.ModelCallBack(aResult: Integer);
var
  aTest: Boolean;
begin
  try
    aTest := aResult = 1;
    if not aTest then
    begin
      FIncrementalSearch := True;
      aTest := SearchForm.ShowModal = mrOk;
      FIncrementalSearch := False;
    end;
    if aTest and Assigned(FCallBackSearch) then
      FCallBackSearch(aResult);
  except
    on e: exception do
      raiseexception('ModelCallBack', e, self);
  end;
end;

function TSearchViewModel.Search: Boolean;
begin
  Result := FSearchModel.Search = 1;
  if Not Result then
  begin
    FIncrementalSearch := True;
    SearchForm.ShowModal;
    FIncrementalSearch := False;
    Result := SearchForm.ModalResult = idOK;
  end;
end;

procedure TSearchViewModel.SetCallBackSearch(const Value: TProc<Integer>);
begin
  FCallBackSearch := Value;
end;

procedure TSearchViewModel.SetCurrentRecord(const Value: IJanuaRecord);
begin
  FSearchModel.CurrentRecord := Value
end;

procedure TSearchViewModel.SetdsSearch(const Value: TDataSource);
begin
  jdsSearch.DataSource := Value
end;

procedure TSearchViewModel.SetGroupGUID(const Value: TGUID);
begin
  FSearchModel.SetGroupGUID(Value);
end;

procedure TSearchViewModel.SetGroupID(const Value: Integer);
begin
  FSearchModel.SetGroupID(Value);
end;

procedure TSearchViewModel.SetjdsSearch(Value: IJanuaDBDataset);
begin
  FjdsSearch := Value
end;

procedure TSearchViewModel.SetSearchForm(const Value: ISearchForm);
begin
  FSearchForm := Value
end;

procedure TSearchViewModel.SetSearchText(const Value: string);
begin
{$IFDEF DEBUG} Guard.CheckNotNull(FSearchModel, Classname + '.SetSearchText FSearchModel'); {$ENDIF}
  try
    if FSearchModel.SearchText <> Value then
    begin
      Sleep(100);
      FSearchModel.SearchText := Value;
      { BindManager.Notify('SearchText'); }
      if FEnabled and FIncrementalSearch then
        FSearchModel.IncrementalSearch;
    end;
  except
    on e: exception do
      raiseexception('SetSearchText', e, self);
  end;
end;

procedure TSearchViewModel.StartSearch(aCallBackSearch: TProc<Integer>);
begin
  if Assigned(aCallBackSearch) then
    FCallBackSearch := aCallBackSearch;
  FSearchModel.StartSearch;
end;

constructor TSearchViewModel.Create;
begin
  inherited;
  FjdsSearch := nil;
end;

constructor TSearchViewModel.Create(const aDataset: IJanuaDBDataset);
begin
  Create;
  try
    // Incremental Search is not set by default, becomes Active where Main Search Form is Shown.
    FIncrementalSearch := False;
    FEnabled := False;
    FjdsSearch := aDataset;
  except
    on e: exception do
      raiseexception('Create(' + aDataset.Dataset.Name + ')', e, self);
  end;
end;

destructor TSearchViewModel.Destroy;
begin
  if Assigned(FSearchForm) then
    FSearchForm.Component.Free;
  inherited;
end;

function TSearchViewModel.GetEnabled: Boolean;
begin
  Result := FEnabled;
end;

procedure TSearchViewModel.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
  FSearchModel.Enabled := FEnabled;
end;

constructor TLookupModel.Create(const aGroupID: Integer);
begin
  TJanuaApplication.ExecProc(
    procedure
    begin
      inherited Create;
      FGroupID := aGroupID;
      FjdsLookup := InternalCreateDataset;
      FCurrentRecord := InternalCreateRecord; // : IJanuaDBDataset;
    end, 'Create', self);
end;

function TLookupModel.GetCallBackSearch: TProc<Integer>;
begin
  Result := FCallBackSearch
end;

function TLookupModel.GetCurrentRecord: IJanuaRecord;
begin
  Result := FCurrentRecord
end;

function TLookupModel.GetDisplayField: TField;
begin
  Result := FDisplayField
end;

function TLookupModel.GetDisplayFieldName: string;
begin
  Result := FDisplayFieldName;
end;

function TLookupModel.GetDisplayFieldValue: string;
begin
  Result := FDisplayField.AsString
end;

function TLookupModel.GetGroupID: Integer;
begin
  Result := FGroupID;
end;

function TLookupModel.GetIndexField: TField;
begin
  Result := FKeyField
end;

function TLookupModel.GetjdsLookup: IJanuaDBDataset;
begin
  Result := FjdsLookup
end;

function TLookupModel.GetKeyFieldName: string;
begin
  Result := FKeyFieldName;
end;

function TLookupModel.GetKeyFieldValue: string;
begin
  Result := FKeyField.AsString
end;

function TLookupModel.GetRecordSet: IJanuaRecord;
begin
  Result := FRecordSet
end;

function TLookupModel.GetSelectedItem: string;
begin
  Result := FSelectedItem
end;

function TLookupModel.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        // Code goes here .......................................

      end;
    except
      on e: exception do
        raiseexception('InternalActivate', e);
    end;
end;

procedure TLookupModel.SetCallBackSearch(const Value: TProc<Integer>);
begin
  FCallBackSearch := Value
end;

procedure TLookupModel.SetDisplayFieldName(const Value: string);
begin
  if Value <> FDisplayFieldName then
  begin
    FDisplayFieldName := Value;
    if FDisplayFieldName <> '' then
      FDisplayField := FjdsLookup.FieldByName(FDisplayFieldName)
    else
      FDisplayField := nil;
  end;
end;

procedure TLookupModel.SetGroupID(const Value: Integer);
begin
  FGroupID := Value;
end;

procedure TLookupModel.SetKeyFieldName(const Value: string);
begin
  FKeyFieldName := Value;
end;

procedure TLookupModel.SetSelectedItem(const Value: string);
begin
  if FSelectedItem <> Value then
  begin
    FSelectedItem := Value;
    if jdsLookup.Locate(FKeyFieldName, Value, []) then
      CurrentRecord.LoadFromDataset(jdsLookup)
    else
      CreateException('SetSelectedItem', 'Key(' + FKeyFieldName + ') not found: ' + Value, self);
    BindManager.Notify('SelectedItem');
  end;

end;

{ TCustomSearchModel }

constructor TCustomSearchModel.Create(const aGroupID: Integer; const aRecIntf, aDatasetIntf: TGUID);
var
  ljdsSearch: IJanuaDBDataset;
begin
  inherited Create;
  try
    FGroupID := aGroupID;
    FUpdatesEnable := False;
    FEnabled := False;
    FSearching := False;

    if TJanuaApplicationFactory.LookupFactory.TryGetJanuaDataset(aDatasetIntf, aGroupID, ljdsSearch) then
      SetjdsSearch(ljdsSearch)
    else
      raise exception.Create('Dataset interface not found:' + GetInterfaceName(aDatasetIntf));
    Guard.CheckNotNull(jdsSearch, 'jdsSearch');

    if TJanuaOrmFactory.TryGetRecordIntf(aRecIntf, FCustomRecord, GetInterfaceName(aRecIntf)) then
      CurrentRecord := FCustomRecord
    else
      raise exception.Create('Dataset interface not found:' + GetInterfaceName(aDatasetIntf));
  except
    on e: exception do
      raiseexception('Create', e, self);
  end;
end;

function TCustomSearchModel.InternalCreateDataset: IJanuaDBDataset;
begin
  Result := nil
end;

function TCustomSearchModel.InternalCreateRecord: IJanuaRecord;
begin
  Result := nil;
end;

{ TCustomSearchViewModel }

constructor TCustomSearchViewModel.Create(const aGroupID: Integer; const aRecIntf, aDatasetIntf: TGUID);
begin
  Create;
  try
    // Incremental Search is not set by default, becomes Active where Main Search Form is Shown.
    FIncrementalSearch := False;
    FEnabled := False;
    FGroupID := aGroupID;
    FRecIntf := aRecIntf;
    FDatasetIntf := aDatasetIntf;
  except
    on e: exception do
      raiseexception('Create(' + aGroupID.ToString + ')', e, self);
  end
end;

function TCustomSearchViewModel.InternalCreateModel(const aGroupID: Integer): ISearchModel;
begin
  Result := TCustomSearchModel.Create(aGroupID, FRecIntf, FDatasetIntf)
end;

end.
