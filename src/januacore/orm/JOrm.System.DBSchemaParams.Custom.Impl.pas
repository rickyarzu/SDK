unit JOrm.System.DBSchemaParams.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.System.DBSchemaParams.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomDBSchemaParam = class(TJanuaRecord, IDBSchemaParam)
  private
    FDbSchemaId: IJanuaField;
    FKey: IJanuaField;
    FParam: IJanuaField;
    FValue: IJanuaField;
    FHasTranslation: IJanuaField;
  private
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetKey: IJanuaField;
    procedure SetKey(const Value: IJanuaField);
    function GetParam: IJanuaField;
    procedure SetParam(const Value: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    function GetHasTranslation: IJanuaField;
    procedure SetHasTranslation(const Value: IJanuaField);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Key: IJanuaField read GetKey write SetKey;
    property Param: IJanuaField read GetParam write SetParam;
    property Value: IJanuaField read GetValue write SetValue;
    property HasTranslation: IJanuaField read GetHasTranslation write SetHasTranslation;

  end;

  TCustomDBSchemaParams = class(TJanuaRecordSet, IJanuaRecordSet, IDBSchemaParams)
  private
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetKey: IJanuaField;
    procedure SetKey(const Value: IJanuaField);
    function GetParam: IJanuaField;
    procedure SetParam(const Value: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    function GetHasTranslation: IJanuaField;
    procedure SetHasTranslation(const Value: IJanuaField);
    function GetDBSchemaParam: IDBSchemaParam;
    procedure SetDBSchemaParam(const Value: IDBSchemaParam);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Key: IJanuaField read GetKey write SetKey;
    property Param: IJanuaField read GetParam write SetParam;
    property Value: IJanuaField read GetValue write SetValue;
    property HasTranslation: IJanuaField read GetHasTranslation write SetHasTranslation;
    property DBSchemaParam: IDBSchemaParam read GetDBSchemaParam write SetDBSchemaParam;
  end;

  TDBSchemaParamFactory = class
    class function CreateRecord(const aKey: string): IDBSchemaParam; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IDBSchemaParams; overload;
  end;

implementation

// ------------------------------------------ Impl TDBSchemaParam -------------------------------

{ TCustomDBSchemaParam }

constructor TCustomDBSchemaParam.Create;
begin
  inherited;
  FPrefix := 'sscp';
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FKey := AddCreateField(TJanuaFieldType.jptString, 'key', 'key');
  FParam := AddCreateField(TJanuaFieldType.jptString, 'param', 'param');
  // Campo non Gestitovalue Type= ftWideMemo
  FHasTranslation := AddCreateField(TJanuaFieldType.jptBoolean, 'has_translation', 'has_translation');
end;

function TCustomDBSchemaParam.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomDBSchemaParam.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomDBSchemaParam.GetKey: IJanuaField;
begin
  Result := FKey;
end;

procedure TCustomDBSchemaParam.SetKey(const Value: IJanuaField);
begin
  FKey := Value;
end;

function TCustomDBSchemaParam.GetParam: IJanuaField;
begin
  Result := FParam;
end;

procedure TCustomDBSchemaParam.SetParam(const Value: IJanuaField);
begin
  FParam := Value;
end;

function TCustomDBSchemaParam.GetValue: IJanuaField;
begin
  Result := FValue;
end;

procedure TCustomDBSchemaParam.SetValue(const Value: IJanuaField);
begin
  FValue := Value;
end;

function TCustomDBSchemaParam.GetHasTranslation: IJanuaField;
begin
  Result := FHasTranslation;
end;

procedure TCustomDBSchemaParam.SetHasTranslation(const Value: IJanuaField);
begin
  FHasTranslation := Value;
end;

{ TCustomDBSchemaParams }
constructor TCustomDBSchemaParams.Create;
begin
  inherited;
  self.FRecord := TDBSchemaParamFactory.CreateRecord('DBSchemaParam');
end;

function TCustomDBSchemaParams.GetDbSchemaId: IJanuaField;
begin
  Result := self.DBSchemaParam.DbSchemaId;
end;

procedure TCustomDBSchemaParams.SetDbSchemaId(const Value: IJanuaField);
begin
  self.DBSchemaParam.DbSchemaId := Value;
end;

function TCustomDBSchemaParams.GetKey: IJanuaField;
begin
  Result := self.DBSchemaParam.Key;
end;

procedure TCustomDBSchemaParams.SetKey(const Value: IJanuaField);
begin
  self.DBSchemaParam.Key := Value;
end;

function TCustomDBSchemaParams.GetParam: IJanuaField;
begin
  Result := self.DBSchemaParam.Param;
end;

procedure TCustomDBSchemaParams.SetParam(const Value: IJanuaField);
begin
  self.DBSchemaParam.Param := Value;
end;

function TCustomDBSchemaParams.GetValue: IJanuaField;
begin
  Result := self.DBSchemaParam.Value;
end;

procedure TCustomDBSchemaParams.SetValue(const Value: IJanuaField);
begin
  self.DBSchemaParam.Value := Value;
end;

function TCustomDBSchemaParams.GetHasTranslation: IJanuaField;
begin
  Result := self.DBSchemaParam.HasTranslation;
end;

procedure TCustomDBSchemaParams.SetHasTranslation(const Value: IJanuaField);
begin
  self.DBSchemaParam.HasTranslation := Value;
end;

function TCustomDBSchemaParams.GetDBSchemaParam: IDBSchemaParam;
begin
  Result := self.FRecord as IDBSchemaParam;
end;

procedure TCustomDBSchemaParams.SetDBSchemaParam(const Value: IDBSchemaParam);
begin
  self.FRecord := Value;
end;

{ TDBSchemaParamFactory }

class function TDBSchemaParamFactory.CreateRecord(const aKey: string): IDBSchemaParam;
begin
  Result := TCustomDBSchemaParam.Create;
end;

class function TDBSchemaParamFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IDBSchemaParams;
begin
  Result := TCustomDBSchemaParams.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
