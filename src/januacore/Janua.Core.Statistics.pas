unit Janua.Core.Statistics;

interface

uses System.SysUtils, System.Classes, System.Json, System.Generics.Collections, System.Generics.Defaults,
  System.Math,
  // Devart
  FireDAC.Comp.Client,
  // Janua
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Json, Janua.Core.Servers, Janua.Core.System,
  Janua.Orm.Types;

Type
  TStatParamType = (ptNone, ptText, ptDateTime, ptInteger, ptReal, ptBoolean);

const
  ParamTypeID: array [TStatParamType] of Byte = (0, 1, 2, 3, 4, 5);

function GetParamType(const aID: Byte): TStatParamType;

Type
  TStatParam = record
    ID: Byte;
    paramtype: TStatParamType;
    Name: string;
    IntegerValue: Int64;
    DateTimeValue: TDateTime;
    BooleanValue: Boolean;
    TextValue: string;
    RealValue: Extended;
    Lookup: Boolean;
    LookupQueryID: cardinal;
    LookupQueryKeyField: string;
    LookupQueryDisplayFields: string;
  public
    constructor Create(const aID: smallint; aName: string; aType: TStatParamType);
    function AsJsonObJect: TJsonObject;
    function AsJson: string;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    procedure Clear;
    function Value: Variant;
  end;

Type
  TStatQuery = record
    params: array of TStatParam;
    LookupQueries: array of TStatQuery;
    State: TJanuaRecordState;
  private
    FName: string;
    FItemIndex: Integer;
    FUID: cardinal;
    FID: Byte;
    FDeleteSQL: string;
    FUpdateSQL: string;
    FSQL: string;
    procedure SetDeleteSQL(const Value: string);
    procedure SetID(const Value: Byte);
    procedure SetItemIndex(const Value: Integer);
    procedure SetName(const Value: string);
    procedure SetSQL(const Value: string);
    procedure SetUID(const Value: cardinal);
    procedure SetUpdateSQL(const Value: string);
  public
    procedure SetSaved;
    function Modified: Boolean;
    constructor Create(const aID: Byte; aName, aSQl: string);
    procedure Sort;
    procedure Clear;
    function AsJsonObJect: TJsonObject;
    function AsJson: string;
    function AsJsonPretty: string;
    function Count: Integer;
    function QueriesCount: Integer;
    function MaxID: Integer;
    function MaxQID: Integer;
    procedure Del(const Index: Integer); overload;
    procedure Del(const aID: Byte); overload;
    procedure Del; overload;
    function Find(const aID: Byte): Boolean; overload;
    function Find(const aName: string): Boolean; overload;
    procedure Add(const aParam: TStatParam); overload;
    procedure Add(const aJson: TJsonObject); overload;
    procedure Add(const aName: string); overload;
    procedure Add(const aName: string; const aValue: Int64); overload;
    procedure Add(const aName: string; const aValue: TDateTime); overload;
    procedure Add(const aName: string; const aValue: Extended); overload;
    procedure Add(const aName, aValue: string); overload;
    procedure Add(const aName: string; const aValue: Boolean); overload;
    procedure AddLookupParam(const aName, aLookupField, aKeyField: string; const aSQl: string = '');
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    property ID: Byte read FID write SetID;
  public // properties
    property UID: cardinal read FUID write SetUID;
    property Name: string read FName write SetName;
    property SQL: string read FSQL write SetSQL;
    property UpdateSQL: string read FUpdateSQL write SetUpdateSQL;
    property DeleteSQL: string read FDeleteSQL write SetDeleteSQL;
    property ItemIndex: Integer read FItemIndex write SetItemIndex;
  end;

Type
  TJanuaStatGroup = record
    ID: Byte;
    Name: string;
    Queries: array of TStatQuery;
    ItemIndex: Integer;
    State: TJanuaRecordState;
  public
    procedure SetSaved;
    function Modified: Boolean;
    procedure Sort;
    function SelectedQuery: TStatQuery;
    procedure Clear;
    function AsJsonObJect: TJsonObject;
    function AsJson: string;
    function AsJsonPretty: string;
    function Count: Integer;
    function MaxID: Integer;
    procedure Insert;
    procedure Add(aQuery: TStatQuery); overload;
    procedure Add(aJson: TJsonObject); overload;
    procedure Add(var aID: smallint; aName, aSQl: string); overload;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    function AddNewQuery: Integer;
    function Find(const aID: Byte): Boolean; overload;
    function Find(const aName: string): Boolean; overload;
    procedure DeleteQuery(const aID: Byte); overload;
    procedure DeleteQuery(const aName: string); overload;
    procedure DeleteQuery(const aQuery: TStatQuery); overload;
    procedure DeleteQuery; overload;
  end;

