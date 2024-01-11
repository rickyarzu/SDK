unit Janua.Orm.UniDac;

interface

uses
  System.Classes, Data.DB, Datasnap.DBClient, PgAccess, Janua.Core.Types, Janua.Orm.Intf, Janua.Orm.Impl;

type
  TPgDatasetFunctions = class(TInterfacedObject, IDatasetFunctions)
    procedure TestDatasets(aParent: TComponent);
    function DatasetToXml(const aDataset: TDataset): string;
    procedure PostDataset(const aDataset: TDataset);
    procedure OpenDataset(const aDataset: TDataset; DoRaise: boolean = true);
    procedure ReOpenDataset(const aDataset: TDataset);
    procedure PrepareDataset(const aDataset: TDataset);
    procedure ExecuteProcedure(aProcedure: TDataset);
    procedure CloseAllDatasets(aParend: TComponent);
  end;

  // TPgDatasetFunctions = class(TInterfacedObject, IDatasetFunctions)

  TJanuaPgStorage = class(TJanuaStorage, IJanuaStorage)
  public
    constructor Create; override;
  end;

type
  TDatasetType = (dsQuery, dsStoredProcedure, dsTable, dsSmartQuery);

type
  TJanuaCustomPgDataset = class(TJanuaDBDataset)
  strict protected
    FDataset: TCustomPgDataSet;
  protected
    procedure SetPgDataset(const aDataset: TCustomPgDataSet);
    function GetPgDataset: TCustomPgDataSet;
    property PgDataset: TCustomPgDataSet read GetPgDataset write SetPgDataset;
  private
    function GetDataset: TDataset;
    procedure SetDataset(const Value: TDataset);
    procedure ApplyParams;
    procedure PrepareParams;
  public
    constructor Create(const aDataset: TCustomPgDataSet); overload;
    procedure OpenThreaded;
    procedure Open;
    procedure Close;
    function RecordCount: Integer;
  protected
    procedure SetDataSource(const Value: TDataSource); override;
  end;

type
  TJanuaPgDataset = class(TJanuaCustomPgDataset, IJanuaDBDataset)
  strict protected
    FDeleteObject, FUpdteObject, FInsertObject: TPgSql;
    FRefreshObject: TPgQuery;
  public
    constructor Create(const aDataset: TCustomPgDataSet; aInsertObject: TPgSql = nil;
      aUpdateObject: TPgSql = nil; aDeleteObject: TPgSql = nil; aRefreshObject: TPgQuery = nil); overload;
    function DeleteFromDataset(const aGUID: TGUID): boolean; overload;
    function DeleteFromDataset(const aRecord: IJanuaRecord): boolean; overload;
    function UpdateRecord(const aRecord: IJanuaRecord): boolean;
    function InsertRecord(const aRecord: IJanuaRecord): boolean;
    function SearchRecord(const aGUID: TGUID): boolean;
  end;

type
  TJanuaPgStoredProcedure = class(TJanuaPgDataset, IJanuaDBStoredProcedure)
  private
    FPgStoredProc: TPgStoredProc;
    FResultType: TJanuaFieldType;
  public
    constructor Create(const aDataset: TPgStoredProc; aInsertObject: TPgSql = nil;
      aUpdateObject: TPgSql = nil; aDeleteObject: TPgSql = nil; aRefreshObject: TPgQuery = nil); overload;
    procedure PrepareSQL;
    procedure ExecSQL;
  end;

type
  TJanuaPgTable = class(TJanuaPgDataset, IJanuaDBDataset)
  private
    FPgTable: TPgTable;
  public
    constructor Create(const aDataset: TPgTable; aInsertObject: TPgSql = nil; aUpdateObject: TPgSql = nil;
      aDeleteObject: TPgSql = nil; aRefreshObject: TPgQuery = nil); overload;
  end;

type
  TJanuaPgQuery = class(TJanuaPgDataset, IJanuaDBDataset)
  private
    FPgTable: TPgQuery;
  public
    constructor Create(const aDataset: TPgQuery; aInsertObject: TPgSql = nil; aUpdateObject: TPgSql = nil;
      aDeleteObject: TPgSql = nil; aRefreshObject: TPgQuery = nil); overload;
  end;

