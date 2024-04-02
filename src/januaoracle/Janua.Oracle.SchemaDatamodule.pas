unit Janua.Oracle.SchemaDatamodule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider, OracleUniProvider, MemDS,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;

type
  TdmOracleSchema = class(TDataModule)
    UniConnection1: TUniConnection;
    OracleUniProvider1: TOracleUniProvider;
    qrySchemas: TUniQuery;
    qrySchemaTables: TUniQuery;
    dsSchemas: TUniDataSource;
    qryTableFields: TUniQuery;
    dsTables: TUniDataSource;
    qrySchemaViews: TUniQuery;
    dsViews: TUniDataSource;
    qryViewFields: TUniQuery;
    FDConnection1: TFDConnection;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    qrySchemasSCHEMA_NAME: TWideStringField;
    qrySchemaTablesSCHEMA_NAME: TWideStringField;
    qrySchemaTablesTABLE_NAME: TWideStringField;
    qryTableFieldsCOLUMN_ID: TFloatField;
    qryTableFieldsSCHEMA_NAME: TWideStringField;
    qryTableFieldsTABLE_NAME: TWideStringField;
    qryTableFieldsCOLUMN_NAME: TWideStringField;
    qryTableFieldsDATA_TYPE: TWideStringField;
    qryTableFieldsDATA_LENGTH: TFloatField;
    qryTableFieldsDATA_PRECISION: TFloatField;
    qryTableFieldsDATA_SCALE: TFloatField;
    qryTableFieldsNULLABLE: TWideStringField;
    qryTableFieldsCOLUMN_DDL: TWideStringField;
    qrySchemaViewsOWNER: TWideStringField;
    qrySchemaViewsVIEW_NAME: TWideStringField;
    qryViewFieldsCOLUMN_ID: TFloatField;
    qryViewFieldsSCHEMA_NAME: TWideStringField;
    qryViewFieldsTABLE_NAME: TWideStringField;
    qryViewFieldsCOLUMN_NAME: TWideStringField;
    qryViewFieldsDATA_TYPE: TWideStringField;
    qryViewFieldsDATA_LENGTH: TFloatField;
    qryViewFieldsDATA_PRECISION: TFloatField;
    qryViewFieldsDATA_SCALE: TFloatField;
    qryViewFieldsNULLABLE: TWideStringField;
    qryViewFieldsCOLUMN_DDL: TWideStringField;
    qryMaterializedView: TUniQuery;
    qryMviewFields: TUniQuery;
    qryMaterializedViewOWNER: TWideStringField;
    qryMaterializedViewOBJECT_NAME: TWideStringField;
    qryMaterializedViewSUBOBJECT_NAME: TWideStringField;
    qryMaterializedViewOBJECT_ID: TFloatField;
    qryMaterializedViewDATA_OBJECT_ID: TFloatField;
    qryMaterializedViewOBJECT_TYPE: TWideStringField;
    qryMaterializedViewCREATED: TDateTimeField;
    qryMaterializedViewLAST_DDL_TIME: TDateTimeField;
    qryMaterializedViewTIMESTAMP: TWideStringField;
    qryMaterializedViewSTATUS: TWideStringField;
    qryMaterializedViewTEMPORARY: TWideStringField;
    qryMaterializedViewGENERATED: TWideStringField;
    qryMaterializedViewSECONDARY: TWideStringField;
    qryMaterializedViewNAMESPACE: TFloatField;
    qryMaterializedViewEDITION_NAME: TWideStringField;
    dsMViews: TUniDataSource;
    qryMviewFieldsCOLUMN_ID: TFloatField;
    qryMviewFieldsSCHEMA_NAME: TWideStringField;
    qryMviewFieldsTABLE_NAME: TWideStringField;
    qryMviewFieldsCOLUMN_NAME: TWideStringField;
    qryMviewFieldsDATA_TYPE: TWideStringField;
    qryMviewFieldsDATA_LENGTH: TFloatField;
    qryMviewFieldsDATA_PRECISION: TFloatField;
    qryMviewFieldsDATA_SCALE: TFloatField;
    qryMviewFieldsNULLABLE: TWideStringField;
    qryMviewFieldsCOLUMN_DDL: TWideStringField;
    qryMViewConsFields: TUniQuery;
    qryMViewConsFieldsOWNER: TWideStringField;
    qryMViewConsFieldsCONSTRAINT_NAME: TWideStringField;
    qryMViewConsFieldsTABLE_NAME: TWideStringField;
    qryMViewConsFieldsCOLUMN_NAME: TWideStringField;
    qryMViewConsFieldsPOSITION: TFloatField;
    qryMviewConstraints: TUniQuery;
    qryMviewConstraintsOWNER: TWideStringField;
    qryMviewConstraintsCONSTRAINT_NAME: TWideStringField;
    qryMviewConstraintsCONSTRAINT_TYPE: TWideStringField;
    qryMviewConstraintsTABLE_NAME: TWideStringField;
    qryMviewConstraintsSEARCH_CONDITION: TWideMemoField;
    qryMviewConstraintsR_OWNER: TWideStringField;
    qryMviewConstraintsR_CONSTRAINT_NAME: TWideStringField;
    qryMviewConstraintsDELETE_RULE: TWideStringField;
    qryMviewConstraintsSTATUS: TWideStringField;
    qryMviewConstraintsDEFERRABLE: TWideStringField;
    qryMviewConstraintsDEFERRED: TWideStringField;
    qryMviewConstraintsVALIDATED: TWideStringField;
    qryMviewConstraintsGENERATED: TWideStringField;
    qryMviewConstraintsBAD: TWideStringField;
    qryMviewConstraintsRELY: TWideStringField;
    qryMviewConstraintsLAST_CHANGE: TDateTimeField;
    qryMviewConstraintsINDEX_OWNER: TWideStringField;
    qryMviewConstraintsINDEX_NAME: TWideStringField;
    qryMviewConstraintsINVALID: TWideStringField;
    qryMviewConstraintsVIEW_RELATED: TWideStringField;
    qryMViewConsFieldsCONSTRAINT_NAME_1: TWideStringField;
    qryMViewConsFieldsCONSTRAINT_TYPE: TWideStringField;
    qryMViewConsFieldsSEARCH_CONDITION: TWideMemoField;
    qryMViewConsFieldsR_OWNER: TWideStringField;
    qryMViewConsFieldsR_CONSTRAINT_NAME: TWideStringField;
    qryMViewConsFieldsDELETE_RULE: TWideStringField;
    qryMViewConsFieldsSTATUS: TWideStringField;
    qryMViewConsFieldsDEFERRABLE: TWideStringField;
    qryMViewConsFieldsDEFERRED: TWideStringField;
    qryMViewConsFieldsVALIDATED: TWideStringField;
    qryMViewConsFieldsGENERATED: TWideStringField;
    qryMViewConsFieldsBAD: TWideStringField;
    qryMViewConsFieldsRELY: TWideStringField;
    qryMViewConsFieldsLAST_CHANGE: TDateTimeField;
    qryMViewConsFieldsINDEX_OWNER: TWideStringField;
    qryMViewConsFieldsINDEX_NAME: TWideStringField;
    qryMViewConsFieldsINVALID: TWideStringField;
    qryMViewConsFieldsVIEW_RELATED: TWideStringField;
    qryConstraintDDL: TUniQuery;
    qryConstraintDDLMETADATA: TWideMemoField;
    procedure UniConnection1AfterConnect(Sender: TObject);
    procedure qrySchemasAfterOpen(DataSet: TDataSet);
    procedure qryMaterializedViewAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryConstraintDDLAfterOpen(DataSet: TDataSet);
    procedure qryMviewConstraintsAfterScroll(DataSet: TDataSet);
  private
    FDiscardedList: TStrings;
    procedure SetDiscardedList(const Value: TStrings);
    { Private declarations }
  public
    { Public declarations }
    function GenerateMVDDL(const aAddedRows: string = ''; const aSuffix: string = ''): string;
    function GenerateMVDDLFromList(const aList: TStrings; const aAddedRows: string = '';
      const aSuffix: string = ''): string;
    property DiscardedList: TStrings read FDiscardedList write SetDiscardedList;
  end;

