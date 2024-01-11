unit JOrm.Football.MatchDay.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.MatchDay.Intf, JOrm.Football.Matches.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TMatchDay = class(TJanuaRecord, IMatchDay)
  private
    FSeasonId: IJanuaField;
    FSeasonIdIndex: Integer;
    FLeagueId: IJanuaField;
    FLeagueIdIndex: Integer;
    FMatchDayNumber: IJanuaField;
    FMatchDayNumberIndex: Integer;
    FMatchDayDate: IJanuaField;
    FMatchDayDateIndex: Integer;
    FMatchDayPlayed: IJanuaField;
    FMatchDayPlayedIndex: Integer;
    FRestTeamId: IJanuaField;
    FRestTeamIdIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
  private
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetMatchDayNumber: IJanuaField;
    procedure SetMatchDayNumber(const Value: IJanuaField);
    function GetMatchDayDate: IJanuaField;
    procedure SetMatchDayDate(const Value: IJanuaField);
    function GetMatchDayPlayed: IJanuaField;
    procedure SetMatchDayPlayed(const Value: IJanuaField);
    function GetRestTeamId: IJanuaField;
    procedure SetRestTeamId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
  public
    constructor Create; override;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property MatchDayNumber: IJanuaField read GetMatchDayNumber write SetMatchDayNumber;
    property MatchDayDate: IJanuaField read GetMatchDayDate write SetMatchDayDate;
    property MatchDayPlayed: IJanuaField read GetMatchDayPlayed write SetMatchDayPlayed;
    property RestTeamId: IJanuaField read GetRestTeamId write SetRestTeamId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
  end;

  TMatchCalendarDay = class(TMatchDay, IJanuaRecord, IMatchDay, IMatchCalendarDay)
  public
    constructor Create; override;
  strict Private
    FMatches: IMatches;
  private
    function GetMatches: IMatches;
    procedure SetMatches(const Value: IMatches);
  end;

type
  TMatchDayNumber = class(TJanuaRecord, IMatchDayNumber)
  private
    FMatchDayNumber: IJanuaField;
    FMatchDayNumberIndex: Integer;
  protected
    function GetMatchDayNumber: IJanuaField;
    procedure SetMatchDayNumber(const Value: IJanuaField);
  public
    constructor Create; override;
    property MatchDayNumber: IJanuaField read GetMatchDayNumber write SetMatchDayNumber;
  end;

  TMatchDayNumbers = class(TJanuaRecordSet, IJanuaRecordSet, IMatchDayNumbers)
  protected
    function GetMatchDayNumber: IJanuaField;
    procedure SetMatchDayNumber(const Value: IJanuaField);
    function GetMatchDay: IMatchDayNumber;
    procedure SetMatchDay(const Value: IMatchDayNumber);
  public
    constructor Create; override;
    property MatchDayNumber: IJanuaField read GetMatchDayNumber write SetMatchDayNumber;
    property MatchDay: IMatchDayNumber read GetMatchDay write SetMatchDay;
  end;

  TCustomMatchDays = class(TJanuaRecordSet, IJanuaRecordSet, IMatchDays)
  private
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetMatchDayNumber: IJanuaField;
    procedure SetMatchDayNumber(const Value: IJanuaField);
    function GetMatchDayDate: IJanuaField;
    procedure SetMatchDayDate(const Value: IJanuaField);
    function GetMatchDayPlayed: IJanuaField;
    procedure SetMatchDayPlayed(const Value: IJanuaField);
    function GetRestTeamId: IJanuaField;
    procedure SetRestTeamId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetMatchDay: IMatchDay;
    procedure SetMatchDay(const Value: IMatchDay);
  public
    property MatchDay: IMatchDay read GetMatchDay write SetMatchDay;
  end;

  TMatchDays = class(TCustomMatchDays, IJanuaRecordSet, IMatchDays)
  public
    constructor Create; override;
  end;

  TMatchCalendarDays = class(TCustomMatchDays, IJanuaRecordSet, IMatchDays, IMatchCalendarDays)
  public
    constructor Create; override;
  private
    function GetMatchCalendarDay: IMatchCalendarDay;
    procedure SetMatchCalendarDay(const Value: IMatchCalendarDay);
    function GetMatches: IMatches;
    procedure SetMatches(const Value: IMatches);
  public
    property MatchCalendarDay: IMatchCalendarDay read GetMatchCalendarDay write SetMatchCalendarDay;
    property Matches: IMatches read GetMatches write SetMatches;
  end;

  TMatchDayFactory = class
    class function CreateRecord(const aKey: string): IMatchDay; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IMatchDays; overload;
  end;

  TMatchCalendarDayFactory = class
    class function CreateRecord(const aKey: string): IMatchCalendarDay; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IMatchCalendarDays; overload;
  end;

  TMatchDayNumberFactory = class
    class function CreateRecord(const aKey: string): IMatchDayNumber; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IMatchDayNumbers; overload;
  end;

