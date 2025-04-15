unit Janua.Orm.UniDac;

interface

uses
  System.Classes, System.SysUtils, Spring.Collections,
  // Database
  Data.DB, Datasnap.DBClient, Uni, VirtualTable,
  // Janua Interfaces
  Janua.Core.Classes.Intf, Janua.Server.Intf, Janua.Orm.Intf, Janua.Core.DB.Intf,
  // Janua Classes
  Janua.Core.Classes, Janua.Server.Impl, Janua.Core.Types, Janua.Orm.Types, Janua.Core.DB.Impl,
  Janua.Orm.Impl;

type
  // TUniDatasetFunctions = class(TInterfacedObject, IDatasetFunctions)

  TJanuaPgStorage = class(TJanuaStorage, IJanuaStorage)
  public
    constructor Create; override;
  end;

type

  /// <summary> Common ancestor for all Postgres Datasets, should descend from a TUniDataset from Devart </summary>
  TJanuaCustomUniDataset = class(TJanuaDBDataset)
    { TODO : Move the common code to the Janua.Orm.Unidac common ancestor for Postgres, Oracle and so On }
  strict protected
    FDataset: TCustomUniDataSet;
    FGUIDParam: TUniParam;
    /// <summary> This procedure is called before opening a Dataset it's a custom internal proc </summary>
    function GetBeforeOpenProc: boolean; override;
    procedure InternalOrderByActivate; override;
    procedure InternalOrderByDeactivate; override;
  protected
    procedure SeTUniDataset(const aDataset: TCustomUniDataSet);
    function GeTUniDataset: TCustomUniDataSet;
    property PgDataset: TCustomUniDataSet read GeTUniDataset write SeTUniDataset;
  private
    function GetDataset: TDataset; override;
    procedure SetDataset(const Value: TDataset); override;
    procedure ApplyParams;
    procedure PrepareParams;
    function GetActive: boolean;
    procedure SetActive(const Value: boolean);
  public
    procedure Post; override;
    procedure Refresh; override;
    procedure Open; override;
  public
    constructor Create; override;
    constructor CreateWithEntities(const aDataset: TCustomUniDataSet; const aEntities: TJanuaEntities);
      overload; virtual;
    constructor CreateWithNames(const aDataset: TCustomUniDataSet;
      const aEntities: TJanuaEntityNames); overload;
    procedure OpenThreaded(aProc: TProc = nil); override;
    function RecordCount: Integer;
  protected
    procedure SetDataSource(const Value: TDataSource); override;
    property Active: boolean read GetActive write SetActive;
    // Serialization and Deserialization procedures
  protected
    function GetAsBase64: string; override;
    function GetAsJson: string; override;
    procedure SetAsBase64(const Value: string); override;
    procedure SetAsJson(const Value: string); override;
  end;

type
  TJanuaPgDataset = class(TJanuaCustomUniDataset, IJanuaDBDataset)
  private
    FDeleteObject, FUpdteObject, FInsertObject: TUniSql;
    FRefreshObject: TUniQuery;
  strict protected
    procedure SetUpdateObjects(aUpdateObject: TUniSql; aDeleteObject: TUniSql; aInsertObject: TUniSql;
      aRefreshObject: TUniQuery);
  public
    /// <param name="aDataset">  DB Dataset from Delphi Components</param>
    /// <param name="aEntities"> List of entities from TJanuaEntities Enumerator </param>
    /// <param name="aInsertObject"> List of entities from TJanuaEntities Enumerator </param>
    /// <param name="aUpdateObject"> List of entities from TJanuaEntities Enumerator </param>
    /// <param name="aDeleteObject"> List of entities from TJanuaEntities Enumerator </param>
    /// <param name="aRefreshObject"> List of entities from TJanuaEntities Enumerator </param>
    constructor Create(const aDataset: TCustomUniDataSet; const aEntities: TJanuaEntities;
      aInsertObject: TUniSql = nil; aUpdateObject: TUniSql = nil; aDeleteObject: TUniSql = nil;
      aRefreshObject: TUniQuery = nil); overload;
    /// <param name="aDataset">   DB Dataset from Delphi Components </param>
    /// <param name="aEntities"> List of entities identied by &lt;schema&gt;.&lt;entitiyname&gt; in Janua Framework </param>
    /// <param name="aInsertObject"> List of entities from TJanuaEntities Enumerator </param>
    /// <param name="aUpdateObject"> List of entities from TJanuaEntities Enumerator </param>
    /// <param name="aDeleteObject"> List of entities from TJanuaEntities Enumerator </param>
    /// <param name="aRefreshObject"> List of entities from TJanuaEntities Enumerator </param>
    constructor Create(const aDataset: TCustomUniDataSet; const aEntities: TJanuaEntityNames;
      aInsertObject: TUniSql = nil; aUpdateObject: TUniSql = nil; aDeleteObject: TUniSql = nil;
      aRefreshObject: TUniQuery = nil); overload;
    function DeleteFromDataset(const aGUID: TGUID): boolean; override;
    function DeleteFromDataset(const aRecord: IJanuaRecord): boolean; override;
    function UpdateRecord(const aRecord: IJanuaRecord): boolean; override;
    function InsertRecord(const aRecord: IJanuaRecord): boolean; override;
    function SearchRecord(const aGUID: TGUID): boolean; override;
    procedure SetSearchFilter(const aSQLFilter: string); override;
    property Filtered: boolean read GetFiltered write SetFiltered;
    { function AddField(const aName: string; const aFieldType: TJanuaFieldType; const aSize, aPrecision: SmallInt)
      : TField; overload;
      function AddField(const aField: IJanuaField): TField; overload; }
    function GetFieldByName(const FieldName: string; out aField: TField): boolean;
  end;

