unit JOrm.Football.Season.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.Season.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TSeason = class(TJanuaRecord, ISeason)
  private
    FSeasonId: IJanuaField;
    FSeasonIdIndex: Integer;
    FSeasonDes: IJanuaField;
    FSeasonDesIndex: Integer;
    FSeasonCode: IJanuaField;
    FSeasonCodeIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
    FOrderNumber: IJanuaField;
    FOrderNumberIndex: Integer;
    FRemoteId: IJanuaField;
    FRemoteIdIndex: Integer;
  private
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetSeasonDes: IJanuaField;
    procedure SetSeasonDes(const Value: IJanuaField);
    function GetSeasonCode: IJanuaField;
    procedure SetSeasonCode(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetOrderNumber: IJanuaField;
    procedure SetOrderNumber(const Value: IJanuaField);
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
  public
    constructor Create; override;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property SeasonDes: IJanuaField read GetSeasonDes write SetSeasonDes;
    property SeasonCode: IJanuaField read GetSeasonCode write SetSeasonCode;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property OrderNumber: IJanuaField read GetOrderNumber write SetOrderNumber;
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;

  end;

  TSeasons = class(TJanuaRecordSet, IJanuaRecordSet, ISeasons)
  private
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetSeasonDes: IJanuaField;
    procedure SetSeasonDes(const Value: IJanuaField);
    function GetSeasonCode: IJanuaField;
    procedure SetSeasonCode(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetOrderNumber: IJanuaField;
    procedure SetOrderNumber(const Value: IJanuaField);
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    function GetSeason: ISeason;
    procedure SetSeason(const Value: ISeason);
  public
    constructor Create; override;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property SeasonDes: IJanuaField read GetSeasonDes write SetSeasonDes;
    property SeasonCode: IJanuaField read GetSeasonCode write SetSeasonCode;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property OrderNumber: IJanuaField read GetOrderNumber write SetOrderNumber;
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    property Season: ISeason read GetSeason write SetSeason;
  end;

  TSeasonFactory = class
    class function CreateRecord(const aKey: string): ISeason; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ISeasons; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TSeason -------------------------------

{ TSeason }

constructor TSeason.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.FtSeasons);
  self.FPrefix := 'fssn';
  FSeasonId := TJanuaOrmFactory.CreateIntegerField('season_id', 'season_id');
  FSeasonIdIndex := AddField(FSeasonId);
  FSeasonDes := TJanuaOrmFactory.CreateStringField('season_des', 'season_des');
  FSeasonDesIndex := AddField(FSeasonDes);
  FSeasonCode := TJanuaOrmFactory.CreateStringField('season_code', 'season_code');
  FSeasonCodeIndex := AddField(FSeasonCode);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
  FOrderNumber := TJanuaOrmFactory.CreateSmallintField('order_number', 'order_number');
  FOrderNumberIndex := AddField(FOrderNumber);
  FRemoteId := TJanuaOrmFactory.CreateSmallintField('remote_id', 'remote_id');
  FRemoteIdIndex := AddField(FRemoteId);
end;

function TSeason.GetSeasonId: IJanuaField;
begin
  Result := FSeasonId;
end;

procedure TSeason.SetSeasonId(const Value: IJanuaField);
begin
  FSeasonId := Value;
end;

function TSeason.GetSeasonDes: IJanuaField;
begin
  Result := FSeasonDes;
end;

procedure TSeason.SetSeasonDes(const Value: IJanuaField);
begin
  FSeasonDes := Value;
end;

function TSeason.GetSeasonCode: IJanuaField;
begin
  Result := FSeasonCode;
end;

procedure TSeason.SetSeasonCode(const Value: IJanuaField);
begin
  FSeasonCode := Value;
end;

function TSeason.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TSeason.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TSeason.GetOrderNumber: IJanuaField;
begin
  Result := FOrderNumber;
end;

procedure TSeason.SetOrderNumber(const Value: IJanuaField);
begin
  FOrderNumber := Value;
end;

function TSeason.GetRemoteId: IJanuaField;
begin
  Result := FRemoteId;
end;

procedure TSeason.SetRemoteId(const Value: IJanuaField);
begin
  FRemoteId := Value;
end;

{ TSeasons }
constructor TSeasons.Create;
begin
  inherited;
  self.FRecord := TSeasonFactory.CreateRecord('Season');
end;

function TSeasons.GetSeasonId: IJanuaField;
begin
  Result := self.Season.SeasonId;
end;

procedure TSeasons.SetSeasonId(const Value: IJanuaField);
begin
  self.Season.SeasonId := Value;
end;

function TSeasons.GetSeasonDes: IJanuaField;
begin
  Result := self.Season.SeasonDes;
end;

procedure TSeasons.SetSeasonDes(const Value: IJanuaField);
begin
  self.Season.SeasonDes := Value;
end;

function TSeasons.GetSeasonCode: IJanuaField;
begin
  Result := self.Season.SeasonCode;
end;

procedure TSeasons.SetSeasonCode(const Value: IJanuaField);
begin
  self.Season.SeasonCode := Value;
end;

function TSeasons.GetDbSchemaId: IJanuaField;
begin
  Result := self.Season.DbSchemaId;
end;

procedure TSeasons.SetDbSchemaId(const Value: IJanuaField);
begin
  self.Season.DbSchemaId := Value;
end;

function TSeasons.GetOrderNumber: IJanuaField;
begin
  Result := self.Season.OrderNumber;
end;

procedure TSeasons.SetOrderNumber(const Value: IJanuaField);
begin
  self.Season.OrderNumber := Value;
end;

function TSeasons.GetRemoteId: IJanuaField;
begin
  Result := self.Season.RemoteId;
end;

procedure TSeasons.SetRemoteId(const Value: IJanuaField);
begin
  self.Season.RemoteId := Value;
end;

function TSeasons.GetSeason: ISeason;
begin
  Result := self.FRecord as ISeason;
end;

procedure TSeasons.SetSeason(const Value: ISeason);
begin
  self.FRecord := Value;
end;

{ TSeasonFactory }

class function TSeasonFactory.CreateRecord(const aKey: string): ISeason;
begin
  Result := TSeason.Create;
end;

class function TSeasonFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ISeasons;
begin
  Result := TSeasons.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
