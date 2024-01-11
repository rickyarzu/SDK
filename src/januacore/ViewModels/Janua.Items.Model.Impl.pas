unit Janua.Items.Model.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Core.Classes,
  JOrm.Items.Intf, Janua.ViewModels.Intf, Data.DB, Janua.Items.ViewModel.Intf,
  Janua.Models.Templates;

type
  TJanuaCustomItemsDataModule = class(TJanuaDataModuleTemplate, IJanuaItemsDataModule)
  strict private
    { Private declarations }
    FjdsItems: IJanuaDBDataset;
    FjdsGroups: IJanuaDBDataset;
  private
    function GetjdsItems: IJanuaDBDataset;
    procedure SetjdsItems(Value: IJanuaDBDataset);
    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
  protected
    property jdsItems: IJanuaDBDataset read GetjdsItems write SetjdsItems;
    property jdsGroups: IJanuaDBDataset read GetjdsGroups write SetjdsGroups;
  strict protected
    function InternalActivate: boolean; override;
  public
    constructor Create; override;
  end;

  TJanuaDBItemModel = class(TJanuaModelDBTemplate, IJanuaDBItemsModel, IJanuaModel)
  strict private
    FItemRecord: IItemDefinition;
    FItemDataModule: IJanuaItemsDataModule;
    FSearchText: string;
    FItemID: Integer;
  private
    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    function GetItemRecord: IItemDefinition;
    function GetjdsItems: IJanuaDBDataset;
    procedure SetjdsItems(Value: IJanuaDBDataset);
    procedure DefaultParams;
    function GetItemID: Integer;
  strict protected
    property jdsItems: IJanuaDBDataset read GetjdsItems write SetjdsItems;
    property jdsGroups: IJanuaDBDataset read GetjdsGroups write SetjdsGroups;
    property ItemRecord: IItemDefinition read GetItemRecord;
  protected
    procedure SetItemID(const Value: Integer);
    // la procedura AfterScroll non serve perchè replica il metodo anonimo che fa la medesima cosa
    (* procedure vtItemsAfterScroll(DataSet: TDataSet); *)
    procedure SetMainSearchText(const Value: string); override;
    procedure InternalSetParams; override;
  public
    procedure OpenAllGroups;
    function FindItembyID(ItemID: Integer): boolean;
    function FindItem(sSearch: string): Integer;
    function SearchItemByName(aName: string): Integer;
    procedure OpenItemsByGroup(gID: Integer);
    function SearchItemByID(ItemID: Integer): boolean;
    function SetItemGroupByID(gID: Integer): boolean;
  strict protected
    function InternalActivate: boolean; override;
  public
    constructor Create; override;
    destructor Destroy; override;
    property ItemID: Integer read GetItemID write SetItemID;
  end;

implementation

uses System.Classes, System.SysUtils, Spring, Janua.Core.Functions, Janua.Orm.Types,
  Janua.Application.Framework, JOrm.Items.Impl, System.StrUtils;

const
  sl = sLineBreak;

  { TJanuaCustomItemsDataModule }

constructor TJanuaCustomItemsDataModule.Create;
begin
  inherited;
  // AddParam(const aName: string; aType: TJanuaFieldType; aValue: TValue); overload;
  jdsGroups.Params.AddParam('p_group_id', TJanuaFieldType.jptLargeInt, 0);
  // jdsItems.Params.AddParam('p_group_id', TJanuaFieldType.jptLargeInt, 0);
  jdsItems.Params.AddParam('p_search_name', TJanuaFieldType.jptString, '%');
end;

function TJanuaCustomItemsDataModule.GetjdsGroups: IJanuaDBDataset;
begin
  Result := FjdsGroups
end;

function TJanuaCustomItemsDataModule.GetjdsItems: IJanuaDBDataset;
begin
  Result := Self.FjdsItems;
end;

function TJanuaCustomItemsDataModule.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        jdsItems.Params.Activate;
        jdsItems.Params.ClearParams;
        jdsItems.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
        jdsGroups.Params.Activate;
        jdsGroups.Params.ClearParams;
        jdsGroups.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, Self);
    end;
end;

procedure TJanuaCustomItemsDataModule.SetjdsGroups(Value: IJanuaDBDataset);
begin
  FjdsGroups := Value
end;

procedure TJanuaCustomItemsDataModule.SetjdsItems(Value: IJanuaDBDataset);
begin
  FjdsItems := Value;
  SetMainDataset(FjdsItems);
end;

{ TJanuaDBItemModel }

constructor TJanuaDBItemModel.Create;
begin
  inherited;
  FItemRecord := TItemDefinition.Create;
  SetInternalRecord(FItemRecord);
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaItemsDataModule, FItemDataModule) then
    raise Exception.Create('IJanuaItemsDataModule interface not registered');
  SetInternalDataModule(FItemDataModule as IJanuaDataModuleContainer);
end;

procedure TJanuaDBItemModel.DefaultParams;
begin
  { TODO: Implementation of method TJanuaDBItemModel.DefaultParams () }

end;

destructor TJanuaDBItemModel.Destroy;
begin

  inherited;
end;

function TJanuaDBItemModel.FindItem(sSearch: string): Integer;
begin
  { TODO: Implementation of method TJanuaDBItemModel.FindItem (sSearch) }
  Result := -1;
