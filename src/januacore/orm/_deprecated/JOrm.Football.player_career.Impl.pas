unit JOrm.Football.player_career.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl,JOrm.Football.player_career.Intf;

//------------------------------------------ Impl object interface ----------------------------------

type
  Tplayer_career = class(TJanuaRecord, Iplayer_career)
  private
    FCareerId: IJanuaField;
    FCareerIdIndex : Integer;
    FSeasonId: IJanuaField;
    FSeasonIdIndex : Integer;
    FSeasonCode: IJanuaField;
    FSeasonCodeIndex : Integer;
    FTeamId: IJanuaField;
    FTeamIdIndex : Integer;
    FLeagueCode: IJanuaField;
    FLeagueCodeIndex : Integer;
    FLeagueId: IJanuaField;
    FLeagueIdIndex : Integer;
    FMatches: IJanuaField;
    FMatchesIndex : Integer;
    FGoals: IJanuaField;
    FGoalsIndex : Integer;
    FPlayerId: IJanuaField;
    FPlayerIdIndex : Integer;
    FNotes: IJanuaField;
    FNotesIndex : Integer;
    FVotes: IJanuaField;
    FVotesIndex : Integer;
    FMinutes: IJanuaField;
    FMinutesIndex : Integer;
    FImageId: IJanuaField;
    FImageIdIndex : Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex : Integer;
    FOwngoal: IJanuaField;
    FOwngoalIndex : Integer;
    FLostgoal: IJanuaField;
    FLostgoalIndex : Integer;
    FInjuries: IJanuaField;
    FInjuriesIndex : Integer;
    FSentOff: IJanuaField;
    FSentOffIndex : Integer;
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

  Tplayer_careers = class(TJanuaRecordSet, IJanuaRecordSet, Iplayer_careers)
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
    function Getplayer_career: Iplayer_career;
    procedure Setplayer_career(const Value: Iplayer_career);
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
    property player_career:Iplayer_career read Getplayer_career write Setplayer_career;
  end;

  Tplayer_careerFactory = class
    class function CreateRecord(const aKey: string): Iplayer_career; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): Iplayer_careers; overload;
  end;

implementation

//------------------------------------------ Impl Tplayer_career -------------------------------