implementation

uses
  System.SysUtils, System.StrUtils, Spring, Janua.Orm.Types, Janua.Postgres.Functions;

var
  FDBFunctions: TPgDatasetFunctions;

  { TJanuaCustomPgDataset }

procedure TJanuaCustomPgDataset.ApplyParams;
var
  i, j, k, l: Integer;
begin
  k := Pred(GetParams.Count);
  l := Pred(FDataset.Params.Count);
  if (k >= 0) and (l >= 0) then
    with FDataset do
      for i := 0 to k do
        for j := 0 to l do
          if (Params[j].Name.ToLower <> 'jguid') and (Params[j].Name.ToLower = GetParams[i].DBField.ToLower)
          then
            Params[j].Value := GetParams[i].AsVariant;
end;

procedure TJanuaCustomPgDataset.Close;
begin
  self.FDataset.Close;
end;

constructor TJanuaCustomPgDataset.Create(const aDataset: TCustomPgDataSet);
begin
  Guard.CheckNotNull(aDataset, 'TJanuaCustomPgDataset.Create aDataset is nil');
  inherited Create;
  self.FDataset := aDataset;
end;

function TJanuaCustomPgDataset.GetDataset: TDataset;
begin
  Result := self.FDataset
end;

function TJanuaCustomPgDataset.GetPgDataset: TCustomPgDataSet;
begin
  Result := FDataset
end;

procedure TJanuaCustomPgDataset.Open;
var
  i: Integer;
begin
  if self.Params.Count > 0 then
    for i := 0 to Pred(Params.Count) do
      FDataset.ParamByName(Params[i].DBField).Value := Params[i].AsVariant;
  FDBFunctions.OpenDataset(FDataset);
end;

procedure TJanuaCustomPgDataset.OpenThreaded;
begin
  Janua.Postgres.Functions.OpenPgThreadedDataset(self.FDataset);
end;

procedure TJanuaCustomPgDataset.PrepareParams;
var
  i: Integer;
begin
  Params.Clear;
  if (FDataset.ParamCount > 0) then
    for i := 0 to Pred(FDataset.ParamCount) do
      if FDataset.Params[i].Name <> 'jguid' then
      begin
        case self.FDataset.Params[i].DataType of
          TFieldType.ftString:
            AddParam(FDataset.Params[i].Name.ToLower, jptString);
          TFieldType.ftSmallint:
            AddParam(FDataset.Params[i].Name.ToLower, jptInteger);
          TFieldType.ftInteger:
            AddParam(FDataset.Params[i].Name.ToLower, jptInteger);
          TFieldType.ftBoolean:
            AddParam(FDataset.Params[i].Name.ToLower, jptBoolean);
          TFieldType.ftLargeint:
            AddParam(FDataset.Params[i].Name.ToLower, jptLargeInt);
        else
          AddParam(FDataset.Params[i].Name.ToLower, jptString);
        end;
        // Recupero il valore del parametro
        ParamByName(FDataset.Params[i].Name.ToLower).AsVariant := FDataset.Params[i].Value;
      end;
end;

function TJanuaCustomPgDataset.RecordCount: Integer;
begin
  Result := self.FDataset.RecordCount
end;

procedure TJanuaCustomPgDataset.SetDataset(const Value: TDataset);
begin
  SetPgDataset(Value as TCustomPgDataSet);
end;

procedure TJanuaCustomPgDataset.SetDataSource(const Value: TDataSource);
begin
  inherited;
end;

procedure TJanuaCustomPgDataset.SetPgDataset(const aDataset: TCustomPgDataSet);
begin
  FDataset := aDataset;
  self.InternalDataset := aDataset;
end;

{ TJanuaPgDataset }

function TJanuaPgDataset.InsertRecord(const aRecord: IJanuaRecord): boolean;
var
  i, j: Integer;
begin
  Result := False;
  for i := 0 to Pred(aRecord.FieldCount) do
    for j := 0 to Pred(self.FInsertObject.ParamCount) do
      if (FInsertObject.Params[j].Name.ToLower) = aRecord.Fields[i].DBField.ToLower then
        FInsertObject.Params[j].Value := aRecord.Fields[i].AsVariant;
  FInsertObject.Execute;
  Result := true;
