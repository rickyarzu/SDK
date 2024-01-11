unit Janua.Oracle.Dataset;

interface

uses
  System.SysUtils, System.Classes, Data.DB, VirtualTable, Uni, Janua.Uni.Intf,
  Janua.Core.DB.Intf, Janua.Core.Types;

type
  TJanuaParamType = (jptDate, jptDateTime, jptCursor, jptInteger, jptWideString);

type
  TJanuaOraDataset = class(TComponent)
  private
    FJanuaSessionSource: IJanuaUniSessionSource;
    FActive: Boolean;
    FDataset: TCustomUniDataSet;
    FUseClientDataset: Boolean;
    FDataSource: TDataSource;
    FMemoryDataset: TVirtualTable;
    FUseMemoryDataset: Boolean;
    FRecordCount: integer;
    FDatasetType: TJanuaDatasetType;
    procedure SetJanuaSessionSource(const Value: IJanuaUniSessionSource); virtual;
    procedure SetUseClientDataset(const Value: Boolean);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetUseMemoryDataset(const Value: Boolean);
    procedure SetRecordCount(const Value: integer);
    procedure SetDatasetType(const Value: TJanuaDatasetType);
    procedure AssignClientDataset;
    procedure AssignMemoryDataset;
    { Private declarations }
  protected
    procedure SetActive(const Value: Boolean); virtual;
    procedure SetDatset(NewDataset: TCustomUniDataSet);
    procedure prepare; virtual;
    procedure SetInternalDataset;
    procedure SetParamType(ParamName: string; ParamType: TJanuaParamType);
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure Open;
    procedure SetParams(ParamName: String; parvalue: integer); overload;
    procedure SetParams(ParamName: String; parvalue: int64); overload;
    procedure SetParams(ParamName: String; parvalue: widestring); overload;
    procedure SetParams(ParamName: String; parvalue: string); overload;
    procedure SetParams(ParamName: String; parvalue: TDateTime); overload;
  published
    { Published declarations }
    property JanuaSessionSource: IJanuaUniSessionSource read FJanuaSessionSource write SetJanuaSessionSource;
    property Active: Boolean read FActive write SetActive default false;
    property Dataset: TCustomUniDataSet read FDataset;
    property UseClientDataset: Boolean read FUseClientDataset write SetUseClientDataset default false;
    property DataSource: TDataSource read FDataSource write SetDataSource;
    property MemoryDataset: TVirtualTable read FMemoryDataset;
    property UseMemoryDataset: Boolean read FUseMemoryDataset write SetUseMemoryDataset default false;
    property RecordCount: integer read FRecordCount write SetRecordCount;
    property DatasetType: TJanuaDatasetType read FDatasetType write SetDatasetType;
  end;

implementation

{ TJanuaDataset }

procedure TJanuaOraDataset.AssignClientDataset;
begin
  { var
    op: TDatasetProvider;
    begin
    if Assigned(FDataset) then
    try
    op := TDatasetProvider.Create(self);
    op.Dataset := FDataset;
    FClientDataset.Data := op.Data;
    finally
    FreeAndNil(op);
    end; }
end;

procedure TJanuaOraDataset.AssignMemoryDataset;
var
  a: TStream;
begin
  if Assigned(FMemoryDataset) then
  begin
    FMemoryDataset.Assign(FDataset);
  end;
end;

constructor TJanuaOraDataset.Create(AOwner: TComponent);
var
  i: integer;
begin
  inherited;

  FUseClientDataset := false;
  FUseMemoryDataset := false;
  FDatasetType := jdtDataSet;
  FActive := false;
end;

procedure TJanuaOraDataset.Open;
begin
  FDataset.Open;
  SetInternalDataset;
  FRecordCount := FDataset.RecordCount;
end;

procedure TJanuaOraDataset.prepare;
begin
  if not FDataset.Prepared then
    FDataset.prepare;
end;

procedure TJanuaOraDataset.SetActive(const Value: Boolean);
begin
  FActive := Value;
  if FActive and (FDatasetType = jdtDataSet) then
  begin
    Open;
  end;
end;

{ procedure TJanuaOraDataset.SetClientDataset(const Value: TClientDataset);
  begin
  FClientDataset := Value;
  end;

  procedure TJanuaOraDataset.SetDatasetProvider(const Value: TDatasetProvider);
  begin
  FDatasetProvider := Value;
  if Assigned(FDatasetProvider) then
  FDatasetProvider.Dataset := FDataset;
  end; }