Type
  TStatSchema = record
    ID: Integer;
    Name: String;
    Groups: array of TJanuaStatGroup;
    ItemIndex: Integer;
    Deleted: array of TJanuaStatGroup;
    Stored: Boolean;
    State: TJanuaRecordState;
  public
    procedure SetSaved;
    function Modified: Boolean;
    procedure Sort;
    procedure Clear;
    function SelectedGroup: TJanuaStatGroup;
    function AsJsonObJect: TJsonObject;
    function AsJson: string;
    function Count: Integer;
    function DelCount: Integer;
    procedure Add(aGroup: TJanuaStatGroup); overload;
    procedure Add(aName: string); overload;
    function Find(const aName: string): Boolean; overload;
    function Find(const aID: Byte): Boolean; overload;
    function MaxID: Byte;
    procedure Add(aJson: TJsonObject); overload;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    function FindQuery(aUID: Word): Boolean; overload;
    function FindQuery(gID, qID: Byte): Boolean; overload;
    function AsJsonPretty: string;
    procedure DeleteGroup(const aID: Byte); overload;
    procedure DeleteGroup(aName: string); overload;
    procedure DeleteGroup(aGroup: TJanuaStatGroup); overload;
    procedure DeleteGroup; overload;
    function UpdateQuery(aQuery: TStatQuery): Boolean;
  end;

type
  TJanuaCustomStatisticsServer = class(TJanuaCustomServer)
  private
    // FSchema: TJanuaSchema;
    FDatasets: TDictionary<Word, TFDMemTable>;
  protected
    FTempQuery: TStatQuery;
    procedure InternalOpenQuery(aQuery: TStatQuery); overload; virtual; abstract;
    procedure InternalOpenQuery; overload; virtual; abstract;
    function InternalTestQuery(aQuery: TStatQuery): Boolean; virtual; abstract;
    function InternalSaveSchema: Boolean; virtual; abstract;
    function InternalLoadSchema: Boolean; virtual; abstract;
  private
    FStatSchema: TStatSchema;
    FActiveDataset: TJanuaJsonDacDataset;
    FJanuaServerSystem: TJanuaCustomServerSystem;
    FdsQueries: TJanuaJsonDacDataset;
    FdsGroups: TJanuaJsonDacDataset;
    FdsSchemas: TJanuaJsonDacDataset;
    // procedure SetSchema(const Value: TJanuaSchema);
    procedure SetStatSchema(val: TStatSchema);
    procedure SetDatasets(Value: TDictionary<Word, TFDMemTable>);
    procedure SetActiveDataset(const Value: TJanuaJsonDacDataset);
    procedure SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
    procedure SetdsGroups(const Value: TJanuaJsonDacDataset);
    procedure SetdsQueries(const Value: TJanuaJsonDacDataset);
    procedure SetdsSchemas(const Value: TJanuaJsonDacDataset);
  public
    // il costruttore si occupa di Costruire lo Schema TJanuaSchema relativao alle statistiche
    constructor Create(AOwner: TComponent); override;
    // il distruttore si occupa di eliminare tale schema
    destructor Destroy; override;
    // la funyione TestQuery serve per 'testare' a livello SQL tramite un try..except della sintassi....................
    function TestQuery(aQuery: TStatQuery; var Tested: Boolean): TStatQuery; overload;
    function TestQuery(var Tested: Boolean): TStatQuery; overload;
    function UpdateQuery(aQuery: TStatQuery): Boolean;
    procedure OpenQuery(aQuery: TStatQuery); overload;
    procedure OpenQuery; overload;
    procedure OpenQuery(queryID, groupID: Byte); overload;
    procedure OpenQuery(aUID: Word); overload;
    function GetQuery(aUID: Word): TStatQuery;
    function AddQuery(groupID: Byte): TStatQuery;
    function AddGroup: Byte; // create a group and return the Group ID as function Result.
    function SaveSchema: Boolean;
    // Salva lo schema e risponde con True se andato a buon fine. Exception o False se no
    function LoadSchema: Boolean; // Carica lo schema. Se non fosse presente nessuno schema lo crea Ex-Novo.
  public
    property dsSchemas: TJanuaJsonDacDataset read FdsSchemas write SetdsSchemas;
    property dsQueries: TJanuaJsonDacDataset read FdsQueries write SetdsQueries;
    property dsGroups: TJanuaJsonDacDataset read FdsGroups write SetdsGroups;
    // property dsSchemas: TJanuaJsonDACDataset;
  public
    // property Schema: TJanuaSchema read FSchema write SetSchema;
    property Datasets: TDictionary<Word, TFDMemTable> read FDatasets write SetDatasets;
    property StatSchema: TStatSchema read FStatSchema write SetStatSchema;
    property ActiveDataset: TJanuaJsonDacDataset read FActiveDataset write SetActiveDataset;
  published
    property JanuaServerSystem: TJanuaCustomServerSystem read FJanuaServerSystem write SetJanuaServerSystem;
  end;

implementation

uses Janua.Core.Functions;

// jlaNone, jlaItalian, jilEnglish, jilFrancais, jilEspanol, jilPortugues, jilRussian, jilGerman

