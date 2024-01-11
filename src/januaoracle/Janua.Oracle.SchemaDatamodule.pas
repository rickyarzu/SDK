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
    procedure UniConnection1AfterConnect(Sender: TObject);
    procedure qrySchemasAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmOracleSchema: TdmOracleSchema;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmOracleSchema.qrySchemasAfterOpen(DataSet: TDataSet);
begin
  qrySchemaTables.Open;
  qrySchemaViews.Open;
end;

procedure TdmOracleSchema.UniConnection1AfterConnect(Sender: TObject);
begin
  qrySchemas.Open;
end;

end.