var
  dmOracleSchema: TdmOracleSchema;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmOracleSchema.DataModuleCreate(Sender: TObject);
begin
  FDiscardedList := TStringList.Create;
end;

procedure TdmOracleSchema.DataModuleDestroy(Sender: TObject);
begin
  FDiscardedList.Free;
end;

function TdmOracleSchema.GenerateMVDDL(const aAddedRows: string; const aSuffix: string): string;
var
  aList: TStringList;
begin
  aList := TStringList.Create;
  try
    aList.Add('CREATE TABLE ' + qryMaterializedViewOWNER.AsString + '.' +
      qryMaterializedViewOBJECT_NAME.AsString + aSuffix);
    aList.Add('(');

    qryMviewFields.First;
    While not qryMviewFields.Eof do
    begin
      aList.Add(qryMviewFieldsCOLUMN_DDL.AsString);
      qryMviewFields.Next;
    end;

    if aAddedRows > '' then
      aList.Add(aAddedRows);

    aList.Add(');');
    aList.Add('');
    aList.Add('');

    if qryConstraintDDL.RecordCount > 0 then
    begin
      var
      tmpList := TStringList.Create;
      try
        tmpList.Text := qryConstraintDDLMETADATA.AsString;
        if tmpList.Count > 0 then
        begin
          aList.Add(tmpList[1] + ';');
          aList.Add('');
          aList.Add('');
        end;
      finally
        tmpList.Free;
      end;
    end;

    Result := aList.Text;
  finally
    aList.Free;
  end;
