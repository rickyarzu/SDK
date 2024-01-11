unit JOrm.Football.FtClubSeasons.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl,JOrm.Football.FtClubSeasons.Intf;

//------------------------------------------ Impl object interface ----------------------------------

type
  TFtClubSeasons = class(TJanuaRecord, IFtClubSeasons)
  private
    FClubId: IJanuaField;
    FClubIdIndex : Integer;
    FSeasonId: IJanuaField;
    FSeasonIdIndex : Integer;
    FClubName: IJanuaField;
    FClubNameIndex : Integer;
  private
    function GetClubId: IJanuaField;
    procedure SetClubId(const Value: IJanuaField);
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetClubName: IJanuaField;
    procedure SetClubName(const Value: IJanuaField);
  public
    constructor Create; override;
    property ClubId: IJanuaField read GetClubId write SetClubId;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property ClubName: IJanuaField read GetClubName write SetClubName;

  end;

  TFtClubSeasonss = class(TJanuaRecordSet, IJanuaRecordSet, IFtClubSeasonss)
  private
    function GetClubId: IJanuaField;
    procedure SetClubId(const Value: IJanuaField);
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetClubName: IJanuaField;
    procedure SetClubName(const Value: IJanuaField);
    function GetFtClubSeasons: IFtClubSeasons;
    procedure SetFtClubSeasons(const Value: IFtClubSeasons);
  public
    constructor Create; override;
    property ClubId: IJanuaField read GetClubId write SetClubId;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property ClubName: IJanuaField read GetClubName write SetClubName;
    property FtClubSeasons:IFtClubSeasons read GetFtClubSeasons write SetFtClubSeasons;
  end;

  TFtClubSeasonsFactory = class
    class function CreateRecord(const aKey: string): IFtClubSeasons; overload;
    class function CreateRecordset((const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IFtClubSeasonss; overload;
  end;

implementation

//------------------------------------------ Impl TFtClubSeasons -------------------------------

{TFtClubSeasons}

  constructor TFtClubSeasons.Create;
  begin
    inherited;
    self.FPrefix := 'fcls';
    FClubId:= TJanuaOrmFactory.CreateIntegerField('club_id', 'ClubId');
    FClubIdIndex := AddField(FClubId);
    FSeasonId:= TJanuaOrmFactory.CreateIntegerField('season_id', 'SeasonId');
    FSeasonIdIndex := AddField(FSeasonId);
    FClubName:= TJanuaOrmFactory.CreateStringField('club_name', 'ClubName');
    FClubNameIndex := AddField(FClubName);
  end;

  function TFtClubSeasons.GetClubId: IJanuaField;
  begin
    Result := FClubId;
  end;

  procedure TFtClubSeasons.SetClubId(const Value: IJanuaField);
  begin
    FClubId := Value;
  end;

  function TFtClubSeasons.GetSeasonId: IJanuaField;
  begin
    Result := FSeasonId;
  end;

  procedure TFtClubSeasons.SetSeasonId(const Value: IJanuaField);
  begin
    FSeasonId := Value;
  end;

  function TFtClubSeasons.GetClubName: IJanuaField;
  begin
    Result := FClubName;
  end;

  procedure TFtClubSeasons.SetClubName(const Value: IJanuaField);
  begin
    FClubName := Value;
  end;

  { TFtClubSeasonss }
  constructor TFtClubSeasonss.Create;
  begin
    inherited;
    self.FRecord := Factory.CreateRecord('FtClubSeasons');
  end;

  function TFtClubSeasonss.GetClubId: IJanuaField;
  begin
    Result := self.FtClubSeasons.ClubId;
  end;

  procedure TFtClubSeasonss.SetClubId(const Value: IJanuaField);
  begin
    self.FtClubSeasons.ClubId := Value;
  end;

  function TFtClubSeasonss.GetSeasonId: IJanuaField;
  begin
    Result := self.FtClubSeasons.SeasonId;
  end;

  procedure TFtClubSeasonss.SetSeasonId(const Value: IJanuaField);
  begin
    self.FtClubSeasons.SeasonId := Value;
  end;

  function TFtClubSeasonss.GetClubName: IJanuaField;
  begin
    Result := self.FtClubSeasons.ClubName;
  end;

  procedure TFtClubSeasonss.SetClubName(const Value: IJanuaField);
  begin
    self.FtClubSeasons.ClubName := Value;
  end;

  function TFtClubSeasonss.GetFtClubSeasons: IFtClubSeasons;
  begin
    Result := self.FRecord as IFtClubSeasons;
  end;

  procedure TFtClubSeasonss.SetFtClubSeasons(const Value: IFtClubSeasons);
  begin
    self.FRecord := Value;
  end;

  { TFtClubSeasonsFactory }

  class function TFtClubSeasonsFactory.CreateRecord(const aKey: string): IFtClubSeasons;
  begin
    Result := TFtClubSeasons.Create;
  end;

  class function TFtClubSeasonsFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage):FtClubSeasonss;
  begin
    Result := TFtClubSeasonss.Create(aName, aTableName);
  end;

end.