type
  TJanuaPgStoredProcedure = class(TJanuaPgDataset, IJanuaDBStoredProcedure)
  private
    FPgStoredProc: TUniStoredProc;
    FResultType: TJanuaFieldType;
  public
    constructor Create(const aDataset: TUniStoredProc; const aEntities: TJanuaEntities;
      aInsertObject: TUniSql = nil; aUpdateObject: TUniSql = nil; aDeleteObject: TUniSql = nil;
      aRefreshObject: TUniQuery = nil); overload;
    procedure PrepareSQL;
    procedure ExecSQL;
  end;

type
  TJanuaPgTable = class(TJanuaPgDataset, IJanuaDBDataset)
  private
    FPgTable: TUniTable;
  public
    constructor Create(const aDataset: TUniTable; const aEntities: TJanuaEntityNames;
      aInsertObject: TUniSql = nil; aUpdateObject: TUniSql = nil; aDeleteObject: TUniSql = nil;
      aRefreshObject: TUniQuery = nil); overload;
    constructor Create(const aDataset: TUniTable; const aEntities: TJanuaEntities;
      aInsertObject: TUniSql = nil; aUpdateObject: TUniSql = nil; aDeleteObject: TUniSql = nil;
      aRefreshObject: TUniQuery = nil); overload;
  end;

type
  TJanuaPgQuery = class(TJanuaPgDataset, IJanuaDBDataset)
  private
    FPgQuery: TUniQuery;
  public
    /// <param name="aDataset">  DB Dataset from Delphi Components</param>
    /// <param name="aEntities"> List of entities from <see cref="Janua.Orm.Types|TJanuaEntities" />
    /// Enumerator </param>
    constructor Create(const aDataset: TUniQuery; const aEntities: TJanuaEntities;
      aInsertObject: TUniSql = nil; aUpdateObject: TUniSql = nil; aDeleteObject: TUniSql = nil;
      aRefreshObject: TUniQuery = nil); overload;
    /// <param name="aDataset">   DB Dataset from Delphi Components </param>
    /// <param name="aEntities"> List of entities identied by &lt;schema&gt;.&lt;entitiyname&gt;
    /// in Janua Framework </param>
    constructor CreateWithNames(const TUniQuery: TCustomUniDataSet; const aEntities: TJanuaEntityNames;
      aInsertObject: TUniSql = nil; aUpdateObject: TUniSql = nil; aDeleteObject: TUniSql = nil;
      aRefreshObject: TUniQuery = nil); overload;
  end;

  TJanuaUniMemTable = class(TJanuaDBDataset, IJanuaVirtualDBDataset, IJanuaDBDataset)
  private
    FVirtualTable: TVirtualTable;
    procedure SetVirtualTable(const Value: TVirtualTable);
    /// <summary> This procedure is called before opening a Dataset it's a custom internal proc </summary>
    function GetBeforeOpenProc: boolean; override;
  strict protected
    procedure InternalOrderByActivate; override;
    procedure InternalOrderByDeactivate; override;
  protected
    property VirtualTable: TVirtualTable read FVirtualTable write SetVirtualTable;
  public
    constructor Create; override;
    destructor Destroy; override;
    constructor CreateWithEntities(const aDataset: TCustomUniDataSet; const aEntities: TJanuaEntities);
  public
    function DeleteFromDataset(const aGUID: TGUID): boolean; override;
    function DeleteFromDataset(const aRecord: IJanuaRecord): boolean; override;
    function UpdateRecord(const aRecord: IJanuaRecord): boolean; override;
    function InsertRecord(const aRecord: IJanuaRecord): boolean; override;
    function SearchRecord(const aGUID: TGUID): boolean; override;
    function FieldByName(const FieldName: string): TField; override;
    procedure SetSearchFilter(const aSQLFilter: string); override;
    procedure ClearDataset; override;
    function GetFieldByName(const FieldName: string; out aField: TField): boolean;
    procedure EmptyDataSet;
    procedure ClearDetails;
  protected
    function GetAsBase64: string; override;
    function GetAsJson: string; override;
    procedure SetAsBase64(const Value: string); override;
    procedure SetAsJson(const Value: string); override;
  end;