function GetParamType(const aID: Byte): TStatParamType;
var
  i: TStatParamType;
begin
  Result := TStatParamType.ptNone;
  for i := Low(ParamTypeID) to High(ParamTypeID) do
    if ParamTypeID[i] = aID then
      Exit(i)
end;

{ TJanuaCustomStatisticsServer }

function TJanuaCustomStatisticsServer.AddGroup: Byte;
begin
  { TODO : Completare la procedura AddGRoup su Statistic Server }
  Result := 0;
end;

function TJanuaCustomStatisticsServer.AddQuery(groupID: Byte): TStatQuery;
begin
  { TODO : Completare la procedura AddQuery su Statistic Server }
end;

constructor TJanuaCustomStatisticsServer.Create(AOwner: TComponent);
begin
  inherited;
  // FSchema := TJanuaSchema.Create;
  FActiveDataset := TJanuaJsonDacDataset.Create(self);
end;

destructor TJanuaCustomStatisticsServer.Destroy;
begin
  // FSchema.Free;
  FActiveDataset.Free;
  DestroyDataModule(True);
  inherited;
end;

function TJanuaCustomStatisticsServer.GetQuery(aUID: Word): TStatQuery;
begin
  if FStatSchema.FindQuery(aUID) then
    Result := FStatSchema.SelectedGroup.SelectedQuery;
end;

function TJanuaCustomStatisticsServer.LoadSchema: Boolean;
begin
  Result := InternalLoadSchema;
end;

procedure TJanuaCustomStatisticsServer.OpenQuery(queryID, groupID: Byte);
begin
  FStatSchema.FindQuery(queryID, groupID);
end;

procedure TJanuaCustomStatisticsServer.OpenQuery(aUID: Word);
// var
// tmpGroup: Janua.Core.Statistics.TJanuaStatGroup;
begin
  if FStatSchema.FindQuery(aUID) then
  begin
    FTempQuery := FStatSchema.SelectedGroup.SelectedQuery;
    InternalOpenQuery(FTempQuery);
  end;
end;

procedure TJanuaCustomStatisticsServer.OpenQuery;
begin
  OpenQuery(FStatSchema.SelectedGroup.SelectedQuery);
end;

procedure TJanuaCustomStatisticsServer.OpenQuery(aQuery: TStatQuery);
var
  // aTable: TFDMemTable;
  aTest: Boolean;
begin
  if FStatSchema.FindQuery(aQuery.UID) then
  begin
    FTempQuery := TestQuery(aQuery, aTest);
    // Try looking up "Iasi".
    {
      if (FDatasets.TryGetValue(aQuery.UID, aTable) = True) then
      begin

      end
      else
      writeln('Could not find Iasi in the dictionary');
    }
  end;

end;

function TJanuaCustomStatisticsServer.SaveSchema: Boolean;
begin
  CreateDataModule;
  Result := InternalSaveSchema;
  DestroyDataModule(false);
end;

procedure TJanuaCustomStatisticsServer.SetActiveDataset(const Value: TJanuaJsonDacDataset);
begin
  FActiveDataset := Value;
end;

procedure TJanuaCustomStatisticsServer.SetDatasets(Value: TDictionary<Word, TFDMemTable>);
begin
  Datasets := Value;
end;

procedure TJanuaCustomStatisticsServer.SetdsGroups(const Value: TJanuaJsonDacDataset);
begin
  FdsGroups := Value;
end;

procedure TJanuaCustomStatisticsServer.SetdsQueries(const Value: TJanuaJsonDacDataset);
begin
  FdsQueries := Value;
end;

procedure TJanuaCustomStatisticsServer.SetdsSchemas(const Value: TJanuaJsonDacDataset);
begin
  FdsSchemas := Value;
end;

procedure TJanuaCustomStatisticsServer.SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaServerSystem := Value;
end;

(*
  procedure TJanuaCustomStatisticsServer.SetSchema(const Value: TJanuaSchema);
  begin
  FSchema := Value;
  end;
*)

{ TStatSchema }

procedure TStatSchema.Add(aGroup: TJanuaStatGroup);
begin
  ItemIndex := Count;
  SetLength(Groups, Count + 1);
  if aGroup.ID = 0 then
    aGroup.ID := MaxID + 1;
  Groups[ItemIndex] := aGroup;
end;

procedure TStatSchema.Add(aJson: TJsonObject);
var
  aGroup: TJanuaStatGroup;
begin
  aGroup.SetFromJson(aJson);
  Add(aGroup);
end;

procedure TStatSchema.Add(aName: string);
var
  aGroup: TJanuaStatGroup;
begin
  if Find(aName) then
    raise Exception.Create('TStatSchema.Add Error Try to insert Existing Group');
  aGroup.Clear;
  aGroup.Name := aName;
  aGroup.ID := MaxID + 1;
  Add(aGroup);
end;

function TStatSchema.AsJson: string;
begin
  Result := AsJsonObJect.ToJSON
