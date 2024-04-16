unit UdmFirebirdOrmGenerator;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, UniDacVcl, Janua.Orm.Intf, UniProvider,
  InterBaseUniProvider;

type
  TdmFirebirdOrmGenerator = class(TDataModule)
    UniConnection1: TUniConnection;
    dlgConnect: TUniConnectDialog;
    qryTables: TUniQuery;
    qryTablesTABLE_NAME: TStringField;
    dsTables: TUniDataSource;
    tbFields: TUniTable;
    InterBaseUniProvider1: TInterBaseUniProvider;
    procedure DataModuleCreate(Sender: TObject);
  private
    FTargetDirectory: string;
    FRecordCodeGen: IRecordCodeGen;
    FSchemaName: string;
    procedure SetTargetDirectory(const Value: string);
    procedure SetRecordCodeGen(const Value: IRecordCodeGen);
    procedure SetSchemaName(const Value: string);
    function GetMasterImpl: string;
    function GetMasterIntf: string;
    function GetCustomMasterImpl: string;
    function GetCustomMasterIntf: string;
    { Private declarations }
  public
    { Public declarations }
    procedure Generate;
    property TargetDirectory: string read FTargetDirectory write SetTargetDirectory;
    property RecordCodeGen: IRecordCodeGen read FRecordCodeGen write SetRecordCodeGen;
    property SchemaName: string read FSchemaName write SetSchemaName;
    property MasterIntf: string read GetMasterIntf;
    property MasterImpl: string read GetMasterImpl;
    property CustomMasterIntf: string read GetCustomMasterIntf;
    property CustomMasterImpl: string read GetCustomMasterImpl;
  end;

var
  dmFirebirdOrmGenerator: TdmFirebirdOrmGenerator;

implementation

uses Janua.Orm.CodeGen.Impl, Janua.Application.Framework;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmFirebirdOrmGenerator }

procedure TdmFirebirdOrmGenerator.DataModuleCreate(Sender: TObject);
begin
  FRecordCodeGen := TRecordCodeGen.Create;
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

function TdmFirebirdOrmGenerator.GetMasterImpl: string;
begin
  Result := FRecordCodeGen.MasterFiles.ImplFile.Text;
end;

function TdmFirebirdOrmGenerator.GetMasterIntf: string;
begin

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
