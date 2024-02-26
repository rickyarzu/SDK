unit Janua.Anagraph.Model.Impl;

interface

uses
  // System and RTL
  System.Classes, System.SysUtils, Spring, System.StrUtils, Spring.Collections, Data.DB,
  // Janua
  Janua.ViewModels.Intf, Janua.Models.Templates, Janua.Anagraph.ViewModel.Intf, Janua.Orm.Intf,
  Janua.core.Classes.Intf, JOrm.Anagraph.Intf, Janua.core.Classes, Janua.Orm.Types;

type
  TJanuaCustomAnagraphDataModule = class(TJanuaDataModuleTemplate, IJanuaAnagraphDataModule)
  strict protected
    { Private declarations }
    FjdsAnagraphs: IJanuaDBDataset;
    FjdsBranches: IJanuaDBDataset;
    FjdsGroups: IJanuaDBDataset;
    FjdsIdentities: IJanuaDBDataset;
    FjdsSingleAnagraph: IJanuaDBDataset;
    FjdsAddresses: IJanuaDBDataset;
    FjdsMainAddress: IJanuaDBDataset;
  private
    function GetjdsIdentities: IJanuaDBDataset;
    procedure SetjdsIdentities(Value: IJanuaDBDataset);
    function GetjdsAnagraphs: IJanuaDBDataset;
    procedure SetjdsAnagraphs(Value: IJanuaDBDataset);
    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    function GetjdsBranches: IJanuaDBDataset;
    procedure SetjdsBranches(Value: IJanuaDBDataset);
    function GetjdsSingleAnagraph: IJanuaDBDataset;
    procedure SetjdsSingleAnagraph(Value: IJanuaDBDataset);
    function GetjdsAddresses: IJanuaDBDataset;
    function GetjdsMainAddress: IJanuaDBDataset;
  strict protected
    function InternalActivate: boolean; override;
    procedure SetjdsAddresses(Value: IJanuaDBDataset);
    procedure SetjdsMainAddress(Value: IJanuaDBDataset);
  protected
    property jdsSingleAnagraph: IJanuaDBDataset read GetjdsSingleAnagraph write SetjdsSingleAnagraph;
    property jdsAnagraphs: IJanuaDBDataset read GetjdsAnagraphs write SetjdsAnagraphs;
    property jdsGroups: IJanuaDBDataset read GetjdsGroups write SetjdsGroups;
    property jdsBranches: IJanuaDBDataset read GetjdsBranches write SetjdsBranches;
    property jdsIdentities: IJanuaDBDataset read GetjdsIdentities write SetjdsIdentities;
    /// <summary> List of all Addresses including the Main Address note: addresses can be exchanged </summary>
    property jdsAddresses: IJanuaDBDataset read GetjdsAddresses;
    /// <summary> Anagraph main Address  </summary>
    property jdsMainAddress: IJanuaDBDataset read GetjdsMainAddress;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

  TJanuaDBAnagraphModel = class(TJanuaModelDBTemplate, IJanuaDBAnagraphModel, IJanuaModel)
  strict private
    FAnagraphRecord: IAnagraphView;
    FAnagraphDataModule: IJanuaAnagraphDataModule;
    FAnagraphID: Integer;
  private
    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    function GetAnagraphRecord: IAnagraphView;
    procedure SetAnagraphRecord(const Value: IAnagraphView);
    function GetjdsAnagraphs: IJanuaDBDataset;
    procedure SetjdsAnagraphs(Value: IJanuaDBDataset);
    function GetjdsBranches: IJanuaDBDataset;
    procedure SetjdsBranches(Value: IJanuaDBDataset);
    procedure DefaultParams;
    function GetAnagraphID: Integer;
    function GetjdsIdentities: IJanuaDBDataset;
    procedure SetjdsIdentities(Value: IJanuaDBDataset);
    function GetjdsAddresses: IJanuaDBDataset;
    function GetjdsSingleAnagraph: IJanuaDBDataset;
    procedure SetjdsSingleAnagraph(const Value: IJanuaDBDataset);
    function GetjdsMainAddress: IJanuaDBDataset;
  strict protected
    property jdsSingleAnagraph: IJanuaDBDataset read GetjdsSingleAnagraph write SetjdsSingleAnagraph;
  public
    property jdsAnagraphs: IJanuaDBDataset read GetjdsAnagraphs write SetjdsAnagraphs;
    property jdsGroups: IJanuaDBDataset read GetjdsGroups write SetjdsGroups;
    property AnagraphRecord: IAnagraphView read GetAnagraphRecord write SetAnagraphRecord;
    property jdsIdentities: IJanuaDBDataset read GetjdsIdentities write SetjdsIdentities;
    property jdsBranches: IJanuaDBDataset read GetjdsBranches write SetjdsBranches;
    property jdsAddresses: IJanuaDBDataset read GetjdsAddresses;
    /// <summary> Anagraph main Address  </summary>
    property jdsMainAddress: IJanuaDBDataset read GetjdsMainAddress;
  protected
    procedure SetAnagraphID(const Value: Integer);
    // la procedura AfterScroll non serve perchè replica il metodo anonimo che fa la medesima cosa
    (* procedure vtAnagraphsAfterScroll(DataSet: TDataSet); *)
    procedure SetMainSearchText(const Value: string); override;
    procedure InternalSetParams; override;
    procedure OnNewRecord(Sender: TObject); virtual;
    procedure AssignDatasets(const aAnagraph: IAnagraphView);
  public
    procedure OpenAllGroups;
    function FindAddresbyID(aID: Integer): boolean;
    function FindAddress(sSearch: string): Integer;
    function SearchAnagraphByName(aName: string): Integer;
    procedure OpenAnagraphByGroup(gID: Integer);
    function SearchAnagraphByID(aID: Integer): boolean;
    function AddNewAnagraph(const aAnagraph: IAnagraphView): Integer;
    function UpdateAnagraph(const aAnagraph: IAnagraphView): boolean;
    function TryGetAnagraphByID(out aAnagraph: IAnagraphView; const aID: Integer): boolean;
    function TryGetAnagraphByGUID(out aAnagraph: IAnagraphView; const aGUID: TGUID): boolean;
  strict protected
    function InternalActivate: boolean; override;
    procedure SetupColumns;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    class function New(const aGroupID: Integer): IJanuaDBAnagraphModel;
  public
    property AnagraphID: Integer read GetAnagraphID write SetAnagraphID;
  end;

