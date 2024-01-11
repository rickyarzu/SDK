unit Janua.Core.DB.Impl;

interface

uses System.Classes, Janua.Core.DB.Intf, Janua.Core.Types, Spring.Collections, System.SysUtils,
  Janua.Orm.Intf, Janua.Core.Classes, Janua.Application.Framework;

type
  TJanuaSearchParam = class(TInterfacedObject, IJanuaSearchParam)
  private
    FParamType: TJanuaFieldType;
    FName: string;
    FTitle: string;
  protected
    function GetParamType: TJanuaFieldType;
    function GetName: string;
    function GetTitle: string;
    procedure SetName(const Value: string);
    procedure SetParamType(const Value: TJanuaFieldType);
    procedure SetTitle(const Value: string);
  public
    property Name: string read GetName write SetName;
    property Title: string read GetTitle write SetTitle;
    property ParamType: TJanuaFieldType read GetParamType write SetParamType;
  end;

type
  TJanuaDatasetSearchParams = class(TInterfacedObject, IJanuaDatasetSearchParams)
  private
    FFParam: IList<IJanuaSearchParam>;
  protected
    function GetParams: IList<IJanuaSearchParam>;
    function ParamCount: Integer;
  public
    procedure AddParam(const aName, aTitle: string; const aParamType: TJanuaFieldType);
    property Params: IList<IJanuaSearchParam> read GetParams;
  public
    Constructor Create; overload;
  end;

  TJanuaLookupModuleFactory = Class(TJanuaInterfacedObject, IJanuaLookupModuleFactory)
  private
    FtLookUpList: IList<TJanuaLookupID>;
  strict protected
    function GetLookUpList: IList<TJanuaLookupID>;
    procedure SetLookUpList(const Value: IList<TJanuaLookupID>);
    /// <summary>
    /// List of ID's Managed by This Factory. A Facotry can Rely on one or
    /// More Models to Build It's Lists.
    /// </summary>
    property LookUpIDList: IList<TJanuaLookupID> read GetLookUpList write SetLookUpList;
  protected
    function GetLookUpObject(const aID: TJanuaLookupID; const aClone: boolean = true; const aThreaded: boolean = False;
      aCallBackProc: TProc<IJanuaLookUp> = nil): IJanuaLookUp; overload;
    /// <summary>  Finds an Object and assigns it to a Field </summary>
    /// <param name="aID">   LookupID Enumerator </param>
    /// <param name="aField">  Destination Field </param>
    function TryGetLookUpObject(const aID: TJanuaLookupID; const aField: IJanuaField): boolean; overload;
  public
    constructor Create; override;
  end;

  TJanuaCustomLookUp = class(TJanuaInterfacedBindableObject, IJanuaLookUp)
  private
    FItemIndex: Integer;
    FJanuaDataset: IJanuaDBCustomDataset;
    FKeyField: string;
    FLookupField: string;
    FLookupID: TJanuaLookupID;
    FLookUpList: TStrings;
    FSearchText: string;
    function GetItemIndex: Integer;
    function GetSearchText: string;
    procedure SetItemIndex(const Value: Integer);
    procedure SetSearchText(const Value: string);
  protected
    function GetDataset: IJanuaDBCustomDataset;
    function GetKeyField: string;
    function GetLookupField: string;
    function GetLookupID: TJanuaLookupID;
    function GetLookUpList: TStrings;
    function GetRecordCount: Integer;
    procedure SetDataset(const Value: IJanuaDBCustomDataset);
    procedure SetKeyField(const Value: string);
    procedure SetLookupField(const Value: string);
    procedure SetLookupID(const Value: TJanuaLookupID);
    procedure SetLookUpList(const Value: TStrings);
  public
    property Dataset: IJanuaDBCustomDataset read GetDataset;
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    property KeyField: string read GetKeyField write SetKeyField;
    property LookupField: string read GetLookupField write SetLookupField;
    property LookupID: TJanuaLookupID read GetLookupID write SetLookupID;
    property LookupList: TStrings read GetLookUpList write SetLookUpList;
    property RecordCount: Integer read GetRecordCount;
    property SearchText: string read GetSearchText write SetSearchText;

  public
    constructor Create(const aDataset: IJanuaDBCustomDataset); overload;
    constructor Create; override;
  end;

  TJanuaStorage = class(TJanuaInterfacedBindableObject, IJanuaStorage)
  strict private
    FKeepAlive: boolean;
    FCreatedDatasets: boolean;
    FLastErrorMessage: string;
    FLimit: Word;
    FLastCount: Integer;
    FOffset: Word;
    FSelectedSchema: Integer;
    FLocalTest: boolean;
    FDBFunctions: IJanuaDatasetFunctions;
    DatasetList: TDatasetList;
  strict protected
    FAfterDestroyDataset: TProc;
    FInternalCreateDBDataSets: TProc;
    FInternalCreateDataset: TProc;
    FAfterCreateDataset: TProc;
    FInternalDestroyDataset: TProc;
    FInternalAssignDatasets: TProc;
    procedure SetAfterDestroyDataset; virtual;
    procedure SetInternalCreateDBDataSets; virtual;
    procedure SetInternalCreateDataset; virtual;
    procedure SetAfterCreateDataset; virtual;
    procedure SetInternalDestroyDataset; virtual;
    procedure SetInternalAssignDatasets; virtual;
  protected // Getters and Setters
    function GetLocalTest: boolean;
    procedure SetLastErrorMessage(const aValue: string);
    function GetKeepAlive: boolean;
    procedure SetKeepAlive(const aValue: boolean);
    function GetLastErrorMessage: string;
    function getLimit: Word;
    function GetLastCount: Integer;
    function GetOffset: Word;
    procedure SetLastCount(const aValue: Integer);
    procedure setLimit(const aValue: Word);
    procedure SetOffset(const aValue: Word);
    function GetDBFunctions: IJanuaDatasetFunctions;
    procedure SetDBFunctions(const Value: IJanuaDatasetFunctions);
    function GetSelectedSchema: Integer;
    procedure SetSelectedSchema(const Value: Integer);
    procedure SetLocalTest(const Value: boolean);
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure CreateDataset; // virtual;
    procedure DestroyDataset;
  public
    property KeepAlive: boolean read GetKeepAlive write SetKeepAlive;
    property Limit: Word read getLimit write setLimit;
    property Offset: Word read GetOffset write SetOffset;
    property LastCount: Integer read GetLastCount write SetLastCount;
    property LastErrorMessage: string read GetLastErrorMessage write SetLastErrorMessage;
    property DBFunctions: IJanuaDatasetFunctions read GetDBFunctions write SetDBFunctions;
    property LocalTest: boolean read FLocalTest write SetLocalTest;
  end;

