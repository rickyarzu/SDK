unit JOrm.Logistic.AWBRows.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Logistic.AWBRows.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomLogisticAWBRow = class(TJanuaRecord, ILogisticAWBRow)
  private
    FId: IJanuaField;
    FAwbId: IJanuaField;
    FRowPos: IJanuaField;
    FField19a: IJanuaField;
    FField20a: IJanuaField;
    FField21: IJanuaField;
    FField22: IJanuaField;
    FField23: IJanuaField;
    FField24: IJanuaField;
    FField25: IJanuaField;
    FField26a: IJanuaField;
    FField27: IJanuaField;
    FJguid: IJanuaField;
    FDeleted: IJanuaField;
    FDbSchemaId: IJanuaField;
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetAwbId: IJanuaField;
    procedure SetAwbId(const Value: IJanuaField);
    function GetRowPos: IJanuaField;
    procedure SetRowPos(const Value: IJanuaField);
    function GetField19a: IJanuaField;
    procedure SetField19a(const Value: IJanuaField);
    function GetField20a: IJanuaField;
    procedure SetField20a(const Value: IJanuaField);
    function GetField21: IJanuaField;
    procedure SetField21(const Value: IJanuaField);
    function GetField22: IJanuaField;
    procedure SetField22(const Value: IJanuaField);
    function GetField23: IJanuaField;
    procedure SetField23(const Value: IJanuaField);
    function GetField24: IJanuaField;
    procedure SetField24(const Value: IJanuaField);
    function GetField25: IJanuaField;
    procedure SetField25(const Value: IJanuaField);
    function GetField26a: IJanuaField;
    procedure SetField26a(const Value: IJanuaField);
    function GetField27: IJanuaField;
    procedure SetField27(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property AwbId: IJanuaField read GetAwbId write SetAwbId;
    property RowPos: IJanuaField read GetRowPos write SetRowPos;
    property Field19a: IJanuaField read GetField19a write SetField19a;
    property Field20a: IJanuaField read GetField20a write SetField20a;
    property Field21: IJanuaField read GetField21 write SetField21;
    property Field22: IJanuaField read GetField22 write SetField22;
    property Field23: IJanuaField read GetField23 write SetField23;
    property Field24: IJanuaField read GetField24 write SetField24;
    property Field25: IJanuaField read GetField25 write SetField25;
    property Field26a: IJanuaField read GetField26a write SetField26a;
    property Field27: IJanuaField read GetField27 write SetField27;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;

  end;

  TCustomLogisticAWBRows = class(TJanuaRecordSet, IJanuaRecordSet, ILogisticAWBRows)
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetAwbId: IJanuaField;
    procedure SetAwbId(const Value: IJanuaField);
    function GetRowPos: IJanuaField;
    procedure SetRowPos(const Value: IJanuaField);
    function GetField19a: IJanuaField;
    procedure SetField19a(const Value: IJanuaField);
    function GetField20a: IJanuaField;
    procedure SetField20a(const Value: IJanuaField);
    function GetField21: IJanuaField;
    procedure SetField21(const Value: IJanuaField);
    function GetField22: IJanuaField;
    procedure SetField22(const Value: IJanuaField);
    function GetField23: IJanuaField;
    procedure SetField23(const Value: IJanuaField);
    function GetField24: IJanuaField;
    procedure SetField24(const Value: IJanuaField);
    function GetField25: IJanuaField;
    procedure SetField25(const Value: IJanuaField);
    function GetField26a: IJanuaField;
    procedure SetField26a(const Value: IJanuaField);
    function GetField27: IJanuaField;
    procedure SetField27(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetLogisticAWBRow: ILogisticAWBRow;
    procedure SetLogisticAWBRow(const Value: ILogisticAWBRow);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property AwbId: IJanuaField read GetAwbId write SetAwbId;
    property RowPos: IJanuaField read GetRowPos write SetRowPos;
    property Field19a: IJanuaField read GetField19a write SetField19a;
    property Field20a: IJanuaField read GetField20a write SetField20a;
    property Field21: IJanuaField read GetField21 write SetField21;
    property Field22: IJanuaField read GetField22 write SetField22;
    property Field23: IJanuaField read GetField23 write SetField23;
    property Field24: IJanuaField read GetField24 write SetField24;
    property Field25: IJanuaField read GetField25 write SetField25;
    property Field26a: IJanuaField read GetField26a write SetField26a;
    property Field27: IJanuaField read GetField27 write SetField27;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property LogisticAWBRow: ILogisticAWBRow read GetLogisticAWBRow write SetLogisticAWBRow;
  end;

  TLogisticAWBRowFactory = class
    class function CreateRecord(const aKey: string): ILogisticAWBRow; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ILogisticAWBRows; overload;
  end;

implementation

// ------------------------------------------ Impl TLogisticAWBRow -------------------------------

{ TCustomLogisticAWBRow }

constructor TCustomLogisticAWBRow.Create;
begin
  inherited;
  FPrefix := 'lwbr';
  FId := AddCreateField(TJanuaFieldType.jptSmallint, 'id', 'id');
  FAwbId := AddCreateField(TJanuaFieldType.jptSmallint, 'awb_id', 'awb_id');
  FRowPos := AddCreateField(TJanuaFieldType.jptSmallint, 'row_pos', 'row_pos');
  FField19a := AddCreateField(TJanuaFieldType.jptInteger, 'field19a', 'field19a');
  FField20a := AddCreateField(TJanuaFieldType.jptFloat, 'field20a', 'field20a');
  // Campo non Gestitofield21 Type= ftWideMemo
  FField22 := AddCreateField(TJanuaFieldType.jptString, 'field22', 'field22');
  FField23 := AddCreateField(TJanuaFieldType.jptString, 'field23', 'field23');
  FField24 := AddCreateField(TJanuaFieldType.jptCurrency, 'field24', 'field24');
  FField25 := AddCreateField(TJanuaFieldType.jptCurrency, 'field25', 'field25');
  FField26a := AddCreateField(TJanuaFieldType.jptCurrency, 'field26a', 'field26a');
  FField27 := AddCreateField(TJanuaFieldType.jptString, 'field27', 'field27');
  // Campo non Gestitojguid Type= ftGuid
  FDeleted := AddCreateField(TJanuaFieldType.jptBoolean, 'deleted', 'deleted');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
end;

function TCustomLogisticAWBRow.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomLogisticAWBRow.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomLogisticAWBRow.GetAwbId: IJanuaField;
begin
  Result := FAwbId;
end;

procedure TCustomLogisticAWBRow.SetAwbId(const Value: IJanuaField);
begin
  FAwbId := Value;
end;

function TCustomLogisticAWBRow.GetRowPos: IJanuaField;
begin
  Result := FRowPos;
end;

procedure TCustomLogisticAWBRow.SetRowPos(const Value: IJanuaField);
begin
  FRowPos := Value;
end;

function TCustomLogisticAWBRow.GetField19a: IJanuaField;
begin
  Result := FField19a;
end;

procedure TCustomLogisticAWBRow.SetField19a(const Value: IJanuaField);
begin
  FField19a := Value;
end;

function TCustomLogisticAWBRow.GetField20a: IJanuaField;
begin
  Result := FField20a;
end;

procedure TCustomLogisticAWBRow.SetField20a(const Value: IJanuaField);
begin
  FField20a := Value;
end;

function TCustomLogisticAWBRow.GetField21: IJanuaField;
begin
  Result := FField21;
end;

procedure TCustomLogisticAWBRow.SetField21(const Value: IJanuaField);
begin
  FField21 := Value;
end;

function TCustomLogisticAWBRow.GetField22: IJanuaField;
begin
  Result := FField22;
end;

procedure TCustomLogisticAWBRow.SetField22(const Value: IJanuaField);
begin
  FField22 := Value;
end;

function TCustomLogisticAWBRow.GetField23: IJanuaField;
begin
  Result := FField23;
end;

procedure TCustomLogisticAWBRow.SetField23(const Value: IJanuaField);
begin
  FField23 := Value;
end;

function TCustomLogisticAWBRow.GetField24: IJanuaField;
begin
  Result := FField24;
end;

procedure TCustomLogisticAWBRow.SetField24(const Value: IJanuaField);
begin
  FField24 := Value;
end;

function TCustomLogisticAWBRow.GetField25: IJanuaField;
begin
  Result := FField25;
end;

procedure TCustomLogisticAWBRow.SetField25(const Value: IJanuaField);
begin
  FField25 := Value;
end;

function TCustomLogisticAWBRow.GetField26a: IJanuaField;
begin
  Result := FField26a;
end;

procedure TCustomLogisticAWBRow.SetField26a(const Value: IJanuaField);
begin
  FField26a := Value;
end;

function TCustomLogisticAWBRow.GetField27: IJanuaField;
begin
  Result := FField27;
end;

procedure TCustomLogisticAWBRow.SetField27(const Value: IJanuaField);
begin
  FField27 := Value;
end;

function TCustomLogisticAWBRow.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomLogisticAWBRow.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomLogisticAWBRow.GetDeleted: IJanuaField;
begin
  Result := FDeleted;
end;

procedure TCustomLogisticAWBRow.SetDeleted(const Value: IJanuaField);
begin
  FDeleted := Value;
end;

function TCustomLogisticAWBRow.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomLogisticAWBRow.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

{ TCustomLogisticAWBRows }
constructor TCustomLogisticAWBRows.Create;
begin
  inherited;
  self.FRecord := TLogisticAWBRowFactory.CreateRecord('LogisticAWBRow');
end;

function TCustomLogisticAWBRows.GetId: IJanuaField;
begin
  Result := self.LogisticAWBRow.Id;
end;

procedure TCustomLogisticAWBRows.SetId(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Id := Value;
end;

function TCustomLogisticAWBRows.GetAwbId: IJanuaField;
begin
  Result := self.LogisticAWBRow.AwbId;
end;

procedure TCustomLogisticAWBRows.SetAwbId(const Value: IJanuaField);
begin
  self.LogisticAWBRow.AwbId := Value;
end;

function TCustomLogisticAWBRows.GetRowPos: IJanuaField;
begin
  Result := self.LogisticAWBRow.RowPos;
end;

procedure TCustomLogisticAWBRows.SetRowPos(const Value: IJanuaField);
begin
  self.LogisticAWBRow.RowPos := Value;
end;

function TCustomLogisticAWBRows.GetField19a: IJanuaField;
begin
  Result := self.LogisticAWBRow.Field19a;
end;

procedure TCustomLogisticAWBRows.SetField19a(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Field19a := Value;
end;

function TCustomLogisticAWBRows.GetField20a: IJanuaField;
begin
  Result := self.LogisticAWBRow.Field20a;
end;

procedure TCustomLogisticAWBRows.SetField20a(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Field20a := Value;
end;

function TCustomLogisticAWBRows.GetField21: IJanuaField;
begin
  Result := self.LogisticAWBRow.Field21;
end;

procedure TCustomLogisticAWBRows.SetField21(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Field21 := Value;
end;

function TCustomLogisticAWBRows.GetField22: IJanuaField;
begin
  Result := self.LogisticAWBRow.Field22;
end;

procedure TCustomLogisticAWBRows.SetField22(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Field22 := Value;
end;

function TCustomLogisticAWBRows.GetField23: IJanuaField;
begin
  Result := self.LogisticAWBRow.Field23;
end;

procedure TCustomLogisticAWBRows.SetField23(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Field23 := Value;
end;

function TCustomLogisticAWBRows.GetField24: IJanuaField;
begin
  Result := self.LogisticAWBRow.Field24;
end;

procedure TCustomLogisticAWBRows.SetField24(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Field24 := Value;
end;

function TCustomLogisticAWBRows.GetField25: IJanuaField;
begin
  Result := self.LogisticAWBRow.Field25;
end;

procedure TCustomLogisticAWBRows.SetField25(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Field25 := Value;
end;

function TCustomLogisticAWBRows.GetField26a: IJanuaField;
begin
  Result := self.LogisticAWBRow.Field26a;
end;

procedure TCustomLogisticAWBRows.SetField26a(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Field26a := Value;
end;

function TCustomLogisticAWBRows.GetField27: IJanuaField;
begin
  Result := self.LogisticAWBRow.Field27;
end;

procedure TCustomLogisticAWBRows.SetField27(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Field27 := Value;
end;

function TCustomLogisticAWBRows.GetJguid: IJanuaField;
begin
  Result := self.LogisticAWBRow.Jguid;
end;

procedure TCustomLogisticAWBRows.SetJguid(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Jguid := Value;
end;

function TCustomLogisticAWBRows.GetDeleted: IJanuaField;
begin
  Result := self.LogisticAWBRow.Deleted;
end;

procedure TCustomLogisticAWBRows.SetDeleted(const Value: IJanuaField);
begin
  self.LogisticAWBRow.Deleted := Value;
end;

function TCustomLogisticAWBRows.GetDbSchemaId: IJanuaField;
begin
  Result := self.LogisticAWBRow.DbSchemaId;
end;

procedure TCustomLogisticAWBRows.SetDbSchemaId(const Value: IJanuaField);
begin
  self.LogisticAWBRow.DbSchemaId := Value;
end;

function TCustomLogisticAWBRows.GetLogisticAWBRow: ILogisticAWBRow;
begin
  Result := self.FRecord as ILogisticAWBRow;
end;

procedure TCustomLogisticAWBRows.SetLogisticAWBRow(const Value: ILogisticAWBRow);
begin
  self.FRecord := Value;
end;

{ TLogisticAWBRowFactory }

class function TLogisticAWBRowFactory.CreateRecord(const aKey: string): ILogisticAWBRow;
begin
  Result := TCustomLogisticAWBRow.Create;
end;

class function TLogisticAWBRowFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ILogisticAWBRows;
begin
  Result := TCustomLogisticAWBRows.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
