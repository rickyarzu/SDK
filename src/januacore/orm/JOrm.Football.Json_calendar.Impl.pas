unit JOrm.Football.Json_calendar.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl,JOrm.Football.Json_calendar.Intf;

//------------------------------------------ Impl object interface ----------------------------------

type
  TJson_calendar = class(TJanuaRecord, IJson_calendar)
  private
    FLeague_id: IJanuaField;
    FLeague_idIndex : Integer;
    FSeason_id: IJanuaField;
    FSeason_idIndex : Integer;
    FMatch_day: IJanuaField;
    FMatch_dayIndex : Integer;
    FCalendar_json: IJanuaField;
    FCalendar_jsonIndex : Integer;
    FCalendar_array: IJanuaField;
    FCalendar_arrayIndex : Integer;
    FMatch_id: IJanuaField;
    FMatch_idIndex : Integer;
    FFsnc_jguid: IJanuaField;
    FFsnc_jguidIndex : Integer;
    FFsnc_deleted: IJanuaField;
    FFsnc_deletedIndex : Integer;
  private
    function GetLeague_id: IJanuaField;
    procedure SetLeague_id(const Value: IJanuaField);
    function GetSeason_id: IJanuaField;
    procedure SetSeason_id(const Value: IJanuaField);
    function GetMatch_day: IJanuaField;
    procedure SetMatch_day(const Value: IJanuaField);
    function GetCalendar_json: IJanuaField;
    procedure SetCalendar_json(const Value: IJanuaField);
    function GetCalendar_array: IJanuaField;
    procedure SetCalendar_array(const Value: IJanuaField);
    function GetMatch_id: IJanuaField;
    procedure SetMatch_id(const Value: IJanuaField);
    function GetFsnc_jguid: IJanuaField;
    procedure SetFsnc_jguid(const Value: IJanuaField);
    function GetFsnc_deleted: IJanuaField;
    procedure SetFsnc_deleted(const Value: IJanuaField);
  public
    constructor Create; override;
    property League_id: IJanuaField read GetLeague_id write SetLeague_id;
    property Season_id: IJanuaField read GetSeason_id write SetSeason_id;
    property Match_day: IJanuaField read GetMatch_day write SetMatch_day;
    property Calendar_json: IJanuaField read GetCalendar_json write SetCalendar_json;
    property Calendar_array: IJanuaField read GetCalendar_array write SetCalendar_array;
    property Match_id: IJanuaField read GetMatch_id write SetMatch_id;
    property Fsnc_jguid: IJanuaField read GetFsnc_jguid write SetFsnc_jguid;
    property Fsnc_deleted: IJanuaField read GetFsnc_deleted write SetFsnc_deleted;

  end;

  TJson_calendars = class(TJanuaRecordSet, IJanuaRecordSet, IJson_calendars)
  private
    function GetLeague_id: IJanuaField;
    procedure SetLeague_id(const Value: IJanuaField);
    function GetSeason_id: IJanuaField;
    procedure SetSeason_id(const Value: IJanuaField);
    function GetMatch_day: IJanuaField;
    procedure SetMatch_day(const Value: IJanuaField);
    function GetCalendar_json: IJanuaField;
    procedure SetCalendar_json(const Value: IJanuaField);
    function GetCalendar_array: IJanuaField;
    procedure SetCalendar_array(const Value: IJanuaField);
    function GetMatch_id: IJanuaField;
    procedure SetMatch_id(const Value: IJanuaField);
    function GetFsnc_jguid: IJanuaField;
    procedure SetFsnc_jguid(const Value: IJanuaField);
    function GetFsnc_deleted: IJanuaField;
    procedure SetFsnc_deleted(const Value: IJanuaField);
    function GetJson_calendar: IJson_calendar;
    procedure SetJson_calendar(const Value: IJson_calendar);
  public
    constructor Create; override;
    property League_id: IJanuaField read GetLeague_id write SetLeague_id;
    property Season_id: IJanuaField read GetSeason_id write SetSeason_id;
    property Match_day: IJanuaField read GetMatch_day write SetMatch_day;
    property Calendar_json: IJanuaField read GetCalendar_json write SetCalendar_json;
    property Calendar_array: IJanuaField read GetCalendar_array write SetCalendar_array;
    property Match_id: IJanuaField read GetMatch_id write SetMatch_id;
    property Fsnc_jguid: IJanuaField read GetFsnc_jguid write SetFsnc_jguid;
    property Fsnc_deleted: IJanuaField read GetFsnc_deleted write SetFsnc_deleted;
    property Json_calendar:IJson_calendar read GetJson_calendar write SetJson_calendar;
  end;

  TJson_calendarFactory = class
    class function CreateRecord(const aKey: string): IJson_calendar; overload;
    class function CreateRecordset((const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IJson_calendars; overload;
  end;

implementation

//------------------------------------------ Impl TJson_calendar -------------------------------

{TJson_calendar}

  constructor TJson_calendar.Create;
  begin
    inherited;
    self.FPrefix := 'fsnc';
    FLeague_id:= TJanuaOrmFactory.CreateSmallintField('league_id', 'League_id');
    FLeague_idIndex := AddField(FLeague_id);
    FSeason_id:= TJanuaOrmFactory.CreateSmallintField('season_id', 'Season_id');
    FSeason_idIndex := AddField(FSeason_id);
    FMatch_day:= TJanuaOrmFactory.CreateSmallintField('match_day', 'Match_day');
    FMatch_dayIndex := AddField(FMatch_day);
    // Campo non GestitoCalendar_json Type= ftWideMemo
    // Campo non GestitoCalendar_array Type= ftWideMemo
    FMatch_id:= TJanuaOrmFactory.CreateIntegerField('match_id', 'Match_id');
    FMatch_idIndex := AddField(FMatch_id);
    FFsnc_jguid:= TJanuaOrmFactory.CreateStringField('fsnc_jguid', 'Fsnc_jguid');
    FFsnc_jguidIndex := AddField(FFsnc_jguid);
    FFsnc_deleted:= TJanuaOrmFactory.CreateBoolField('fsnc_deleted', 'Fsnc_deleted');
    FFsnc_deletedIndex := AddField(FFsnc_deleted);
  end;

  function TJson_calendar.GetLeague_id: IJanuaField;
  begin
    Result := FLeague_id;
  end;

  procedure TJson_calendar.SetLeague_id(const Value: IJanuaField);
  begin
    FLeague_id := Value;
  end;

  function TJson_calendar.GetSeason_id: IJanuaField;
  begin
    Result := FSeason_id;
  end;

  procedure TJson_calendar.SetSeason_id(const Value: IJanuaField);
  begin
    FSeason_id := Value;
  end;

  function TJson_calendar.GetMatch_day: IJanuaField;
  begin
    Result := FMatch_day;
  end;

  procedure TJson_calendar.SetMatch_day(const Value: IJanuaField);
  begin
    FMatch_day := Value;
  end;

  function TJson_calendar.GetCalendar_json: IJanuaField;
  begin
    Result := FCalendar_json;
  end;

  procedure TJson_calendar.SetCalendar_json(const Value: IJanuaField);
  begin
    FCalendar_json := Value;
  end;

  function TJson_calendar.GetCalendar_array: IJanuaField;
  begin
    Result := FCalendar_array;
  end;

  procedure TJson_calendar.SetCalendar_array(const Value: IJanuaField);
  begin
    FCalendar_array := Value;
  end;

  function TJson_calendar.GetMatch_id: IJanuaField;
  begin
    Result := FMatch_id;
  end;

  procedure TJson_calendar.SetMatch_id(const Value: IJanuaField);
  begin
    FMatch_id := Value;
  end;

  function TJson_calendar.GetFsnc_jguid: IJanuaField;
  begin
    Result := FFsnc_jguid;
  end;

  procedure TJson_calendar.SetFsnc_jguid(const Value: IJanuaField);
  begin
    FFsnc_jguid := Value;
  end;

  function TJson_calendar.GetFsnc_deleted: IJanuaField;
  begin
    Result := FFsnc_deleted;
  end;

  procedure TJson_calendar.SetFsnc_deleted(const Value: IJanuaField);
  begin
    FFsnc_deleted := Value;
  end;

  { TJson_calendars }
  constructor TJson_calendars.Create;
  begin
    inherited;
    self.FRecord := Factory.CreateRecord('Json_calendar');
  end;

  function TJson_calendars.GetLeague_id: IJanuaField;
  begin
    Result := self.Json_calendar.League_id;
  end;

  procedure TJson_calendars.SetLeague_id(const Value: IJanuaField);
  begin
    self.Json_calendar.League_id := Value;
  end;

  function TJson_calendars.GetSeason_id: IJanuaField;
  begin
    Result := self.Json_calendar.Season_id;
  end;

  procedure TJson_calendars.SetSeason_id(const Value: IJanuaField);
  begin
    self.Json_calendar.Season_id := Value;
  end;

  function TJson_calendars.GetMatch_day: IJanuaField;
  begin
    Result := self.Json_calendar.Match_day;
  end;

  procedure TJson_calendars.SetMatch_day(const Value: IJanuaField);
  begin
    self.Json_calendar.Match_day := Value;
  end;

  function TJson_calendars.GetCalendar_json: IJanuaField;
  begin
    Result := self.Json_calendar.Calendar_json;
  end;

  procedure TJson_calendars.SetCalendar_json(const Value: IJanuaField);
  begin
    self.Json_calendar.Calendar_json := Value;
  end;

  function TJson_calendars.GetCalendar_array: IJanuaField;
  begin
    Result := self.Json_calendar.Calendar_array;
  end;

  procedure TJson_calendars.SetCalendar_array(const Value: IJanuaField);
  begin
    self.Json_calendar.Calendar_array := Value;
  end;

  function TJson_calendars.GetMatch_id: IJanuaField;
  begin
    Result := self.Json_calendar.Match_id;
  end;

  procedure TJson_calendars.SetMatch_id(const Value: IJanuaField);
  begin
    self.Json_calendar.Match_id := Value;
  end;

  function TJson_calendars.GetFsnc_jguid: IJanuaField;
  begin
    Result := self.Json_calendar.Fsnc_jguid;
  end;

  procedure TJson_calendars.SetFsnc_jguid(const Value: IJanuaField);
  begin
    self.Json_calendar.Fsnc_jguid := Value;
  end;

  function TJson_calendars.GetFsnc_deleted: IJanuaField;
  begin
    Result := self.Json_calendar.Fsnc_deleted;
  end;

  procedure TJson_calendars.SetFsnc_deleted(const Value: IJanuaField);
  begin
    self.Json_calendar.Fsnc_deleted := Value;
  end;

  function TJson_calendars.GetJson_calendar: IJson_calendar;
  begin
    Result := self.FRecord as IJson_calendar;
  end;

  procedure TJson_calendars.SetJson_calendar(const Value: IJson_calendar);
  begin
    self.FRecord := Value;
  end;

  { TJson_calendarFactory }

  class function TJson_calendarFactory.CreateRecord(const aKey: string): IJson_calendar;
  begin
    Result := TJson_calendar.Create;
  end;

  class function TJson_calendarFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage):Json_calendars;
  begin
    Result := TJson_calendars.Create(aName, aTableName);
  end;

end.