implementation

{ TJanuaSearchParam }

function TJanuaSearchParam.GetName: string;
begin

end;

function TJanuaSearchParam.GetParamType: TJanuaFieldType;
begin
  Result := Self.FParamType
end;

function TJanuaSearchParam.GetTitle: string;
begin

end;

procedure TJanuaSearchParam.SetName(const Value: string);
begin

end;

procedure TJanuaSearchParam.SetParamType(const Value: TJanuaFieldType);
begin

end;

procedure TJanuaSearchParam.SetTitle(const Value: string);
begin

end;

{ TJanuaDatasetSearchParams }

procedure TJanuaDatasetSearchParams.AddParam(const aName, aTitle: string; const aParamType: TJanuaFieldType);
begin

end;

constructor TJanuaDatasetSearchParams.Create;
begin
  FFParam := TCollections.CreateList<IJanuaSearchParam>;
end;

function TJanuaDatasetSearchParams.GetParams: IList<IJanuaSearchParam>;
begin
  Result := FFParam
end;

function TJanuaDatasetSearchParams.ParamCount: Integer;
begin
  Result := FFParam.Count
end;

{ TJanuaCustomLookUp }

constructor TJanuaCustomLookUp.Create(const aDataset: IJanuaDBCustomDataset);
begin
  FJanuaDataset := aDataset;
end;

