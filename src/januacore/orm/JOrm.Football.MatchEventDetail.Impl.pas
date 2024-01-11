unit JOrm.Football.MatchEventDetail.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.MatchEventDetail.Intf, Janua.Football.Types;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TMatchEventDetail = class(TJanuaRecord, IMatchEventDetail)
  private
    FMatchId: IJanuaField;
    FMatchIdIndex: Integer;
    FTeamId: IJanuaField;
    FTeamIdIndex: Integer;
    FPlayerId: IJanuaField;
    FPlayerIdIndex: Integer;
    FEventId: IJanuaField;
    FEventIdIndex: Integer;
    FMinute: IJanuaField;
    FMinuteIndex: Integer;
    FValue: IJanuaField;
    FValueIndex: Integer;
    FMatchEventsRowId: IJanuaField;
    FMatchEventsRowIdIndex: Integer;
    FNotes: IJanuaField;
    FNotesIndex: Integer;
    FFavorTeamId: IJanuaField;
    FFavorTeamIdIndex: Integer;
    FHalf: IJanuaField;
    FHalfIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
    FFmthJguid: IJanuaField;
    FFmthJguidIndex: Integer;
    FFmthDeleted: IJanuaField;
    FFmthDeletedIndex: Integer;
    FTeamplayer: IJanuaField;
    FTeamplayerIndex: Integer;
    FBirthDate: IJanuaField;
    FBirthDateIndex: Integer;
    FBirthYear: IJanuaField;
    FBirthYearIndex: Integer;
    FFirstName: IJanuaField;
    FFirstNameIndex: Integer;
    FFamilyName: IJanuaField;
    FFamilyNameIndex: Integer;
    FBirthPlace: IJanuaField;
    FBirthPlaceIndex: Integer;
    FRole: IJanuaField;
    FRoleIndex: Integer;
    FTeamName: IJanuaField;
    FTeamNameIndex: Integer;
  private
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const aValue: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const aValue: IJanuaField);
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const aValue: IJanuaField);
    function GetEventId: IJanuaField;
    procedure SetEventId(const aValue: IJanuaField);
    function GetMinute: IJanuaField;
    procedure SetMinute(const aValue: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const aValue: IJanuaField);
    function GetMatchEventsRowId: IJanuaField;
    procedure SetMatchEventsRowId(const aValue: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const aValue: IJanuaField);
    function GetFavorTeamId: IJanuaField;
    procedure SetFavorTeamId(const aValue: IJanuaField);
    function GetHalf: IJanuaField;
    procedure SetHalf(const aValue: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const aValue: IJanuaField);
    function GetFmthJguid: IJanuaField;
    procedure SetFmthJguid(const aValue: IJanuaField);
    function GetFmthDeleted: IJanuaField;
    procedure SetFmthDeleted(const aValue: IJanuaField);
    function GetTeamplayer: IJanuaField;
    procedure SetTeamplayer(const aValue: IJanuaField);
    function GetBirthDate: IJanuaField;
    procedure SetBirthDate(const aValue: IJanuaField);
    function GetBirthYear: IJanuaField;
    procedure SetBirthYear(const aValue: IJanuaField);
    function GetFirstName: IJanuaField;
    procedure SetFirstName(const aValue: IJanuaField);
    function GetFamilyName: IJanuaField;
    procedure SetFamilyName(const aValue: IJanuaField);
    function GetBirthPlace: IJanuaField;
    procedure SetBirthPlace(const aValue: IJanuaField);
    function GetRole: IJanuaField;
    procedure SetRole(const aValue: IJanuaField);
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const aValue: IJanuaField);
  public
    constructor Create; override;
    property MatchId: IJanuaField read GetMatchId write SetMatchId;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    property EventId: IJanuaField read GetEventId write SetEventId;
    property Minute: IJanuaField read GetMinute write SetMinute;
    property Value: IJanuaField read GetValue write SetValue;
    property MatchEventsRowId: IJanuaField read GetMatchEventsRowId write SetMatchEventsRowId;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property FavorTeamId: IJanuaField read GetFavorTeamId write SetFavorTeamId;
    property Half: IJanuaField read GetHalf write SetHalf;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property FmthJguid: IJanuaField read GetFmthJguid write SetFmthJguid;
    property FmthDeleted: IJanuaField read GetFmthDeleted write SetFmthDeleted;
    property Teamplayer: IJanuaField read GetTeamplayer write SetTeamplayer;
    property BirthDate: IJanuaField read GetBirthDate write SetBirthDate;
    property BirthYear: IJanuaField read GetBirthYear write SetBirthYear;
    property FirstName: IJanuaField read GetFirstName write SetFirstName;
    property FamilyName: IJanuaField read GetFamilyName write SetFamilyName;
    property BirthPlace: IJanuaField read GetBirthPlace write SetBirthPlace;
    property Role: IJanuaField read GetRole write SetRole;
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
  public
    function EventDef: TJanuaMatchEventDef;
  end;

  TMatchEventsDetails = class(TJanuaRecordSet, IJanuaRecordSet, IMatchEventsDetails)
  private
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const aValue: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const aValue: IJanuaField);
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const aValue: IJanuaField);
    function GetEventId: IJanuaField;
    procedure SetEventId(const aValue: IJanuaField);
    function GetMinute: IJanuaField;
    procedure SetMinute(const aValue: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const aValue: IJanuaField);
    function GetMatchEventsRowId: IJanuaField;
    procedure SetMatchEventsRowId(const aValue: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const aValue: IJanuaField);
    function GetFavorTeamId: IJanuaField;
    procedure SetFavorTeamId(const aValue: IJanuaField);
    function GetHalf: IJanuaField;
    procedure SetHalf(const aValue: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const aValue: IJanuaField);
    function GetFmthJguid: IJanuaField;
    procedure SetFmthJguid(const aValue: IJanuaField);
    function GetFmthDeleted: IJanuaField;
    procedure SetFmthDeleted(const aValue: IJanuaField);
    function GetTeamplayer: IJanuaField;
    procedure SetTeamplayer(const aValue: IJanuaField);
    function GetBirthDate: IJanuaField;
    procedure SetBirthDate(const aValue: IJanuaField);
    function GetBirthYear: IJanuaField;
    procedure SetBirthYear(const aValue: IJanuaField);
    function GetFirstName: IJanuaField;
    procedure SetFirstName(const aValue: IJanuaField);
    function GetFamilyName: IJanuaField;
    procedure SetFamilyName(const aValue: IJanuaField);
    function GetBirthPlace: IJanuaField;
    procedure SetBirthPlace(const aValue: IJanuaField);
    function GetRole: IJanuaField;
    procedure SetRole(const aValue: IJanuaField);
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const aValue: IJanuaField);
    function GetMatchEventDetail: IMatchEventDetail;
    procedure SetMatchEventDetail(const aValue: IMatchEventDetail);
  public
    constructor Create; override;
    property MatchId: IJanuaField read GetMatchId write SetMatchId;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    property EventId: IJanuaField read GetEventId write SetEventId;
    property Minute: IJanuaField read GetMinute write SetMinute;
    property Value: IJanuaField read GetValue write SetValue;
    property MatchEventsRowId: IJanuaField read GetMatchEventsRowId write SetMatchEventsRowId;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property FavorTeamId: IJanuaField read GetFavorTeamId write SetFavorTeamId;
    property Half: IJanuaField read GetHalf write SetHalf;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property FmthJguid: IJanuaField read GetFmthJguid write SetFmthJguid;
    property FmthDeleted: IJanuaField read GetFmthDeleted write SetFmthDeleted;
    property Teamplayer: IJanuaField read GetTeamplayer write SetTeamplayer;
    property BirthDate: IJanuaField read GetBirthDate write SetBirthDate;
    property BirthYear: IJanuaField read GetBirthYear write SetBirthYear;
    property FirstName: IJanuaField read GetFirstName write SetFirstName;
    property FamilyName: IJanuaField read GetFamilyName write SetFamilyName;
    property BirthPlace: IJanuaField read GetBirthPlace write SetBirthPlace;
    property Role: IJanuaField read GetRole write SetRole;
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    property MatchEventDetail: IMatchEventDetail read GetMatchEventDetail write SetMatchEventDetail;
  public
    function GoalList(aTeamID: Integer; aNewLine: boolean = False): string;
  end;

  TMatchEventDetailFactory = class
    class function CreateRecord(const aKey: string): IMatchEventDetail; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IMatchEventsDetails; overload;
  end;