implementation

uses Janua.Orm.Types, JOrm.Football.Matches.Impl;

// ------------------------------------------ Impl TMatchDay -------------------------------

{ TMatchDay }

constructor TMatchDay.Create;
begin
  inherited;
  self.FPrefix := 'fmtd';
  SetEntity(TJanuaEntity.FtMatchDays);
  FSeasonId := TJanuaOrmFactory.CreateSmallintField('season_id', 'season_id');
  FSeasonIdIndex := AddField(FSeasonId);
  FLeagueId := TJanuaOrmFactory.CreateSmallintField('league_id', 'league_id');
  FLeagueIdIndex := AddField(FLeagueId);
  FMatchDayNumber := TJanuaOrmFactory.CreateSmallintField('match_day_number', 'match_day_number');
  FMatchDayNumberIndex := AddField(FMatchDayNumber);
  // Campo non Gestitomatch_day_date Type= ftDate
  // Campo non Gestitomatch_day_played Type= ftDate
  FRestTeamId := TJanuaOrmFactory.CreateIntegerField('rest_team_id', 'rest_team_id');
  FRestTeamIdIndex := AddField(FRestTeamId);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
end;

function TMatchDay.GetSeasonId: IJanuaField;
begin
  Result := FSeasonId;
end;

procedure TMatchDay.SetSeasonId(const Value: IJanuaField);
begin
  FSeasonId := Value;
end;

function TMatchDay.GetLeagueId: IJanuaField;
begin
  Result := FLeagueId;
end;

procedure TMatchDay.SetLeagueId(const Value: IJanuaField);
begin
  FLeagueId := Value;
end;

function TMatchDay.GetMatchDayNumber: IJanuaField;
begin
  Result := FMatchDayNumber;
end;

procedure TMatchDay.SetMatchDayNumber(const Value: IJanuaField);
begin
  FMatchDayNumber := Value;
end;

function TMatchDay.GetMatchDayDate: IJanuaField;
begin
  Result := FMatchDayDate;
end;

procedure TMatchDay.SetMatchDayDate(const Value: IJanuaField);
begin
  FMatchDayDate := Value;
end;

function TMatchDay.GetMatchDayPlayed: IJanuaField;
begin
  Result := FMatchDayPlayed;
end;

procedure TMatchDay.SetMatchDayPlayed(const Value: IJanuaField);
begin
  FMatchDayPlayed := Value;
end;

function TMatchDay.GetRestTeamId: IJanuaField;
begin
  Result := FRestTeamId;
end;

procedure TMatchDay.SetRestTeamId(const Value: IJanuaField);
begin
  FRestTeamId := Value;
end;

function TMatchDay.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TMatchDay.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

{ TMatchDays }
constructor TMatchDays.Create;
begin
  inherited;
  self.FRecord := TMatchDayFactory.CreateRecord('MatchDay');
end;

{ TCustomMatchDays }

function TCustomMatchDays.GetSeasonId: IJanuaField;
begin
  Result := self.MatchDay.SeasonId;
end;

procedure TCustomMatchDays.SetSeasonId(const Value: IJanuaField);
begin
  self.MatchDay.SeasonId := Value;
end;

function TCustomMatchDays.GetLeagueId: IJanuaField;
begin
  Result := self.MatchDay.LeagueId;
end;

procedure TCustomMatchDays.SetLeagueId(const Value: IJanuaField);
begin
  self.MatchDay.LeagueId := Value;
end;

function TCustomMatchDays.GetMatchDayNumber: IJanuaField;
begin
  Result := self.MatchDay.MatchDayNumber;
end;

procedure TCustomMatchDays.SetMatchDayNumber(const Value: IJanuaField);
begin
  self.MatchDay.MatchDayNumber := Value;
end;

function TCustomMatchDays.GetMatchDayDate: IJanuaField;
begin
  Result := self.MatchDay.MatchDayDate;
end;

procedure TCustomMatchDays.SetMatchDayDate(const Value: IJanuaField);
begin
  self.MatchDay.MatchDayDate := Value;
end;

function TCustomMatchDays.GetMatchDayPlayed: IJanuaField;
begin
  Result := self.MatchDay.MatchDayPlayed;
end;

procedure TCustomMatchDays.SetMatchDayPlayed(const Value: IJanuaField);
begin
  self.MatchDay.MatchDayPlayed := Value;
