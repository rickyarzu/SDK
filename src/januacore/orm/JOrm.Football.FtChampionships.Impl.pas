unit JOrm.Football.FtChampionships.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.FtChampionships.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TFtChampionship = class(TJanuaRecord, IFtChampionship)
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

  TFtChampionships = class(TJanuaRecordSet, IJanuaRecordSet, IFtChampionships)
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
    function GetFtChampionships: IFtChampionship;
    procedure SetFtChampionships(const Value: IFtChampionship);
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
    property FtChampionship: IFtChampionship read GetFtChampionships write SetFtChampionships;
  end;

  TFtChampionshipsFactory = class
    class function CreateRecord(const aKey: string): IFtChampionship; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IFtChampionships; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TFtChampionships -------------------------------

{ TFtChampionships }

constructor TFtChampionship.Create;
begin
  inherited;
  self.FPrefix := 'fchm';
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

function TFtChampionship.GetSeasonId: IJanuaField;
begin
  Result := FSeasonId;
end;

procedure TFtChampionship.SetSeasonId(const Value: IJanuaField);
begin
  FSeasonId := Value;
end;

function TFtChampionship.GetLeagueId: IJanuaField;
begin
  Result := FLeagueId;
end;

procedure TFtChampionship.SetLeagueId(const Value: IJanuaField);
begin
  FLeagueId := Value;
end;

function TFtChampionship.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TFtChampionship.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TFtChampionship.GetPromoted: IJanuaField;
begin
  Result := FPromoted;
end;

procedure TFtChampionship.SetPromoted(const Value: IJanuaField);
begin
  FPromoted := Value;
end;

function TFtChampionship.GetPlayoff: IJanuaField;
begin
  Result := FPlayoff;
end;

procedure TFtChampionship.SetPlayoff(const Value: IJanuaField);
begin
  FPlayoff := Value;
end;

function TFtChampionship.GetRelegation: IJanuaField;
begin
  Result := FRelegation;
end;

procedure TFtChampionship.SetRelegation(const Value: IJanuaField);
begin
  FRelegation := Value;
end;

function TFtChampionship.GetChampions: IJanuaField;
begin
  Result := FChampions;
end;

procedure TFtChampionship.SetChampions(const Value: IJanuaField);
begin
  FChampions := Value;
end;

function TFtChampionship.GetPlayout: IJanuaField;
begin
  Result := FPlayout;
end;

procedure TFtChampionship.SetPlayout(const Value: IJanuaField);
begin
  FPlayout := Value;
end;

function TFtChampionship.GetTeams: IJanuaField;
begin
  Result := FTeams;
end;

procedure TFtChampionship.SetTeams(const Value: IJanuaField);
begin
  FTeams := Value;
end;

{ TFtChampionshipss }
constructor TFtChampionships.Create;
begin
  inherited;
  self.FRecord := TFtChampionshipsFactory.CreateRecord('FtChampionships');
end;

function TFtChampionships.GetSeasonId: IJanuaField;
begin
  Result := self.FtChampionship.SeasonId;
end;

procedure TFtChampionships.SetSeasonId(const Value: IJanuaField);
begin
  self.FtChampionship.SeasonId := Value;
end;

function TFtChampionships.GetLeagueId: IJanuaField;
begin
  Result := self.FtChampionship.LeagueId;
end;

procedure TFtChampionships.SetLeagueId(const Value: IJanuaField);
begin
  self.FtChampionship.LeagueId := Value;
end;

function TFtChampionships.GetDbSchemaId: IJanuaField;
begin
  Result := self.FtChampionship.DbSchemaId;
end;

procedure TFtChampionships.SetDbSchemaId(const Value: IJanuaField);
begin
  self.FtChampionship.DbSchemaId := Value;
end;

function TFtChampionships.GetPromoted: IJanuaField;
begin
  Result := self.FtChampionship.Promoted;
end;

procedure TFtChampionships.SetPromoted(const Value: IJanuaField);
begin
  self.FtChampionship.Promoted := Value;
end;

function TFtChampionships.GetPlayoff: IJanuaField;
begin
  Result := self.FtChampionship.Playoff;
end;

procedure TFtChampionships.SetPlayoff(const Value: IJanuaField);
begin
  self.FtChampionship.Playoff := Value;
end;

function TFtChampionships.GetRelegation: IJanuaField;
begin
  Result := self.FtChampionship.Relegation;
end;

procedure TFtChampionships.SetRelegation(const Value: IJanuaField);
begin
  self.FtChampionship.Relegation := Value;
end;

function TFtChampionships.GetChampions: IJanuaField;
begin
  Result := self.FtChampionship.Champions;
end;

procedure TFtChampionships.SetChampions(const Value: IJanuaField);
begin
  self.FtChampionship.Champions := Value;
end;

function TFtChampionships.GetPlayout: IJanuaField;
begin
  Result := self.FtChampionship.Playout;
end;

procedure TFtChampionships.SetPlayout(const Value: IJanuaField);
begin
  self.FtChampionship.Playout := Value;
end;

function TFtChampionships.GetTeams: IJanuaField;
begin
  Result := self.FtChampionship.Teams;
end;

procedure TFtChampionships.SetTeams(const Value: IJanuaField);
begin
  self.FtChampionship.Teams := Value;
end;

function TFtChampionships.GetFtChampionships: IFtChampionship;
begin
  Result := self.FRecord as IFtChampionship;
end;

procedure TFtChampionships.SetFtChampionships(const Value: IFtChampionship);
begin
  self.FRecord := Value;
end;

{ TFtChampionshipsFactory }

class function TFtChampionshipsFactory.CreateRecord(const aKey: string): IFtChampionship;
begin
  Result := TFtChampionship.Create;
end;

class function TFtChampionshipsFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IFtChampionships;
begin
  Result := TFtChampionships.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
