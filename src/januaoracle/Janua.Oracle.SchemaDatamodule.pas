unit Janua.Oracle.SchemaDatamodule;

interface

uses
  System.SysUtils, System.Classes, System.Math, System.StrUtils,
  // UniDAC
  Data.DB, DBAccess, Uni, UniProvider, OracleUniProvider, MemDS,
  // FireDAC
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, VirtualTable;

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
    qryMviewIndexes: TUniQuery;
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
    qryMviewIndexesINDEX_DDL: TWideMemoField;
    qryMviewIndexesOWNER: TWideStringField;
    qryMviewIndexesINDEX_NAME: TWideStringField;
    qryMviewIndexesINDEX_TYPE: TWideStringField;
    qryMviewIndexesTABLE_OWNER: TWideStringField;
    qryMviewIndexesTABLE_NAME: TWideStringField;
    qryMviewIndexesTABLE_TYPE: TWideStringField;
    qryMviewIndexesUNIQUENESS: TWideStringField;
    qryMviewIndexesCOMPRESSION: TWideStringField;
    qryMviewIndexesPREFIX_LENGTH: TFloatField;
    qryMviewIndexesTABLESPACE_NAME: TWideStringField;
    qryMviewIndexesINI_TRANS: TFloatField;
    qryMviewIndexesMAX_TRANS: TFloatField;
    qryMviewIndexesINITIAL_EXTENT: TFloatField;
    qryMviewIndexesNEXT_EXTENT: TFloatField;
    qryMviewIndexesMIN_EXTENTS: TFloatField;
    qryMviewIndexesMAX_EXTENTS: TFloatField;
    qryMviewIndexesPCT_INCREASE: TFloatField;
    qryMviewIndexesPCT_THRESHOLD: TFloatField;
    qryMviewIndexesINCLUDE_COLUMN: TFloatField;
    qryMviewIndexesFREELISTS: TFloatField;
    qryMviewIndexesFREELIST_GROUPS: TFloatField;
    qryMviewIndexesPCT_FREE: TFloatField;
    qryMviewIndexesLOGGING: TWideStringField;
    qryMviewIndexesBLEVEL: TFloatField;
    qryMviewIndexesLEAF_BLOCKS: TFloatField;
    qryMviewIndexesDISTINCT_KEYS: TFloatField;
    qryMviewIndexesAVG_LEAF_BLOCKS_PER_KEY: TFloatField;
    qryMviewIndexesAVG_DATA_BLOCKS_PER_KEY: TFloatField;
    qryMviewIndexesCLUSTERING_FACTOR: TFloatField;
    qryMviewIndexesSTATUS: TWideStringField;
    qryMviewIndexesNUM_ROWS: TFloatField;
    qryMviewIndexesSAMPLE_SIZE: TFloatField;
    qryMviewIndexesLAST_ANALYZED: TDateTimeField;
    qryMviewIndexesDEGREE: TWideStringField;
    qryMviewIndexesINSTANCES: TWideStringField;
    qryMviewIndexesPARTITIONED: TWideStringField;
    qryMviewIndexesTEMPORARY: TWideStringField;
    qryMviewIndexesGENERATED: TWideStringField;
    qryMviewIndexesSECONDARY: TWideStringField;
    qryMviewIndexesBUFFER_POOL: TWideStringField;
    qryMviewIndexesFLASH_CACHE: TWideStringField;
    qryMviewIndexesCELL_FLASH_CACHE: TWideStringField;
    qryMviewIndexesUSER_STATS: TWideStringField;
    qryMviewIndexesDURATION: TWideStringField;
    qryMviewIndexesPCT_DIRECT_ACCESS: TFloatField;
    qryMviewIndexesITYP_OWNER: TWideStringField;
    qryMviewIndexesITYP_NAME: TWideStringField;
    qryMviewIndexesPARAMETERS: TWideStringField;
    qryMviewIndexesGLOBAL_STATS: TWideStringField;
    qryMviewIndexesDOMIDX_STATUS: TWideStringField;
    qryMviewIndexesDOMIDX_OPSTATUS: TWideStringField;
    qryMviewIndexesFUNCIDX_STATUS: TWideStringField;
    qryMviewIndexesJOIN_INDEX: TWideStringField;
    qryMviewIndexesIOT_REDUNDANT_PKEY_ELIM: TWideStringField;
    qryMviewIndexesDROPPED: TWideStringField;
    qryMviewIndexesVISIBILITY: TWideStringField;
    qryMviewIndexesDOMIDX_MANAGEMENT: TWideStringField;
    qryMviewIndexesSEGMENT_CREATED: TWideStringField;
    qryIndexDDL: TUniQuery;
    qryIndexDDLMETADATA: TWideMemoField;
    qryMviewDDL: TUniQuery;
    qryMviewDDLMETADATA: TWideMemoField;
    qryViewDDL: TUniQuery;
    qryTargetTable: TUniQuery;
    qryTargetTableFields: TUniQuery;
    dsTargetTable: TUniDataSource;
    qryTargetTableFieldsCOLUMN_ID: TFloatField;
    qryTargetTableFieldsSCHEMA_NAME: TWideStringField;
    qryTargetTableFieldsTABLE_NAME: TWideStringField;
    qryTargetTableFieldsCOLUMN_NAME: TWideStringField;
    qryTargetTableFieldsDATA_TYPE: TWideStringField;
    qryTargetTableFieldsDATA_LENGTH: TFloatField;
    qryTargetTableFieldsDATA_PRECISION: TFloatField;
    qryTargetTableFieldsDATA_SCALE: TFloatField;
    qryTargetTableFieldsNULLABLE: TWideStringField;
    qryTargetTableFieldsCOLUMN_DDL: TWideStringField;
    qryTargetTableSCHEMA_NAME: TWideStringField;
    qryTargetTableTABLE_NAME: TWideStringField;
    qryViewDDLMETADATA: TWideMemoField;
    vtSchemas: TVirtualTable;
    UniConnection2: TUniConnection;
    qryListFiles: TUniQuery;
    qryListFilesGROUP_NAME: TWideStringField;
    qryListFilesID: TFloatField;
    qryListFilesFILENAME: TWideStringField;
    qryListFilesOPERATION_TYPE: TWideStringField;
    qryListFilesDELTA_TABLE: TWideStringField;
    qryListFilesMAIN_TABLE: TWideStringField;
    vtListFiles: TVirtualTable;
    qryDevCode: TUniQuery;
    dsDevCode: TUniDataSource;
    qryDevCodePROJECT: TWideStringField;
    qryDevCodeID: TSmallintField;
    qryDevCodeCODE: TWideMemoField;
    qryDevCodeDESCRIPTION: TWideStringField;
    UniQuery1: TUniQuery;
    procedure UniConnection1AfterConnect(Sender: TObject);
    procedure qrySchemasAfterOpen(DataSet: TDataSet);
    procedure qryMaterializedViewAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryConstraintDDLAfterOpen(DataSet: TDataSet);
    procedure qryMviewConstraintsAfterScroll(DataSet: TDataSet);
    procedure qryMviewIndexesAfterScroll(DataSet: TDataSet);
    procedure qryDevCodeAfterPost(DataSet: TDataSet);
    procedure qryListFilesAfterPost(DataSet: TDataSet);
  private
    FDiscardedList: TStrings;
    FTargetSchema: string;
    FPrefix: string;
    FSuffix: string;
    FReplace: string;
    procedure SetDiscardedList(const Value: TStrings);
    procedure SetTargetSchema(const Value: string);
    procedure SetPrefix(const Value: string);
    procedure SetSuffix(const Value: string);
    procedure SetReplace(const Value: string);
    { Private declarations }
  public
    function GetTargetTable: string;
    function GetTargetSchema: string;
    procedure OpenTargetTable;
    function GenerateTargetFields: string;
  public
    { Public declarations }
    function GenerateViewCode(const aAddedRows: string = ''; const aSuffix: string = '';
      const aReplace: string = ''): string;
    function GenerateMVDDL(const aAddedRows: string = ''; const aSuffix: string = ''): string;
    function GenerateMVDDLFromList(const aList: TStrings; const aAddedRows: string = '';
      const aSuffix: string = ''): string;
    property DiscardedList: TStrings read FDiscardedList write SetDiscardedList;
    property TargetSchema: string read FTargetSchema write SetTargetSchema;
    property Suffix: string read FSuffix write SetSuffix;
    property Prefix: string read FPrefix write SetPrefix;
    property Replace: string read FReplace write SetReplace;
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

