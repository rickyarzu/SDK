unit Janua.Orm.Firedac;

interface

uses
  Data.DB, System.SysUtils,
  // FireDAC.
  Firedac.Stan.Intf, Firedac.Stan.Option, Firedac.Stan.Param, Firedac.Comp.Client, Firedac.Stan.Error,
  Firedac.DatS, Firedac.Phys.Intf, Firedac.DApt.Intf, Firedac.Stan.StorageBin, Firedac.Comp.DataSet,
  // Januaproject
  Janua.Orm.Impl, Janua.Orm.Intf, Janua.Orm.Types, Janua.Core.Types, Janua.Core.DB.Types;

type

  TJanuaFireDacOrderByFields = class(TJanuaCustomOrderByFields, IJanuaOrderByFields)
  public
    /// <summary> String builder f() that needs to be implemented by descendants according to class and DB </summary>
    /// <remarks>Specify the name of each field on which to index thedataset,separating names with semicolons. Field names order is
    /// significant. Optionally specify the postfix for any of fields in theform field[:[D][A][N]], where: <br />
    /// <list type="bullet">
    /// <item> D--use descending sorting on this field. </item>
    /// <item> A--use ascending sorting on this field.</item>
    /// <item> N--use case-insensitive sorting on this field.</item>
    /// </list> </remarks>
    /// <example> OrderByFields.AddField('AN_LAST_NAME', jobASC, jocCaseInsensitive); <br />
    /// GetOrderByClause = 'LAST_NAME:AN' <br /> </example>
    function GetOrderByClause: string; override;
  end;

  TJanuaVtDataset = class(TJanuaDBDataset, IJanuaDBCustomDataset, IJanuaDBDataset)
  strict private
    FDataset: TFdMemTable;
    FIsInternalDataset: boolean;
  private
    function GetDataset: TDataset; override;
  protected
    function GetMemDataset: TFdMemTable;
    procedure SetMemDataset(const Value: TFdMemTable);
    function GetIsInternalDataset: boolean;
    procedure SetIsInternalDataset(const Value: boolean);
    procedure SetDataset(const Value: TDataset); override;
    property IsInternalDataset: boolean read FIsInternalDataset write SetIsInternalDataset;
  strict protected
    /// <summary> This procedure is called before opening a Dataset it's a custom internal proc </summary>
    function GetBeforeOpenProc: boolean; override;
    {
      function GetIndexFieldNames: string;
      procedure SetIndexFieldNames(const Value: string);
    }
    procedure InternalOrderByActivate; override;
    procedure InternalOrderByDeactivate; override;
    { FDataset.IndexFieldNames := OrderByFields.IndexFieldNames }
  public
    procedure Open; override;
    procedure OpenThreaded(aProc: TProc = nil); override;
    procedure Post; override;
    procedure Refresh; override;
  public
    Constructor Create; override;
    Destructor Destroy; override;
    /// <param name="aDataset">  DB Dataset from Delphi Components</param>
    /// <param name="aEntities"> List of entities from Enumerator </param>
    constructor Create(const aDataset: TFdMemTable; const aEntities: TJanuaEntities); overload; virtual;
    /// <param name="aDataset">   DB Dataset from Delphi Components </param>
    /// <param name="aEntities"> List of entities identied by &lt;schema&gt;.&lt;entitiyname&gt;
    /// in Janua Framework </param>
    constructor CreateWithNames(const aDataset: TFdMemTable; const aEntities: TJanuaEntityNames); overload;
    property DataSet: TDataset read GetDataset write SetDataset;
    function DeleteFromDataset(const aGUID: TGUID): boolean; override;
    function DeleteFromDataset(const aRecord: IJanuaRecord): boolean; override;
    function UpdateRecord(const aRecord: IJanuaRecord): boolean; override;
    procedure SetSearchFilter(const aSQLFilter: string); override;
    { function AddField(const aName: string; const aFieldType: TJanuaFieldType; const aSize, aPrecision: SmallInt)
      : TField; overload;
      function AddField(const aField: IJanuaField): TField; overload }
    procedure ClearDetails;
  protected
    function GetAsBase64: string; override;
    function GetAsJson: string; override;
    procedure SetAsBase64(const Value: string); override;
    procedure SetAsJson(const Value: string); override;
  end;

  TJanuaVtStoredProcedure = class(TJanuaVtDataset, IJanuaDBStoredProcedure)
  private
    FResult: IJanuaField;
    FResultType: TJanuaFieldType;
  public
    /// <summary> Describes the parameters of a stored procedure.  </summary>
    procedure PrepareSQL;
    /// <summary> Executes a Stored Procedure on the server.  </summary>
    procedure ExecSQL;
    function GetResult: IJanuaField;
    function GetResultType: TJanuaFieldType;
    procedure SetResultType(const Value: TJanuaFieldType);
    /// <summary> Used to create internally the Result Field </summary>
    property ResultType: TJanuaFieldType read GetResultType write SetResultType;
    /// <param name="aDataset">  DB Dataset from Delphi Components</param>
    /// <param name="aEntities"> List of entities from TJanuaEntities Enumerator </param>
    /// <param name="ResultType"> TJanuaFieldType: expected Field type to be returned and created</param>
    /// <param name="aResult"> Variant: Default value for Result Field, according to ResultType</param>
    constructor Create(const aDataset: TFdMemTable; const ResultType: TJanuaFieldType; const aResult: Variant;
      const aEntities: TJanuaEntities); overload;
  end;