end;

function TStatSchema.AsJsonObJect: TJsonObject;
var
  aGroup: TJanuaStatGroup;
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', ID);
  Janua.Core.Json.JsonPair(Result, 'name', Name);
  Janua.Core.Json.JsonPair(Result, 'count', Count);

  aArray := TJsonArray.Create;

  if Count > 0 then
    for aGroup in Groups do
      aArray.AddElement(aGroup.AsJsonObJect);
  Janua.Core.Json.JsonPair(Result, 'groups', aArray);

end;

function TStatSchema.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(AsJsonObJect.ToJSON)
end;

procedure TStatSchema.Clear;
begin
  SetLength(Groups, 0);
  ID := 0;
  Name := '';
  ItemIndex := -1;
  Stored := false;
  State := TJanuaRecordState.jrsNone;
end;

function TStatSchema.Count: Integer;
begin
  Result := Length(Groups);
end;

procedure TStatSchema.DeleteGroup(const aID: Byte);
begin
  if Find(aID) then
    DeleteGroup();

end;

procedure TStatSchema.DeleteGroup(aName: string);
begin
  if Find(aName) then
    DeleteGroup();

end;

procedure TStatSchema.DeleteGroup(aGroup: TJanuaStatGroup);
begin
  if Find(aGroup.ID) then
    DeleteGroup();

end;

function TStatSchema.DelCount: Integer;
begin
  Result := Length(Deleted);
end;

procedure TStatSchema.DeleteGroup;
var
  tArray: array of TJanuaStatGroup;
  i, j: Integer;
begin
  SetLength(tArray, Count - 1);
  j := -1;
  for i := Low(Groups) to High(Groups) do
    if i <> ItemIndex then
    begin
      Inc(j);
      tArray[j] := Groups[i];
    end;
  SetLength(Groups, Count - 1);
  for i := Low(tArray) to High(tArray) do
    Groups[i] := tArray[i];
  Sort;
end;

function TStatSchema.Find(const aName: string): Boolean;
var
  i: Integer;
begin
  Result := false;
  for i := Low(Groups) to High(Groups) do
  begin
    Result := Groups[i].Name.ToLower = aName.ToLower;
    if Result then
    begin
      ItemIndex := i;
      Exit
    end;
  end;

end;

function TStatSchema.Find(const aID: Byte): Boolean;
var
  i: Integer;
begin
  Result := false;
  for i := Low(Groups) to High(Groups) do
  begin
    Result := Groups[i].ID = aID;
    if Result then
    begin
      ItemIndex := i;
      Exit
    end;
  end;

end;

function TStatSchema.FindQuery(gID, qID: Byte): Boolean;
begin
  Result := Find(gID);
  if Result then
    Result := Groups[ItemIndex].Find(qID);
end;

function TStatSchema.FindQuery(aUID: Word): Boolean;
var
  qID, gID: Byte;
begin
  qID := aUID mod 1000;
  gID := aUID div 1000;
  // short circuit find procedure se trovo il gruppo usando gID poi seleziono il gruppo attuale
  Result := FindQuery(gID, qID);
end;

function TStatSchema.MaxID: Byte;
var
  i: Integer;
begin
  Result := 0;
  for i := Low(Groups) to High(Groups) do
    Result := IfThen(Result < Groups[i].ID, Groups[i].ID, Result);
end;

function TStatSchema.Modified: Boolean;
var
  i: Integer;
begin
  Result := State <> TJanuaRecordState.jrsNone;
  if not Result then
    for i := Low(Groups) to High(Groups) do
      if Groups[i].Modified then
        Exit(True)
end;

procedure TStatSchema.SetFromJson(aJson: string);
begin
  SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

function TStatSchema.SelectedGroup: TJanuaStatGroup;
begin
  Result := Groups[ItemIndex];
end;

