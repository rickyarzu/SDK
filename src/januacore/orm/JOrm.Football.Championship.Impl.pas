unit JOrm.Football.Championship.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.Championship.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TChampionship = class(TJanuaRecord, IChampionship)
  private
    FSeasonId: IJanuaField;
    FSeasonIdIndex: Integer;
    FLeagueId: IJanuaField;
    FLeagueIdIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
    FPromoted: IJanuaField;
    FPromotedIndex: Integer;
    FPlayoff: IJanuaField;
    FPlayoffIndex: Integer;
    FRelegation: IJanuaField;
    FRelegationIndex: Integer;
    FChampions: IJanuaField;
    FChampionsIndex: Integer;
    FPlayout: IJanuaField;
    FPlayoutIndex: Integer;
    FTeams: IJanuaField;
    FTeamsIndex: Integer;
  private
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetPromoted: IJanuaField;
    procedure SetPromoted(const Value: IJanuaField);
    function GetPlayoff: IJanuaField;
    procedure SetPlayoff(const Value: IJanuaField);
    function GetRelegation: IJanuaField;
    procedure SetRelegation(const Value: IJanuaField);
    function GetChampions: IJanuaField;
    procedure SetChampions(const Value: IJanuaField);
    function GetPlayout: IJanuaField;
    procedure SetPlayout(const Value: IJanuaField);
    function GetTeams: IJanuaField;
    procedure SetTeams(const Value: IJanuaField);
  public
    constructor Create; override;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Promoted: IJanuaField read GetPromoted write SetPromoted;
    property Playoff: IJanuaField read GetPlayoff write SetPlayoff;
    property Relegation: IJanuaField read GetRelegation write SetRelegation;
    property Champions: IJanuaField read GetChampions write SetChampions;
    property Playout: IJanuaField read GetPlayout write SetPlayout;
    property Teams: IJanuaField read GetTeams write SetTeams;

  end;

  TChampionships = class(TJanuaRecordSet, IJanuaRecordSet, IChampionships)
  private
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetPromoted: IJanuaField;
    procedure SetPromoted(const Value: IJanuaField);
    function GetPlayoff: IJanuaField;
    procedure SetPlayoff(const Value: IJanuaField);
    function GetRelegation: IJanuaField;
    procedure SetRelegation(const Value: IJanuaField);
    function GetChampions: IJanuaField;
    procedure SetChampions(const Value: IJanuaField);
    function GetPlayout: IJanuaField;
    procedure SetPlayout(const Value: IJanuaField);
    function GetTeams: IJanuaField;
    procedure SetTeams(const Value: IJanuaField);
    function GetChampionship: IChampionship;
    procedure SetChampionship(const Value: IChampionship);
  public
    constructor Create; override;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Promoted: IJanuaField read GetPromoted write SetPromoted;
    property Playoff: IJanuaField read GetPlayoff write SetPlayoff;
    property Relegation: IJanuaField read GetRelegation write SetRelegation;
    property Champions: IJanuaField read GetChampions write SetChampions;
    property Playout: IJanuaField read GetPlayout write SetPlayout;
    property Teams: IJanuaField read GetTeams write SetTeams;
    property Championship: IChampionship read GetChampionship write SetChampionship;
  end;

  TChampionshipFactory = class
    class function CreateRecord(const aKey: string): IChampionship; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IChampionships; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TChampionship -------------------------------

{ TChampionship }

constructor TChampionship.Create;
begin
  inherited;
  self.FPrefix := 'fchm';
  SetEntity(TJanuaEntity.FtChampionships);
  FSeasonId := TJanuaOrmFactory.CreateSmallintField('season_id', 'season_id');
  FSeasonIdIndex := AddField(FSeasonId);
  FLeagueId := TJanuaOrmFactory.CreateSmallintField('league_id', 'league_id');
  FLeagueIdIndex := AddField(FLeagueId);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
  FPromoted := TJanuaOrmFactory.CreateSmallintField('promoted', 'promoted');
  FPromotedIndex := AddField(FPromoted);
  FPlayoff := TJanuaOrmFactory.CreateSmallintField('playoff', 'playoff');
  FPlayoffIndex := AddField(FPlayoff);
  FRelegation := TJanuaOrmFactory.CreateSmallintField('relegation', 'relegation');
  FRelegationIndex := AddField(FRelegation);
  FChampions := TJanuaOrmFactory.CreateSmallintField('champions', 'champions');
  FChampionsIndex := AddField(FChampions);
  FPlayout := TJanuaOrmFactory.CreateSmallintField('playout', 'playout');
  FPlayoutIndex := AddField(FPlayout);
  FTeams := TJanuaOrmFactory.CreateSmallintField('teams', 'teams');
  FTeamsIndex := AddField(FTeams);