type
  TJanuaVtMemDataset = class(TJanuaVtDataset, IJanuaVirtualDBDataset, IJanuaDBCustomDataset, IJanuaDBDataset)
  public
    procedure EmptyDataSet;
  public
    constructor Create; override;
    constructor Create(const aDataset: TFdMemTable; const aEntities: TJanuaEntities); override;
    constructor CreateWithEntities(const aEntities: TJanuaEntities); override;
    destructor Destroy; override;
  end;

implementation

uses Spring, System.StrUtils, Janua.Core.Functions, Janua.Core.DB, Janua.Firedac.Commons,
  Janua.Application.Framework;

{ function TJanuaVtDataset.AddField(const aField: IJanuaField): TField;
  begin
  Result := AddField(aField.DBField, aField.FieldType, aField.Size, aField.Precision);
  end;

  function TJanuaVtDataset.AddField(const aName: string; const aFieldType: TJanuaFieldType;
  const aSize, aPrecision: SmallInt): TField;
  begin

  end; }

procedure TJanuaVtDataset.ClearDetails;
begin
  FDataset.ClearDetails;
end;

constructor TJanuaVtDataset.Create(const aDataset: TFdMemTable; const aEntities: TJanuaEntities);
begin
  Create;
  try
    Guard.CheckNotNull(aDataset, 'TJanuaPgDataset.Create aDataset is null');
    Guard.CheckTrue(Length(aEntities) > 0, 'At least one Entity name must be set');
    // Create(aEntities);
    CreateWithEntities(aEntities);
    SetDataset(aDataset);
    Guard.CheckNotNull(Self.DataSet, 'Dataset');
    // self.Params.Assign(FDataset.Params);
    IsInternalDataset := False;
  except
    on e: exception do
      RaiseException('Create(aDataset, aEntities), ', e, Self, Self.LogString);
  end;
end;

function TJanuaVtDataset.DeleteFromDataset(const aGUID: TGUID): boolean;
begin
  Result := inherited;
end;