constructor TJanuaCustomLookUp.Create;
begin

end;

function TJanuaCustomLookUp.GetDataset: IJanuaDBCustomDataset;
begin
  Result := Self.FJanuaDataset
end;

function TJanuaCustomLookUp.GetItemIndex: Integer;
begin
  Result := FItemIndex;
end;

function TJanuaCustomLookUp.GetKeyField: string;
begin
  Result := Self.FKeyField
end;

function TJanuaCustomLookUp.GetLookupField: string;
begin
  Result := FLookupField
end;

function TJanuaCustomLookUp.GetLookupID: TJanuaLookupID;
begin
  Result := FLookupID
end;

function TJanuaCustomLookUp.GetLookUpList: TStrings;
begin
  Result := FLookUpList
end;

function TJanuaCustomLookUp.GetRecordCount: Integer;
begin
  Result := FJanuaDataset.RecordCount
end;

function TJanuaCustomLookUp.GetSearchText: string;
begin
  Result := FSearchText;
end;

procedure TJanuaCustomLookUp.SetDataset(const Value: IJanuaDBCustomDataset);
begin

end;

procedure TJanuaCustomLookUp.SetItemIndex(const Value: Integer);
begin
  FItemIndex := Value;
end;

procedure TJanuaCustomLookUp.SetKeyField(const Value: string);
begin

end;

procedure TJanuaCustomLookUp.SetLookupField(const Value: string);
begin

end;

procedure TJanuaCustomLookUp.SetLookupID(const Value: TJanuaLookupID);
begin

end;

procedure TJanuaCustomLookUp.SetLookUpList(const Value: TStrings);
begin

end;

procedure TJanuaCustomLookUp.SetSearchText(const Value: string);
begin
  FSearchText := Value;
end;

{ TJanuaLookupModuleFactory }

constructor TJanuaLookupModuleFactory.Create;
begin
  inherited;
  FtLookUpList := TCollections.CreateList<TJanuaLookupID>;
end;

function TJanuaLookupModuleFactory.GetLookUpList: IList<TJanuaLookupID>;
begin
  Result := FtLookUpList;
end;

function TJanuaLookupModuleFactory.GetLookUpObject(const aID: TJanuaLookupID; const aClone: boolean = true;
  const aThreaded: boolean = False; aCallBackProc: TProc<IJanuaLookUp> = nil): IJanuaLookUp;
begin

end;

function TJanuaLookupModuleFactory.TryGetLookUpObject(const aID: TJanuaLookupID; const aField: IJanuaField): boolean;
begin
  Result := False;
  { TODO : Implementing Janua Lookup Module try Get LookUp Object }
end;

procedure TJanuaLookupModuleFactory.SetLookUpList(const Value: IList<TJanuaLookupID>);
begin
  FtLookUpList := Value
end;

{ TJanuaStorage }

constructor TJanuaStorage.Create;
begin
  FCreatedDatasets := False;
  FSelectedSchema := -1;
  inherited;
  FKeepAlive := False;
end;

procedure TJanuaStorage.CreateDataset;
begin
  SetInternalCreateDataset;
  try
    if Assigned(FInternalCreateDataset) then
    begin
      try
        FInternalCreateDataset;

        SetInternalCreateDBDataSets;
        try
          if Assigned(FInternalCreateDBDataSets) then
            try
              FInternalCreateDBDataSets;
            except
              on e: exception do
                RaiseException('InternalCreateDataset', e, Self);
            end;
        finally
          FInternalCreateDBDataSets := nil;
        end;

        SetAfterCreateDataset;
        if Assigned(FAfterCreateDataset) then
          try
            FAfterCreateDataset;
            FAfterCreateDataset := nil;
          except
            on e: exception do
              RaiseException('FAfterCreateDataset', e, Self, Self.LogString);
          end;

        // If there si any Dataset to be Assigned then the procedure should be set so must be executed
        SetInternalAssignDatasets;
        try
          if Assigned(FInternalAssignDatasets) then
            FInternalAssignDatasets
        finally
          FInternalAssignDatasets := nil;
        end;
      except
        on e: exception do
          RaiseException('CreateDataset', e, Self, Self.LogString);
      end;
    end
    else
      raise exception.Create(Self.ClassName + '.Create FInternalCreateDataset is nil');
  finally
    FInternalCreateDataset := nil;
  end;