end;

function TChampionship.GetSeasonId: IJanuaField;
begin
  Result := FSeasonId;
end;

procedure TChampionship.SetSeasonId(const Value: IJanuaField);
begin
  FSeasonId := Value;
end;

function TChampionship.GetLeagueId: IJanuaField;
begin
  Result := FLeagueId;
end;

procedure TChampionship.SetLeagueId(const Value: IJanuaField);
begin
  FLeagueId := Value;
end;

function TChampionship.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TChampionship.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TChampionship.GetPromoted: IJanuaField;
begin
  Result := FPromoted;
end;

procedure TChampionship.SetPromoted(const Value: IJanuaField);
begin
  FPromoted := Value;
end;

function TChampionship.GetPlayoff: IJanuaField;
begin
  Result := FPlayoff;
end;

procedure TChampionship.SetPlayoff(const Value: IJanuaField);
begin
  FPlayoff := Value;
end;

function TChampionship.GetRelegation: IJanuaField;
begin
  Result := FRelegation;
end;

procedure TChampionship.SetRelegation(const Value: IJanuaField);
begin
  FRelegation := Value;
end;

function TChampionship.GetChampions: IJanuaField;
begin
  Result := FChampions;
end;

procedure TChampionship.SetChampions(const Value: IJanuaField);
begin
  FChampions := Value;
end;

function TChampionship.GetPlayout: IJanuaField;
begin
  Result := FPlayout;
end;

procedure TChampionship.SetPlayout(const Value: IJanuaField);
begin
  FPlayout := Value;
end;

function TChampionship.GetTeams: IJanuaField;
begin
  Result := FTeams;
end;

procedure TChampionship.SetTeams(const Value: IJanuaField);
begin
  FTeams := Value;
end;

{ TChampionships }
constructor TChampionships.Create;
begin
  inherited;
  self.FRecord := TChampionshipFactory.CreateRecord('Championship');
end;

function TChampionships.GetSeasonId: IJanuaField;
begin
  Result := self.Championship.SeasonId;
end;

procedure TChampionships.SetSeasonId(const Value: IJanuaField);
begin
  self.Championship.SeasonId := Value;
end;

function TChampionships.GetLeagueId: IJanuaField;
begin
  Result := self.Championship.LeagueId;
end;

procedure TChampionships.SetLeagueId(const Value: IJanuaField);
begin
  self.Championship.LeagueId := Value;
end;

function TChampionships.GetDbSchemaId: IJanuaField;
begin
  Result := self.Championship.DbSchemaId;
end;

procedure TChampionships.SetDbSchemaId(const Value: IJanuaField);
begin
  self.Championship.DbSchemaId := Value;
end;

function TChampionships.GetPromoted: IJanuaField;
begin
  Result := self.Championship.Promoted;
end;

procedure TChampionships.SetPromoted(const Value: IJanuaField);
begin
  self.Championship.Promoted := Value;
end;

function TChampionships.GetPlayoff: IJanuaField;
begin
  Result := self.Championship.Playoff;
end;

procedure TChampionships.SetPlayoff(const Value: IJanuaField);
begin
  self.Championship.Playoff := Value;
end;

function TChampionships.GetRelegation: IJanuaField;
begin
  Result := self.Championship.Relegation;
end;

procedure TChampionships.SetRelegation(const Value: IJanuaField);
begin
  self.Championship.Relegation := Value;
end;

function TChampionships.GetChampions: IJanuaField;
begin
  Result := self.Championship.Champions;
end;

procedure TChampionships.SetChampions(const Value: IJanuaField);
begin
  self.Championship.Champions := Value;
end;

function TChampionships.GetPlayout: IJanuaField;
begin
  Result := self.Championship.Playout;
end;

procedure TChampionships.SetPlayout(const Value: IJanuaField);
begin
  self.Championship.Playout := Value;
end;

function TChampionships.GetTeams: IJanuaField;
begin
  Result := self.Championship.Teams;
end;

procedure TChampionships.SetTeams(const Value: IJanuaField);
begin
  self.Championship.Teams := Value;
end;

function TChampionships.GetChampionship: IChampionship;
begin
  Result := self.FRecord as IChampionship;
end;

procedure TChampionships.SetChampionship(const Value: IChampionship);
begin
  self.FRecord := Value;
end;

{ TChampionshipFactory }

class function TChampionshipFactory.CreateRecord(const aKey: string): IChampionship;
begin
  Result := TChampionship.Create;
end;

class function TChampionshipFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IChampionships;
begin
  Result := TChampionships.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