function TdmOracleSchema.GenerateViewCode(const aAddedRows, aSuffix, aReplace: string): string;
begin

  { function GetTargetTable: string;
    function GetTargetSchema: string; }

  if aReplace <> '' then
    FReplace := aReplace;

  if aSuffix <> '' then
    FSuffix := aSuffix;

  var
  aTarget := GetTargetTable;

  var
  aSchema := GetTargetSchema;

  var
  aList := TStringList.Create;
  try

    aList.Add('PROCEDURE INSERT_' + aTarget { TITOLI_DELTA } + ' (P_CODICE_COMPAGNIA_PVG IN CHAR)');
    aList.Add('IS');
    aList.Add('BEGIN');
    aList.Add('INSERT INTO ' + { TITOLI_DELTA } aSchema + '.');

    var
    tmpList := TStringList.Create;
    try
      tmpList.Text := qryViewDDLMETADATA.AsString;
      // StringReplace(qryMviewDDLMETADATA.AsString, aTable, aTable + aSuffix,  [rfIgnoreCase, rfReplaceAll]);
      if tmpList.Count > 0 then
      begin
        aList.Add(tmpList.Text);
        aList.Add('');
        aList.Add('');
      end;
    finally
      tmpList.Free;
    end;

  finally
    aList.Free;
  end;

end;

function TdmOracleSchema.GetTargetSchema: string;
begin
  Result := IfThen(FTargetSchema.IsEmpty, qrySchemasSCHEMA_NAME.AsWideString, FTargetSchema);