type
  TJanuaUniVirtualDatasetFactory = class(TJanuaInterfacedObject, IJanuaDBDatasetFactory)
  public
    function CreateDataset(const aRecord: IJanuaRecord): IJanuaVirtualDBDataset; overload;
    function CreateDataset: IJanuaVirtualDBDataset; overload;
  end;

implementation

uses
  System.StrUtils, Spring, Janua.Uni.Framework, Janua.Core.Functions, Janua.Uni.Impl, Janua.UniDac.Commons,
  Janua.Application.Framework;

{ TJanuaCustomUniDataset }

procedure TJanuaCustomUniDataset.ApplyParams;
var
  i, j, k, l: Integer;
begin
  if Assigned(FGUIDParam) then
    FGUIDParam.Clear;

  k := Pred(GetParams.ParamCount);
  l := Pred(FDataset.Params.Count);
  if (k >= 0) and (l >= 0) then
    with FDataset do
      for i := 0 to k do
      begin
        var
        lJanuaParam := GetParams[i].DBField.ToLower;
        if (lJanuaParam <> 'jguid') and (lJanuaParam <> 'result') then
          for j := 0 to l do
          begin
            var
            lDataParam := Params[j].Name.ToLower;
            if lDataParam = lJanuaParam then
              Params[j].Value := GetParams[i].AsVariant;
          end;
      end;
end;

constructor TJanuaCustomUniDataset.Create;
begin
  inherited;

  SerializeFunc := function(aFormat: string): string
    begin
      Result := TUniDacExporter.ExportDataset(FDataset, aFormat)
    end;
  DeSerializeFunc := procedure(aFormat, aPayload: string)
    begin
      TUniDacExporter.ImportDataset(FDataset, aPayload, aFormat)
    end;

  FOrderByFields := TJanuaUniOrderByFields.Create;
end;

constructor TJanuaCustomUniDataset.CreateWithEntities(const aDataset: TCustomUniDataSet;
  const aEntities: TJanuaEntities);
begin
  Guard.CheckNotNull(aDataset, 'TJanuaCustomUniDataset.Create aDataset is nil');
  inherited CreateWithEntities(aEntities);
  SetDataset(aDataset); // 2020-08-24 Set Dataset to Trigger Events
end;

constructor TJanuaCustomUniDataset.CreateWithNames(const aDataset: TCustomUniDataSet;
  const aEntities: TJanuaEntityNames);
begin
  Guard.CheckNotNull(aDataset, 'TJanuaCustomUniDataset.Create aDataset is nil');
  CreateWithNames(aEntities);
  FDataset := aDataset;
end;

function TJanuaCustomUniDataset.GetActive: boolean;
begin
  Result := FDataset.Active
end;

function TJanuaCustomUniDataset.GetAsBase64: string;
begin
  Result := TUniDacExporter.ExportToBase64(FDataset)
end;

function TJanuaCustomUniDataset.GetAsJson: string;
begin
  Result := TUniDacExporter.ExportToJson(FDataset)
end;

function TJanuaCustomUniDataset.GetBeforeOpenProc: boolean;
begin
  FBeforeOpenProc := procedure
    begin
      FDataset.IndexFieldNames := OrderByFields.IndexFieldNames;
    end;
  Result := True;
