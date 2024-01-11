unit JOrm.Football.FtMatchEvents.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.FtMatchEvents.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TFtMatchEvents = class(TJanuaRecord, IFtMatchEvents)
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

  end;

  TFtMatchEventss = class(TJanuaRecordSet, IJanuaRecordSet, IFtMatchEventss)
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
    function GetFtMatchEvents: IFtMatchEvents;
    procedure SetFtMatchEvents(const Value: IFtMatchEvents);
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
    property FtMatchEvents: IFtMatchEvents read GetFtMatchEvents write SetFtMatchEvents;
  end;

  TFtMatchEventsFactory = class
    class function CreateRecord(const aKey: string): IFtMatchEvents; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IFtMatchEventss; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TFtMatchEvents -------------------------------

{ TFtMatchEvents }

constructor TFtMatchEvents.Create;
begin
  inherited;
  self.FPrefix := 'fmth';
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
end;

function TFtMatchEvents.GetMatchId: IJanuaField;
begin
  Result := FMatchId;
end;

procedure TFtMatchEvents.SetMatchId(const Value: IJanuaField);
begin
  FMatchId := Value;
end;

function TFtMatchEvents.GetTeamId: IJanuaField;
begin
  Result := FTeamId;
end;

procedure TFtMatchEvents.SetTeamId(const Value: IJanuaField);
begin
  FTeamId := Value;
end;

function TFtMatchEvents.GetPlayerId: IJanuaField;
begin
  Result := FPlayerId;
end;

procedure TFtMatchEvents.SetPlayerId(const Value: IJanuaField);
begin
  FPlayerId := Value;
end;

function TFtMatchEvents.GetEventId: IJanuaField;
begin
  Result := FEventId;
end;

procedure TFtMatchEvents.SetEventId(const Value: IJanuaField);
begin
  FEventId := Value;
end;

function TFtMatchEvents.GetMinute: IJanuaField;
begin
  Result := FMinute;
end;

procedure TFtMatchEvents.SetMinute(const Value: IJanuaField);
begin
  FMinute := Value;
end;

function TFtMatchEvents.GetValue: IJanuaField;
begin
  Result := FValue;
end;

procedure TFtMatchEvents.SetValue(const Value: IJanuaField);
begin
  FValue := Value;
end;

function TFtMatchEvents.GetMatchEventsRowId: IJanuaField;
begin
  Result := FMatchEventsRowId;
end;

procedure TFtMatchEvents.SetMatchEventsRowId(const Value: IJanuaField);
begin
  FMatchEventsRowId := Value;
end;

function TFtMatchEvents.GetNotes: IJanuaField;
begin
  Result := FNotes;
end;

procedure TFtMatchEvents.SetNotes(const Value: IJanuaField);
begin
  FNotes := Value;
end;

function TFtMatchEvents.GetFavorTeamId: IJanuaField;
begin
  Result := FFavorTeamId;
end;

procedure TFtMatchEvents.SetFavorTeamId(const Value: IJanuaField);
begin
  FFavorTeamId := Value;
end;

function TFtMatchEvents.GetHalf: IJanuaField;
begin
  Result := FHalf;
end;

procedure TFtMatchEvents.SetHalf(const Value: IJanuaField);
begin
  FHalf := Value;
end;

{ TFtMatchEventss }
constructor TFtMatchEventss.Create;
begin
  inherited;
  self.FRecord := TFtMatchEventsFactory.CreateRecord('FtMatchEvents');
end;

function TFtMatchEventss.GetMatchId: IJanuaField;
begin
  Result := self.FtMatchEvents.MatchId;
end;

procedure TFtMatchEventss.SetMatchId(const Value: IJanuaField);
begin
  self.FtMatchEvents.MatchId := Value;
end;

function TFtMatchEventss.GetTeamId: IJanuaField;
begin
  Result := self.FtMatchEvents.TeamId;
end;

procedure TFtMatchEventss.SetTeamId(const Value: IJanuaField);
begin
  self.FtMatchEvents.TeamId := Value;
end;

function TFtMatchEventss.GetPlayerId: IJanuaField;
begin
  Result := self.FtMatchEvents.PlayerId;
end;

procedure TFtMatchEventss.SetPlayerId(const Value: IJanuaField);
begin
  self.FtMatchEvents.PlayerId := Value;
end;

function TFtMatchEventss.GetEventId: IJanuaField;
begin
  Result := self.FtMatchEvents.EventId;
end;

procedure TFtMatchEventss.SetEventId(const Value: IJanuaField);
begin
  self.FtMatchEvents.EventId := Value;
end;

function TFtMatchEventss.GetMinute: IJanuaField;
begin
  Result := self.FtMatchEvents.Minute;
end;

procedure TFtMatchEventss.SetMinute(const Value: IJanuaField);
begin
  self.FtMatchEvents.Minute := Value;
end;

function TFtMatchEventss.GetValue: IJanuaField;
begin
  Result := self.FtMatchEvents.Value;
end;

procedure TFtMatchEventss.SetValue(const Value: IJanuaField);
begin
  self.FtMatchEvents.Value := Value;
end;

function TFtMatchEventss.GetMatchEventsRowId: IJanuaField;
begin
  Result := self.FtMatchEvents.MatchEventsRowId;
end;

procedure TFtMatchEventss.SetMatchEventsRowId(const Value: IJanuaField);
begin
  self.FtMatchEvents.MatchEventsRowId := Value;
end;

function TFtMatchEventss.GetNotes: IJanuaField;
begin
  Result := self.FtMatchEvents.Notes;
end;

procedure TFtMatchEventss.SetNotes(const Value: IJanuaField);
begin
  self.FtMatchEvents.Notes := Value;
end;

function TFtMatchEventss.GetFavorTeamId: IJanuaField;
begin
  Result := self.FtMatchEvents.FavorTeamId;
end;

procedure TFtMatchEventss.SetFavorTeamId(const Value: IJanuaField);
begin
  self.FtMatchEvents.FavorTeamId := Value;
end;

function TFtMatchEventss.GetHalf: IJanuaField;
begin
  Result := self.FtMatchEvents.Half;
end;

procedure TFtMatchEventss.SetHalf(const Value: IJanuaField);
begin
  self.FtMatchEvents.Half := Value;
end;

function TFtMatchEventss.GetFtMatchEvents: IFtMatchEvents;
begin
  Result := self.FRecord as IFtMatchEvents;
end;

procedure TFtMatchEventss.SetFtMatchEvents(const Value: IFtMatchEvents);
begin
  self.FRecord := Value;
end;

{ TFtMatchEventsFactory }

class function TFtMatchEventsFactory.CreateRecord(const aKey: string): IFtMatchEvents;
begin
  Result := TFtMatchEvents.Create;
end;

class function TFtMatchEventsFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IFtMatchEventss;
begin
  Result := TFtMatchEventss.Create(aName, aTableName);
end;

end.
