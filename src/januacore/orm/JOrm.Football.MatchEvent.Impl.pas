unit JOrm.Football.MatchEvent.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.MatchEvent.Intf, Janua.Football.Types;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TMatchEvent = class(TJanuaRecord, IMatchEvent)
  private
    FMatchId: IJanuaField;
    FTeamId: IJanuaField;
    FPlayerId: IJanuaField;
    FEventId: IJanuaField;
    FMinute: IJanuaField;
    FValue: IJanuaField;
    FMatchEventsRowId: IJanuaField;
    FNotes: IJanuaField;
    FFavorTeamId: IJanuaField;
    FHalf: IJanuaField;
    FDbSchemaId: IJanuaField;
    FLastName: IJanuaField;
  private
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    function GetEventId: IJanuaField;
    procedure SetEventId(const Value: IJanuaField);
    function GetMinute: IJanuaField;
    procedure SetMinute(const Value: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    function GetMatchEventsRowId: IJanuaField;
    procedure SetMatchEventsRowId(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetFavorTeamId: IJanuaField;
    procedure SetFavorTeamId(const Value: IJanuaField);
    function GetHalf: IJanuaField;
    procedure SetHalf(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetLastName: IJanuaField;
    procedure SetLastName(const Value: IJanuaField);
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
  public
    function EventDef: TJanuaMatchEventDef;
  end;

  TMatchEvents = class(TJanuaRecordSet, IJanuaRecordSet, IMatchEvents)
  private
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    function GetEventId: IJanuaField;
    procedure SetEventId(const Value: IJanuaField);
    function GetMinute: IJanuaField;
    procedure SetMinute(const Value: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    function GetMatchEventsRowId: IJanuaField;
    procedure SetMatchEventsRowId(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetFavorTeamId: IJanuaField;
    procedure SetFavorTeamId(const Value: IJanuaField);
    function GetHalf: IJanuaField;
    procedure SetHalf(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetMatchEvent: IMatchEvent;
    procedure SetMatchEvent(const Value: IMatchEvent);
    function GetLastName: IJanuaField;
    procedure SetLastName(const Value: IJanuaField);
  public
    constructor Create; override;
    property MatchEvent: IMatchEvent read GetMatchEvent write SetMatchEvent;
    (*
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
      property LastName: IJanuaField read GetLastName write SetLastName;
    *)
  public
    function GoalList(aTeamID: Integer; aNewLine: boolean = False): string;
  end;

  TMatchEventFactory = class
    class function CreateRecord(const aKey: string): IMatchEvent; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IMatchEvents; overload;
  end;

implementation

uses Janua.Orm.Types, System.StrUtils, System.Math;

// ------------------------------------------ Impl TMatchEvent -------------------------------

{ TMatchEvent }

constructor TMatchEvent.Create;
begin
  inherited;
  self.FPrefix := 'fmth';
  self.SetEntity(TJanuaEntity.FtMatchEvents);
  FMatchId := TJanuaOrmFactory.CreateIntegerField('match_id', 'match_id');
  self.FItemIndex := AddField(FMatchId);
  FTeamId := TJanuaOrmFactory.CreateSmallintField('team_id', 'team_id');
  FItemIndex := AddField(FTeamId);
  FPlayerId := TJanuaOrmFactory.CreateIntegerField('player_id', 'player_id');
  FItemIndex := AddField(FPlayerId);
  FEventId := TJanuaOrmFactory.CreateSmallintField('event_id', 'event_id');
  FItemIndex := AddField(FEventId);
  FMinute := TJanuaOrmFactory.CreateIntegerField('minute', 'minute');
  FItemIndex := AddField(FMinute);
  FValue := TJanuaOrmFactory.CreateSmallintField('value', 'value');
  FItemIndex := AddField(FValue);
  FMatchEventsRowId := TJanuaOrmFactory.CreateLargeIntField('match_events_row_id', 'match_events_row_id');
  FItemIndex := AddField(FMatchEventsRowId);
  FNotes := TJanuaOrmFactory.CreateStringField('notes', 'notes');
  FItemIndex := AddField(FNotes);
  FFavorTeamId := TJanuaOrmFactory.CreateIntegerField('favor_team_id', 'favor_team_id');
  FItemIndex := AddField(FFavorTeamId);
  FHalf := TJanuaOrmFactory.CreateStringField('half', 'half');
  FItemIndex := AddField(FHalf);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FItemIndex := AddField(FDbSchemaId);
  FLastName := TJanuaOrmFactory.CreateStringField('family_name', 'family_name');
  FItemIndex := AddField(FLastName);
end;

function TMatchEvent.GetMatchId: IJanuaField;
begin
  Result := FMatchId;
end;

procedure TMatchEvent.SetMatchId(const Value: IJanuaField);
begin
  FMatchId := Value;
end;

function TMatchEvent.GetTeamId: IJanuaField;
begin
  Result := FTeamId;
end;

procedure TMatchEvent.SetTeamId(const Value: IJanuaField);
begin
  FTeamId := Value;
end;

function TMatchEvent.GetPlayerId: IJanuaField;
begin
  Result := FPlayerId;
end;

procedure TMatchEvent.SetPlayerId(const Value: IJanuaField);
begin
  FPlayerId := Value;
end;

function TMatchEvent.GetEventId: IJanuaField;
begin
  Result := FEventId;
end;

procedure TMatchEvent.SetEventId(const Value: IJanuaField);
begin
  FEventId := Value;
end;

function TMatchEvent.GetMinute: IJanuaField;
begin
  Result := FMinute;
end;

procedure TMatchEvent.SetMinute(const Value: IJanuaField);
begin
  FMinute := Value;
end;

function TMatchEvent.GetValue: IJanuaField;
begin
  Result := FValue;
end;

procedure TMatchEvent.SetValue(const Value: IJanuaField);
begin
  FValue := Value;
end;

function TMatchEvent.GetMatchEventsRowId: IJanuaField;
begin
  Result := FMatchEventsRowId;
end;

procedure TMatchEvent.SetMatchEventsRowId(const Value: IJanuaField);
begin
  FMatchEventsRowId := Value;
end;

function TMatchEvent.GetNotes: IJanuaField;
begin
  Result := FNotes;
end;

procedure TMatchEvent.SetNotes(const Value: IJanuaField);
begin
  FNotes := Value;
end;

function TMatchEvent.GetFavorTeamId: IJanuaField;
begin
  Result := FFavorTeamId;
end;

procedure TMatchEvent.SetFavorTeamId(const Value: IJanuaField);
begin
  FFavorTeamId := Value;
end;

function TMatchEvent.GetHalf: IJanuaField;
begin
  Result := FHalf;
end;

function TMatchEvent.GetLastName: IJanuaField;
begin
  Result := self.FLastName
end;

procedure TMatchEvent.SetHalf(const Value: IJanuaField);
begin
  FHalf := Value;
end;

procedure TMatchEvent.SetLastName(const Value: IJanuaField);
begin
  self.FLastName := Value;
end;

function TMatchEvent.EventDef: TJanuaMatchEventDef;
begin
  Result := TJanuaMatchEventDef.Create(FEventId.AsInteger)
end;

function TMatchEvent.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TMatchEvent.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

{ TMatchEvents }
constructor TMatchEvents.Create;
begin
  inherited;
  self.FRecord := TMatchEventFactory.CreateRecord('MatchEvent');
end;

function TMatchEvents.GetMatchId: IJanuaField;
begin
  Result := self.MatchEvent.MatchId;
end;

procedure TMatchEvents.SetMatchId(const Value: IJanuaField);
begin
  self.MatchEvent.MatchId := Value;
end;

function TMatchEvents.GetTeamId: IJanuaField;
begin
  Result := self.MatchEvent.TeamId;
end;

procedure TMatchEvents.SetTeamId(const Value: IJanuaField);
begin
  self.MatchEvent.TeamId := Value;
end;

function TMatchEvents.GetPlayerId: IJanuaField;
begin
  Result := self.MatchEvent.PlayerId;
end;

procedure TMatchEvents.SetPlayerId(const Value: IJanuaField);
begin
  self.MatchEvent.PlayerId := Value;
end;

function TMatchEvents.GetEventId: IJanuaField;
begin
  Result := self.MatchEvent.EventId;
end;

procedure TMatchEvents.SetEventId(const Value: IJanuaField);
begin
  self.MatchEvent.EventId := Value;
end;

function TMatchEvents.GetMinute: IJanuaField;
begin
  Result := self.MatchEvent.Minute;
end;

procedure TMatchEvents.SetMinute(const Value: IJanuaField);
begin
  self.MatchEvent.Minute := Value;
end;

function TMatchEvents.GetValue: IJanuaField;
begin
  Result := MatchEvent.EventValue;
end;

function TMatchEvents.GoalList(aTeamID: Integer; aNewLine: boolean): string;
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
      if (MatchEvent.EventDef.EventType in [jmtGoal, jmtOwnGoal, jmtPenalty]) and
        (MatchEvent.FavorTeamId.AsInteger = aTeamID) then
      begin
        Result := Result + IfThen(I > 0, '<br /> ', '') + MatchEvent.Minute.AsString + '?' + ' ' +
          MatchEvent.LastName.AsString + IfThen(MatchEvent.EventDef.EventType = jmtGoal, ' ',
          '(' + MatchEvent.EventDef.Definition + ')');
        self.Next;
      end;
    end;
  end;
end;

procedure TMatchEvents.SetValue(const Value: IJanuaField);
begin
  self.MatchEvent.EventValue := Value;
end;

function TMatchEvents.GetMatchEventsRowId: IJanuaField;
begin
  Result := self.MatchEvent.MatchEventsRowId;
end;

procedure TMatchEvents.SetMatchEventsRowId(const Value: IJanuaField);
begin
  self.MatchEvent.MatchEventsRowId := Value;
end;

function TMatchEvents.GetNotes: IJanuaField;
begin
  Result := self.MatchEvent.Notes;
end;

procedure TMatchEvents.SetNotes(const Value: IJanuaField);
begin
  self.MatchEvent.Notes := Value;
end;

function TMatchEvents.GetFavorTeamId: IJanuaField;
begin
  Result := self.MatchEvent.FavorTeamId;
end;

procedure TMatchEvents.SetFavorTeamId(const Value: IJanuaField);
begin
  self.MatchEvent.FavorTeamId := Value;
end;

function TMatchEvents.GetHalf: IJanuaField;
begin
  Result := self.MatchEvent.Half;
end;

function TMatchEvents.GetLastName: IJanuaField;
begin
  Result := self.MatchEvent.LastName
end;

procedure TMatchEvents.SetHalf(const Value: IJanuaField);
begin
  self.MatchEvent.Half := Value;
end;

procedure TMatchEvents.SetLastName(const Value: IJanuaField);
begin
  self.MatchEvent.LastName := Value;
end;

function TMatchEvents.GetDbSchemaId: IJanuaField;
begin
  Result := self.MatchEvent.DbSchemaId;
end;

procedure TMatchEvents.SetDbSchemaId(const Value: IJanuaField);
begin
  self.MatchEvent.DbSchemaId := Value;
end;

function TMatchEvents.GetMatchEvent: IMatchEvent;
begin
  Result := self.FRecord as IMatchEvent;
end;

procedure TMatchEvents.SetMatchEvent(const Value: IMatchEvent);
begin
  self.FRecord := Value;
end;

{ TMatchEventFactory }

class function TMatchEventFactory.CreateRecord(const aKey: string): IMatchEvent;
begin
  Result := TMatchEvent.Create;
end;

class function TMatchEventFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IMatchEvents;
begin
  Result := TMatchEvents.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
