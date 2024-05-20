unit UdmFirebirdOrmGenerator;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections,
  // DB
  Data.DB, MemDS, DBAccess, Uni, UniDacVcl, UniProvider, InterBaseUniProvider,
  // Januaproject
  Janua.Core.CodeGenDataModule, Janua.Orm.Intf;

type
  TdmFirebirdOrmGenerator = class(TTJanuaCoreCodeGenDataModule)
    UniConnection1: TUniConnection;
    dlgConnect: TUniConnectDialog;
    qryTables: TUniQuery;
    qryTablesTABLE_NAME: TStringField;
    dsTables: TUniDataSource;
    tbFields: TUniTable;
    InterBaseUniProvider1: TInterBaseUniProvider;
    qryForeignKeys: TUniQuery;
    qryForeignKeysRDBCONSTRAINT_NAME: TStringField;
    qryForeignKeysTABLE_NAME: TStringField;
    qryForeignKeysFIELD_NAME: TStringField;
    qryForeignKeysCONSTRAINT_NAME: TStringField;
    qryForeignKeysCONSTRAINT_TYPE: TStringField;
    qryForeignKeysDESCRIPTION: TBlobField;
    qryForeignKeysIS_DEFERRABLE: TStringField;
    qryForeignKeysIS_DEFERRED: TStringField;
    qryForeignKeysON_UPDATE: TStringField;
    qryForeignKeysON_DELETE: TStringField;
    qryForeignKeysMATCH_TYPE: TStringField;
    qryForeignKeysREFERENCES_TABLE: TStringField;
    qryForeignKeysREFERENCES_FIELD: TStringField;
    qryForeignKeysFIELD_POSITION: TLargeintField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenFields(const aFieldsTable: string); override;
    procedure AddDetail(aTableName: string); override;
    function GetDetailList: string; override;
  end;

var
  dmFirebirdOrmGenerator: TdmFirebirdOrmGenerator;

implementation

uses System.IOUtils, Janua.Orm.CodeGen.Impl, Janua.Application.Framework;

{%CLASSGROUP 'TPersistent'}
{$R *.dfm}
{ TdmFirebirdOrmGenerator }

procedure TdmFirebirdOrmGenerator.AddDetail(aTableName: string);
begin
  inherited;
  var
  aTable := TUniTable.Create(self);
  aTable.FilterSQL := '1=2';
  aTable.TableName := RecordCodeGen.TableName;
  Queries.Add(aTable);

end;

procedure TdmFirebirdOrmGenerator.DataModuleCreate(Sender: TObject);
begin
  MasterDataset := qryTables;
  QueryDataset := qryForeignKeys;
  FieldsDataset := tbFields;
end;

function TdmFirebirdOrmGenerator.GetDetailList: string;
begin
  var
  aList := TStringList.Create;
  try
    qryForeignKeys.Close;
    qryForeignKeys.ParamByName('TABLE_NAME').AsString := qryTablesTABLE_NAME.AsString;
    qryForeignKeys.Open;
    if qryForeignKeys.RecordCount > 0 then
    begin
      qryForeignKeys.First;
      While not qryForeignKeys.Eof do
      begin
        aList.Add(qryForeignKeysTABLE_NAME.AsString);
        qryForeignKeys.Next;
      end;
    end;
    Result := aList.Text;
    qryForeignKeys.Close;
  finally
    aList.Free;
  end;
end;

procedure TdmFirebirdOrmGenerator.OpenFields(const aFieldsTable: string);
begin
  inherited;
  tbFields.TableName := RecordCodeGen.TableName;
  tbFields.Open;
end;

end.