end;

function TJanuaDBItemModel.FindItembyID(ItemID: Integer): boolean;
begin
  { TODO: Implementation of method TJanuaDBItemModel.FindItembyID (ItemID) }
  Result := False;
end;

function TJanuaDBItemModel.GetItemRecord: IItemDefinition;
begin
  { TODO: Implementation of method TJanuaDBItemModel.GetItemRecord: IItemDefinition }
  Result := nil;
end;

function TJanuaDBItemModel.GetItemID: Integer;
begin
  Result := FItemID
end;

function TJanuaDBItemModel.GetjdsGroups: IJanuaDBDataset;
begin

end;

function TJanuaDBItemModel.GetjdsItems: IJanuaDBDataset;
begin

end;

function TJanuaDBItemModel.InternalActivate: boolean;
begin
  Result := inherited;
  try
    FItemDataModule.Activate;
    FItemRecord.StoreDataset := FItemDataModule.jdsItems;
    // Attach jdsMaster to Current Record (right now ... jdsDetail should be Attached too ...)
    FItemRecord.SetupDataset(FItemDataModule.jdsItems, []);

    // FItemDataModule.jdsItems ('id', TJanuaFieldType.jptInteger, 0);
    FItemDataModule.jdsItems.FilterParams.AddParam('id', TJanuaFieldType.jptInteger, 0).ParamOperator :=
      TJanuaOperator.Equals;
    // jdsItems.FilterParams.ParamByName('item_name').AsString := aName;
    FItemDataModule.jdsItems.FilterParams.AddParam('item_name', TJanuaFieldType.jptString, 0).ParamOperator :=
      TJanuaOperator.LikeUpper;

    jdsMaster := FItemDataModule.jdsItems;
    jdsGroups := FItemDataModule.jdsGroups;
    // FItemRecord.LoadFromDataset;
    // jdsMaster.DataSet.AfterScroll := vtAnagraphsAfterScroll;
    IsThreaded := True;
  except
    on E: Exception do
      CreateException('Initialize', E.Message, Self, '');
  end;

end;

procedure TJanuaDBItemModel.InternalSetParams;
begin
  inherited;
  jdsItems.Params.ClearParams;
  (*
    (a.db_schema_id = :db_schema_id or :db_schema_id = 0)
    and
    i.an_group_id = :p_group_id
    and
    (upper(an_last_name) like upper(:p_search_name) or :p_search_name = '%')
    and
    (a.anagraph_id = :anagraph_id or :anagraph_id = 0)
  *)
  jdsItems.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
  jdsItems.ParamByName('p_group_id').AsInteger := GroupID;
  jdsItems.ParamByName('p_search_name').AsString := '%' + IfThen((MainSearchText <> '') and (MainSearchText <> '%'),
    MainSearchText + '%', '');
  jdsItems.ParamByName('anagraph_id').AsInteger := 0;
end;

procedure TJanuaDBItemModel.OpenAllGroups;
begin
  jdsGroups.Params.ClearParams;
  jdsGroups.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
  jdsGroups.ParamByName('p_group_id').AsInteger := 0;
  jdsGroups.Open;
end;

procedure TJanuaDBItemModel.OpenItemsByGroup(gID: Integer);
begin

end;

function TJanuaDBItemModel.SearchItemByID(ItemID: Integer): boolean;
begin
  // jdsItems.SetSearchFilter('id = ' + ItemID.ToString);
  jdsItems.FilterParams.ParamByName('id').AsInteger := ItemID;
  jdsItems.Filtered := True;
  Result := jdsItems.Filtered and (jdsItems.RecordCount = 1);
end;

function TJanuaDBItemModel.SearchItemByName(aName: string): Integer;
begin
  jdsItems.FilterParams.ParamByName('item_name').AsString := aName;
  jdsItems.Filtered := True;
  Result := jdsItems.RecordCount;
end;

function TJanuaDBItemModel.SetItemGroupByID(gID: Integer): boolean;
begin
  { Result := FGroupID }
  Result := False
  { TODO : Implementation of SetItemGroupByID in new Model definition (from Storage/Server) }
end;

procedure TJanuaDBItemModel.SetItemID(const Value: Integer);
begin
  if FItemID <> Value then
  begin
    FItemID := Value;
    BindManager.Notify('GroupID');
  end;
end;

procedure TJanuaDBItemModel.SetjdsGroups(Value: IJanuaDBDataset);
begin
  FItemDataModule.jdsGroups := Value
end;

procedure TJanuaDBItemModel.SetjdsItems(Value: IJanuaDBDataset);
begin
  FItemDataModule.jdsItems := Value
end;

procedure TJanuaDBItemModel.SetMainSearchText(const Value: string);
begin
  if Assigned(FItemDataModule) then
  begin
    if MainSearchText <> StripString(jdsItems.ParamByName('p_search_name').AsString) then
      jdsItems.ParamByName('p_search_name').AsString := '%' + IfThen((Value <> '%') and (Value <> ''), Value + '%', '');

    if IsThreaded and (Length(MainSearchText) >= 3) then
      jdsItems.OpenThreaded;
  end;

end;

end.