implementation

uses Janua.Orm.Types, System.StrUtils;

// ------------------------------------------ Impl TMatchEventDetail -------------------------------

{ TMatchEventDetail }

constructor TMatchEventDetail.Create;
begin
  inherited;
  self.FPrefix := '';
  self.SetEntity(TJanuaEntity.FtMatchEvents);
  FMatchId := TJanuaOrmFactory.CreateIntegerField('match_id', 'match_id');
  FMatchIdIndex := AddField(FMatchId);
  FTeamId := TJanuaOrmFactory.CreateSmallintField('team_id', 'team_id');
  FTeamIdIndex := AddField(FTeamId);
  FPlayerId := TJanuaOrmFactory.CreateIntegerField('player_id', 'player_id');
  FPlayerIdIndex := AddField(FPlayerId);
  FEventId := TJanuaOrmFactory.CreateSmallintField('event_id', 'event_id');
  FEventIdIndex := AddField(FEventId);
  FMinute := TJanuaOrmFactory.CreateIntegerField('minute', 'minute');
  FMinuteIndex := AddField(FMinute);
  FValue := TJanuaOrmFactory.CreateSmallintField('value', 'value');
  FValueIndex := AddField(FValue);
  FMatchEventsRowId := TJanuaOrmFactory.CreateLargeIntField('match_events_row_id', 'match_events_row_id');
  FMatchEventsRowIdIndex := AddField(FMatchEventsRowId);
  FNotes := TJanuaOrmFactory.CreateStringField('notes', 'notes');
  FNotesIndex := AddField(FNotes);
  FFavorTeamId := TJanuaOrmFactory.CreateIntegerField('favor_team_id', 'favor_team_id');
  FFavorTeamIdIndex := AddField(FFavorTeamId);
  FHalf := TJanuaOrmFactory.CreateStringField('half', 'half');
  FHalfIndex := AddField(FHalf);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
  FFmthJguid := TJanuaOrmFactory.CreateStringField('fmth_jguid', 'fmth_jguid');
  FFmthJguidIndex := AddField(FFmthJguid);
  FFmthDeleted := TJanuaOrmFactory.CreateBoolField('fmth_deleted', 'fmth_deleted');
  FFmthDeletedIndex := AddField(FFmthDeleted);
  // Campo non Gestitoteamplayer Type= ftWideMemo
  // Campo non Gestitobirth_date Type= ftDate
  FBirthYear := TJanuaOrmFactory.CreateSmallintField('birth_year', 'birth_year');
  FBirthYearIndex := AddField(FBirthYear);
  FFirstName := TJanuaOrmFactory.CreateStringField('first_name', 'first_name');
  FFirstNameIndex := AddField(FFirstName);
  FFamilyName := TJanuaOrmFactory.CreateStringField('family_name', 'family_name');
  FFamilyNameIndex := AddField(FFamilyName);
  FBirthPlace := TJanuaOrmFactory.CreateStringField('birth_place', 'birth_place');
  FBirthPlaceIndex := AddField(FBirthPlace);
  FRole := TJanuaOrmFactory.CreateSmallintField('role', 'role');
  FRoleIndex := AddField(FRole);
  FTeamName := TJanuaOrmFactory.CreateStringField('team_name', 'team_name');
  FTeamNameIndex := AddField(FTeamName);