constructor TJanuaVtDataset.Create;
begin
  inherited;
  FOrderByFields := TJanuaFireDacOrderByFields.Create;
  FIsInternalDataset := False;
  SerializeFunc := function(aFormat: string): string
    begin
      case TJanuaRestDBContext.GetFormat(aFormat) of
        rfDefault:
          begin
            Result := TFireDacExporter.ExportToBase64(FDataset);
          end;
        rfXml:
          begin
            Result := TFireDacExporter.ExportToXML(FDataset);
          end;
        rfJson:
          begin
            Result := TFireDacExporter.ExportToJson(FDataset);
          end;
        rfBinary:
          begin
            Result := TFireDacExporter.ExportToBase64(FDataset);
          end;
        rfCSV:
          begin
            Result := TFireDacExporter.ExportToCSV(FDataset);
          end;
        rfJsonMeta:
          begin
            Result := '';
          end;
        rfJanuaRecord:
          begin
            Result := TFireDacExporter.ExportToRecord(FDataset).asJson;
          end;
        rfJanuaMeta:
          begin
            Result := '';
          end;
        rfJanuaRecordset:
          begin
            Result := TFireDacExporter.ExportToRecordSet(FDataset).ToJson;
          end;
      end;
    end;
  DeSerializeFunc := procedure(aFormat, aPayload: string)
    begin
      TFireDacExporter.ImportDataset(FDataset, aPayload, aFormat.ToLower)
    end;
end;

constructor TJanuaVtDataset.CreateWithNames(const aDataset: TFdMemTable; const aEntities: TJanuaEntityNames);
begin
  Guard.CheckNotNull(aDataset, 'TJanuaPgDataset.Create aDataset is null');
  Guard.CheckSet(aEntities, 'At least one Entity name must be set');
  inherited CreateWithNames(aEntities);
  Self.SetDataset(aDataset);
end;

function TJanuaVtDataset.DeleteFromDataset(const aRecord: IJanuaRecord): boolean;
begin
  Result := inherited;
end;

destructor TJanuaVtDataset.Destroy;
begin
  if FIsInternalDataset and Assigned(FDataset) then
    FreeAndNil(FDataset);
  inherited;
end;

{ function TJanuaVtDataset.GetDataset: TDataset;
  begin
  Result := FDataset
  end;
}

function TJanuaVtDataset.GetAsBase64: string;
begin
  Result := TFireDacExporter.ExportToBase64(FDataset);
end;

function TJanuaVtDataset.GetAsJson: string;
begin
  Result := TFireDacExporter.ExportToJson(FDataset);
end;

function TJanuaVtDataset.GetBeforeOpenProc: boolean;
begin
  inherited;
  FBeforeOpenProc := procedure
    begin
      FDataset.IndexFieldNames := OrderByFields.IndexFieldNames;
    end;
  Result := True;
end;

function TJanuaVtDataset.GetDataset: TDataset;
begin
  Result := FDataset as TDataset
end;

function TJanuaVtDataset.GetIsInternalDataset: boolean;
begin
  Result := FIsInternalDataset
end;

function TJanuaVtDataset.GetMemDataset: TFdMemTable;
begin
  Result := FDataset
end;

procedure TJanuaVtDataset.InternalOrderByActivate;
begin
  inherited;
  FDataset.IndexFieldNames := OrderByFields.IndexFieldNames;
  FDataset.IndexesActive := True;
end;

procedure TJanuaVtDataset.InternalOrderByDeactivate;
begin
  inherited;
  FDataset.IndexFieldNames := '';
  FDataset.IndexesActive := False;
end;

procedure TJanuaVtDataset.Open;
begin
  inherited;

end;

procedure TJanuaVtDataset.OpenThreaded(aProc: TProc);
begin
  inherited;

end;

procedure TJanuaVtDataset.Post;
begin
  inherited;

end;

procedure TJanuaVtDataset.Refresh;
begin
  inherited;

end;

procedure TJanuaVtDataset.SetAsBase64(const Value: string);
begin
  TFireDacExporter.ImportDataset(FDataset, Value, TRestFormat.rfBinary);
end;

procedure TJanuaVtDataset.SetAsJson(const Value: string);
begin
  TFireDacExporter.ImportDataset(FDataset, Value, TRestFormat.rfFDJson);
end;