end;

function TJanuaCustomUniDataset.GetDataset: TDataset;
begin
  Result := self.FDataset
end;

function TJanuaCustomUniDataset.GeTUniDataset: TCustomUniDataSet;
begin
  Result := FDataset
end;

procedure TJanuaCustomUniDataset.InternalOrderByActivate;
begin
  inherited;
  FDataset.IndexFieldNames := OrderByFields.IndexFieldNames
end;

procedure TJanuaCustomUniDataset.InternalOrderByDeactivate;
begin
  inherited;
  FDataset.IndexFieldNames := '';
end;

procedure TJanuaCustomUniDataset.Open;
var
  i: Integer;
  lFieldName: string;
  lParamValue: Variant;
  aPair: TPair<string, IJanuaField>;
  lParam: IJanuaField;
  aParam: TUniParam;
begin
  try
    Guard.CheckNotNull(Params, 'Params');
    if Params.ParamCount > 0 then
      for aPair in Params.Items do
      begin
        lParam := aPair.Value;
        lFieldName := lParam.DBField;
        aParam := FDataset.FindParam(lFieldName);
        Guard.CheckNotNull(aParam, 'ParamByName(' + FDataset.Name + '.' + lFieldName + ') not found');
        if lParam.IsNull then
          aParam.Clear
        else
        begin
          lParamValue := lParam.AsVariant;
          aParam.Value := lParamValue;
        end;
      end;
    Guard.CheckNotNull(FDataset, 'FDataset');
    BeginScroll;
    TUniFramework.PgDatasetFunctions.OpenDataset(FDataset);
    i := FDataset.RecordCount;
    EndScroll;
  except
    on e: Exception do
      Raise Exception.Create(self.ClassName + '.Open: ' + e.Message);
  end;
end;

procedure TJanuaCustomUniDataset.OpenThreaded(aProc: TProc);
var
  i: Integer;
  lFieldName: string;
  lParamValue: Variant;
begin
  try
    Guard.CheckNotNull(Params, 'Params');
    if Params.ParamCount > 0 then
      for i := 0 to Pred(Params.ParamCount) do
      begin
        lParamValue := Params[i].AsVariant;
        lFieldName := Params[i].DBField;
        FDataset.ParamByName(lFieldName).Value := lParamValue;
      end;
    Guard.CheckNotNull(FDataset, 'FDataset');
    inherited;
    // TUniFramework.PgDatasetFunctions.OpenThreadedDataset(FDataset);
  except
    on e: Exception do
      RaiseException('OpenThreaded', e, self);
  end;
end;

procedure TJanuaCustomUniDataset.Post;
begin
  TUniFramework.PgDatasetFunctions.PostDataset(self.GetDataset);
end;

procedure TJanuaCustomUniDataset.PrepareParams;
var
  i: Integer;
begin
  try
    Guard.CheckNotNull(Params, 'Params');
    Params.ClearParams;
    Guard.CheckNotNull(FDataset, 'FDataset');
    if (FDataset.ParamCount > 0) then
      for i := 0 to Pred(FDataset.ParamCount) do
        if FDataset.Params[i].Name <> 'jguid' then
        begin
          case self.FDataset.Params[i].DataType of
            TFieldType.ftString:
              AddParam(FDataset.Params[i].Name.ToLower, jptString).DefaultValue :=
                TValue.From<string>(FDataset.Params[i].AsString);
            TFieldType.ftSmallint:
              AddParam(FDataset.Params[i].Name.ToLower, jptInteger).DefaultValue :=
                TValue.From<Integer>(FDataset.Params[i].AsInteger);
            TFieldType.ftInteger:
              AddParam(FDataset.Params[i].Name.ToLower, jptInteger).DefaultValue :=
                TValue.From<Integer>(FDataset.Params[i].AsInteger);
            TFieldType.ftLargeint:
              AddParam(FDataset.Params[i].Name.ToLower, jptLargeInt).DefaultValue :=
                TValue.From<Int64>(FDataset.Params[i].AsLargeInt);
            TFieldType.ftBoolean:
              AddParam(FDataset.Params[i].Name.ToLower, jptBoolean).DefaultValue :=
                TValue.From<boolean>(FDataset.Params[i].AsBoolean);
            TFieldType.ftWideString:
              AddParam(FDataset.Params[i].Name.ToLower, jptString).DefaultValue :=
                TValue.From<string>(FDataset.Params[i].AsString);
          else
            AddParam(FDataset.Params[i].Name.ToLower, jptString).DefaultValue :=
              TValue.From<string>(FDataset.Params[i].AsString);
          end;
          // Recupero il valore del parametro
          ParamByName(FDataset.Params[i].Name.ToLower).Default; // AsVariant := FDataset.Params[i].Value;
        end;
  except
    on e: Exception do
      RaiseException('PrepareParams', e, self);
  end;