implementation

uses Janua.Orm.Impl, JOrm.Anagraph.Group.Intf, Janua.core.Json, Janua.core.Functions, Janua.core.Types,
  Janua.Application.Framework, JOrm.Anagraph.Impl;

const
  sl = sLineBreak;

  { TJanuaDBAnagraphModel }
function TJanuaDBAnagraphModel.AddNewAnagraph(const aAnagraph: IAnagraphView): Integer;
begin
  FAnagraphDataModule.jdsSingleAnagraph.Close;
  // At first I must set the StoreDataset property of IJanuaRecord to the Dataset Wrapper
  AssignDatasets(aAnagraph);
  // I Must Filter the Dataset before posting to it
  FAnagraphDataModule.jdsSingleAnagraph.SearchRecord(aAnagraph.GUID);

  aAnagraph.SaveToDataset(True);
  if FAnagraphRecord.AnagraphID.AsInteger = 0 then
  begin
    FAnagraphRecord.DirectLoadFromDataset(jdsSingleAnagraph.Dataset);
    if FAnagraphRecord.AnagraphID.AsInteger = 0 then
    begin
      FAnagraphDataModule.jdsSingleAnagraph.Refresh;
      FAnagraphRecord.DirectLoadFromDataset(jdsSingleAnagraph.Dataset);
    end;
  end;
  if (FAnagraphRecord.MainAddress.Id.AsInteger = 0) and (jdsMainAddress.FieldByName('id').AsInteger > 0) then
  begin
    FAnagraphRecord.MainAddress.DirectLoadFromDataset(jdsMainAddress.Dataset);
  end;

  Result := FAnagraphRecord.AnagraphID.AsInteger;
end;