end;

function TCustomMatchDays.GetRestTeamId: IJanuaField;
begin
  Result := self.MatchDay.RestTeamId;
end;

procedure TCustomMatchDays.SetRestTeamId(const Value: IJanuaField);
begin
  self.MatchDay.RestTeamId := Value;
end;

function TCustomMatchDays.GetDbSchemaId: IJanuaField;
begin
  Result := self.MatchDay.DbSchemaId;
end;

procedure TCustomMatchDays.SetDbSchemaId(const Value: IJanuaField);
begin
  self.MatchDay.DbSchemaId := Value;
end;

function TCustomMatchDays.GetMatchDay: IMatchDay;
begin
  Result := self.FRecord as IMatchDay;
end;

procedure TCustomMatchDays.SetMatchDay(const Value: IMatchDay);
begin
  self.FRecord := Value;
end;

{ TMatchDayFactory }

class function TMatchDayFactory.CreateRecord(const aKey: string): IMatchDay;
begin
  Result := TMatchDay.Create;
end;

class function TMatchDayFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IMatchDays;
begin
  Result := TMatchDays.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TMatchDayNumber }

constructor TMatchDayNumber.Create;
begin
  inherited;
  self.FPrefix := 'fmtd';
  // TJanuaEntity.FtMatchDays]
  self.SetEntity(FtMatchDays);
  FMatchDayNumber := TJanuaOrmFactory.CreateSmallintField('match_day_number', 'match_day_number');
  FMatchDayNumberIndex := AddField(FMatchDayNumber);
end;

function TMatchDayNumber.GetMatchDayNumber: IJanuaField;
begin
  Result := self.FMatchDayNumber
end;

procedure TMatchDayNumber.SetMatchDayNumber(const Value: IJanuaField);
begin
  self.FMatchDayNumber := Value
end;

{ TMatchDayNumbers }

constructor TMatchDayNumbers.Create;
begin
  inherited;
  self.FRecord := TMatchDayNumberFactory.CreateRecord('MatchDayNumber');
end;

function TMatchDayNumbers.GetMatchDay: IMatchDayNumber;
begin
  Result := self.FRecord as IMatchDayNumber;
end;

function TMatchDayNumbers.GetMatchDayNumber: IJanuaField;
begin
  Result := self.GetMatchDay.MatchDayNumber
end;

procedure TMatchDayNumbers.SetMatchDay(const Value: IMatchDayNumber);
begin
  self.FRecord := Value
end;

procedure TMatchDayNumbers.SetMatchDayNumber(const Value: IJanuaField);
begin
  self.MatchDay.MatchDayNumber := Value
end;

{ TMatchDayNumberFactory }

class function TMatchDayNumberFactory.CreateRecord(const aKey: string): IMatchDayNumber;
begin
  Result := TMatchDayNumber.Create;
end;

class function TMatchDayNumberFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IMatchDayNumbers;
begin
  Result := TMatchDayNumbers.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TMatchCalendarDayFactory }

class function TMatchCalendarDayFactory.CreateRecord(const aKey: string): IMatchCalendarDay;
begin
  Result := TMatchCalendarDay.Create;
end;

class function TMatchCalendarDayFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IMatchCalendarDays;
begin
  Result := TMatchCalendarDays.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TMatchCalendarDays }

constructor TMatchCalendarDays.Create;
begin
  inherited;
  FRecord := TMatchCalendarDayFactory.CreateRecord('MatchCalendarDay');
end;

function TMatchCalendarDays.GetMatchCalendarDay: IMatchCalendarDay;
begin
  Result := self.FRecord as IMatchCalendarDay;
end;

function TMatchCalendarDays.GetMatches: IMatches;
begin
  Result := MatchCalendarDay.Matches
end;

procedure TMatchCalendarDays.SetMatchCalendarDay(const Value: IMatchCalendarDay);
begin
  FRecord := Value;
end;

procedure TMatchCalendarDays.SetMatches(const Value: IMatches);
begin
  MatchCalendarDay.Matches := Value
end;

{ TMatchCalendarDay }

constructor TMatchCalendarDay.Create;
begin
  inherited;
  // This Creates the Detail Recordset for each Match Day
  self.FMatches := TMatchFactory.CreateRecordset('matches', nil, nil);
  // Then adds to RecordSets List the newly create Detail Recordset
  self.AddRecordSet(FMatches);
end;

function TMatchCalendarDay.GetMatches: IMatches;
begin
  Result := self.FMatches
end;

procedure TMatchCalendarDay.SetMatches(const Value: IMatches);
begin
  self.FMatches := Value
end;

end.