end;

function TMatchEventDetail.GetMatchId: IJanuaField;
begin
  Result := FMatchId;
end;

procedure TMatchEventDetail.SetMatchId(const aValue: IJanuaField);
begin
  FMatchId := Value;
end;

function TMatchEventDetail.GetTeamId: IJanuaField;
begin
  Result := FTeamId;
end;

procedure TMatchEventDetail.SetTeamId(const aValue: IJanuaField);
begin
  FTeamId := Value;
end;

function TMatchEventDetail.GetPlayerId: IJanuaField;
begin
  Result := FPlayerId;
end;

procedure TMatchEventDetail.SetPlayerId(const aValue: IJanuaField);
begin
  FPlayerId := Value;
end;

function TMatchEventDetail.GetEventId: IJanuaField;
begin
  Result := FEventId;
end;

procedure TMatchEventDetail.SetEventId(const aValue: IJanuaField);
begin
  FEventId := Value;
end;

function TMatchEventDetail.GetMinute: IJanuaField;
begin
  Result := FMinute;
end;

procedure TMatchEventDetail.SetMinute(const aValue: IJanuaField);
begin
  FMinute := Value;
end;

function TMatchEventDetail.GetValue: IJanuaField;
begin
  Result := FValue;
end;

procedure TMatchEventDetail.SetValue(const aValue: IJanuaField);
begin
  FValue := Value;