procedure TJanuaDBAnagraphModel.AfterConstruction;
begin
  inherited;
{$IFDEF DEBUG}
  Guard.CheckNotNull(FAnagraphDataModule, 'FAnagraphDataModule');
  Guard.CheckNotNull(FAnagraphDataModule.jdsMainAddress, 'jdsMainAddress');
  Guard.CheckNotNull(FAnagraphDataModule.jdsAnagraphs, 'jdsAnagraphs');
  Guard.CheckNotNull(FAnagraphDataModule.jdsSingleAnagraph, 'jdsSingleAnagraph');
  Guard.CheckNotNull(FAnagraphDataModule.jdsGroups, 'jdsGroups');
  Guard.CheckNotNull(FAnagraphDataModule.jdsAddresses, 'jdsAddresses');
{$ENDIF}
  try
    FAnagraphDataModule.Activate;
    // FjdsDataset must be assigned to the master Dataset of the DataModule in order to correctly setup the module
    FjdsDataset := FAnagraphDataModule.jdsAnagraphs;
    // Index is set up upon Last Name as first Index (case insensitive if possibile).
    OrderByFields.AddField('AN_LAST_NAME', TOrderByEnum.jobASC, TOrderByCompare.jocCaseInsensitive);
    // Second Index Should be the First Name (if set).
    OrderByFields.AddField('AN_FIRST_NAME', TOrderByEnum.jobASC, TOrderByCompare.jocCaseInsensitive);
    SetjdsRecordDataset(FAnagraphDataModule.jdsSingleAnagraph);
    FAnagraphRecord.StoreDataset := FAnagraphDataModule.jdsSingleAnagraph;
    // Attach jdsMaster to Current Record (right now ... jdsDetail should be Attached too ...)
    FAnagraphRecord.SetupDataset(FAnagraphDataModule.jdsSingleAnagraph, []);
    FAnagraphRecord.MainAddress.StoreDataset := FAnagraphDataModule.jdsMainAddress;
    FAnagraphRecord.MainAddress.SetupDataset(FAnagraphDataModule.jdsSingleAnagraph, []);
    FAnagraphRecord.OnNewRecord := OnNewRecord;
    jdsMaster := FAnagraphDataModule.jdsAnagraphs;
    jdsGroups := FAnagraphDataModule.jdsGroups;
    jdsDetail := FAnagraphDataModule.jdsAddresses;
  except
    on e: Exception do
      RaiseException('AfterConstruction', e, Self);
  end;
end;

procedure TJanuaDBAnagraphModel.AssignDatasets(const aAnagraph: IAnagraphView);
begin
  aAnagraph.StoreDataset := FAnagraphDataModule.jdsSingleAnagraph;
  aAnagraph.MainAddress.StoreDataset := FAnagraphDataModule.jdsMainAddress;
  aAnagraph.Addresses.StoreDataset := FAnagraphDataModule.jdsAddresses;
  aAnagraph.AnagraphID.IsEntityKey;
  if aAnagraph.MainAddress.FullAddress.AsString <> aAnagraph.AnFullAddress.AsString then
    aAnagraph.MainAddress.SetfromAnagraph(aAnagraph.AsIAnagraph)
end;

procedure TJanuaDBAnagraphModel.BeforeDestruction;
begin
  inherited;
end;

constructor TJanuaDBAnagraphModel.Create;
begin
  inherited;
  FAnagraphID := 0;
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaAnagraphDataModule, FAnagraphDataModule) then
      raise Exception.Create('TJanuaDBAnagraphModel.Create IJanuaAnagraphDataModule not set');
    SetInternalDataModule(FAnagraphDataModule as IJanuaDataModuleContainer);
    if not TJanuaOrmFactory.TryGetRecordIntf(IAnagraphView, FAnagraphRecord, 'AnagraphView',
      TJanuaEntity.AnagraphAnagraphs) then
      raise Exception.Create('TJanuaDBAnagraphModel.FAnagraphRecord IAnagraph not registered');
    SetInternalRecord(FAnagraphRecord);
    SetjdsMaster(jdsAnagraphs);
    SetRecordDataset(FAnagraphDataModule.jdsSingleAnagraph);
    AssignDatasets(FAnagraphRecord);
  except
    on e: Exception do
    begin
      if Assigned(FLogProc) then
        FLogProc('SendMailMulti', '{"level" : "ERROR", "message" : "' + tjs(e.Message) + '"}', Self);
      Raise Exception.Create(ClassName + '.Create ' + e.Message);
    end;
  end;
