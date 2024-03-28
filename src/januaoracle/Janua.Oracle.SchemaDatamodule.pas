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
    procedure UniConnection1AfterConnect(Sender: TObject);
    procedure qrySchemasAfterOpen(DataSet: TDataSet);
    procedure qryMaterializedViewAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function GenerateMVDDL: string;
  end;

var
  dmOracleSchema: TdmOracleSchema;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function TdmOracleSchema.GenerateMVDDL: string;
var
  aList: TStringList;
begin
  aList := TStringList.Create;
  try
    qryMviewFields.First;
    While not qryMviewFields.Eof do
    begin
      aList.Add(qryMviewFieldsCOLUMN_DDL.AsString);
      qryMviewFields.Next;
    end;
    Result := aList.Text;
  finally
    aList.Free;
  end;
end;

procedure TdmOracleSchema.qryMaterializedViewAfterOpen(DataSet: TDataSet);
begin
  qryMviewFields.Open;
end;

procedure TdmOracleSchema.qrySchemasAfterOpen(DataSet: TDataSet);
begin
  qrySchemaTables.Open;
  qrySchemaViews.Open;
end;

procedure TdmOracleSchema.UniConnection1AfterConnect(Sender: TObject);
begin
  qrySchemas.Open;
  qrySchemas.Locate('SCHEMA_NAME', UniConnection1.Username, []);
end;

end.