end;

function TMatchEventDetail.GetMatchEventsRowId: IJanuaField;
begin
  Result := FMatchEventsRowId;
end;

procedure TMatchEventDetail.SetMatchEventsRowId(const aValue: IJanuaField);
begin
  FMatchEventsRowId := Value;
end;

function TMatchEventDetail.GetNotes: IJanuaField;
begin
  Result := FNotes;
end;

procedure TMatchEventDetail.SetNotes(const aValue: IJanuaField);
begin
  FNotes := Value;
end;

function TMatchEventDetail.GetFavorTeamId: IJanuaField;
begin
  Result := FFavorTeamId;
end;

procedure TMatchEventDetail.SetFavorTeamId(const aValue: IJanuaField);
begin
  FFavorTeamId := Value;
end;

function TMatchEventDetail.GetHalf: IJanuaField;
begin
  Result := FHalf;
end;

procedure TMatchEventDetail.SetHalf(const aValue: IJanuaField);
begin
  FHalf := Value;
end;

function TMatchEventDetail.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TMatchEventDetail.SetDbSchemaId(const aValue: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TMatchEventDetail.GetFmthJguid: IJanuaField;
begin
  Result := FFmthJguid;
end;

procedure TMatchEventDetail.SetFmthJguid(const aValue: IJanuaField);
begin
  FFmthJguid := Value;
end;

function TMatchEventDetail.GetFmthDeleted: IJanuaField;
begin
  Result := FFmthDeleted;
end;

procedure TMatchEventDetail.SetFmthDeleted(const aValue: IJanuaField);
begin
  FFmthDeleted := Value;
end;

function TMatchEventDetail.GetTeamplayer: IJanuaField;
begin
  Result := FTeamplayer;
end;

procedure TMatchEventDetail.SetTeamplayer(const aValue: IJanuaField);
begin
  FTeamplayer := Value;
end;

function TMatchEventDetail.EventDef: TJanuaMatchEventDef;
begin
  Result := TJanuaMatchEventDef.Create(FEventId.AsInteger)
end;

function TMatchEventDetail.GetBirthDate: IJanuaField;
begin
  Result := FBirthDate;
end;

procedure TMatchEventDetail.SetBirthDate(const aValue: IJanuaField);
begin
  FBirthDate := Value;
end;

function TMatchEventDetail.GetBirthYear: IJanuaField;
begin
  Result := FBirthYear;
end;

procedure TMatchEventDetail.SetBirthYear(const aValue: IJanuaField);
begin
  FBirthYear := Value;
end;

function TMatchEventDetail.GetFirstName: IJanuaField;
begin
  Result := FFirstName;
end;

procedure TMatchEventDetail.SetFirstName(const aValue: IJanuaField);
begin
  FFirstName := Value;
end;

function TMatchEventDetail.GetFamilyName: IJanuaField;
begin
  Result := FFamilyName;
end;

procedure TMatchEventDetail.SetFamilyName(const aValue: IJanuaField);
begin
  FFamilyName := Value;
end;

function TMatchEventDetail.GetBirthPlace: IJanuaField;
begin
  Result := FBirthPlace;
end;

procedure TMatchEventDetail.SetBirthPlace(const aValue: IJanuaField);
begin
  FBirthPlace := Value;
end;

function TMatchEventDetail.GetRole: IJanuaField;
begin
  Result := FRole;
end;

procedure TMatchEventDetail.SetRole(const aValue: IJanuaField);
begin
  FRole := Value;
end;

function TMatchEventDetail.GetTeamName: IJanuaField;
begin
  Result := FTeamName;
end;

procedure TMatchEventDetail.SetTeamName(const aValue: IJanuaField);
begin
  FTeamName := Value;
end;

{ TMatchEventsDetails }
constructor TMatchEventsDetails.Create;
begin
  inherited;
  self.FRecord := TMatchEventDetailFactory.CreateRecord('MatchEventDetail');
end;

function TMatchEventsDetails.GetMatchId: IJanuaField;
begin
  Result := self.MatchEventDetail.MatchId;
end;

procedure TMatchEventsDetails.SetMatchId(const aValue: IJanuaField);
begin
  self.MatchEventDetail.MatchId := Value;
end;

function TMatchEventsDetails.GetTeamId: IJanuaField;
begin
  Result := self.MatchEventDetail.TeamId;
end;

procedure TMatchEventsDetails.SetTeamId(const aValue: IJanuaField);
begin
  self.MatchEventDetail.TeamId := Value;
end;

function TMatchEventsDetails.GetPlayerId: IJanuaField;
begin
  Result := self.MatchEventDetail.PlayerId;
end;

procedure TMatchEventsDetails.SetPlayerId(const aValue: IJanuaField);
begin
  self.MatchEventDetail.PlayerId := Value;
end;

function TMatchEventsDetails.GetEventId: IJanuaField;
begin
  Result := self.MatchEventDetail.EventId;
end;

procedure TMatchEventsDetails.SetEventId(const aValue: IJanuaField);
begin
  self.MatchEventDetail.EventId := Value;
end;

function TMatchEventsDetails.GetMinute: IJanuaField;
begin
  Result := self.MatchEventDetail.Minute;
end;

procedure TMatchEventsDetails.SetMinute(const aValue: IJanuaField);
begin
  self.MatchEventDetail.Minute := Value;
end;

function TMatchEventsDetails.GetValue: IJanuaField;
begin
  Result := self.MatchEventDetail.Value;
end;

function TMatchEventsDetails.GoalList(aTeamID: Integer; aNewLine: boolean): string;
var
  I: Integer;
begin
  // occorre conoscere il Player che ha realizzato il gol o l'evento ............................
  Result := '';
  I := 0;
  if self.RecordCount > 0 then
  begin
    self.First;
    while not self.Eof do
    begin
      if (GetMatchEventDetail.EventDef.EventType in [jmtGoal, jmtOwnGoal, jmtPenalty]) and
        (GetMatchEventDetail.FavorTeamId.AsInteger = aTeamID) then
      begin
        Result := Result + IfThen(I > 0, '<br /> ', '') + GetMatchEventDetail.Minute.AsString + '?' + ' ' +
          GetMatchEventDetail.FamilyName.AsString + IfThen(GetMatchEventDetail.EventDef.EventType = jmtGoal, ' ',
          '(' + GetMatchEventDetail.EventDef.Definition + ')');
        if aNewLine then
          Inc(I);
      end;
      self.Next;
    end;
  end;
end;

procedure TMatchEventsDetails.SetValue(const aValue: IJanuaField);
begin
  self.MatchEventDetail.Value := Value;
end;

function TMatchEventsDetails.GetMatchEventsRowId: IJanuaField;
begin
  Result := self.MatchEventDetail.MatchEventsRowId;
end;

procedure TMatchEventsDetails.SetMatchEventsRowId(const aValue: IJanuaField);
begin
  self.MatchEventDetail.MatchEventsRowId := Value;
end;

function TMatchEventsDetails.GetNotes: IJanuaField;
begin
  Result := self.MatchEventDetail.Notes;
end;

procedure TMatchEventsDetails.SetNotes(const aValue: IJanuaField);
begin
  self.MatchEventDetail.Notes := Value;
end;

function TMatchEventsDetails.GetFavorTeamId: IJanuaField;
begin
  Result := self.MatchEventDetail.FavorTeamId;
end;

procedure TMatchEventsDetails.SetFavorTeamId(const aValue: IJanuaField);
begin
  self.MatchEventDetail.FavorTeamId := Value;
end;

function TMatchEventsDetails.GetHalf: IJanuaField;
begin
  Result := self.MatchEventDetail.Half;
end;

procedure TMatchEventsDetails.SetHalf(const aValue: IJanuaField);
begin
  self.MatchEventDetail.Half := Value;
end;

function TMatchEventsDetails.GetDbSchemaId: IJanuaField;
begin
  Result := self.MatchEventDetail.DbSchemaId;
end;

procedure TMatchEventsDetails.SetDbSchemaId(const aValue: IJanuaField);
begin
  self.MatchEventDetail.DbSchemaId := Value;
end;

function TMatchEventsDetails.GetFmthJguid: IJanuaField;
begin
  Result := self.MatchEventDetail.FmthJguid;
end;

procedure TMatchEventsDetails.SetFmthJguid(const aValue: IJanuaField);
begin
  self.MatchEventDetail.FmthJguid := Value;
end;

function TMatchEventsDetails.GetFmthDeleted: IJanuaField;
begin
  Result := self.MatchEventDetail.FmthDeleted;
end;

procedure TMatchEventsDetails.SetFmthDeleted(const aValue: IJanuaField);
begin
  self.MatchEventDetail.FmthDeleted := Value;
end;

function TMatchEventsDetails.GetTeamplayer: IJanuaField;
begin
  Result := self.MatchEventDetail.Teamplayer;
end;

procedure TMatchEventsDetails.SetTeamplayer(const aValue: IJanuaField);
begin
  self.MatchEventDetail.Teamplayer := Value;
end;

function TMatchEventsDetails.GetBirthDate: IJanuaField;
begin
  Result := self.MatchEventDetail.BirthDate;
end;

procedure TMatchEventsDetails.SetBirthDate(const aValue: IJanuaField);
begin
  self.MatchEventDetail.BirthDate := Value;
end;

function TMatchEventsDetails.GetBirthYear: IJanuaField;
begin
  Result := self.MatchEventDetail.BirthYear;
end;

procedure TMatchEventsDetails.SetBirthYear(const aValue: IJanuaField);
begin
  self.MatchEventDetail.BirthYear := Value;
end;

function TMatchEventsDetails.GetFirstName: IJanuaField;
begin
  Result := self.MatchEventDetail.FirstName;
end;

procedure TMatchEventsDetails.SetFirstName(const aValue: IJanuaField);
begin
  self.MatchEventDetail.FirstName := Value;
end;

function TMatchEventsDetails.GetFamilyName: IJanuaField;
begin
  Result := self.MatchEventDetail.FamilyName;
end;

procedure TMatchEventsDetails.SetFamilyName(const aValue: IJanuaField);
begin
  self.MatchEventDetail.FamilyName := Value;
end;

function TMatchEventsDetails.GetBirthPlace: IJanuaField;
begin
  Result := self.MatchEventDetail.BirthPlace;
end;

procedure TMatchEventsDetails.SetBirthPlace(const aValue: IJanuaField);
begin
  self.MatchEventDetail.BirthPlace := Value;
end;

function TMatchEventsDetails.GetRole: IJanuaField;
begin
  Result := self.MatchEventDetail.Role;
end;

procedure TMatchEventsDetails.SetRole(const aValue: IJanuaField);
begin
  self.MatchEventDetail.Role := Value;
end;

function TMatchEventsDetails.GetTeamName: IJanuaField;
begin
  Result := self.MatchEventDetail.TeamName;
end;

procedure TMatchEventsDetails.SetTeamName(const aValue: IJanuaField);
begin
  self.MatchEventDetail.TeamName := Value;
end;

function TMatchEventsDetails.GetMatchEventDetail: IMatchEventDetail;
begin
  Result := self.FRecord as IMatchEventDetail;
end;

procedure TMatchEventsDetails.SetMatchEventDetail(const aValue: IMatchEventDetail);
begin
  FRecord := aValue;
end;

{ TMatchEventDetailFactory }

class function TMatchEventDetailFactory.CreateRecord(const aKey: string): IMatchEventDetail;
begin
  Result := TMatchEventDetail.Create;
end;

class function TMatchEventDetailFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IMatchEventsDetails;
begin
  Result := TMatchEventsDetails.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