end;

procedure TJanuaDBAnagraphModel.DefaultParams;
var
  aParam: IJanuaField;
begin
  jdsGroups.ParamByName('p_group_id').AsInteger := GroupID;
  jdsAnagraphs.ParamByName('p_group_id').AsInteger := GroupID;
  jdsAnagraphs.ParamByName('p_search_name').AsString := '%' + IfThen(MainSearchText <> '',
    MainSearchText + '%', '');
  if jdsAnagraphs.FindParam('p_anagraph_id', aParam) then
end;

destructor TJanuaDBAnagraphModel.Destroy;
begin
  try
    FAnagraphRecord := nil;
    FAnagraphDataModule := nil;
    inherited;
  except
    on e: Exception do
      LogException('Destroy', e, Self);
  end;
end;

function TJanuaDBAnagraphModel.FindAddresbyID(aID: Integer): boolean;
var
  aParam: IJanuaField;
begin
  Result := False;
  if FjdsDataset.FilterParams.FindParam('id', aParam) then
    try
      aParam.AsInteger := aID;
      FjdsDataset.Filtered := True;
      Result := FjdsDataset.RecordCount > 0;
    except
      on e: Exception do
        RaiseException('FindAddressByID: ' + aID.ToString, e, Self);
    end;
end;

function TJanuaDBAnagraphModel.FindAddress(sSearch: string): Integer;
begin
  jdsAnagraphs.FilterParams.ParamByName('p_search_name').AsString := '%' + sSearch + '%';
  jdsAnagraphs.Filtered := True;
  Result := jdsAnagraphs.RecordCount;
end;

function TJanuaDBAnagraphModel.GetAnagraphID: Integer;
begin
  Result := FAnagraphID;
end;

function TJanuaDBAnagraphModel.GetAnagraphRecord: IAnagraphView;
begin
  Result := FAnagraphRecord;
end;

function TJanuaDBAnagraphModel.GetjdsAddresses: IJanuaDBDataset;
begin
  Result := FAnagraphDataModule.jdsAddresses
end;

function TJanuaDBAnagraphModel.GetjdsAnagraphs: IJanuaDBDataset;
begin
  Result := FAnagraphDataModule.jdsAnagraphs
end;

function TJanuaDBAnagraphModel.GetjdsGroups: IJanuaDBDataset;
begin
  Result := FAnagraphDataModule.jdsGroups
end;

function TJanuaDBAnagraphModel.GetjdsIdentities: IJanuaDBDataset;
begin
  Result := FAnagraphDataModule.jdsIdentities;
end;

function TJanuaDBAnagraphModel.GetjdsBranches: IJanuaDBDataset;
begin
  Result := FAnagraphDataModule.jdsBranches;
end;

function TJanuaDBAnagraphModel.GetjdsMainAddress: IJanuaDBDataset;
begin
  Result := FAnagraphDataModule.jdsMainAddress
end;

function TJanuaDBAnagraphModel.GetjdsSingleAnagraph: IJanuaDBDataset;
begin
  Result := FAnagraphDataModule.jdsSingleAnagraph;
end;

function TJanuaDBAnagraphModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        FAnagraphDataModule.Activate;
        IsThreaded := True;
        if ExistFieldByName(jdsAnagraphs.Dataset, 'deleted') then
          jdsAnagraphs.FilterParams.AddParam('deleted', jptBoolean, False, False).ParamOperator :=
            TJanuaOperator.Equals;
        SetupColumns;
      end;
    except
      on e: Exception do
        CreateException('Initialize', e.Message, Self, Self.LogString);
    end;
end;

procedure TJanuaDBAnagraphModel.InternalSetParams;
begin
  jdsAnagraphs.Params.ClearParams;
  jdsAnagraphs.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
  jdsAnagraphs.ParamByName('p_group_id').AsInteger := GroupID;
  jdsAnagraphs.ParamByName('p_search_name').AsString :=
    '%' + IfThen((MainSearchText <> '') and (MainSearchText <> '%'), MainSearchText + '%', '');
  jdsAnagraphs.ParamByName('anagraph_id').AsInteger := 0;