procedure TJanuaVtDataset.SetDataset(const Value: TDataset);
begin
  inherited;
  if Assigned(Value) then
  begin
    FDataset := Value as TFdMemTable;
    if Assigned(FDataset) then
      FDataset.AfterScroll := DatasetAfterScroll;
    SetInternalDataset(FDataset);
  end
  else
  begin
    FDataset := nil;
    SetInternalDataset(nil);
  end;
end;

procedure TJanuaVtDataset.SetIsInternalDataset(const Value: boolean);
begin
  FIsInternalDataset := Value;
end;

procedure TJanuaVtDataset.SetMemDataset(const Value: TFdMemTable);
begin
  if FDataset <> Value then
  begin
    FDataset := Value;
    SetInternalDataset(FDataset);
  end;
end;

procedure TJanuaVtDataset.SetSearchFilter(const aSQLFilter: string);
begin
  FDataset.Filter := aSQLFilter;
end;

function TJanuaVtDataset.UpdateRecord(const aRecord: IJanuaRecord): boolean;
begin
  Result := inherited
end;

{ TJanuaVtMemDataset }

constructor TJanuaVtMemDataset.Create;
begin
  inherited;
end;

constructor TJanuaVtMemDataset.Create(const aDataset: TFdMemTable; const aEntities: TJanuaEntities);
begin
  inherited;
end;

constructor TJanuaVtMemDataset.CreateWithEntities(const aEntities: TJanuaEntities);
begin
  Create;
  SetIsInternalDataset(True);
  SetDataset(TFdMemTable.Create(nil));
end;

destructor TJanuaVtMemDataset.Destroy;
begin
  inherited;
end;

procedure TJanuaVtMemDataset.EmptyDataSet;
begin
  GetMemDataset.EmptyDataSet
end;

{ TJanuaFireDacOrderByFields }

function TJanuaFireDacOrderByFields.GetOrderByClause: string;
var
  lField: TJanuaOrderByField;
  lFirst: boolean;
  { Specify the name of each field on which to index the dataset, separating names with semicolons. Field names order is significant. Optionally specify the postfix for any of fields in the form field[:[D][A][N]], where:

    D--use descending sorting on this field.
    A--use ascending sorting on this field.
    N--use case-insensitive sorting on this field. }

  function GetOrderByCondition: string;
  begin
    Result := Result + IfThen(lFirst, '', '; ');
    Case lField.Orderby of
      jobASC:
        Result := Result + ':A';
      jobDESC:
        Result := Result + ':D';
    End;

    Case lField.Compare of
      { Use N keyword to specify a sort type for string field sorting: }
      jocCaseInsensitive:
        Result := Result + 'N';
    End;

    lFirst := False;
  end;

begin
  lFirst := True;
  Result := '';
  if FieldCount > 0 then
    for lField in GetFields do
      Result := Result + lField.fieldName + GetOrderByCondition;
end;

{ TJanuaVtStoredProcedure }

constructor TJanuaVtStoredProcedure.Create(const aDataset: TFdMemTable; const ResultType: TJanuaFieldType;
  const aResult: Variant; const aEntities: TJanuaEntities);
begin
  inherited Create(aDataset, aEntities);
  // (const aFieldType: TJanuaFieldType; const aFieldKey, aFieldName: string; aFieldKind: TJanuaFieldKind): IJanuaField;
  FResult := TJanuaRecord.CreateField(ResultType, 'Result', 'Result', TJanuaFieldKind.jfkData);
  FResult.AsVariant := aResult;
  FResult.DefaultValue := FResult.Value;
  Self.Params.AddParam(FResult)
end;

procedure TJanuaVtStoredProcedure.ExecSQL;
begin

end;

function TJanuaVtStoredProcedure.GetResult: IJanuaField;
begin
  Result := FResult
end;

function TJanuaVtStoredProcedure.GetResultType: TJanuaFieldType;
begin
  Result := FResultType
end;

procedure TJanuaVtStoredProcedure.PrepareSQL;
begin

end;

procedure TJanuaVtStoredProcedure.SetResultType(const Value: TJanuaFieldType);
begin
  FResultType := Value;
end;

end.