procedure TJanuaOraDataset.SetDatasetType(const Value: TJanuaDatasetType);
begin
  FDatasetType := Value;
end;

procedure TJanuaOraDataset.SetDataSource(const Value: TDataSource);
begin
  FDataSource := Value;
  if Assigned(FDataset) then
    FDataSource.Dataset := FDataset;
end;

procedure TJanuaOraDataset.SetDatset(NewDataset: TCustomUniDataSet);
begin
  FDataset := NewDataset;
  if Assigned(FDataset) then
    prepare;
  if Assigned(FDataSource) then
    FDataSource.Dataset := NewDataset;
end;

procedure TJanuaOraDataset.SetInternalDataset;
begin
  if Assigned(FDataset) then
  begin
    if FUseClientDataset then
    begin
      AssignClientDataset;
      { if Assigned(FDataSource) then
        FDataSource.Dataset := FClientDataset; }
    end
    else if FUseMemoryDataset then
    begin
      AssignMemoryDataset;
      if Assigned(FDataSource) then
        FDataSource.Dataset := FMemoryDataset;
    end
    else
    begin
      if Assigned(FDataSource) then
        FDataSource.Dataset := FDataset;
    end;
  end;

end;

procedure TJanuaOraDataset.SetJanuaSessionSource(const Value: IJanuaUniSessionSource);
begin
  FJanuaSessionSource := Value;
end;

procedure TJanuaOraDataset.SetParams(ParamName: String; parvalue: int64);
begin
  FDataset.ParamByName(ParamName).AsInteger := parvalue;
end;

procedure TJanuaOraDataset.SetParams(ParamName: String; parvalue: integer);
begin
  FDataset.ParamByName(ParamName).AsInteger := parvalue;
end;

procedure TJanuaOraDataset.SetParams(ParamName: String; parvalue: widestring);
begin
  FDataset.ParamByName(ParamName).AsWideString := parvalue;
end;

procedure TJanuaOraDataset.SetParams(ParamName: String; parvalue: TDateTime);
begin
  FDataset.ParamByName(ParamName).AsDateTime := parvalue;
end;

procedure TJanuaOraDataset.SetParams(ParamName: string; parvalue: string);
begin
  FDataset.ParamByName(ParamName).AsString := parvalue;
end;

procedure TJanuaOraDataset.SetParamType(ParamName: string; ParamType: TJanuaParamType);
begin
  case ParamType of
    jptDate:
      FDataset.ParamByName(ParamName).DataType := ftDate;
    jptDateTime:
      FDataset.ParamByName(ParamName).DataType := ftDateTime;
    jptCursor:
      FDataset.ParamByName(ParamName).DataType := ftCursor;
    jptInteger:
      FDataset.ParamByName(ParamName).DataType := ftInteger;
    jptWideString:
      FDataset.ParamByName(ParamName).DataType := ftWideString;
  end;
end;

procedure TJanuaOraDataset.SetRecordCount(const Value: integer);
begin
  FRecordCount := Value;
end;

procedure TJanuaOraDataset.SetUseClientDataset(const Value: Boolean);
begin
  FUseClientDataset := Value;
  { if Value then
    begin
    if not Assigned(FClientDataset) then
    FClientDataset := TClientDataset.Create(self);
    if Assigned(FDataSource) then
    FDataSource.Dataset := FClientDataset;
    if FUseClientDataset then
    self.SetUseMemoryDataset(false);
    end
    else
    begin
    if Assigned(FClientDataset) then
    FreeAndNil(FClientDataset);
    if Assigned(FDataSource) then
    if FDataSource.Dataset = FClientDataset then
    FDataSource.Dataset := nil;
    end;
  }
end;

procedure TJanuaOraDataset.SetUseMemoryDataset(const Value: Boolean);
begin
  FUseMemoryDataset := Value;
  if Value then
  begin
    if not Assigned(FMemoryDataset) then
      FMemoryDataset := TVirtualTable.Create(self);
    if Assigned(FDataSource) then
      FDataSource.Dataset := FMemoryDataset;
    if FUseMemoryDataset then
      self.SetUseClientDataset(false);
  end
  else
  begin
    if Assigned(FDataSource) then
      if FDataSource.Dataset = FMemoryDataset then
        FDataSource.Dataset := nil;
    if Assigned(FMemoryDataset) then
      FreeAndNil(FMemoryDataset);
  end;

end;

end.