end;

class function TJanuaDBAnagraphModel.New(const aGroupID: Integer): IJanuaDBAnagraphModel;
begin
  Result := TJanuaDBAnagraphModel.Create;
  Result.GroupID := aGroupID;
  Result.Activate;
  Result.OpenAll(False);
end;

procedure TJanuaDBAnagraphModel.OnNewRecord(Sender: TObject);
begin
  FAnagraphRecord.AnGroupId.AsInteger := GroupID;
  FAnagraphRecord.AnMainGroupId.AsInteger := GroupID;
end;

procedure TJanuaDBAnagraphModel.OpenAllGroups;
begin
  jdsGroups.Params.ClearParams;
  jdsGroups.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
  jdsGroups.ParamByName('p_group_id').AsInteger := 0;
  jdsGroups.Open;
end;

procedure TJanuaDBAnagraphModel.OpenAnagraphByGroup(gID: Integer);
begin
  GroupID := gID;
  if IsThreaded then
    jdsAnagraphs.OpenThreaded
  else
    jdsAnagraphs.Open;
end;

function TJanuaDBAnagraphModel.SearchAnagraphByID(aID: Integer): boolean;
var
  aParam: IJanuaField;
begin
  Result := False;
  aParam := jdsAnagraphs.FilterParams.ParamByName('id');
  if Assigned(aParam) then
  begin
    aParam.AsInteger := aID;
    jdsAnagraphs.Filtered := True;
    Result := jdsAnagraphs.RecordCount > 0;
  end;
end;

function TJanuaDBAnagraphModel.SearchAnagraphByName(aName: string): Integer;
begin
  { TODO: Implement SearchAnagraphByName }
  Result := -1;
end;

procedure TJanuaDBAnagraphModel.SetAnagraphID(const Value: Integer);
begin
  FAnagraphID := Value;
end;

procedure TJanuaDBAnagraphModel.SetAnagraphRecord(const Value: IAnagraphView);
begin
  FAnagraphRecord := Value;
  // Sets Up Internal REcord for the Template parent Class
  SetInternalRecord(FAnagraphRecord);
end;

procedure TJanuaDBAnagraphModel.SetjdsAnagraphs(Value: IJanuaDBDataset);
begin
  Self.FAnagraphDataModule.jdsAnagraphs := Value
end;

procedure TJanuaDBAnagraphModel.SetjdsGroups(Value: IJanuaDBDataset);
begin
  FAnagraphDataModule.jdsGroups := Value
end;

procedure TJanuaDBAnagraphModel.SetjdsIdentities(Value: IJanuaDBDataset);
begin
  FAnagraphDataModule.jdsIdentities := Value;
end;

procedure TJanuaDBAnagraphModel.SetjdsBranches(Value: IJanuaDBDataset);
begin
  FAnagraphDataModule.jdsBranches := Value
end;

procedure TJanuaDBAnagraphModel.SetjdsSingleAnagraph(const Value: IJanuaDBDataset);
begin
end;

procedure TJanuaDBAnagraphModel.SetMainSearchText(const Value: string);
begin
  inherited;
end;

procedure TJanuaDBAnagraphModel.SetupColumns;
begin
  // anagraph_id, an_last_name, an_address, an_postal_code, an_town, an_phone, an_email
  jdsAnagraphs.AddGridColumn(jdsAnagraphs.FieldByName('an_code'), 8, 'Code');
  jdsAnagraphs.AddGridColumn(jdsAnagraphs.FieldByName('anagraph_id'), 8, 'ID');
  jdsAnagraphs.AddGridColumn(jdsAnagraphs.FieldByName('an_last_name'), 50, 'Company Name');
  jdsAnagraphs.AddGridColumn(jdsAnagraphs.FieldByName('an_address'), 60, 'Address');
  jdsAnagraphs.AddGridColumn(jdsAnagraphs.FieldByName('an_postal_code'), 12, 'Zip Code');
  jdsAnagraphs.AddGridColumn(jdsAnagraphs.FieldByName('an_town'), 40, 'Town');
  jdsAnagraphs.AddGridColumn(jdsAnagraphs.FieldByName('an_phone'), 12, 'Phone');
  jdsAnagraphs.AddGridColumn(jdsAnagraphs.FieldByName('an_email'), 60, 'E-Mail');
  jdsAnagraphs.AddGridColumn(jdsAnagraphs.FieldByName('jguid'), 40, 'Jguid');
  jdsAnagraphs.AddGridColumn(jdsAnagraphs.FieldByName('deleted'), 6, 'Deleted');
