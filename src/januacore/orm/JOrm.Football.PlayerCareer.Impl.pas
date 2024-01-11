unit JOrm.Football.PlayerCareer.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.PlayerCareer.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TPlayerCareer = class(TJanuaRecord, IPlayerCareer)
  private
    FCareerId: IJanuaField;
    FCareerIdIndex: Integer;
    FSeasonId: IJanuaField;
    FSeasonIdIndex: Integer;
    FSeasonCode: IJanuaField;
    FSeasonCodeIndex: Integer;
    FTeamId: IJanuaField;
    FTeamIdIndex: Integer;
    FLeagueCode: IJanuaField;
    FLeagueCodeIndex: Integer;
    FLeagueId: IJanuaField;
    FLeagueIdIndex: Integer;
    FMatches: IJanuaField;
    FMatchesIndex: Integer;
    FGoals: IJanuaField;
    FGoalsIndex: Integer;
    FPlayerId: IJanuaField;
    FPlayerIdIndex: Integer;
    FNotes: IJanuaField;
    FNotesIndex: Integer;
    FVotes: IJanuaField;
    FVotesIndex: Integer;
    FMinutes: IJanuaField;
    FMinutesIndex: Integer;
    FImageId: IJanuaField;
    FImageIdIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
    FOwngoal: IJanuaField;
    FOwngoalIndex: Integer;
    FLostgoal: IJanuaField;
    FLostgoalIndex: Integer;
    FInjuries: IJanuaField;
    FInjuriesIndex: Integer;
    FSentOff: IJanuaField;
    FSentOffIndex: Integer;
  private
    function GetCareerId: IJanuaField;
    procedure SetCareerId(const Value: IJanuaField);
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetSeasonCode: IJanuaField;
    procedure SetSeasonCode(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetLeagueCode: IJanuaField;
    procedure SetLeagueCode(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetMatches: IJanuaField;
    procedure SetMatches(const Value: IJanuaField);
    function GetGoals: IJanuaField;
    procedure SetGoals(const Value: IJanuaField);
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetVotes: IJanuaField;
    procedure SetVotes(const Value: IJanuaField);
    function GetMinutes: IJanuaField;
    procedure SetMinutes(const Value: IJanuaField);
    function GetImageId: IJanuaField;
    procedure SetImageId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetOwngoal: IJanuaField;
    procedure SetOwngoal(const Value: IJanuaField);
    function GetLostgoal: IJanuaField;
    procedure SetLostgoal(const Value: IJanuaField);
    function GetInjuries: IJanuaField;
    procedure SetInjuries(const Value: IJanuaField);
    function GetSentOff: IJanuaField;
    procedure SetSentOff(const Value: IJanuaField);
  public
    constructor Create; override;
    property CareerId: IJanuaField read GetCareerId write SetCareerId;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property SeasonCode: IJanuaField read GetSeasonCode write SetSeasonCode;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property LeagueCode: IJanuaField read GetLeagueCode write SetLeagueCode;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property Matches: IJanuaField read GetMatches write SetMatches;
    property Goals: IJanuaField read GetGoals write SetGoals;
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property Votes: IJanuaField read GetVotes write SetVotes;
    property Minutes: IJanuaField read GetMinutes write SetMinutes;
    property ImageId: IJanuaField read GetImageId write SetImageId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Owngoal: IJanuaField read GetOwngoal write SetOwngoal;
    property Lostgoal: IJanuaField read GetLostgoal write SetLostgoal;
    property Injuries: IJanuaField read GetInjuries write SetInjuries;
    property SentOff: IJanuaField read GetSentOff write SetSentOff;

  end;

  TPlayerCareers = class(TJanuaRecordSet, IJanuaRecordSet, IPlayerCareers)
  private
    function GetCareerId: IJanuaField;
    procedure SetCareerId(const Value: IJanuaField);
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetSeasonCode: IJanuaField;
    procedure SetSeasonCode(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetLeagueCode: IJanuaField;
    procedure SetLeagueCode(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetMatches: IJanuaField;
    procedure SetMatches(const Value: IJanuaField);
    function GetGoals: IJanuaField;
    procedure SetGoals(const Value: IJanuaField);
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetVotes: IJanuaField;
    procedure SetVotes(const Value: IJanuaField);
    function GetMinutes: IJanuaField;
    procedure SetMinutes(const Value: IJanuaField);
    function GetImageId: IJanuaField;
    procedure SetImageId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetOwngoal: IJanuaField;
    procedure SetOwngoal(const Value: IJanuaField);
    function GetLostgoal: IJanuaField;
    procedure SetLostgoal(const Value: IJanuaField);
    function GetInjuries: IJanuaField;
    procedure SetInjuries(const Value: IJanuaField);
    function GetSentOff: IJanuaField;
    procedure SetSentOff(const Value: IJanuaField);
    function GetPlayerCareer: IPlayerCareer;
    procedure SetPlayerCareer(const Value: IPlayerCareer);
  public
    constructor Create; override;
    property CareerId: IJanuaField read GetCareerId write SetCareerId;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property SeasonCode: IJanuaField read GetSeasonCode write SetSeasonCode;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property LeagueCode: IJanuaField read GetLeagueCode write SetLeagueCode;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property Matches: IJanuaField read GetMatches write SetMatches;
    property Goals: IJanuaField read GetGoals write SetGoals;
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property Votes: IJanuaField read GetVotes write SetVotes;
    property Minutes: IJanuaField read GetMinutes write SetMinutes;
    property ImageId: IJanuaField read GetImageId write SetImageId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Owngoal: IJanuaField read GetOwngoal write SetOwngoal;
    property Lostgoal: IJanuaField read GetLostgoal write SetLostgoal;
    property Injuries: IJanuaField read GetInjuries write SetInjuries;
    property SentOff: IJanuaField read GetSentOff write SetSentOff;
    property PlayerCareer: IPlayerCareer read GetPlayerCareer write SetPlayerCareer;
  end;

  TPlayerCareerFactory = class
    class function CreateRecord(const aKey: string): IPlayerCareer; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IPlayerCareers; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TPlayerCareer -------------------------------

{ TPlayerCareer }

constructor TPlayerCareer.Create;
begin
  inherited;
  self.FPrefix := 'fplc';
  SetEntity(TJanuaEntity.FtPlayerCareer);
  FCareerId := TJanuaOrmFactory.CreateIntegerField('career_id', 'career_id');
  FCareerIdIndex := AddField(FCareerId);
  FSeasonId := TJanuaOrmFactory.CreateSmallintField('season_id', 'season_id');
  FSeasonIdIndex := AddField(FSeasonId);
  FSeasonCode := TJanuaOrmFactory.CreateStringField('season_code', 'season_code');
  FSeasonCodeIndex := AddField(FSeasonCode);
  FTeamId := TJanuaOrmFactory.CreateIntegerField('team_id', 'team_id');
  FTeamIdIndex := AddField(FTeamId);
  FLeagueCode := TJanuaOrmFactory.CreateStringField('league_code', 'league_code');
  FLeagueCodeIndex := AddField(FLeagueCode);
  FLeagueId := TJanuaOrmFactory.CreateIntegerField('league_id', 'league_id');
  FLeagueIdIndex := AddField(FLeagueId);
  FMatches := TJanuaOrmFactory.CreateStringField('matches', 'matches');
  FMatchesIndex := AddField(FMatches);
  FGoals := TJanuaOrmFactory.CreateStringField('goals', 'goals');
  FGoalsIndex := AddField(FGoals);
  FPlayerId := TJanuaOrmFactory.CreateIntegerField('player_id', 'player_id');
  FPlayerIdIndex := AddField(FPlayerId);
  FNotes := TJanuaOrmFactory.CreateStringField('notes', 'notes');
  FNotesIndex := AddField(FNotes);
  FVotes := TJanuaOrmFactory.CreateDoubleField('votes', 'votes');
  FVotesIndex := AddField(FVotes);
  FMinutes := TJanuaOrmFactory.CreateIntegerField('minutes', 'minutes');
  FMinutesIndex := AddField(FMinutes);
  FImageId := TJanuaOrmFactory.CreateLargeIntField('image_id', 'image_id');
  FImageIdIndex := AddField(FImageId);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
  FOwngoal := TJanuaOrmFactory.CreateSmallintField('owngoal', 'owngoal');
  FOwngoalIndex := AddField(FOwngoal);
  FLostgoal := TJanuaOrmFactory.CreateSmallintField('lostgoal', 'lostgoal');
  FLostgoalIndex := AddField(FLostgoal);
  FInjuries := TJanuaOrmFactory.CreateSmallintField('injuries', 'injuries');
  FInjuriesIndex := AddField(FInjuries);
  FSentOff := TJanuaOrmFactory.CreateSmallintField('sent_off', 'sent_off');
  FSentOffIndex := AddField(FSentOff);
end;

function TPlayerCareer.GetCareerId: IJanuaField;
begin
  Result := FCareerId;
end;

procedure TPlayerCareer.SetCareerId(const Value: IJanuaField);
begin
  FCareerId := Value;
end;

function TPlayerCareer.GetSeasonId: IJanuaField;
begin
  Result := FSeasonId;
end;

procedure TPlayerCareer.SetSeasonId(const Value: IJanuaField);
begin
  FSeasonId := Value;
end;

function TPlayerCareer.GetSeasonCode: IJanuaField;
begin
  Result := FSeasonCode;
end;

procedure TPlayerCareer.SetSeasonCode(const Value: IJanuaField);
begin
  FSeasonCode := Value;
end;

function TPlayerCareer.GetTeamId: IJanuaField;
begin
  Result := FTeamId;
end;

procedure TPlayerCareer.SetTeamId(const Value: IJanuaField);
begin
  FTeamId := Value;
end;

function TPlayerCareer.GetLeagueCode: IJanuaField;
begin
  Result := FLeagueCode;
end;

procedure TPlayerCareer.SetLeagueCode(const Value: IJanuaField);
begin
  FLeagueCode := Value;
end;

function TPlayerCareer.GetLeagueId: IJanuaField;
begin
  Result := FLeagueId;
end;

procedure TPlayerCareer.SetLeagueId(const Value: IJanuaField);
begin
  FLeagueId := Value;
end;

function TPlayerCareer.GetMatches: IJanuaField;
begin
  Result := FMatches;
end;

procedure TPlayerCareer.SetMatches(const Value: IJanuaField);
begin
  FMatches := Value;
end;

function TPlayerCareer.GetGoals: IJanuaField;
begin
  Result := FGoals;
end;

procedure TPlayerCareer.SetGoals(const Value: IJanuaField);
begin
  FGoals := Value;
end;

function TPlayerCareer.GetPlayerId: IJanuaField;
begin
  Result := FPlayerId;
end;

procedure TPlayerCareer.SetPlayerId(const Value: IJanuaField);
begin
  FPlayerId := Value;
end;

function TPlayerCareer.GetNotes: IJanuaField;
begin
  Result := FNotes;
end;

procedure TPlayerCareer.SetNotes(const Value: IJanuaField);
begin
  FNotes := Value;
end;

function TPlayerCareer.GetVotes: IJanuaField;
begin
  Result := FVotes;
end;

procedure TPlayerCareer.SetVotes(const Value: IJanuaField);
begin
  FVotes := Value;
end;

function TPlayerCareer.GetMinutes: IJanuaField;
begin
  Result := FMinutes;
end;

procedure TPlayerCareer.SetMinutes(const Value: IJanuaField);
begin
  FMinutes := Value;
end;

function TPlayerCareer.GetImageId: IJanuaField;
begin
  Result := FImageId;
end;

procedure TPlayerCareer.SetImageId(const Value: IJanuaField);
begin
  FImageId := Value;
end;

function TPlayerCareer.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TPlayerCareer.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TPlayerCareer.GetOwngoal: IJanuaField;
begin
  Result := FOwngoal;
end;

procedure TPlayerCareer.SetOwngoal(const Value: IJanuaField);
begin
  FOwngoal := Value;
end;

function TPlayerCareer.GetLostgoal: IJanuaField;
begin
  Result := FLostgoal;
end;

procedure TPlayerCareer.SetLostgoal(const Value: IJanuaField);
begin
  FLostgoal := Value;
end;

function TPlayerCareer.GetInjuries: IJanuaField;
begin
  Result := FInjuries;
end;

procedure TPlayerCareer.SetInjuries(const Value: IJanuaField);
begin
  FInjuries := Value;
end;

function TPlayerCareer.GetSentOff: IJanuaField;
begin
  Result := FSentOff;
end;

procedure TPlayerCareer.SetSentOff(const Value: IJanuaField);
begin
  FSentOff := Value;
end;

{ TPlayerCareers }
constructor TPlayerCareers.Create;
begin
  inherited;
  self.FRecord := TPlayerCareerFactory.CreateRecord('PlayerCareer');
end;

function TPlayerCareers.GetCareerId: IJanuaField;
begin
  Result := self.PlayerCareer.CareerId;
end;

procedure TPlayerCareers.SetCareerId(const Value: IJanuaField);
begin
  self.PlayerCareer.CareerId := Value;
end;

function TPlayerCareers.GetSeasonId: IJanuaField;
begin
  Result := self.PlayerCareer.SeasonId;
end;

procedure TPlayerCareers.SetSeasonId(const Value: IJanuaField);
begin
  self.PlayerCareer.SeasonId := Value;
end;

function TPlayerCareers.GetSeasonCode: IJanuaField;
begin
  Result := self.PlayerCareer.SeasonCode;
end;

procedure TPlayerCareers.SetSeasonCode(const Value: IJanuaField);
begin
  self.PlayerCareer.SeasonCode := Value;
end;

function TPlayerCareers.GetTeamId: IJanuaField;
begin
  Result := self.PlayerCareer.TeamId;
end;

procedure TPlayerCareers.SetTeamId(const Value: IJanuaField);
begin
  self.PlayerCareer.TeamId := Value;
end;

function TPlayerCareers.GetLeagueCode: IJanuaField;
begin
  Result := self.PlayerCareer.LeagueCode;
end;

procedure TPlayerCareers.SetLeagueCode(const Value: IJanuaField);
begin
  self.PlayerCareer.LeagueCode := Value;
end;

function TPlayerCareers.GetLeagueId: IJanuaField;
begin
  Result := self.PlayerCareer.LeagueId;
end;

procedure TPlayerCareers.SetLeagueId(const Value: IJanuaField);
begin
  self.PlayerCareer.LeagueId := Value;
end;

function TPlayerCareers.GetMatches: IJanuaField;
begin
  Result := self.PlayerCareer.Matches;
end;

procedure TPlayerCareers.SetMatches(const Value: IJanuaField);
begin
  self.PlayerCareer.Matches := Value;
end;

function TPlayerCareers.GetGoals: IJanuaField;
begin
  Result := self.PlayerCareer.Goals;
end;

procedure TPlayerCareers.SetGoals(const Value: IJanuaField);
begin
  self.PlayerCareer.Goals := Value;
end;

function TPlayerCareers.GetPlayerId: IJanuaField;
begin
  Result := self.PlayerCareer.PlayerId;
end;

procedure TPlayerCareers.SetPlayerId(const Value: IJanuaField);
begin
  self.PlayerCareer.PlayerId := Value;
end;

function TPlayerCareers.GetNotes: IJanuaField;
begin
  Result := self.PlayerCareer.Notes;
end;

procedure TPlayerCareers.SetNotes(const Value: IJanuaField);
begin
  self.PlayerCareer.Notes := Value;
end;

function TPlayerCareers.GetVotes: IJanuaField;
begin
  Result := self.PlayerCareer.Votes;
end;

procedure TPlayerCareers.SetVotes(const Value: IJanuaField);
begin
  self.PlayerCareer.Votes := Value;
end;

function TPlayerCareers.GetMinutes: IJanuaField;
begin
  Result := self.PlayerCareer.Minutes;
end;

procedure TPlayerCareers.SetMinutes(const Value: IJanuaField);
begin
  self.PlayerCareer.Minutes := Value;
end;

function TPlayerCareers.GetImageId: IJanuaField;
begin
  Result := self.PlayerCareer.ImageId;
end;

procedure TPlayerCareers.SetImageId(const Value: IJanuaField);
begin
  self.PlayerCareer.ImageId := Value;
end;

function TPlayerCareers.GetDbSchemaId: IJanuaField;
begin
  Result := self.PlayerCareer.DbSchemaId;
end;

procedure TPlayerCareers.SetDbSchemaId(const Value: IJanuaField);
begin
  self.PlayerCareer.DbSchemaId := Value;
end;

function TPlayerCareers.GetOwngoal: IJanuaField;
begin
  Result := self.PlayerCareer.Owngoal;
end;

procedure TPlayerCareers.SetOwngoal(const Value: IJanuaField);
begin
  self.PlayerCareer.Owngoal := Value;
end;

function TPlayerCareers.GetLostgoal: IJanuaField;
begin
  Result := self.PlayerCareer.Lostgoal;
end;

procedure TPlayerCareers.SetLostgoal(const Value: IJanuaField);
begin
  self.PlayerCareer.Lostgoal := Value;
end;

function TPlayerCareers.GetInjuries: IJanuaField;
begin
  Result := self.PlayerCareer.Injuries;
end;

procedure TPlayerCareers.SetInjuries(const Value: IJanuaField);
begin
  self.PlayerCareer.Injuries := Value;
end;

function TPlayerCareers.GetSentOff: IJanuaField;
begin
  Result := self.PlayerCareer.SentOff;
end;

procedure TPlayerCareers.SetSentOff(const Value: IJanuaField);
begin
  self.PlayerCareer.SentOff := Value;
end;

function TPlayerCareers.GetPlayerCareer: IPlayerCareer;
begin
  Result := self.FRecord as IPlayerCareer;
end;

procedure TPlayerCareers.SetPlayerCareer(const Value: IPlayerCareer);
begin
  self.FRecord := Value;
end;

{ TPlayerCareerFactory }

class function TPlayerCareerFactory.CreateRecord(const aKey: string): IPlayerCareer;
begin
  Result := TPlayerCareer.Create;
end;

class function TPlayerCareerFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IPlayerCareers;
begin
  Result := TPlayerCareers.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