procedure TStatSchema.SetFromJson(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
  aTest: Integer;
begin
  Clear;
  Janua.Core.Json.JsonValue(aJson, 'id', ID);
  Janua.Core.Json.JsonValue(aJson, 'name', Name);
  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('groups');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        Add(aObject);
      end;
  end;
  Sort;
end;

procedure TStatSchema.SetSaved;
var
  i: Integer;
begin
  State := TJanuaRecordState.jrsNone;
  for i := Low(Groups) to High(Groups) do
    Groups[i].SetSaved;

end;

procedure TStatSchema.Sort;
var
  i: Integer;
begin
  tArray.Sort<TJanuaStatGroup>(Groups, TDelegatedComparer<TJanuaStatGroup>.Construct(
    function(const Left, Right: TJanuaStatGroup): Integer
    begin
      Result := TComparer<string>.Default.Compare(Left.Name, Right.Name);
    end));

  if Count > 0 then
  begin
    for i := Low(Groups) to High(Groups) do
      Groups[i].Sort;
    ItemIndex := 0;
  end;
end;

function TStatSchema.UpdateQuery(aQuery: TStatQuery): Boolean;
begin
  Result := FindQuery(aQuery.UID);
  if Result then
    Groups[ItemIndex].Queries[SelectedGroup.ItemIndex] := aQuery;
end;

{ TJanuaStatGroup }

procedure TJanuaStatGroup.Add(aQuery: TStatQuery);
begin
  if aQuery.ID = 0 then
    aQuery.ID := MaxID + 1;
  if aQuery.UID = 0 then
    aQuery.UID := ID * 1000 + aQuery.ID;
  Insert;
  Queries[ItemIndex] := aQuery;
end;

procedure TJanuaStatGroup.Add(aJson: TJsonObject);
var
  aQuery: TStatQuery;
begin
  aQuery.SetFromJson(aJson);
  Add(aQuery);
end;

procedure TJanuaStatGroup.Add(var aID: smallint; aName, aSQl: string);
var
  aQuery: TStatQuery;
begin
  if aID = 0 then
    aID := MaxID + 1;
  aQuery := TStatQuery.Create(aID, aName, aSQl);
  Add(aQuery);
  Sort;
  Find(aID);
end;

function TJanuaStatGroup.AsJson: string;
begin
  Result := AsJsonObJect.ToJSON
end;

function TJanuaStatGroup.AsJsonObJect: TJsonObject;
var
  aQuery: TStatQuery;
  aArray: TJsonArray;
begin
  { ID: smallint;
    Name: string;
    Queries: array of TStatQuery;
  }
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', ID);
  Janua.Core.Json.JsonPair(Result, 'name', Name);
  Janua.Core.Json.JsonPair(Result, 'count', Count);
  aArray := TJsonArray.Create;
  if Count > 0 then
    for aQuery in Queries do
      aArray.AddElement(aQuery.AsJsonObJect);
  Janua.Core.Json.JsonPair(Result, 'queries', aArray);
end;

function TJanuaStatGroup.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(AsJsonObJect.ToJSON)
end;

procedure TJanuaStatGroup.Clear;
begin
  SetLength(Queries, 0);
  ID := 0;
  Name := '';
  ItemIndex := -1;
  State := TJanuaRecordState.jrsNone;
end;

function TJanuaStatGroup.Count: Integer;
begin
  Result := Length(Queries);
end;

procedure TJanuaStatGroup.DeleteQuery(const aName: string);
begin
  if Find(aName) then
    DeleteQuery;

end;

procedure TJanuaStatGroup.DeleteQuery(const aID: Byte);
begin
  if Find(aID) then
    DeleteQuery;
end;

procedure TJanuaStatGroup.DeleteQuery;
var
  tArray: array of TStatQuery;
  i, j: Integer;
begin
  SetLength(tArray, Count - 1);
  j := -1;
  for i := Low(Queries) to High(Queries) do
    if i <> ItemIndex then
    begin
      Inc(j);
      tArray[j] := Queries[i];
    end;
  SetLength(Queries, Count - 1);
  for i := Low(tArray) to High(tArray) do
    Queries[i] := tArray[i];
  Sort;
end;

procedure TJanuaStatGroup.DeleteQuery(const aQuery: TStatQuery);
begin
  if Find(aQuery.ID) then
    DeleteQuery;
end;

function TJanuaStatGroup.Find(const aName: string): Boolean;
var
  i: Integer;
begin
  Result := false;
  for i := Low(Queries) to High(Queries) do
  begin
    Result := Queries[i].Name.ToLower = aName.ToLower;
    if Result then
    begin
      ItemIndex := i;
      Exit
    end;
  end;
end;

function TJanuaStatGroup.Find(const aID: Byte): Boolean;
var
  i: Integer;
begin
  Result := false;
  for i := Low(Queries) to High(Queries) do
  begin
    Result := Queries[i].ID = aID;
    if Result then
    begin
      ItemIndex := i;
      Exit
    end;
  end;
end;

procedure TJanuaStatGroup.Insert;
begin
  ItemIndex := Count;
  SetLength(Queries, ItemIndex + 1);
end;

function TJanuaStatGroup.MaxID: Integer;
var
  i: Integer;
begin
  Result := 0;
  if Count > 0 then
    for i := Low(Queries) to High(Queries) do
      Result := System.Math.IfThen(Queries[i].ID > Result, Queries[i].ID, Result);
end;

function TJanuaStatGroup.Modified: Boolean;
var
  i: Integer;
begin
  Result := State <> TJanuaRecordState.jrsNone;
  if not Result and (Count > 0) then
    for i := Low(Queries) to High(Queries) do
      if Queries[i].Modified then
        Exit(True)

end;

procedure TJanuaStatGroup.SetFromJson(aJson: string);
begin
  SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

function TJanuaStatGroup.SelectedQuery: TStatQuery;
begin
  Result := Queries[ItemIndex]
end;

procedure TJanuaStatGroup.SetFromJson(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
  aTest: Integer;
begin
  Clear;
  Janua.Core.Json.JsonValue(aJson, 'id', ID);
  Janua.Core.Json.JsonValue(aJson, 'name', Name);

  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('queries');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        Add(aObject);
      end;
  end;
  Sort;
end;

procedure TJanuaStatGroup.SetSaved;
var
  i: Integer;
begin
  State := TJanuaRecordState.jrsNone;
  for i := Low(Queries) to High(Queries) do
    Queries[i].SetSaved;

end;

procedure TJanuaStatGroup.Sort;
begin
  tArray.Sort<TStatQuery>(Queries, TDelegatedComparer<TStatQuery>.Construct(
    function(const Left, Right: TStatQuery): Integer
    begin
      Result := TComparer<string>.Default.Compare(Left.Name, Right.Name);
    end))
end;

function TJanuaStatGroup.AddNewQuery: Integer;
begin
  Insert;
  Result := MaxID + 1;
  Queries[ItemIndex].ID := Result;
  Queries[ItemIndex].Name := 'Nuovo Report';
end;

{ TStatParam }

function TStatParam.AsJson: string;
begin
  Result := AsJsonObJect.ToJSON;
end;

function TStatParam.AsJsonObJect: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', ID);
  Janua.Core.Json.JsonPair(Result, 'paramtype', ParamTypeID[paramtype]);
  Janua.Core.Json.JsonPair(Result, 'name', Name);
  Janua.Core.Json.JsonPair(Result, 'lookup', Lookup);

  case paramtype of
    ptText:
      Janua.Core.Json.JsonPair(Result, 'Value', TextValue);
    ptDateTime:
      Janua.Core.Json.JsonPair(Result, 'Value', DateTimeValue);
    ptInteger:
      Janua.Core.Json.JsonPair(Result, 'Value', IntegerValue);
    ptReal:
      Janua.Core.Json.JsonPair(Result, 'Value', RealValue);
  end;

  if Lookup then
  begin
    Janua.Core.Json.JsonPair(Result, 'LookupQueryID', LookupQueryID);
    Janua.Core.Json.JsonPair(Result, 'LookupQueryKeyField', LookupQueryKeyField);
    Janua.Core.Json.JsonPair(Result, 'LookupQueryDisplayFields', LookupQueryDisplayFields);
  end;

end;

procedure TStatParam.Clear;
begin
  ID := 0;
  paramtype := TStatParamType.ptNone;
  Name := '';
  IntegerValue := 0;
  DateTimeValue := 0.0;
  TextValue := '';
  RealValue := 0.0;
  Lookup := false;
  LookupQueryID := 0;
  LookupQueryKeyField := '';
  LookupQueryDisplayFields := '';
end;

constructor TStatParam.Create(const aID: smallint; aName: string; aType: TStatParamType);
begin
  Clear;
  ID := aID;
  Name := aName;
  paramtype := aType;
end;

procedure TStatParam.SetFromJson(aJson: string);
begin
  SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TStatParam.SetFromJson(aJson: TJsonObject);
var
  temp: Byte;
begin
  Clear;
  Janua.Core.Json.JsonValue(aJson, 'id', ID);
  Janua.Core.Json.JsonValue(aJson, 'paramtype', temp);
  paramtype := GetParamType(temp);
  Janua.Core.Json.JsonValue(aJson, 'name', Name);
  Janua.Core.Json.JsonValue(aJson, 'lookup', Lookup);
  if Lookup then
  begin
    Janua.Core.Json.JsonValue(aJson, 'LookupQueryID', LookupQueryID);
    Janua.Core.Json.JsonValue(aJson, 'LookupQueryKeyField', LookupQueryKeyField);
    Janua.Core.Json.JsonValue(aJson, 'LookupQueryDisplayFields', LookupQueryDisplayFields);
  end;
  case paramtype of
    ptText:
      Janua.Core.Json.JsonValue(aJson, 'Value', TextValue);
    ptDateTime:
      Janua.Core.Json.JsonValue(aJson, 'Value', DateTimeValue);
    ptInteger:
      Janua.Core.Json.JsonValue(aJson, 'Value', IntegerValue);
    ptReal:
      Janua.Core.Json.JsonValue(aJson, 'Value', RealValue);
    ptBoolean:
      Janua.Core.Json.JsonValue(aJson, 'Value', BooleanValue);
  end;
end;

function TStatParam.Value: Variant;
begin
  case paramtype of
    ptText:
      Result := TextValue;
    ptDateTime:
      Result := DateTimeValue;
    ptInteger:
      Result := IntegerValue;
    ptReal:
      Result := RealValue;
    ptBoolean:
      Result := BooleanValue;
  end;
end;

{ TStatQuery }

procedure TStatQuery.Add(const aJson: TJsonObject);
var
  aParam: TStatParam;
begin
  aParam.SetFromJson(aJson);
  Add(aParam);
end;

procedure TStatQuery.Add(const aParam: TStatParam);
begin
  ItemIndex := Count;
  SetLength(params, Count + 1);
  params[ItemIndex] := aParam;
end;

procedure TStatQuery.Add(const aName: string; const aValue: TDateTime);
var
  aParam: TStatParam;
begin
  aParam.Create(MaxID + 1, aName, TStatParamType.ptDateTime);
  aParam.DateTimeValue := aValue;
  Add(aParam);
end;

procedure TStatQuery.Add(const aName: string; const aValue: Int64);
var
  aParam: TStatParam;
begin
  aParam.Create(MaxID + 1, aName, TStatParamType.ptInteger);
  aParam.IntegerValue := aValue;
  Add(aParam);
end;

procedure TStatQuery.Add(const aName: string; const aValue: Extended);
var
  aParam: TStatParam;
begin
  aParam.Create(MaxID + 1, aName, TStatParamType.ptReal);
  aParam.RealValue := aValue;
  Add(aParam);

end;

procedure TStatQuery.Add(const aName: string; const aValue: Boolean);
var
  aParam: TStatParam;
begin
  aParam.Create(MaxID + 1, aName, TStatParamType.ptBoolean);
  aParam.BooleanValue := aValue;
  Add(aParam);
end;

procedure TStatQuery.Add(const aName: string);
var
  aParam: TStatParam;
begin
  aParam.Create(MaxID + 1, aName, TStatParamType.ptNone);
  Add(aParam);
end;

procedure TStatQuery.AddLookupParam(const aName, aLookupField, aKeyField: string; const aSQl: string = '');
var
  aParam: TStatParam;
  aStatQuery: TStatQuery;
begin
  aStatQuery.Create(MaxQID + 1, aName, aSQl);
  aStatQuery.UID := UID * 1000 + aStatQuery.ID;
  aParam.Create(MaxID + 1, aName, TStatParamType.ptNone);
  aParam.Lookup := True;
  aParam.LookupQueryID := aStatQuery.UID;
  Add(aParam);
  Sort;
end;

procedure TStatQuery.Add(const aName, aValue: string);
var
  aParam: TStatParam;
begin
  aParam.Create(MaxID + 1, aName, TStatParamType.ptText);
  aParam.TextValue := aValue;
  Add(aParam);
  Sort;
end;

function TStatQuery.AsJson: string;
begin
  Result := AsJsonObJect.ToJSON;
end;

function TStatQuery.AsJsonObJect: TJsonObject;
var
  aItem: TStatParam;
  aQuery: TStatQuery;
  aArray, bArray: TJsonArray;
begin
  {
    ID: smallint;
    Name: string;
    SQL: string;
    UpdateSQL: string;
    DeleteSQL: string;
    params: array of TStatParam;
    ListQueries: array of TStatQuery;
  }
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', ID);
  Janua.Core.Json.JsonPair(Result, 'uid', UID);
  Janua.Core.Json.JsonPair(Result, 'sql', SQL);
  Janua.Core.Json.JsonPair(Result, 'UpdateSQL', UpdateSQL);
  Janua.Core.Json.JsonPair(Result, 'DeleteSQL', DeleteSQL);
  Janua.Core.Json.JsonPair(Result, 'count', Count);
  Janua.Core.Json.JsonPair(Result, 'lookupcount', Count);

  aArray := TJsonArray.Create;

  if Count > 0 then
    for aItem in params do
      aArray.AddElement(aItem.AsJsonObJect);
  Janua.Core.Json.JsonPair(Result, 'params', aArray);

  bArray := TJsonArray.Create;

  if QueriesCount > 0 then
    for aQuery in LookupQueries do
      bArray.AddElement(aQuery.AsJsonObJect);

  Janua.Core.Json.JsonPair(Result, 'lookups', bArray);

end;

function TStatQuery.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(AsJsonObJect.ToJSON)
end;

procedure TStatQuery.Clear;
begin
  SetLength(params, 0);
  ID := 0;
  UID := 0;
  Name := '';
  SQL := '';
  UpdateSQL := '';
  DeleteSQL := '';
  SetLength(LookupQueries, 0);
  State := TJanuaRecordState.jrsNone;
end;

function TStatQuery.Count: Integer;
begin
  Result := Length(params);
end;

constructor TStatQuery.Create(const aID: Byte; aName, aSQl: string);
begin
  Clear;
  ID := aID;
  Name := aName;
  SQL := aSQl;
end;

procedure TStatQuery.Del;
var
  tArray: array of TStatParam;
  i, j: Integer;
begin
  SetLength(tArray, Count - 1);
  j := -1;
  for i := Low(params) to High(params) do
    if i <> ItemIndex then
    begin
      Inc(j);
      tArray[j] := params[i];
    end;
  SetLength(params, Count - 1);
  for i := Low(tArray) to High(tArray) do
    params[i] := tArray[i];
end;

function TStatQuery.Find(const aName: string): Boolean;
var
  i: Integer;
begin
  Result := false;
  for i := Low(params) to High(params) do
    if params[i].Name.ToLower = aName.ToLower then
    begin
      Result := True;
      ItemIndex := i;
      Exit
    end;

end;

function TStatQuery.Find(const aID: Byte): Boolean;
var
  i: Integer;
begin
  Result := false;
  for i := Low(params) to High(params) do
    if params[i].ID = aID then
    begin
      Result := True;
      ItemIndex := i;
      Exit
    end;
end;

procedure TStatQuery.Del(const Index: Integer);
begin
  if Index < High(params) then
  begin
    ItemIndex := Index;
    Del();
  end;
end;

procedure TStatQuery.Del(const aID: Byte);
begin
  if Find(aID) then
    Del;

end;

function TStatQuery.MaxID: Integer;
var
  i: Integer;
begin
  Result := 0;
  if Count > 0 then
    for i := Low(params) to High(params) do
      Result := IfThen(Result > params[i].ID, Result, params[i].ID);
end;

function TStatQuery.MaxQID: Integer;
begin
  Result := Length(LookupQueries);
end;

function TStatQuery.Modified: Boolean;
var
  i: Integer;
begin
  Result := State <> TJanuaRecordState.jrsNone;
  if not Result then
    for i := Low(LookupQueries) to High(LookupQueries) do
      if LookupQueries[i].Modified then
        Exit(True)
end;

function TStatQuery.QueriesCount: Integer;
begin
  Result := Length(LookupQueries);
end;

procedure TStatQuery.SetDeleteSQL(const Value: string);
begin
  FDeleteSQL := Value;
end;

procedure TStatQuery.SetFromJson(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
  aTest: Integer;
begin
  {
    ID: smallint;
    Name: string;
    SQL: string;
    UpdateSQL: string;
    DeleteSQL: string;
    params: array of TStatParam;
    ListQueries: array of TStatQuery;
  }
  Janua.Core.Json.JsonValue(aJson, 'id', FID);
  Janua.Core.Json.JsonValue(aJson, 'uid', FUID);
  Janua.Core.Json.JsonValue(aJson, 'sql', FSQL);
  Janua.Core.Json.JsonValue(aJson, 'updatesql', FUpdateSQL);
  Janua.Core.Json.JsonValue(aJson, 'deletesql', FDeleteSQL);
  Janua.Core.Json.JsonValue(aJson, 'count', aTest);

  if aTest > 0 then
  begin
    aPair := aJson.Get('params');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        Add(aObject);
      end;
  end;

  Janua.Core.Json.JsonValue(aJson, 'lookupcount', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('lookups');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        Add(aObject);
      end;
  end;

  Sort;

end;

procedure TStatQuery.SetID(const Value: Byte);
begin
  FID := Value;
end;

procedure TStatQuery.SetItemIndex(const Value: Integer);
begin
  FItemIndex := Value;
end;

procedure TStatQuery.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TStatQuery.SetSaved;
var
  i: Integer;
begin
  State := TJanuaRecordState.jrsNone;
  for i := Low(LookupQueries) to High(LookupQueries) do
    LookupQueries[i].SetSaved;

end;

procedure TStatQuery.SetSQL(const Value: string);
begin
  FSQL := Value;
end;

procedure TStatQuery.SetUID(const Value: cardinal);
begin
  FUID := Value;
end;

procedure TStatQuery.SetUpdateSQL(const Value: string);
begin
  FUpdateSQL := Value;
end;

procedure TStatQuery.SetFromJson(aJson: string);
begin
  SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TStatQuery.Sort;
begin
  tArray.Sort<TStatParam>(params, TDelegatedComparer<TStatParam>.Construct(
    function(const Left, Right: TStatParam): Integer
    begin
      Result := TComparer<string>.Default.Compare(Left.Name, Right.Name);
    end));
end;

procedure TJanuaCustomStatisticsServer.SetStatSchema(val: TStatSchema);
begin
  FStatSchema := val;
end;

function TJanuaCustomStatisticsServer.TestQuery(aQuery: TStatQuery; var Tested: Boolean): TStatQuery;
begin
  FTempQuery := aQuery;
  Result := TestQuery(Tested)
end;

function TJanuaCustomStatisticsServer.TestQuery(var Tested: Boolean): TStatQuery;
begin
  try
    CreateDataModule;
    try
      InternalOpenQuery;
    except
      on e: Exception do
      begin
        Tested := false;
        LastErrorMessage := e.Message;
        HasErrors := True;
      end;
    end;
    Result := FTempQuery;
  finally
    DestroyDataModule(false);
  end;

end;

function TJanuaCustomStatisticsServer.UpdateQuery(aQuery: TStatQuery): Boolean;
begin
  if FStatSchema.FindQuery(aQuery.UID) then
  begin
    FTempQuery := aQuery;
    TestQuery(Result);
    if Result then
      Result := FStatSchema.UpdateQuery(aQuery);
  end;
end;

end.