end;

function TJanuaDBAnagraphModel.TryGetAnagraphByGUID(out aAnagraph: IAnagraphView; const aGUID: TGUID)
  : boolean;
begin
  FAnagraphDataModule.jdsSingleAnagraph.Close;
  aAnagraph := TAnagraphView.Create('anagraph');
  // At first I must set the StoreDataset property of IJanuaRecord to the Dataset Wrapper
  aAnagraph.StoreDataset := FAnagraphDataModule.jdsSingleAnagraph;
  // I Must Filter the Dataset before posting to it
  FAnagraphDataModule.jdsSingleAnagraph.ParamByName('anagraph_id').Clear;
  Result := FAnagraphDataModule.jdsSingleAnagraph.SearchRecord(aGUID);
  if Result then
    aAnagraph.LoadFromDataset;
end;

function TJanuaDBAnagraphModel.TryGetAnagraphByID(out aAnagraph: IAnagraphView; const aID: Integer): boolean;
begin
  FAnagraphDataModule.jdsSingleAnagraph.Close;
  aAnagraph := TAnagraphView.Create('anagraph');
  // At first I must set the StoreDataset property of IJanuaRecord to the Dataset Wrapper
  aAnagraph.StoreDataset := FAnagraphDataModule.jdsSingleAnagraph;
  aAnagraph.Addresses.StoreDataset := FAnagraphDataModule.jdsAddresses;
  aAnagraph.MainAddress.StoreDataset := FAnagraphDataModule.jdsMainAddress;
  // I Must Filter the Dataset before posting to it
  FAnagraphDataModule.jdsSingleAnagraph.Close;
  FAnagraphDataModule.jdsSingleAnagraph.ParamByName('anagraph_id').AsInteger := aID;
  FAnagraphDataModule.jdsSingleAnagraph.Open;
  Result := FAnagraphDataModule.jdsSingleAnagraph.RecordCount = 1;
  if Result then
    aAnagraph.LoadFromDataset;
end;

function TJanuaDBAnagraphModel.UpdateAnagraph(const aAnagraph: IAnagraphView): boolean;
begin
  // I Must Filter the Dataset before posting to it
  // if aAnagraph.AnagraphID.AsInteger = FAnagraphDataModule.jdsSingleAnagraph.FieldByName('anagraph_id').AsInteger

  Result := (aAnagraph.GUID = FAnagraphDataModule.jdsSingleAnagraph.GUID) or
    FAnagraphDataModule.jdsSingleAnagraph.SearchRecord(aAnagraph.GUID);

  AssignDatasets(aAnagraph);

  if Result then
  begin
    aAnagraph.SaveToDataset(True);
    if aAnagraph.Addresses.RecordCount > 0 then
    begin
      aAnagraph.Addresses.First;
      aAnagraph.MainAddress.Assign(aAnagraph.Addresses.CurrentRecord);
    end;

  end;
{$IFDEF DEBUG}
  var
  lID := aAnagraph.AnagraphID.AsInteger;
  var
  lMID := aAnagraph.MainAddress.ID.AsInteger;
{$ENDIF}
end;

{ TJanuaCustomAnagraphDataModule }
procedure TJanuaCustomAnagraphDataModule.AfterConstruction;
begin
  inherited;
  try
{$IFDEF DEBUG}
{$ENDIF}
    // AddParam(const aName: string; aType: TJanuaFieldType; aValue: TValue); overload;
    jdsGroups.Params.AddParam('p_group_id', TJanuaFieldType.jptLargeInt, 0);
    jdsAnagraphs.Params.AddParam('p_group_id', TJanuaFieldType.jptLargeInt, 0);
    jdsAnagraphs.Params.AddParam('p_search_name', TJanuaFieldType.jptString, '%');
  except
    on e: Exception do
      RaiseException('AfterConstruction', e, Self);
  end;
