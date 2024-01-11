unit JanuaOraDataset;

interface

uses
  SysUtils, Classes, JanuaSessionSource, DB,  MidasLib, DBClient, VirtualTable,
  Provider, OraProvider, Ora, MemUtils;

type
  TJanuaParamType = (jptDate, jptDateTime, jptCursor, jptInteger, jptWideString);
  TJanuaOraDatasetType = (jdtRecordSet, jdtStoredProcedure, jdtSQL);

type
  TJanuaOraDataset = class(TComponent)
  private
    FJanuaSessionSource: TJanuaSessionSource;
    FActive: Boolean;
    FDataset: TOraDataset;
    FUseClientDataset: boolean;
    FDataSource: TDataSource;
    FMemoryDataset: TVirtualTable;
    FUseMemoryDataset: boolean;
    FDatasetProvider: TDatasetProvider;
    FClientDataset: TClientDataset;
    FRecordCount: integer;
    FDatasetType: TJanuaOraDatasetType;
    procedure SetJanuaSessionSource(const Value: TJanuaSessionSource); virtual;
    procedure SetUseClientDataset(const Value: boolean);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetUseMemoryDataset(const Value: boolean);
    procedure SetClientDataset(const Value: TClientDataset);
    procedure SetDatasetProvider(const Value: TDatasetProvider);
    procedure SetRecordCount(const Value: integer);
    procedure SetDatasetType(const Value: TJanuaOraDatasetType);
    procedure AssignClientDataset;
    procedure AssignMemoryDataset; 
    { Private declarations }
  protected
    procedure SetActive(const Value: Boolean);  virtual;
    procedure SetDatset(NewDataset: TOraDataset);
    procedure prepare;  virtual; abstract;
    //procedure SetParamType(ParamName: string; ParamType: TJanuaParamType); virtual; abstract;
    procedure SetInternalDataset;
    procedure SetParamType(ParamName: string; ParamType: TJanuaParamType);
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent);  override;
    procedure Open;
    procedure SetParams(paramname: string; parvalue: integer); overload;
    procedure SetParams(paramname: string; parvalue: int64); overload;
    procedure SetParams(paramname: string; parvalue: widestring); overload;
    procedure SetParams(paramname: string; parvalue: string); overload;
    procedure SetParams(paramname: string; parvalue: TDateTime); overload;
  published
    { Published declarations }
    property JanuaSessionSource: TJanuaSessionSource read FJanuaSessionSource write SetJanuaSessionSource;
    property Active: Boolean read FActive write SetActive default false;
    property Dataset: TOraDataset read FDataset;
    property UseClientDataset: boolean read FUseClientDataset write SetUseClientDataset default false;
    property DataSource: TDataSource read FDataSource write SetDataSource;
    property MemoryDataset: TVirtualTable read FMemoryDataset;
    property UseMemoryDataset: boolean read FUseMemoryDataset write SetUseMemoryDataset default false;
    property DatasetProvider: TDatasetProvider read FDatasetProvider write SetDatasetProvider;
    property RecordCount: integer read FRecordCount write SetRecordCount;
    property DatasetType:  TJanuaOraDatasetType read FDatasetType write SetDatasetType default jdtRecordSet;

  end;

//procedure Register;

implementation


procedure Register;
begin
  RegisterComponents('Janua Oracle', [TJanuaOraDataset]);
end;


{ TJanuaOraDataset }

procedure TJanuaOraDataset.AssignClientDataset;
var
  op: TOraProvider;
begin
  if Assigned(FDataset) then try
     op := TOraProvider.Create(self);
     op.DataSet := FDataset;
     FClientDataset.Data := op.Data;
  finally
    FreeAndNil(op);
  end;
end;

procedure TJanuaOraDataset.AssignMemoryDataset;
var
  a: TStream;
begin
   if Assigned(FMemoryDataset) then begin
      FMemoryDataset.Assign(FDataset);
   end;
end;

constructor TJanuaOraDataset.Create(AOwner: TComponent);
var
  i: integer;
begin
  inherited;
     for i := 0 to AOwner.ComponentCount - 1 do
       if AOwner.Components[i] is TJanuaSessionSource then
              FJanuaSessionSource := TJanuaSessionSource(AOwner.Components[i]);
  FUseClientDataset := False;
  FUseMemoryDataset := False;
  FDatasetType := jdtRecordSet;
  FActive := False;
end;


procedure TJanuaOraDataset.Open;
begin
  FDataSet.Open;
  SetInternalDataset;
  FRecordCount := FDataset.RecordCount;  
end;

procedure TJanuaOraDataset.SetActive(const Value: Boolean);
begin
  FActive := Value;
  if FActive and (FDatasetType = jdtRecordSet) then
  begin
     Open;
  end;
