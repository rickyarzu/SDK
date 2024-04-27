unit UdmFirebirdOrmGenerator;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections,
  // DB
  Data.DB, MemDS, DBAccess, Uni, UniDacVcl, UniProvider, InterBaseUniProvider,
  // Januaproject
  Janua.Orm.Intf;

type
  TdmFirebirdOrmGenerator = class(TDataModule)
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
    procedure DataModuleDestroy(Sender: TObject);
  private
    FTargetDirectory: string;
    FRecordCodeGen: IRecordCodeGen;
    FSchemaName: string;
    FDetailTables: TStrings;
    FQueries: TObjectlist<TUniTable>;
    procedure SetTargetDirectory(const Value: string);
    procedure SetRecordCodeGen(const Value: IRecordCodeGen);
    procedure SetSchemaName(const Value: string);
    function GetMasterImpl: string;
    function GetMasterIntf: string;
    function GetCustomMasterImpl: string;
    function GetCustomMasterIntf: string;
    procedure SetDetailTables(const Value: TStrings);
    { Private declarations }
  public
    { Public declarations }
    procedure Generate;
    procedure SaveAllFiles;
    procedure AddDetail(aTableName: string);
    function GetDetailList: string;
    property TargetDirectory: string read FTargetDirectory write SetTargetDirectory;
    property RecordCodeGen: IRecordCodeGen read FRecordCodeGen write SetRecordCodeGen;
    property SchemaName: string read FSchemaName write SetSchemaName;
    property MasterIntf: string read GetMasterIntf;
    property MasterImpl: string read GetMasterImpl;
    property CustomMasterIntf: string read GetCustomMasterIntf;
    property CustomMasterImpl: string read GetCustomMasterImpl;
    property DetailTables: TStrings read FDetailTables write SetDetailTables;
  end;

var
  dmFirebirdOrmGenerator: TdmFirebirdOrmGenerator;

implementation

uses System.IOUtils, Janua.Orm.CodeGen.Impl, Janua.Application.Framework;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmFirebirdOrmGenerator }

procedure TdmFirebirdOrmGenerator.AddDetail(aTableName: string);
begin
  var
  aTable := TUniTable.Create(self);
  FQueries.Add(aTable);

end;

procedure TdmFirebirdOrmGenerator.DataModuleCreate(Sender: TObject);
begin
  FRecordCodeGen := TRecordCodeGen.Create;
  FQueries := TObjectlist<TUniTable>.Create;
  FQueries.OwnsObjects := True;
end;

procedure TdmFirebirdOrmGenerator.DataModuleDestroy(Sender: TObject);
begin
  FQueries.Free;
  FDetailTables.Free;
end;

procedure TdmFirebirdOrmGenerator.Generate;
begin
  RecordCodeGen.TableName := qryTablesTABLE_NAME.AsString;
  RecordCodeGen.SchemaName := FSchemaName;
  RecordCodeGen.AskPlurals := True;
  tbFields.TableName := RecordCodeGen.TableName;
  RecordCodeGen.AskPlurals := True;
  RecordCodeGen.Dataset := tbFields;
  tbFields.Open;
  try
    RecordCodeGen.Generate;
  finally
    tbFields.Close;
  end;
end;

function TdmFirebirdOrmGenerator.GetCustomMasterImpl: string;
begin
  Result := FRecordCodeGen.CustomMasterFiles.ImplFile.Text;
end;

function TdmFirebirdOrmGenerator.GetCustomMasterIntf: string;
begin
  Result := FRecordCodeGen.CustomMasterFiles.IntfFile.Text;
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

function TdmFirebirdOrmGenerator.GetMasterImpl: string;
begin
  Result := FRecordCodeGen.MasterFiles.ImplFile.Text;
end;

function TdmFirebirdOrmGenerator.GetMasterIntf: string;
begin
  Result := FRecordCodeGen.MasterFiles.IntfFile.Text;
end;

procedure TdmFirebirdOrmGenerator.SaveAllFiles;
var
  aList: TStrings;
begin
  if TJanuaApplication.Dialogs.JMessageDlg('Volete salvare i files?') then
  begin
    aList := TStringList.Create;
    try
      aList.Text := FRecordCodeGen.MasterFiles.IntfFile.Text;
      var
      aFileName := TPath.Combine(FTargetDirectory, FRecordCodeGen.MasterFiles.IntfFile.FileName + '.pas');
      aList.SaveToFile(aFileName);

      aList.Text := FRecordCodeGen.MasterFiles.ImplFile.Text;
      aFileName := TPath.Combine(FTargetDirectory, FRecordCodeGen.MasterFiles.ImplFile.FileName + '.pas');
      aList.SaveToFile(aFileName);

      aList.Text := FRecordCodeGen.CustomMasterFiles.IntfFile.Text;
      aFileName := TPath.Combine(FTargetDirectory, FRecordCodeGen.CustomMasterFiles.IntfFile.FileName
        + '.pas');
      aList.SaveToFile(aFileName);

      aList.Text := FRecordCodeGen.CustomMasterFiles.ImplFile.Text;
      aFileName := TPath.Combine(FTargetDirectory, FRecordCodeGen.CustomMasterFiles.ImplFile.FileName
        + '.pas');
      aList.SaveToFile(aFileName);
    finally
      aList.Free;
    end;
  end;
end;

procedure TdmFirebirdOrmGenerator.SetDetailTables(const Value: TStrings);
begin
  FDetailTables.Assign(Value);
end;

procedure TdmFirebirdOrmGenerator.SetRecordCodeGen(const Value: IRecordCodeGen);
begin
  FRecordCodeGen := Value;
end;

procedure TdmFirebirdOrmGenerator.SetSchemaName(const Value: string);
begin
  FSchemaName := Value;
end;

procedure TdmFirebirdOrmGenerator.SetTargetDirectory(const Value: string);
begin
  FTargetDirectory := Value;
end;

end.
