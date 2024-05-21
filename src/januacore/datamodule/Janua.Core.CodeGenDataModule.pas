unit Janua.Core.CodeGenDataModule;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections,
  // DB
  Data.DB,
  // Januaproject
  Janua.Core.DataModule, Janua.Orm.Intf;

type
  TTJanuaCoreCodeGenDataModule = class(TJanuaCoreDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FQueries: TObjectlist<TDataset>;
    FTargetDirectory: string;
    FRecordCodeGen: IRecordCodeGen;
    FSchemaName: string;
    FDetailTables: TStrings;
    FMasterDataset: TDataset;
    FQueryDataset: TDataset;
    FFieldsDataset: TDataset;
    procedure SetQueryDataset(const Value: TDataset);
    procedure SetFieldsDataset(const Value: TDataset);
  protected
    property Queries: TObjectlist<TDataset> read FQueries;
    procedure SetMasterDataset(const Value: TDataset);
    procedure SetTargetDirectory(const Value: string);
    procedure SetRecordCodeGen(const Value: IRecordCodeGen);
    procedure SetSchemaName(const Value: string);
    function GetMasterImpl: string;
    function GetMasterIntf: string;
    function GetCustomMasterImpl: string;
    function GetCustomMasterIntf: string;
    procedure SetDetailTables(const Value: TStrings);
    function GetDetailGen(Index: string): IRecordCodeGen;
    property MasterDataset: TDataset read FMasterDataset write SetMasterDataset;
    property QueryDataset: TDataset read FQueryDataset write SetQueryDataset;
    property FieldsDataset: TDataset read FFieldsDataset write SetFieldsDataset;
  public
    procedure Generate;
    procedure OpenFields(const aFieldsTable: string); Virtual;
    procedure AddDetail(aTableName: string); virtual;
    function GetDetailList: string; virtual; abstract;
    procedure SaveAllFiles;
    property TargetDirectory: string read FTargetDirectory write SetTargetDirectory;
    property RecordCodeGen: IRecordCodeGen read FRecordCodeGen write SetRecordCodeGen;
    property DetailGens[Index: string]: IRecordCodeGen read GetDetailGen;
    property SchemaName: string read FSchemaName write SetSchemaName;
    property MasterIntf: string read GetMasterIntf;
    property MasterImpl: string read GetMasterImpl;
    property CustomMasterIntf: string read GetCustomMasterIntf;
    property CustomMasterImpl: string read GetCustomMasterImpl;
    property DetailTables: TStrings read FDetailTables write SetDetailTables;
  end;

var
  TJanuaCoreCodeGenDataModule: TTJanuaCoreCodeGenDataModule;

implementation

uses System.IOUtils, Janua.Orm.CodeGen.Impl, Janua.Application.Framework, Spring;

{$R *.dfm}
{ TTJanuaCoreCodeGenDataModule }

procedure TTJanuaCoreCodeGenDataModule.AddDetail(aTableName: string);
begin
  Guard.CheckNotNull(FQueries, 'FQueries');
end;

procedure TTJanuaCoreCodeGenDataModule.DataModuleCreate(Sender: TObject);
begin
  FRecordCodeGen := TRecordCodeGen.Create;
  FQueries := TObjectlist<TDataset>.Create;
  FQueries.OwnsObjects := True;
end;

procedure TTJanuaCoreCodeGenDataModule.DataModuleDestroy(Sender: TObject);
begin
  FQueries.Free;
  FDetailTables.Free;
end;

procedure TTJanuaCoreCodeGenDataModule.Generate;
begin
  RecordCodeGen.TableName := FMasterDataset.FieldByName('TABLE_NAME').AsString;
  RecordCodeGen.SchemaName := FSchemaName;
  RecordCodeGen.AskPlurals := True;
  RecordCodeGen.Dataset := FFieldsDataset;
  OpenFields(RecordCodeGen.TableName);
  FFieldsDataset.Open;
  try
    RecordCodeGen.Generate;
  finally
    FFieldsDataset.Close;
  end;
end;

function TTJanuaCoreCodeGenDataModule.GetCustomMasterImpl: string;
begin
  Result := FRecordCodeGen.CustomMasterFiles.ImplFile.Text;
end;

function TTJanuaCoreCodeGenDataModule.GetCustomMasterIntf: string;
begin
  Result := FRecordCodeGen.CustomMasterFiles.IntfFile.Text;
end;

function TTJanuaCoreCodeGenDataModule.GetDetailGen(Index: string): IRecordCodeGen;
begin
  // if not TryGetValue then

end;

function TTJanuaCoreCodeGenDataModule.GetMasterImpl: string;
begin
  Result := FRecordCodeGen.MasterFiles.ImplFile.Text;
end;

function TTJanuaCoreCodeGenDataModule.GetMasterIntf: string;
begin
  Result := FRecordCodeGen.MasterFiles.IntfFile.Text;
end;

procedure TTJanuaCoreCodeGenDataModule.OpenFields(const aFieldsTable: string);
begin

end;

procedure TTJanuaCoreCodeGenDataModule.SaveAllFiles;
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

procedure TTJanuaCoreCodeGenDataModule.SetDetailTables(const Value: TStrings);
begin
  FDetailTables.Assign(Value);
end;

procedure TTJanuaCoreCodeGenDataModule.SetFieldsDataset(const Value: TDataset);
begin
  FFieldsDataset := Value;
end;

procedure TTJanuaCoreCodeGenDataModule.SetMasterDataset(const Value: TDataset);
begin

end;

procedure TTJanuaCoreCodeGenDataModule.SetQueryDataset(const Value: TDataset);
begin
  FQueryDataset := Value;
end;

procedure TTJanuaCoreCodeGenDataModule.SetRecordCodeGen(const Value: IRecordCodeGen);
begin
  FRecordCodeGen := Value;
end;

procedure TTJanuaCoreCodeGenDataModule.SetSchemaName(const Value: string);
begin
  FSchemaName := Value;
end;

procedure TTJanuaCoreCodeGenDataModule.SetTargetDirectory(const Value: string);
begin
  FTargetDirectory := Value;
end;

end.