end;

function TJanuaCustomUniDataset.RecordCount: Integer;
begin
  Result := self.FDataset.RecordCount
end;

procedure TJanuaCustomUniDataset.Refresh;
begin
  inherited;

end;

procedure TJanuaCustomUniDataset.SetActive(const Value: boolean);
begin
  FDataset.Active := Value;
end;

procedure TJanuaCustomUniDataset.SetAsBase64(const Value: string);
begin
  inherited;
  TUniDacExporter.ImportFromBase64(FDataset, Value)
end;

procedure TJanuaCustomUniDataset.SetAsJson(const Value: string);
begin
  inherited;
  TUniDacExporter.ImportFromJson(FDataset, Value)
end;

procedure TJanuaCustomUniDataset.SetDataset(const Value: TDataset);
begin
  inherited;
  SeTUniDataset(Value as TCustomUniDataSet);
end;

procedure TJanuaCustomUniDataset.SetDataSource(const Value: TDataSource);
begin
  inherited;
end;

procedure TJanuaCustomUniDataset.SeTUniDataset(const aDataset: TCustomUniDataSet);
begin
  FDataset := aDataset;
  if Assigned(FDataset) then
    FGUIDParam := FDataset.FindParam('jguid');
end;

{ TJanuaPgDataset }

function TJanuaPgDataset.InsertRecord(const aRecord: IJanuaRecord): boolean;
var
  i, j: Integer;
begin
  Result := False;
  if TJanuaApplication.UseClassicUpdate or not Assigned(FInsertObject) then
  begin
    inherited;
    if FDataset.UpdatesPending then
      FDataset.applyupdates;
    { TODO: Solve Date Bug (updating library)? }
    // FDataset.RefreshRecord;
  end
  else
  begin
    for i := 0 to Pred(aRecord.FieldCount) do
      for j := 0 to Pred(self.FInsertObject.ParamCount) do
        if (FInsertObject.Params[j].Name.ToLower) = aRecord.Fields[i].DBField.ToLower then
          if aRecord.Fields[i].IsNull then
            FInsertObject.Params[j].Clear
          else
            FInsertObject.Params[j].Value := aRecord.Fields[i].AsVariant;
    if FInsertObject.FindParam('jguid') <> nil then
      FInsertObject.ParamByName('jguid').AsString := aRecord.GUIDString;

    FInsertObject.Execute;
    Result := True;
  end;
end;

function TJanuaPgDataset.DeleteFromDataset(const aGUID: TGUID): boolean;
begin
  Result := False;
  if Assigned(self.FDeleteObject) then
  begin
    FDeleteObject.ParamByName('jguid').AsString := aGUID.ToString;
    FDeleteObject.Execute;
    Result := True;
  end
  else
    inherited
end;

{ function TJanuaPgDataset.AddField(const aField: IJanuaField): TField;
  begin

  end;

  function TJanuaPgDataset.AddField(const aName: string; const aFieldType: TJanuaFieldType;
  const aSize, aPrecision: SmallInt): TField;
  begin

  end;
}
constructor TJanuaPgDataset.Create(const aDataset: TCustomUniDataSet; const aEntities: TJanuaEntityNames;
  aInsertObject, aUpdateObject, aDeleteObject: TUniSql; aRefreshObject: TUniQuery);
begin
  Guard.CheckNotNull(aDataset, 'TJanuaPgDataset.Create aDataset is null');
  Guard.CheckSet(aEntities, 'At least one Entity name must be set');
  inherited CreateWithNames(aDataset, aEntities);
  SetUpdateObjects(aUpdateObject, aDeleteObject, aInsertObject, aRefreshObject);
end;

function TJanuaPgDataset.DeleteFromDataset(const aRecord: IJanuaRecord): boolean;
begin
  Result := DeleteFromDataset(aRecord.GUID);
