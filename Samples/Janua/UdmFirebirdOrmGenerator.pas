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
  private
    FTargetDirectory: string;
    FRecordCodeGen: IRecordCodeGen;
    FSchemaName: string;
    procedure SetTargetDirectory(const Value: string);
    procedure SetRecordCodeGen(const Value: IRecordCodeGen);
    procedure SetSchemaName(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    procedure Generate;
    property TargetDirectory: string read FTargetDirectory write SetTargetDirectory;
    property RecordCodeGen: IRecordCodeGen read FRecordCodeGen write SetRecordCodeGen;
    property SchemaName: string read FSchemaName write SetSchemaName;
  end;

var
  dmFirebirdOrmGenerator: TdmFirebirdOrmGenerator;

implementation

uses Janua.Orm.CodeGen.Impl;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmFirebirdOrmGenerator }

procedure TdmFirebirdOrmGenerator.Generate;
begin
  dmFirebirdOrmGenerator.RecordCodeGen.TableName := qryTablesTABLE_NAME.AsString;
  dmFirebirdOrmGenerator.RecordCodeGen.SchemaName := self.FSchemaName;
  dmFirebirdOrmGenerator.RecordCodeGen.
  RecordCodeGen.Generate;
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