end;

function TJanuaPgDataset.DeleteFromDataset(const aGUID: TGUID): boolean;
begin
  Result := False;
  if Assigned(self.FDeleteObject) then
  begin
    FDeleteObject.ParamByName('jguid').AsString := aGUID.ToString;
    FDeleteObject.Execute;
    Result := true;
  end;
end;

function TJanuaPgDataset.DeleteFromDataset(const aRecord: IJanuaRecord): boolean;
begin
  Result := DeleteFromDataset(aRecord.GUID);
end;

constructor TJanuaPgDataset.Create(const aDataset: TCustomPgDataSet; aInsertObject: TPgSql = nil;
  aUpdateObject: TPgSql = nil; aDeleteObject: TPgSql = nil; aRefreshObject: TPgQuery = nil);
begin
  Guard.CheckNotNull(aDataset, 'TJanuaPgDataset.Create aDataset is null');
  inherited Create(aDataset);
  self.FUpdteObject := aUpdateObject;
  self.FDeleteObject := aDeleteObject;
  self.FInsertObject := aInsertObject;
  self.FRefreshObject := aRefreshObject;
  self.PrepareParams;
end;

function TJanuaPgDataset.SearchRecord(const aGUID: TGUID): boolean;
begin
  FDataset.Close;
  self.FDataset.ParamByName('jguid').AsString := aGUID.ToString;
  FDBFunctions.OpenDataset(FDataset);
  Result := FDataset.RecordCount = 1;
end;

function TJanuaPgDataset.UpdateRecord(const aRecord: IJanuaRecord): boolean;
var
  i, j: Integer;
begin
  if Assigned(FInsertObject.ParamByName('jguid')) then
    FInsertObject.ParamByName('jguid').AsString := aRecord.GUID.ToString;
  for i := 0 to Pred(aRecord.FieldCount) do
    for j := 0 to Pred(self.FInsertObject.ParamCount) do
      if (FInsertObject.Params[j].Name.ToLower) = aRecord.Fields[i].DBField.ToLower then
        FInsertObject.Params[j].Value := aRecord.Fields[i].AsVariant;
  FInsertObject.Execute;
  Result := true;
end;

{ TDatasetFunctions }

procedure TPgDatasetFunctions.CloseAllDatasets(aParend: TComponent);
begin
  inherited;

end;

function TPgDatasetFunctions.DatasetToXml(const aDataset: TDataset): string;
var
  aStream: TMemoryStream;
  Lines: TStringList;
begin
  try
    aStream := TMemoryStream.Create;
    try
      TCustomPgDataSet(aDataset).SaveToXML(aStream);
      aStream.Position := 0;
      Lines := TStringList.Create;
      try
        Lines.LoadFromStream(aStream);
        Result := Lines.Text;
      finally
        FreeAndNil(Lines);
        Lines := nil;
      end;
    finally
      FreeAndNil(aStream);
      aStream := nil;
    end;
  except
    on E: Exception do
      raise Exception.Create('DatasetToXml: ' + aDataset.Name + ': ' + E.Message);
  end;

end;

procedure TPgDatasetFunctions.ExecuteProcedure(aProcedure: TDataset);

begin
  if (aProcedure is TPgStoredProc) then
    try
      (aProcedure as TPgStoredProc).ExecProc;
    except
      on E: Exception do
        raise Exception.Create('Error Exec ' + aProcedure.Name + ': ' + E.Message + sLineBreak +
          (aProcedure as TPgStoredProc).SQL.Text);
    end;
end;