end;

function TdmOracleSchema.GenerateMVDDLFromList(const aList: TStrings; const aAddedRows: string;
  const aSuffix: string): string;
begin
  var
  I := 0;
  var
  lList := TStringList.Create;
  DiscardedList.Clear;
  try
    for I := 0 to aList.Count - 1 do
    begin
      var
      lTableName := aList[I].Trim;
      if qryMaterializedView.Locate('OBJECT_NAME', lTableName, []) then
      begin
        lList.Add(GenerateMVDDL(aAddedRows, aSuffix));
      end
      else
        DiscardedList.Add(lTableName);
    end;
    Result := lList.Text;
  finally
    lList.Free;
  end;
end;

procedure TdmOracleSchema.qryConstraintDDLAfterOpen(DataSet: TDataSet);
begin
  qryConstraintDDL.Open;
end;

procedure TdmOracleSchema.qryMaterializedViewAfterOpen(DataSet: TDataSet);
begin
  qryMviewFields.Open;
  qryMViewConsFields.Open;
  qryMviewConstraints.Open;
end;

procedure TdmOracleSchema.qryMviewConstraintsAfterScroll(DataSet: TDataSet);
begin
  qryConstraintDDL.Close;
  if qryMviewConstraints.RecordCount > 0 then
  begin
    qryConstraintDDL.ParambyName('OWNER').AsString := qryMviewConstraintsOWNER.AsString;
    qryConstraintDDL.ParambyName('CONSTRAINT_NAME').AsString := qryMviewConstraintsCONSTRAINT_NAME.AsString;
    qryConstraintDDL.Open;
  end;

end;

procedure TdmOracleSchema.qrySchemasAfterOpen(DataSet: TDataSet);
begin
  qrySchemaTables.Open;
  qrySchemaViews.Open;
end;

procedure TdmOracleSchema.SetDiscardedList(

  const Value: TStrings);
begin
  FDiscardedList := Value;
end;

procedure TdmOracleSchema.UniConnection1AfterConnect(Sender: TObject);
begin
  qrySchemas.Open;
  qrySchemas.Locate('SCHEMA_NAME', UniConnection1.Username, []);
end;

end.