end;

function TJanuaPgDataset.GetFieldByName(const FieldName: string; out aField: TField): boolean;
begin
  aField := nil;
  Assert(FieldName <> '', ClassName + 'GetFieldByName.FieldByName Not set');
  aField := FDataset.FindField(FieldName);
  Result := Assigned(aField);
end;

constructor TJanuaPgDataset.Create(const aDataset: TCustomUniDataSet; const aEntities: TJanuaEntities;
  aInsertObject: TUniSql = nil; aUpdateObject: TUniSql = nil; aDeleteObject: TUniSql = nil;
  aRefreshObject: TUniQuery = nil);
begin
  Guard.CheckNotNull(aDataset, 'TJanuaPgDataset.Create aDataset is null');
  inherited CreateWithEntities(aDataset, aEntities);
  Guard.CheckNotNull(self.Params, 'Params is null TJanuaPgDataset.Create');
  SetUpdateObjects(aUpdateObject, aDeleteObject, aInsertObject, aRefreshObject);
end;

function TJanuaPgDataset.SearchRecord(const aGUID: TGUID): boolean;
begin
  Result := inherited;

  if not Result and Assigned(FGUIDParam) then
  begin
    FDataset.Close;
    FGUIDParam.AsGuid := aGUID;
    TUniFramework.PgDatasetFunctions.OpenDataset(FDataset);
    Result := FDataset.RecordCount = 1;
  end;
end;

procedure TJanuaPgDataset.SetSearchFilter(const aSQLFilter: string);
begin
  inherited;
  FDataset.Filter := aSQLFilter;
end;

procedure TJanuaPgDataset.SetUpdateObjects(aUpdateObject: TUniSql; aDeleteObject: TUniSql;
  aInsertObject: TUniSql; aRefreshObject: TUniQuery);
begin
  FUpdteObject := aUpdateObject;
  FDeleteObject := aDeleteObject;
  FInsertObject := aInsertObject;
  FRefreshObject := aRefreshObject;

  if not TJanuaApplication.UseClassicUpdate and (FDataset is TUniQuery) then
  begin
    if FUpdteObject = nil then
    begin
      FUpdteObject := TUniSql.Create(FDataset);
      FUpdteObject.Connection := (FDataset as TUniQuery).Connection;
      FUpdteObject.SQL.Assign((FDataset as TUniQuery).SQLUpdate);
    end;

    if FDeleteObject = nil then
    begin
      FDeleteObject := TUniSql.Create(FDataset);
      FDeleteObject.Connection := (FDataset as TUniQuery).Connection;
      FDeleteObject.SQL.Assign((FDataset as TUniQuery).SQLDelete);
    end;

    if FInsertObject = nil then
    begin
      FInsertObject := TUniSql.Create(FDataset);
      FInsertObject.Connection := (FDataset as TUniQuery).Connection;
      FInsertObject.SQL.Assign((FDataset as TUniQuery).SQLInsert);
    end;
  end;

  PrepareParams;
end;

function TJanuaPgDataset.UpdateRecord(const aRecord: IJanuaRecord): boolean;
var
  i, j: Integer;
begin
  if not Assigned(FInsertObject) then
    inherited
  else
  begin
    if Assigned(FInsertObject.ParamByName('jguid')) then
      FInsertObject.ParamByName('jguid').AsString := aRecord.GUID.ToString;
    for i := 0 to Pred(aRecord.FieldCount) do
      for j := 0 to Pred(FInsertObject.ParamCount) do
        if (FInsertObject.Params[j].Name.ToLower = aRecord.Fields[i].DBField.ToLower) or
          (FInsertObject.Params[j].Name.ToLower = 'p_' + aRecord.Fields[i].DBField.ToLower) then
          if aRecord.Fields[i].IsNull then
            FInsertObject.Params[j].Clear
          else
            FInsertObject.Params[j].Value := aRecord.Fields[i].AsVariant;
    FInsertObject.Execute;
  end;
  Result := True;
end;

{ TJanuaPgStorage }

constructor TJanuaPgStorage.Create;
begin
  inherited;
  // TUniDatasetFunctions = class(TInterfacedObject, IDatasetFunctions)
end;

{ TJanuaPgStoredProcedure }

constructor TJanuaPgStoredProcedure.Create(const aDataset: TUniStoredProc; const aEntities: TJanuaEntities;
  aInsertObject, aUpdateObject, aDeleteObject: TUniSql; aRefreshObject: TUniQuery);