end;

destructor TJanuaStorage.Destroy;
begin
  KeepAlive := False;
  DestroyDataset;
  inherited;
end;

procedure TJanuaStorage.DestroyDataset;
begin
  if (not FKeepAlive) then
  begin
    SetInternalDestroyDataset;
    if Assigned(FInternalDestroyDataset) then
    begin
      FInternalDestroyDataset;
      try
        SetAfterDestroyDataset;
        if Assigned(FAfterDestroyDataset) then
          try
            FAfterDestroyDataset;
          finally
            FAfterDestroyDataset := nil;
          end;
      finally
        FInternalDestroyDataset := nil;
      end;
    end;
  end;
end;

function TJanuaStorage.GetDBFunctions: IJanuaDatasetFunctions;
begin
  if not Assigned(FDBFunctions) and not TJanuaApplicationFactory.TryGetInterface(IJanuaDatasetFunctions, FDBFunctions)
  then
    CreateException('GetDBFunctions', 'IDatasetFunctions not set', Self);

  Result := FDBFunctions;
end;

function TJanuaStorage.GetKeepAlive: boolean;
begin
  Result := Self.FKeepAlive
end;

function TJanuaStorage.GetLastCount: Integer;
begin
  Result := Self.FLastCount;
end;

function TJanuaStorage.GetLastErrorMessage: string;
begin
  Result := FLastErrorMessage
end;

function TJanuaStorage.getLimit: Word;
begin
  Result := FLimit
end;

function TJanuaStorage.GetLocalTest: boolean;
begin
  Result := FLocalTest
end;

function TJanuaStorage.GetOffset: Word;
begin
  Result := FOffset;
end;

function TJanuaStorage.GetSelectedSchema: Integer;
begin
  Result := FSelectedSchema
end;

procedure TJanuaStorage.SetAfterCreateDataset;
begin
  FAfterCreateDataset := nil
end;

procedure TJanuaStorage.SetAfterDestroyDataset;
begin
  Self.FAfterDestroyDataset := nil
end;

procedure TJanuaStorage.SetDBFunctions(const Value: IJanuaDatasetFunctions);
begin
  FDBFunctions := Value;
end;

procedure TJanuaStorage.SetInternalAssignDatasets;
begin
  FInternalAssignDatasets := nil;
end;

procedure TJanuaStorage.SetInternalCreateDataset;
begin
  Self.FInternalCreateDataset := nil
end;

procedure TJanuaStorage.SetInternalCreateDBDataSets;
begin
  Self.FInternalCreateDBDataSets := nil
end;

procedure TJanuaStorage.SetInternalDestroyDataset;
begin
  Self.FInternalDestroyDataset := nil
end;

procedure TJanuaStorage.SetKeepAlive(const aValue: boolean);
begin
  if FKeepAlive <> aValue then
  begin
    FKeepAlive := aValue;
    SetInternalCreateDataset;
    try
      if FKeepAlive and Assigned(FInternalCreateDataset) then
        FInternalCreateDataset();
    finally
      FInternalCreateDataset := nil;
    end;
  end;
end;

procedure TJanuaStorage.SetLastCount(const aValue: Integer);
begin
  FLastCount := aValue
end;

procedure TJanuaStorage.SetLastErrorMessage(const aValue: string);
begin
  Self.FLastErrorMessage := aValue
end;

procedure TJanuaStorage.setLimit(const aValue: Word);
begin
  FLimit := aValue
end;

procedure TJanuaStorage.SetLocalTest(const Value: boolean);
begin
  FLocalTest := Value;
end;

procedure TJanuaStorage.SetOffset(const aValue: Word);
begin
  Self.FOffset := aValue
end;

procedure TJanuaStorage.SetSelectedSchema(const Value: Integer);
begin
  FSelectedSchema := Value
end;

end.