end;

function TdmOracleSchema.GetTargetTable: string;
begin
  var
  aTable := qrySchemaViewsVIEW_NAME.AsString;

  Result := aTable;

  if FReplace <> '' then
    Result := StringReplace(Result, FReplace, FSuffix, [rfIgnoreCase]);
end;

procedure TdmOracleSchema.OpenTargetTable;
begin
  qryTargetTable.Close;
  { :schema_name and table_name = :table_name }
  qryTargetTable.ParamByName('schema_name').AsString := GetTargetSchema;
  qryTargetTable.ParamByName('table_name').AsString := GetTargetTable;
  qryTargetTable.Open;
end;

function TdmOracleSchema.GenerateMVDDL(const aAddedRows: string; const aSuffix: string): string;
begin

  var
  aTable := qryMaterializedViewOBJECT_NAME.AsString;

  var
  aList := TStringList.Create;
  try
    aList.Add('CREATE TABLE ' + qryMaterializedViewOWNER.AsString + '.' + aTable + aSuffix);
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
        tmpList.Text := StringReplace(qryConstraintDDLMETADATA.AsString, aTable, aTable + aSuffix,
          [rfIgnoreCase, rfReplaceAll]);

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

    if qryMviewIndexes.RecordCount > 0 then
    begin
      qryMviewIndexes.First;
      while not qryMviewIndexes.Eof do
      begin
        if qryIndexDDL.RecordCount > 0 then
        begin
          var
          tmp2List := TStringList.Create;
          try
            tmp2List.Text := StringReplace(qryIndexDDLMETADATA.AsString, aTable, aTable + aSuffix,
              [rfIgnoreCase, rfReplaceAll]);
            if tmp2List.Count > 0 then
            begin
              aList.Add(tmp2List[1] + ';');
              aList.Add('');
              aList.Add('');
            end;
          finally
            tmp2List.Free;
          end;
        end;
        qryMviewIndexes.Next;
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

function TdmOracleSchema.GenerateTargetFields: string;
begin
  if not qryTargetTableFields.Active then
    qryTargetTableFields.Open;

  if qryTargetTableFields.RecordCount > 0 then
  begin
    qryTargetTableFields.First;
    While not qryTargetTableFields.Eof do
    begin
      Result := Result + IfThen(Result.IsEmpty, '', ', ') + '"' + qryTargetTableFieldsCOLUMN_NAME.AsString + '"';
      qryTargetTableFields.Next;
    end;
  end;
end;

procedure TdmOracleSchema.qryConstraintDDLAfterOpen(DataSet: TDataSet);
begin
  qryConstraintDDL.Open;
end;

procedure TdmOracleSchema.qryDevCodeAfterPost(DataSet: TDataSet);
begin
  UniConnection2.Commit;
end;

procedure TdmOracleSchema.qryListFilesAfterPost(DataSet: TDataSet);
begin
  UniConnection2.Commit;
end;

procedure TdmOracleSchema.qryMaterializedViewAfterOpen(DataSet: TDataSet);
begin
  qryMviewFields.Open;
  qryMViewConsFields.Open;
  qryMviewConstraints.Open;
  qryMviewIndexes.Open;
end;

procedure TdmOracleSchema.qryMviewConstraintsAfterScroll(DataSet: TDataSet);
begin
  qryConstraintDDL.Close;
  if qryMviewConstraints.RecordCount > 0 then
  begin
    qryConstraintDDL.ParamByName('OWNER').AsString := qryMviewConstraintsOWNER.AsString;
    qryConstraintDDL.ParamByName('CONSTRAINT_NAME').AsString := qryMviewConstraintsCONSTRAINT_NAME.AsString;
    qryConstraintDDL.Open;
  end;

end;

procedure TdmOracleSchema.qryMviewIndexesAfterScroll(DataSet: TDataSet);
begin
  qryIndexDDL.Close;
  if qryMviewIndexes.RecordCount > 0 then
  begin
    qryIndexDDL.ParamByName('OWNER').AsString := qryMviewIndexesOWNER.AsString;
    qryIndexDDL.ParamByName('Index_NAME').AsString := qryMviewIndexesINDEX_NAME.AsString;
    qryIndexDDL.Open;
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

procedure TdmOracleSchema.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

procedure TdmOracleSchema.SetReplace(const Value: string);
begin
  FReplace := Value;
end;

procedure TdmOracleSchema.SetSuffix(const Value: string);
begin
  FSuffix := Value;
end;

procedure TdmOracleSchema.SetTargetSchema(const Value: string);
begin
  FTargetSchema := Value;
end;

procedure TdmOracleSchema.UniConnection1AfterConnect(Sender: TObject);
begin
  qrySchemas.Open;
  vtSchemas.Assign(qrySchemas);
  if not vtSchemas.Active then
    vtSchemas.Open;

  qrySchemas.Locate('SCHEMA_NAME', UniConnection1.Username, []);
end;

end.