var
  aParam: TUniParam;
begin
  try
    inherited Create(TCustomUniDataSet(aDataset), aEntities, aInsertObject, aUpdateObject, aDeleteObject,
      aRefreshObject);
    FPgStoredProc := aDataset;
    aParam := aDataset.ParamByName('result');
    if Assigned(aParam) then
      SetResultTypeFromParam(aParam);
  except
    on e: Exception do
      RaiseException('Create', e, self);
  end;
end;

procedure TJanuaPgStoredProcedure.ExecSQL;
{ var
  i, j: Integer; }
begin
  Guard.CheckNotNull(FPgStoredProc, 'FPgStoredProc not correctly Set (nil)');
{$IFDEF DEBUG}
  var
  lTest := FPgStoredProc.StoredProcName;
{$ENDIF}
  ApplyParams;
  if not FPgStoredProc.Connection.InTransaction then
    FPgStoredProc.Connection.StartTransaction;
  try
    FPgStoredProc.Execute;
    FPgStoredProc.Connection.Commit;
  except
    on e: Exception do
      FPgStoredProc.Connection.Rollback;
  end;

  if GetResultType <> TJanuaFieldType.jptUnknown then
    GetResult.SetFromParam(FPgStoredProc.ParamByName('Result'))
    { else
      GetResult.AsVariant := FPgStoredProc.ParamByName('Result').Value; }
end;

procedure TJanuaPgStoredProcedure.PrepareSQL;
begin
  self.FPgStoredProc.PrepareSQL
end;

{ TJanuaPgTable }

constructor TJanuaPgTable.Create(const aDataset: TUniTable; const aEntities: TJanuaEntities;
  aInsertObject, aUpdateObject, aDeleteObject: TUniSql; aRefreshObject: TUniQuery);
begin
  Guard.CheckNotNull(aDataset, 'Create(TUniTable)');
  inherited Create(TCustomUniDataSet(aDataset), aEntities, aInsertObject, aUpdateObject, aDeleteObject,
    aRefreshObject);
end;

constructor TJanuaPgTable.Create(const aDataset: TUniTable; const aEntities: TJanuaEntityNames;
  aInsertObject, aUpdateObject, aDeleteObject: TUniSql; aRefreshObject: TUniQuery);
begin
  Guard.CheckNotNull(aDataset, 'Create(TUniTable)');
  FPgTable := aDataset;
  inherited Create(aDataset, aEntities, aInsertObject, aUpdateObject, aDeleteObject, aRefreshObject);

end;

{ TJanuaPgQuery }

constructor TJanuaPgQuery.Create(const aDataset: TUniQuery; const aEntities: TJanuaEntities;
  aInsertObject, aUpdateObject, aDeleteObject: TUniSql; aRefreshObject: TUniQuery);
begin
  Guard.CheckNotNull(aDataset, 'Create(TUniTable)');
  FPgQuery := aDataset;
  inherited Create(FPgQuery, aEntities, aInsertObject, aUpdateObject, aDeleteObject, aRefreshObject);
end;

constructor TJanuaPgQuery.CreateWithNames(const TUniQuery: TCustomUniDataSet;
  const aEntities: TJanuaEntityNames; aInsertObject, aUpdateObject, aDeleteObject: TUniSql;
  aRefreshObject: TUniQuery);
begin

end;

{ TJanuaUniMemTable }

procedure TJanuaUniMemTable.ClearDataset;
begin
  FVirtualTable.Clear;
end;

procedure TJanuaUniMemTable.ClearDetails;
begin

end;

constructor TJanuaUniMemTable.Create;
begin
  inherited;
  FOrderByFields := TJanuaUniOrderByFields.Create;
  FVirtualTable := TVirtualTable.Create(nil);

  SerializeFunc := function(aFormat: string): string
    begin
      Result := TUniDacExporter.ExportDataset(FVirtualTable, aFormat)
    end;
  DeSerializeFunc := procedure(aFormat, aPayload: string)
    begin
      TUniDacExporter.ImportDataset(FVirtualTable, aPayload, aFormat)
    end;

  SetInternalDataset(FVirtualTable);
end;