end;

procedure TJanuaCustomAnagraphDataModule.BeforeDestruction;
begin
  inherited;
end;

constructor TJanuaCustomAnagraphDataModule.Create;
begin
  inherited;
{$IFDEF DEBUG}
{$ENDIF}
end;

destructor TJanuaCustomAnagraphDataModule.Destroy;
begin
  try
    FjdsAnagraphs := nil;
    FjdsBranches := nil;
    FjdsGroups := nil;
    FjdsIdentities := nil;
    FjdsSingleAnagraph := nil;
    FjdsAddresses := nil;
    FjdsMainAddress := nil;
    // jdsSingleAnagraph jdsAddresses jdsMainAddress
    inherited;
  except
    on e: Exception do
      LogException('Destroy', e, Self);
  end;
end;

function TJanuaCustomAnagraphDataModule.GetjdsAddresses: IJanuaDBDataset;
begin
  Result := FjdsAddresses;
end;

function TJanuaCustomAnagraphDataModule.GetjdsAnagraphs: IJanuaDBDataset;
begin
  Result := Self.FjdsAnagraphs
end;

function TJanuaCustomAnagraphDataModule.GetjdsGroups: IJanuaDBDataset;
begin
  Result := Self.FjdsGroups
end;

function TJanuaCustomAnagraphDataModule.GetjdsIdentities: IJanuaDBDataset;
begin
  Result := FjdsIdentities
end;

function TJanuaCustomAnagraphDataModule.GetjdsBranches: IJanuaDBDataset;
begin
  Result := Self.FjdsBranches
end;

function TJanuaCustomAnagraphDataModule.GetjdsMainAddress: IJanuaDBDataset;
begin
  Result := FjdsMainAddress
end;

function TJanuaCustomAnagraphDataModule.GetjdsSingleAnagraph: IJanuaDBDataset;
begin
  Result := FjdsSingleAnagraph
end;

function TJanuaCustomAnagraphDataModule.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
  begin
    Result := inherited;
    if Result then
      try
        Guard.CheckNotNull(jdsAnagraphs, 'jdsAnagraphs');
        jdsAnagraphs.Params.Activate;
        jdsAnagraphs.Params.ClearParams;
        Guard.CheckNotNull(jdsAnagraphs.ParamByName('db_schema_id'), 'ParamByName(db_schema_id)');
        jdsAnagraphs.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
        Guard.CheckNotNull(jdsGroups, 'jdsGroups');
        jdsGroups.Params.Activate;
        jdsGroups.Params.ClearParams;
        Guard.CheckNotNull(jdsGroups.ParamByName('db_schema_id'), 'ParamByName(db_schema_id)');
        jdsGroups.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
      except
        on e: Exception do
          RaiseException('InternalActivate', e, Self);
      end;
  end;
end;

procedure TJanuaCustomAnagraphDataModule.SetjdsAddresses(Value: IJanuaDBDataset);
begin
  FjdsAddresses := Value;
end;

procedure TJanuaCustomAnagraphDataModule.SetjdsAnagraphs(Value: IJanuaDBDataset);
begin
  FjdsAnagraphs := Value;
  SetMainDataset(FjdsAnagraphs);
end;

procedure TJanuaCustomAnagraphDataModule.SetjdsGroups(Value: IJanuaDBDataset);
begin
  Self.FjdsGroups := Value
end;

procedure TJanuaCustomAnagraphDataModule.SetjdsIdentities(Value: IJanuaDBDataset);
begin
  FjdsIdentities := Value;
end;

procedure TJanuaCustomAnagraphDataModule.SetjdsBranches(Value: IJanuaDBDataset);
begin
  FjdsBranches := Value
end;

procedure TJanuaCustomAnagraphDataModule.SetjdsMainAddress(Value: IJanuaDBDataset);
begin
  FjdsMainAddress := Value;
end;

procedure TJanuaCustomAnagraphDataModule.SetjdsSingleAnagraph(Value: IJanuaDBDataset);
begin
  FjdsSingleAnagraph := Value;
end;

initialization

finalization

end.