end;

procedure TJanuaOraDataset.SetClientDataset(const Value: TClientDataset);
begin
  FClientDataset := Value;
end;


procedure TJanuaOraDataset.SetDatasetProvider(const Value: TDatasetProvider);
begin
  FDatasetProvider := Value;
  if assigned(FDatasetProvider) then FDatasetProvider.DataSet := FDataset;
end;

procedure TJanuaOraDataset.SetDatasetType(const Value: TJanuaOraDatasetType);
begin
  FDatasetType := Value;
end;

procedure TJanuaOraDataset.SetDataSource(const Value: TDataSource);
begin
  FDataSource := Value;
  if Assigned(FDataSet) then FDataSource.DataSet := FDataSet; 
end;

procedure TJanuaOraDataset.SetDatset(NewDataset: TOraDataset);
begin
   FDataset := NewDataset;
   if Assigned(FDataSet) then prepare;
   if Assigned(FDataSource) then FDataSource.DataSet := NewDataset; 
end;

procedure TJanuaOraDataset.SetInternalDataset;
begin
   if assigned(FDataset) then
   begin
      if FUseClientDataset then
      begin
         AssignClientDataset;
         if assigned(FDataSource) then FDataSource.DataSet := FClientDataset;
      end
      else if FUseMemoryDataset then
      begin
          AssignMemoryDataset; 
          if assigned(FDataSource) then FDataSource.DataSet := FMemoryDataset;
      end
      else
      begin
        if assigned(FDataSource) then FDataSource.DataSet := FDataset;
      end;
   end;

end;

procedure TJanuaOraDataset.SetJanuaSessionSource(const Value: TJanuaSessionSource);
begin
  FJanuaSessionSource := Value;
end;


procedure TJanuaOraDataset.SetParams(paramname: string;
  parvalue: int64);
begin
  FDataSet.ParamByName(paramname).AsInteger := parvalue;
end;

procedure TJanuaOraDataset.SetParams(paramname: string;
  parvalue: integer);
begin
  FDataSet.ParamByName(paramname).AsInteger := parvalue;
end;

procedure TJanuaOraDataset.SetParams(paramname: string;
  parvalue: widestring);
begin
  FDataSet.ParamByName(paramname).AsWideString := parvalue;
end;

procedure TJanuaOraDataset.SetParams(paramname: string;
  parvalue: string);
begin
  FDataSet.ParamByName(paramname).AsString := parvalue;
end;


procedure TJanuaOraDataset.SetParams(paramname: string;
  parvalue: TDateTime);
begin
  FDataSet.ParamByName(paramname).AsDateTime := parvalue;
end;

procedure TJanuaOraDataset.SetParamType(ParamName: string;
  ParamType: TJanuaParamType);
begin
  case ParamType of
    jptDate: FDataSet.ParamByName(ParamName).DataType := ftDate ;
    jptDateTime: FDataSet.ParamByName(ParamName).DataType := ftDateTime ;
    jptCursor: FDataSet.ParamByName(ParamName).DataType := ftCursor;
    jptInteger: FDataSet.ParamByName(ParamName).DataType := ftInteger;
    jptWideString: FDataSet.ParamByName(ParamName).DataType := ftWideString;
  end;
end;

procedure TJanuaOraDataset.SetRecordCount(const Value: integer);
begin
  FRecordCount := Value;
end;

procedure TJanuaOraDataset.SetUseClientDataset(const Value: boolean);
begin
  FUseClientDataset := Value;
  if Value then
  begin
    if not assigned(FClientDataset) then FClientDataset := TClientDataset.Create(self);
    if assigned(FDataSource) then FDataSource.DataSet := FClientDataset;
    if FUseClientDataset then self.SetUseMemoryDataset(False);
  end
  else
  begin
    if  assigned(FClientDataset) then FreeAndNil(FClientDataset);
     if assigned(FDataSource) then
        if FDataSource.DataSet = FClientDataset then FDataSource.DataSet := nil;
  end;

end;

procedure TJanuaOraDataset.SetUseMemoryDataset(const Value: boolean);
begin
  FUseMemoryDataset := Value;
  if Value then
  begin
     if not assigned(FMemoryDataset) then FMemoryDataset := TVirtualTable.Create(self);
     if assigned(FDataSource) then FDataSource.DataSet := FMemoryDataset;
     if FUseMemoryDataset then self.SetUseClientDataset(False); 
  end
  else
  begin
     if assigned(FDataSource) then
        if FDataSource.DataSet = FMemoryDataset then FDataSource.DataSet := nil;
     if assigned(FMemoryDataset) then FreeAndNil(FMemoryDataset);
  end;



end;

end.