constructor TJanuaUniMemTable.CreateWithEntities(const aDataset: TCustomUniDataSet;
  const aEntities: TJanuaEntities);

  function GetEntitiesNames: string;
  var
    i, l: Integer;
  begin
    l := Pred(Length(aEntities));
    if l > -1 then
      for i := 0 to l do
        Result := Result + TEnumConvertor<TJanuaEntity>.ToString(aEntities[i]) + IfThen(l = i, '', ', ');
  end;

begin
  Guard.CheckNotNull(aDataset, 'Dataset not Set');
  try
    Create;
    FVirtualTable.Assign(aDataset);
    FVirtualTable.Open;
  except
    on e: Exception do
      RaiseException('CreateWithEntities:' + GetEntitiesNames, e, self);
  end;
end;

function TJanuaUniMemTable.DeleteFromDataset(const aGUID: TGUID): boolean;
begin
  Result := inherited
end;

function TJanuaUniMemTable.DeleteFromDataset(const aRecord: IJanuaRecord): boolean;
begin
  Result := inherited
end;

destructor TJanuaUniMemTable.Destroy;
begin
  if Assigned(FVirtualTable) then
    FreeAndNil(FVirtualTable);
  inherited;
end;

procedure TJanuaUniMemTable.EmptyDataSet;
begin
  FVirtualTable.Clear;
end;

function TJanuaUniMemTable.FieldByName(const FieldName: string): TField;
begin
  Assert(FieldName <> '', ClassName + 'FieldByName.FieldByName Not set');
  Result := FVirtualTable.FieldByName(FieldName);
end;

function TJanuaUniMemTable.GetAsBase64: string;
begin
  Result := TUniDacExporter.ExportToBase64(FVirtualTable)
end;

function TJanuaUniMemTable.GetAsJson: string;
begin
  Result := TUniDacExporter.ExportToJson(FVirtualTable)
end;

function TJanuaUniMemTable.GetBeforeOpenProc: boolean;
begin
  FBeforeOpenProc := procedure
    begin
      FVirtualTable.IndexFieldNames := OrderByFields.IndexFieldNames;
    end;
  Result := True;
end;

function TJanuaUniMemTable.GetFieldByName(const FieldName: string; out aField: TField): boolean;
begin
  aField := nil;
  Assert(FieldName <> '', ClassName + 'GetFieldByName.FieldByName Not set');
  aField := FVirtualTable.FindField(FieldName);
  Result := Assigned(aField);
end;

function TJanuaUniMemTable.InsertRecord(const aRecord: IJanuaRecord): boolean;
begin
  Result := inherited;
end;

procedure TJanuaUniMemTable.InternalOrderByActivate;
begin
  inherited;
  FVirtualTable.IndexFieldNames := OrderByFields.IndexFieldNames;
end;

procedure TJanuaUniMemTable.InternalOrderByDeactivate;
begin
  inherited;
  FVirtualTable.IndexFieldNames := '';
end;

function TJanuaUniMemTable.SearchRecord(const aGUID: TGUID): boolean;
begin
  Result := inherited;
end;

procedure TJanuaUniMemTable.SetAsBase64(const Value: string);
begin
  TUniDacExporter.ImportFromBase64(FVirtualTable, Value)
end;

procedure TJanuaUniMemTable.SetAsJson(const Value: string);
begin
  TUniDacExporter.ImportFromJson(FVirtualTable, Value)
end;

procedure TJanuaUniMemTable.SetSearchFilter(const aSQLFilter: string);
begin
  FVirtualTable.Filter := aSQLFilter
end;

procedure TJanuaUniMemTable.SetVirtualTable(const Value: TVirtualTable);
begin
  FVirtualTable := Value;
end;

function TJanuaUniMemTable.UpdateRecord(const aRecord: IJanuaRecord): boolean;
begin
  Result := inherited;
end;

{ TJanuaUniVirtualDatasetFactory }

function TJanuaUniVirtualDatasetFactory.CreateDataset(const aRecord: IJanuaRecord): IJanuaVirtualDBDataset;
var
  i: Integer;
  aField: IJanuaField;
begin
  Result := CreateDataset;
  if aRecord.FieldCount > 0 then
  begin
    for i := 0 to aRecord.FieldCount - 1 do
      Result.AddField(aRecord.Fields[i]);
  end;
  Result.Open;
end;

function TJanuaUniVirtualDatasetFactory.CreateDataset: IJanuaVirtualDBDataset;
begin
  Result := TJanuaUniMemTable.Create;
end;

end.