procedure TPgDatasetFunctions.OpenDataset(const aDataset: TDataset; DoRaise: boolean);
begin
  if (aDataset is TPgQuery) then
    try
      TPgQuery(aDataset).Open;
    Except
      on E: Exception do
      begin
        raise Exception.Create('Errore di Apertura Dataset: ' + IfThen(Assigned(aDataset.Owner),
          aDataset.Owner.Name, '') + '.' + TPgQuery(aDataset).Name + sLineBreak + TPgQuery(aDataset).SQL.Text
          + sLineBreak + 'Connessione: ' + TPgQuery(aDataset).Connection.ConnectString + sLineBreak +
          'Errore: ' + E.Message + sLineBreak);
      end;
    end
  else if (aDataset is TPgTable) then
    try
      TPgTable(aDataset).Open;
    Except
      on E: Exception do
      begin
        raise Exception.Create('Errore di Apertura Dataset: ' + IfThen(Assigned(aDataset.Owner),
          aDataset.Owner.Name, '') + TPgTable(aDataset).Name + sLineBreak + TPgTable(aDataset).SQL.Text +
          sLineBreak + 'Errore: ' + E.Message);
      end;
    end
  else if (aDataset is TPgStoredProc) then
    try
      TPgStoredProc(aDataset).Prepare;
    Except
      on E: Exception do
      begin
        raise Exception.Create('Errore di Apertura Dataset: ' + TPgStoredProc(aDataset).Name + sLineBreak +
          TPgStoredProc(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
      end;
    end
  else if (aDataset is TClientDataSet) then
    try
      TClientDataSet(aDataset).Open;
    Except
      on E: Exception do
      begin
        raise Exception.Create('Errore di Apertura Dataset: ' + TClientDataSet(aDataset).Name + sLineBreak +
          TClientDataSet(aDataset).ProviderName + sLineBreak + 'Errore: ' + E.Message);
      end;
    end

end;

procedure TPgDatasetFunctions.PostDataset(const aDataset: TDataset);
begin
  if aDataset.State in [dsEdit, dsInsert] then
    try
      try
        aDataset.Post;
      Except
        on E: Exception do
        begin
          if (aDataset is TPgQuery) then
            raise Exception.Create('Errore di Apertura TPgQuery: ' + TPgQuery(aDataset).Name + sLineBreak +
              TPgQuery(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak)
          else if (aDataset is TPgTable) then
            raise Exception.Create('Errore di Apertura TPgTable: ' + TPgTable(aDataset).Name + sLineBreak +
              TPgTable(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
        end;
      end
    except
      on E: Exception do
        raise Exception.Create(IfThen(aDataset.Owner <> nil, aDataset.Owner.Name + '.', '') + aDataset.Name +
          ': ' + E.Message);
      // self.WriteError('TJanuaPostgresServerFunctions.OpenDataset: ' + aDataset.Name, E);
    end;
end;

procedure TPgDatasetFunctions.PrepareDataset(const aDataset: TDataset);
begin

end;

procedure TPgDatasetFunctions.ReOpenDataset(const aDataset: TDataset);
begin
  aDataset.Close;
  self.OpenDataset(aDataset);
end;

procedure TPgDatasetFunctions.TestDatasets(aParent: TComponent);
begin

end;

{ TJanuaPgStorage }

constructor TJanuaPgStorage.Create;
begin
  inherited;
  // TPgDatasetFunctions = class(TInterfacedObject, IDatasetFunctions)
end;

{ TJanuaPgStoredProcedure }

constructor TJanuaPgStoredProcedure.Create(const aDataset: TPgStoredProc;
  aInsertObject, aUpdateObject, aDeleteObject: TPgSql; aRefreshObject: TPgQuery);
begin
  inherited Create(aDataset);

end;

procedure TJanuaPgStoredProcedure.ExecSQL;
begin
  FPgStoredProc.ExecProc;
  if self.GetResultType <> TJanuaFieldType.jptUnknown then
    GetResult.SetFromParam(FPgStoredProc.ParamByName('Result'));
end;

procedure TJanuaPgStoredProcedure.PrepareSQL;
begin
  self.FPgStoredProc.PrepareSQL
end;

{ TJanuaPgTable }

constructor TJanuaPgTable.Create(const aDataset: TPgTable;
  aInsertObject, aUpdateObject, aDeleteObject: TPgSql; aRefreshObject: TPgQuery);
begin

end;

{ TJanuaPgQuery }

constructor TJanuaPgQuery.Create(const aDataset: TPgQuery;
  aInsertObject, aUpdateObject, aDeleteObject: TPgSql; aRefreshObject: TPgQuery);
begin

end;

initialization

FDBFunctions := TPgDatasetFunctions.Create;

end.
