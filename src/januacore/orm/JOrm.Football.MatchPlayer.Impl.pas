unit JOrm.Football.MatchPlayer.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.MatchPlayer.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TMatchPlayer = class(TJanuaRecord, IMatchPlayer)
  private
    FMatchId: IJanuaField;
    FMatchIdIndex: Integer;
    FPlayerId: IJanuaField;
    FPlayerIdIndex: Integer;
    FMinutes: IJanuaField;
    FMinutesIndex: Integer;
    FVote: IJanuaField;
    FVoteIndex: Integer;
    FPlayed: IJanuaField;
    FPlayedIndex: Integer;
    FTeamId: IJanuaField;
    FTeamIdIndex: Integer;
    FPos: IJanuaField;
    FPosIndex: Integer;
    FSubstId: IJanuaField;
    FSubstIdIndex: Integer;
    FGoal: IJanuaField;
    FGoalIndex: Integer;
    FOwngoal: IJanuaField;
    FOwngoalIndex: Integer;
    FLostgoal: IJanuaField;
    FLostgoalIndex: Integer;
    FSince: IJanuaField;
    FSinceIndex: Integer;
    FUntil: IJanuaField;
    FUntilIndex: Integer;
    FSentOff: IJanuaField;
    FSentOffIndex: Integer;
    FInjuries: IJanuaField;
    FInjuriesIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
    FFirstName: IJanuaField;
    FLastName: IJanuaField;
  private
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const Value: IJanuaField);
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    function GetMinutes: IJanuaField;
    procedure SetMinutes(const Value: IJanuaField);
    function GetVote: IJanuaField;
    procedure SetVote(const Value: IJanuaField);
    function GetPlayed: IJanuaField;
    procedure SetPlayed(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    function GetSubstId: IJanuaField;
    procedure SetSubstId(const Value: IJanuaField);
    function GetGoal: IJanuaField;
    procedure SetGoal(const Value: IJanuaField);
    function GetOwngoal: IJanuaField;
    procedure SetOwngoal(const Value: IJanuaField);
    function GetLostgoal: IJanuaField;
    procedure SetLostgoal(const Value: IJanuaField);
    function GetSince: IJanuaField;
    procedure SetSince(const Value: IJanuaField);
    function GetUntil: IJanuaField;
    procedure SetUntil(const Value: IJanuaField);
    function GetSentOff: IJanuaField;
    procedure SetSentOff(const Value: IJanuaField);
    function GetInjuries: IJanuaField;
    procedure SetInjuries(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetLastName: IJanuaField;
    procedure SetLastName(const Value: IJanuaField);
    function GetFirstName: IJanuaField;
    procedure SetFirstName(const Value: IJanuaField);
  public
    constructor Create; override;
    property MatchId: IJanuaField read GetMatchId write SetMatchId;
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    property Minutes: IJanuaField read GetMinutes write SetMinutes;
    property Vote: IJanuaField read GetVote write SetVote;
    property Played: IJanuaField read GetPlayed write SetPlayed;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property Pos: IJanuaField read GetPos write SetPos;
    property SubstId: IJanuaField read GetSubstId write SetSubstId;
    property Goal: IJanuaField read GetGoal write SetGoal;
    property Owngoal: IJanuaField read GetOwngoal write SetOwngoal;
    property Lostgoal: IJanuaField read GetLostgoal write SetLostgoal;
    property Since: IJanuaField read GetSince write SetSince;
    property PlaydUntil: IJanuaField read GetUntil write SetUntil;
    property SentOff: IJanuaField read GetSentOff write SetSentOff;
    property Injuries: IJanuaField read GetInjuries write SetInjuries;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property LastName: IJanuaField read GetLastName write SetLastName;
    property FirstName: IJanuaField read GetFirstName write SetFirstName;

  end;

  TMatchPlayers = class(TJanuaRecordSet, IJanuaRecordSet, IMatchPlayers)
  private
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const Value: IJanuaField);
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    function GetMinutes: IJanuaField;
    procedure SetMinutes(const Value: IJanuaField);
    function GetVote: IJanuaField;
    procedure SetVote(const Value: IJanuaField);
    function GetPlayed: IJanuaField;
    procedure SetPlayed(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    function GetSubstId: IJanuaField;
    procedure SetSubstId(const Value: IJanuaField);
    function GetGoal: IJanuaField;
    procedure SetGoal(const Value: IJanuaField);
    function GetOwngoal: IJanuaField;
    procedure SetOwngoal(const Value: IJanuaField);
    function GetLostgoal: IJanuaField;
    procedure SetLostgoal(const Value: IJanuaField);
    function GetSince: IJanuaField;
    procedure SetSince(const Value: IJanuaField);
    function GetUntil: IJanuaField;
    procedure SetUntil(const Value: IJanuaField);
    function GetSentOff: IJanuaField;
    procedure SetSentOff(const Value: IJanuaField);
    function GetInjuries: IJanuaField;
    procedure SetInjuries(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetMatchPlayer: IMatchPlayer;
    procedure SetMatchPlayer(const Value: IMatchPlayer);
  public
    constructor Create; override;
    property MatchId: IJanuaField read GetMatchId write SetMatchId;
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    property Minutes: IJanuaField read GetMinutes write SetMinutes;
    property Vote: IJanuaField read GetVote write SetVote;
    property Played: IJanuaField read GetPlayed write SetPlayed;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property Pos: IJanuaField read GetPos write SetPos;
    property SubstId: IJanuaField read GetSubstId write SetSubstId;
    property Goal: IJanuaField read GetGoal write SetGoal;
    property Owngoal: IJanuaField read GetOwngoal write SetOwngoal;
    property Lostgoal: IJanuaField read GetLostgoal write SetLostgoal;
    property Since: IJanuaField read GetSince write SetSince;
    property PlaydUntil: IJanuaField read GetUntil write SetUntil;
    property SentOff: IJanuaField read GetSentOff write SetSentOff;
    property Injuries: IJanuaField read GetInjuries write SetInjuries;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property MatchPlayer: IMatchPlayer read GetMatchPlayer write SetMatchPlayer;
  end;

  TMatchPlayerFactory = class
    class function CreateRecord(const aKey: string): IMatchPlayer; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IMatchPlayers; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TMatchPlayer -------------------------------

{ TMatchPlayer }

constructor TMatchPlayer.Create;
begin
  inherited;
  self.FPrefix := 'fmtp';
  SetEntity(TJanuaEntity.FtMatchPlayers);
  FMatchId := TJanuaOrmFactory.CreateIntegerField('match_id', 'match_id');
  FMatchIdIndex := AddField(FMatchId);
  FPlayerId := TJanuaOrmFactory.CreateIntegerField('player_id', 'player_id');
  FPlayerIdIndex := AddField(FPlayerId);
  FMinutes := TJanuaOrmFactory.CreateSmallintField('minutes', 'minutes');
  FMinutesIndex := AddField(FMinutes);
  FVote := TJanuaOrmFactory.CreateDoubleField('vote', 'vote');
  FVoteIndex := AddField(FVote);
  FPlayed := TJanuaOrmFactory.CreateBoolField('played', 'played');
  FPlayedIndex := AddField(FPlayed);
  FTeamId := TJanuaOrmFactory.CreateSmallintField('team_id', 'team_id');
  FTeamIdIndex := AddField(FTeamId);
  FPos := TJanuaOrmFactory.CreateSmallintField('pos', 'pos');
  FPosIndex := AddField(FPos);
  FSubstId := TJanuaOrmFactory.CreateIntegerField('subst_id', 'subst_id');
  FSubstIdIndex := AddField(FSubstId);
  FGoal := TJanuaOrmFactory.CreateSmallintField('goal', 'goal');
  FGoalIndex := AddField(FGoal);
  FOwngoal := TJanuaOrmFactory.CreateSmallintField('owngoal', 'owngoal');
  FOwngoalIndex := AddField(FOwngoal);
  FLostgoal := TJanuaOrmFactory.CreateSmallintField('lostgoal', 'lostgoal');
  FLostgoalIndex := AddField(FLostgoal);
  FSince := TJanuaOrmFactory.CreateSmallintField('since', 'since');
  FSinceIndex := AddField(FSince);
  FUntil := TJanuaOrmFactory.CreateSmallintField('until', 'until');
  FUntilIndex := AddField(FUntil);
  FSentOff := TJanuaOrmFactory.CreateSmallintField('sent_off', 'sent_off');
  FSentOffIndex := AddField(FSentOff);
  FInjuries := TJanuaOrmFactory.CreateSmallintField('injuries', 'injuries');
  FInjuriesIndex := AddField(FInjuries);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
  FFirstName := TJanuaOrmFactory.CreateStringField('first_name', 'first_name');
  FItemIndex := AddField(FFirstName);
  FLastName := TJanuaOrmFactory.CreateStringField('family_name', 'family_name');
  FItemIndex := AddField(FLastName);
end;

function TMatchPlayer.GetMatchId: IJanuaField;
begin
  Result := FMatchId;
end;

procedure TMatchPlayer.SetMatchId(const Value: IJanuaField);
begin
  FMatchId := Value;
end;

function TMatchPlayer.GetPlayerId: IJanuaField;
begin
  Result := FPlayerId;
end;

procedure TMatchPlayer.SetPlayerId(const Value: IJanuaField);
begin
  FPlayerId := Value;
end;

function TMatchPlayer.GetMinutes: IJanuaField;
begin
  Result := FMinutes;
end;

procedure TMatchPlayer.SetMinutes(const Value: IJanuaField);
begin
  FMinutes := Value;
end;

function TMatchPlayer.GetVote: IJanuaField;
begin
  Result := FVote;
end;

procedure TMatchPlayer.SetVote(const Value: IJanuaField);
begin
  FVote := Value;
end;

function TMatchPlayer.GetPlayed: IJanuaField;
begin
  Result := FPlayed;
end;

procedure TMatchPlayer.SetPlayed(const Value: IJanuaField);
begin
  FPlayed := Value;
end;

function TMatchPlayer.GetTeamId: IJanuaField;
begin
  Result := FTeamId;
end;

procedure TMatchPlayer.SetTeamId(const Value: IJanuaField);
begin
  FTeamId := Value;
end;

function TMatchPlayer.GetPos: IJanuaField;
begin
  Result := FPos;
end;

procedure TMatchPlayer.SetPos(const Value: IJanuaField);
begin
  FPos := Value;
end;

function TMatchPlayer.GetSubstId: IJanuaField;
begin
  Result := FSubstId;
end;

procedure TMatchPlayer.SetSubstId(const Value: IJanuaField);
begin
  FSubstId := Value;
end;

function TMatchPlayer.GetGoal: IJanuaField;
begin
  Result := FGoal;
end;

procedure TMatchPlayer.SetGoal(const Value: IJanuaField);
begin
  FGoal := Value;
end;

function TMatchPlayer.GetOwngoal: IJanuaField;
begin
  Result := FOwngoal;
end;

procedure TMatchPlayer.SetOwngoal(const Value: IJanuaField);
begin
  FOwngoal := Value;
end;

function TMatchPlayer.GetLastName: IJanuaField;
begin
  Result := FLastName
end;

function TMatchPlayer.GetLostgoal: IJanuaField;
begin
  Result := FLostgoal;
end;

procedure TMatchPlayer.SetLastName(const Value: IJanuaField);
begin
  FLastName := Value;
end;

procedure TMatchPlayer.SetLostgoal(const Value: IJanuaField);
begin
  FLostgoal := Value;
end;

function TMatchPlayer.GetSince: IJanuaField;
begin
  Result := FSince;
end;

procedure TMatchPlayer.SetSince(const Value: IJanuaField);
begin
  FSince := Value;
end;

function TMatchPlayer.GetUntil: IJanuaField;
begin
  Result := FUntil;
end;

procedure TMatchPlayer.SetUntil(const Value: IJanuaField);
begin
  FUntil := Value;
end;

function TMatchPlayer.GetSentOff: IJanuaField;
begin
  Result := FSentOff;
end;

procedure TMatchPlayer.SetSentOff(const Value: IJanuaField);
begin
  FSentOff := Value;
end;

function TMatchPlayer.GetInjuries: IJanuaField;
begin
  Result := FInjuries;
end;

procedure TMatchPlayer.SetInjuries(const Value: IJanuaField);
begin
  FInjuries := Value;
end;

function TMatchPlayer.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

function TMatchPlayer.GetFirstName: IJanuaField;
begin

end;

procedure TMatchPlayer.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

procedure TMatchPlayer.SetFirstName(const Value: IJanuaField);
begin

end;

{ TMatchPlayers }
constructor TMatchPlayers.Create;
begin
  inherited;
  self.FRecord := TMatchPlayerFactory.CreateRecord('MatchPlayer');
end;

function TMatchPlayers.GetMatchId: IJanuaField;
begin
  Result := self.MatchPlayer.MatchId;
end;

procedure TMatchPlayers.SetMatchId(const Value: IJanuaField);
begin
  self.MatchPlayer.MatchId := Value;
end;

function TMatchPlayers.GetPlayerId: IJanuaField;
begin
  Result := self.MatchPlayer.PlayerId;
end;

procedure TMatchPlayers.SetPlayerId(const Value: IJanuaField);
begin
  self.MatchPlayer.PlayerId := Value;
end;

function TMatchPlayers.GetMinutes: IJanuaField;
begin
  Result := self.MatchPlayer.Minutes;
end;

procedure TMatchPlayers.SetMinutes(const Value: IJanuaField);
begin
  self.MatchPlayer.Minutes := Value;
end;

function TMatchPlayers.GetVote: IJanuaField;
begin
  Result := self.MatchPlayer.Vote;
end;

procedure TMatchPlayers.SetVote(const Value: IJanuaField);
begin
  self.MatchPlayer.Vote := Value;
end;

function TMatchPlayers.GetPlayed: IJanuaField;
begin
  Result := self.MatchPlayer.Played;
end;

procedure TMatchPlayers.SetPlayed(const Value: IJanuaField);
begin
  self.MatchPlayer.Played := Value;
end;

function TMatchPlayers.GetTeamId: IJanuaField;
begin
  Result := self.MatchPlayer.TeamId;
end;

procedure TMatchPlayers.SetTeamId(const Value: IJanuaField);
begin
  self.MatchPlayer.TeamId := Value;
end;

function TMatchPlayers.GetPos: IJanuaField;
begin
  Result := self.MatchPlayer.Pos;
end;

procedure TMatchPlayers.SetPos(const Value: IJanuaField);
begin
  self.MatchPlayer.Pos := Value;
end;

function TMatchPlayers.GetSubstId: IJanuaField;
begin
  Result := self.MatchPlayer.SubstId;
end;

procedure TMatchPlayers.SetSubstId(const Value: IJanuaField);
begin
  self.MatchPlayer.SubstId := Value;
end;

function TMatchPlayers.GetGoal: IJanuaField;
begin
  Result := self.MatchPlayer.Goal;
end;

procedure TMatchPlayers.SetGoal(const Value: IJanuaField);
begin
  self.MatchPlayer.Goal := Value;
end;

function TMatchPlayers.GetOwngoal: IJanuaField;
begin
  Result := self.MatchPlayer.Owngoal;
end;

procedure TMatchPlayers.SetOwngoal(const Value: IJanuaField);
begin
  self.MatchPlayer.Owngoal := Value;
end;

function TMatchPlayers.GetLostgoal: IJanuaField;
begin
  Result := self.MatchPlayer.Lostgoal;
end;

procedure TMatchPlayers.SetLostgoal(const Value: IJanuaField);
begin
  self.MatchPlayer.Lostgoal := Value;
end;

function TMatchPlayers.GetSince: IJanuaField;
begin
  Result := self.MatchPlayer.Since;
end;

procedure TMatchPlayers.SetSince(const Value: IJanuaField);
begin
  self.MatchPlayer.Since := Value;
end;

function TMatchPlayers.GetUntil: IJanuaField;
begin
  Result := self.MatchPlayer.PlaydUntil;
end;

procedure TMatchPlayers.SetUntil(const Value: IJanuaField);
begin
  self.MatchPlayer.PlaydUntil := Value;
end;

function TMatchPlayers.GetSentOff: IJanuaField;
begin
  Result := self.MatchPlayer.SentOff;
end;

procedure TMatchPlayers.SetSentOff(const Value: IJanuaField);
begin
  self.MatchPlayer.SentOff := Value;
end;

function TMatchPlayers.GetInjuries: IJanuaField;
begin
  Result := self.MatchPlayer.Injuries;
end;

procedure TMatchPlayers.SetInjuries(const Value: IJanuaField);
begin
  self.MatchPlayer.Injuries := Value;
end;

function TMatchPlayers.GetDbSchemaId: IJanuaField;
begin
  Result := self.MatchPlayer.DbSchemaId;
end;

procedure TMatchPlayers.SetDbSchemaId(const Value: IJanuaField);
begin
  self.MatchPlayer.DbSchemaId := Value;
end;

function TMatchPlayers.GetMatchPlayer: IMatchPlayer;
begin
  Result := self.FRecord as IMatchPlayer;
end;

procedure TMatchPlayers.SetMatchPlayer(const Value: IMatchPlayer);
begin
  self.FRecord := Value;
end;

{ TMatchPlayerFactory }

class function TMatchPlayerFactory.CreateRecord(const aKey: string): IMatchPlayer;
begin
  Result := TMatchPlayer.Create;
end;

class function TMatchPlayerFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IMatchPlayers;
begin
  Result := TMatchPlayers.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
