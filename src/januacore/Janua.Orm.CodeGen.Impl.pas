unit Janua.Orm.CodeGen.Impl;

interface

uses
  // System
  System.Classes, System.Json, System.SysUtils, System.Rtti,
  // Bindings
  System.Bindings.Expression, System.Bindings.Helper,
  // DB, RTL, .....
  Data.DB,
  // OS specifi
  // Third Party Libs
  Spring, Spring.Collections,
  // Janua Types
  Janua.Rest.Types, Janua.Core.DB.Types, Janua.Orm.Types, Janua.Core.Types,
  // Janua Interfaces
  Janua.Html.Intf, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  // Janua Framework
  Janua.Core.Classes, Janua.Core.DB;

type
  TRecordCodeGen = class(TJanuaInterfacedBindableObject, IRecordCodeGen)
  public
    constructor Create; override;
  private
    function ind(l: integer): string;
  protected
    function GetMasterRecord: IJanuaRecord;
    procedure SetMasterRecord(const Value: IJanuaRecord);
    function GetSchemaName: string;
    procedure SetSchemaName(const aValue: string);
    function GetTableName: string;
    procedure SetTableName(const aValue: string);
    function GetMasterDataset: IJanuaRecord;
    procedure SetMasterDataset(const Value: IJanuaRecord);
    function GetCustomMasterFiles: TRecordUnits;
    function GetMasterFiles: TRecordUnits;
  public
    function GenerateCustomIntfFromDataset(const aDataset: TDataSet): string;
    function GenerateCustomImplFromDataset(const aDataset: TDataSet): string;
    function GenerateIntfFromDataset(const aDataset: TDataSet): string;
    function GenerateImplFromDataset(const aDataset: TDataSet): string;
  public
    property MasterRecord: IJanuaRecord read GetMasterRecord write SetMasterRecord;
    property SchemaName: string read GetSchemaName write SetSchemaName;
    property TableName: string read GetTableName write SetTableName;
    property MasterDataset: IJanuaRecord read GetMasterDataset write SetMasterDataset;
    property CustomMasterFiles: TRecordUnits read GetCustomMasterFiles;
    property CustomMasterImpl: TRecordUnits read GetMasterFiles;
  End;

implementation

uses
  // System
  System.Math, System.StrUtils,
  // Janua Framework
  Janua.Core.Functions;

{ TRecordCodeGen }

constructor TRecordCodeGen.Create;
begin
  inherited;

end;

function TRecordCodeGen.GenerateCustomImplFromDataset(const aDataset: TDataSet): string;
begin

end;

function TRecordCodeGen.GenerateCustomIntfFromDataset(const aDataset: TDataSet): string;
begin

end;

function TRecordCodeGen.GenerateImplFromDataset(const aDataset: TDataSet): string;
begin

end;

function TRecordCodeGen.GenerateIntfFromDataset(const aDataset: TDataSet): string;
begin

end;

function TRecordCodeGen.GetCustomMasterFiles: TRecordUnits;
begin

end;

function TRecordCodeGen.GetMasterDataset: IJanuaRecord;
begin

end;

function TRecordCodeGen.GetMasterFiles: TRecordUnits;
begin

end;

function TRecordCodeGen.GetMasterRecord: IJanuaRecord;
begin

end;

function TRecordCodeGen.GetSchemaName: string;
begin

end;

function TRecordCodeGen.GetTableName: string;
begin

end;

function TRecordCodeGen.ind(l: integer): string;
begin
  Result := Janua.Core.Functions.Indent(2, l)
end;

procedure TRecordCodeGen.SetMasterDataset(const Value: IJanuaRecord);
begin

end;

procedure TRecordCodeGen.SetMasterRecord(const Value: IJanuaRecord);
begin

end;

procedure TRecordCodeGen.SetSchemaName(const aValue: string);
begin

end;

procedure TRecordCodeGen.SetTableName(const aValue: string);
begin

end;

end.