{Tplayer_career}

  constructor Tplayer_career.Create;
  begin
    inherited;
    self.FPrefix := 'fplc';
    FCareerId:= TJanuaOrmFactory.CreateIntegerField('career_id', 'career_id');
    FCareerIdIndex := AddField(FCareerId);
    FSeasonId:= TJanuaOrmFactory.CreateSmallintField('season_id', 'season_id');
    FSeasonIdIndex := AddField(FSeasonId);
    FSeasonCode:= TJanuaOrmFactory.CreateStringField('season_code', 'season_code');
    FSeasonCodeIndex := AddField(FSeasonCode);
    FTeamId:= TJanuaOrmFactory.CreateIntegerField('team_id', 'team_id');
    FTeamIdIndex := AddField(FTeamId);
    FLeagueCode:= TJanuaOrmFactory.CreateStringField('league_code', 'league_code');
    FLeagueCodeIndex := AddField(FLeagueCode);
    FLeagueId:= TJanuaOrmFactory.CreateIntegerField('league_id', 'league_id');
    FLeagueIdIndex := AddField(FLeagueId);
    FMatches:= TJanuaOrmFactory.CreateStringField('matches', 'matches');
    FMatchesIndex := AddField(FMatches);
    FGoals:= TJanuaOrmFactory.CreateStringField('goals', 'goals');
    FGoalsIndex := AddField(FGoals);
    FPlayerId:= TJanuaOrmFactory.CreateIntegerField('player_id', 'player_id');
    FPlayerIdIndex := AddField(FPlayerId);
    FNotes:= TJanuaOrmFactory.CreateStringField('notes', 'notes');
    FNotesIndex := AddField(FNotes);
    FVotes:= TJanuaOrmFactory.CreateDoubleField('votes', 'votes');
    FVotesIndex := AddField(FVotes);
    FMinutes:= TJanuaOrmFactory.CreateIntegerField('minutes', 'minutes');
    FMinutesIndex := AddField(FMinutes);
    FImageId:= TJanuaOrmFactory.CreateLargeIntField('image_id', 'image_id');
    FImageIdIndex := AddField(FImageId);
    FDbSchemaId:= TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
    FDbSchemaIdIndex := AddField(FDbSchemaId);
    FOwngoal:= TJanuaOrmFactory.CreateSmallintField('owngoal', 'owngoal');
    FOwngoalIndex := AddField(FOwngoal);
    FLostgoal:= TJanuaOrmFactory.CreateSmallintField('lostgoal', 'lostgoal');
    FLostgoalIndex := AddField(FLostgoal);
    FInjuries:= TJanuaOrmFactory.CreateSmallintField('injuries', 'injuries');
    FInjuriesIndex := AddField(FInjuries);
    FSentOff:= TJanuaOrmFactory.CreateSmallintField('sent_off', 'sent_off');
    FSentOffIndex := AddField(FSentOff);
  end;

  function Tplayer_career.GetCareerId: IJanuaField;
  begin
    Result := FCareerId;
  end;

  procedure Tplayer_career.SetCareerId(const Value: IJanuaField);
  begin
    FCareerId := Value;
  end;

  function Tplayer_career.GetSeasonId: IJanuaField;
  begin
    Result := FSeasonId;
  end;

  procedure Tplayer_career.SetSeasonId(const Value: IJanuaField);
  begin
    FSeasonId := Value;
  end;

  function Tplayer_career.GetSeasonCode: IJanuaField;
  begin
    Result := FSeasonCode;
  end;

  procedure Tplayer_career.SetSeasonCode(const Value: IJanuaField);
  begin
    FSeasonCode := Value;
  end;

  function Tplayer_career.GetTeamId: IJanuaField;
  begin
    Result := FTeamId;
  end;

  procedure Tplayer_career.SetTeamId(const Value: IJanuaField);
  begin
    FTeamId := Value;
  end;

  function Tplayer_career.GetLeagueCode: IJanuaField;
  begin
    Result := FLeagueCode;
  end;

  procedure Tplayer_career.SetLeagueCode(const Value: IJanuaField);
  begin
    FLeagueCode := Value;
  end;

  function Tplayer_career.GetLeagueId: IJanuaField;
  begin
    Result := FLeagueId;
  end;

  procedure Tplayer_career.SetLeagueId(const Value: IJanuaField);
  begin
    FLeagueId := Value;
  end;

  function Tplayer_career.GetMatches: IJanuaField;
  begin
    Result := FMatches;
  end;

  procedure Tplayer_career.SetMatches(const Value: IJanuaField);
  begin
    FMatches := Value;
  end;

  function Tplayer_career.GetGoals: IJanuaField;
  begin
    Result := FGoals;
  end;

  procedure Tplayer_career.SetGoals(const Value: IJanuaField);
  begin
    FGoals := Value;
  end;

  function Tplayer_career.GetPlayerId: IJanuaField;
  begin
    Result := FPlayerId;
  end;

  procedure Tplayer_career.SetPlayerId(const Value: IJanuaField);
  begin
    FPlayerId := Value;
  end;

  function Tplayer_career.GetNotes: IJanuaField;
  begin
    Result := FNotes;
  end;

  procedure Tplayer_career.SetNotes(const Value: IJanuaField);
  begin
    FNotes := Value;
  end;

  function Tplayer_career.GetVotes: IJanuaField;
  begin
    Result := FVotes;
  end;

  procedure Tplayer_career.SetVotes(const Value: IJanuaField);
  begin
    FVotes := Value;
  end;

  function Tplayer_career.GetMinutes: IJanuaField;
  begin
    Result := FMinutes;
  end;

  procedure Tplayer_career.SetMinutes(const Value: IJanuaField);
  begin
    FMinutes := Value;
  end;

  function Tplayer_career.GetImageId: IJanuaField;
  begin
    Result := FImageId;
  end;

  procedure Tplayer_career.SetImageId(const Value: IJanuaField);
  begin
    FImageId := Value;
  end;

  function Tplayer_career.GetDbSchemaId: IJanuaField;
  begin
    Result := FDbSchemaId;
  end;

  procedure Tplayer_career.SetDbSchemaId(const Value: IJanuaField);
  begin
    FDbSchemaId := Value;
  end;

  function Tplayer_career.GetOwngoal: IJanuaField;
  begin
    Result := FOwngoal;
  end;

  procedure Tplayer_career.SetOwngoal(const Value: IJanuaField);
  begin
    FOwngoal := Value;
  end;

  function Tplayer_career.GetLostgoal: IJanuaField;
  begin
    Result := FLostgoal;
  end;

  procedure Tplayer_career.SetLostgoal(const Value: IJanuaField);
  begin
    FLostgoal := Value;
  end;

  function Tplayer_career.GetInjuries: IJanuaField;
  begin
    Result := FInjuries;
  end;

  procedure Tplayer_career.SetInjuries(const Value: IJanuaField);
  begin
    FInjuries := Value;
  end;

  function Tplayer_career.GetSentOff: IJanuaField;
  begin
    Result := FSentOff;
  end;

  procedure Tplayer_career.SetSentOff(const Value: IJanuaField);
  begin
    FSentOff := Value;
  end;

  { Tplayer_careers }
  constructor Tplayer_careers.Create;
  begin
    inherited;
    self.FRecord := Tplayer_careerFactory.CreateRecord('player_career');
  end;

  function Tplayer_careers.GetCareerId: IJanuaField;
  begin
    Result := self.player_career.CareerId;
  end;

  procedure Tplayer_careers.SetCareerId(const Value: IJanuaField);
  begin
    self.player_career.CareerId := Value;
  end;

  function Tplayer_careers.GetSeasonId: IJanuaField;
  begin
    Result := self.player_career.SeasonId;
  end;

  procedure Tplayer_careers.SetSeasonId(const Value: IJanuaField);
  begin
    self.player_career.SeasonId := Value;
  end;

  function Tplayer_careers.GetSeasonCode: IJanuaField;
  begin
    Result := self.player_career.SeasonCode;
  end;

  procedure Tplayer_careers.SetSeasonCode(const Value: IJanuaField);
  begin
    self.player_career.SeasonCode := Value;
  end;

  function Tplayer_careers.GetTeamId: IJanuaField;
  begin
    Result := self.player_career.TeamId;
  end;

  procedure Tplayer_careers.SetTeamId(const Value: IJanuaField);
  begin
    self.player_career.TeamId := Value;
  end;

  function Tplayer_careers.GetLeagueCode: IJanuaField;
  begin
    Result := self.player_career.LeagueCode;
  end;

  procedure Tplayer_careers.SetLeagueCode(const Value: IJanuaField);
  begin
    self.player_career.LeagueCode := Value;
  end;

  function Tplayer_careers.GetLeagueId: IJanuaField;
  begin
    Result := self.player_career.LeagueId;
  end;

  procedure Tplayer_careers.SetLeagueId(const Value: IJanuaField);
  begin
    self.player_career.LeagueId := Value;
  end;

  function Tplayer_careers.GetMatches: IJanuaField;
  begin
    Result := self.player_career.Matches;
  end;

  procedure Tplayer_careers.SetMatches(const Value: IJanuaField);
  begin
    self.player_career.Matches := Value;
  end;

  function Tplayer_careers.GetGoals: IJanuaField;
  begin
    Result := self.player_career.Goals;
  end;

  procedure Tplayer_careers.SetGoals(const Value: IJanuaField);
  begin
    self.player_career.Goals := Value;
  end;

  function Tplayer_careers.GetPlayerId: IJanuaField;
  begin
    Result := self.player_career.PlayerId;
  end;

  procedure Tplayer_careers.SetPlayerId(const Value: IJanuaField);
  begin
    self.player_career.PlayerId := Value;
  end;

  function Tplayer_careers.GetNotes: IJanuaField;
  begin
    Result := self.player_career.Notes;
  end;

  procedure Tplayer_careers.SetNotes(const Value: IJanuaField);
  begin
    self.player_career.Notes := Value;
  end;

  function Tplayer_careers.GetVotes: IJanuaField;
  begin
    Result := self.player_career.Votes;
  end;

  procedure Tplayer_careers.SetVotes(const Value: IJanuaField);
  begin
    self.player_career.Votes := Value;
  end;

  function Tplayer_careers.GetMinutes: IJanuaField;
  begin
    Result := self.player_career.Minutes;
  end;

  procedure Tplayer_careers.SetMinutes(const Value: IJanuaField);
  begin
    self.player_career.Minutes := Value;
  end;

  function Tplayer_careers.GetImageId: IJanuaField;
  begin
    Result := self.player_career.ImageId;
  end;

  procedure Tplayer_careers.SetImageId(const Value: IJanuaField);
  begin
    self.player_career.ImageId := Value;
  end;

  function Tplayer_careers.GetDbSchemaId: IJanuaField;
  begin
    Result := self.player_career.DbSchemaId;
  end;

  procedure Tplayer_careers.SetDbSchemaId(const Value: IJanuaField);
  begin
    self.player_career.DbSchemaId := Value;
  end;

  function Tplayer_careers.GetOwngoal: IJanuaField;
  begin
    Result := self.player_career.Owngoal;
  end;

  procedure Tplayer_careers.SetOwngoal(const Value: IJanuaField);
  begin
    self.player_career.Owngoal := Value;
  end;

  function Tplayer_careers.GetLostgoal: IJanuaField;
  begin
    Result := self.player_career.Lostgoal;
  end;

  procedure Tplayer_careers.SetLostgoal(const Value: IJanuaField);
  begin
    self.player_career.Lostgoal := Value;
  end;

  function Tplayer_careers.GetInjuries: IJanuaField;
  begin
    Result := self.player_career.Injuries;
  end;

  procedure Tplayer_careers.SetInjuries(const Value: IJanuaField);
  begin
    self.player_career.Injuries := Value;
  end;

  function Tplayer_careers.GetSentOff: IJanuaField;
  begin
    Result := self.player_career.SentOff;
  end;

  procedure Tplayer_careers.SetSentOff(const Value: IJanuaField);
  begin
    self.player_career.SentOff := Value;
  end;

  function Tplayer_careers.Getplayer_career: Iplayer_career;
  begin
    Result := self.FRecord as Iplayer_career;
  end;

  procedure Tplayer_careers.Setplayer_career(const Value: Iplayer_career);
  begin
    self.FRecord := Value;
  end;

  { Tplayer_careerFactory }

  class function Tplayer_careerFactory.CreateRecord(const aKey: string): Iplayer_career;
  begin
    Result := Tplayer_career.Create;
  end;

  class function Tplayer_careerFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): Iplayer_careers;
  begin
    Result := Tplayer_careers.Create(aName, aLocalStorage, aRemoteStorage);
  end;

end.