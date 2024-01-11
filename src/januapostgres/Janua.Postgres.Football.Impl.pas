unit Janua.Postgres.Football.Impl;

interface

uses Janua.Football.Server.Impl, Janua.Orm.Intf, Janua.Football.Intf, Janua.Football.Server.Intf,
  Janua.Server.Intf, udmPgFootballStorage, PgAccess;

type
  TJanuaPgFootballStorage = class(TJanuaCustomFootballStorage, IJanuaStorage, IJanuaFootballStorage,
    IJanuaDBFootballStorage)
  private
    function GetParamByName(const aName: string; aDataset: TPgQuery): TPgParam;
  protected
    FDM: udmPgFootballStorage.TdmPgFootballStorage;
    procedure InternalCreateDBDataSets;
    procedure InternalCreateDataset;
    procedure InternalDestroyDataset;
  public
    procedure RefreshData;
    function OpenLastSeason: integer;
    function OpenFirstLeague: integer;
    procedure CheckSeasonID;
    procedure CheckChampionshipID;
    procedure CheckMatchDay;
    { Private declarations }
  public
    constructor Create; override;
    destructor Destroy; override;
  public
    { Football Functions and Procedure }
    procedure OpenSeasonsList;
    procedure OpenChampionshipTeam;
    procedure OpenSeasons;
    procedure OpenChampionShips;
    procedure OpenMatchDetail;
    procedure OpenChampionship;
    procedure TestOpenChampionship;
    procedure OpenChampionshipSummary;
    procedure OpenGoalRanking;
    procedure OpenMatches;
    procedure OpenNextMatches;
    procedure OpenMatchTeam(aMatchID: Int64; aTeamID: integer);
    procedure OpenRanking;
    procedure OpenSeasonChampionship(aSeasonID, aChampionshipID: integer);
    { Deprecated Functions and Procedure }
    function GetChampionshipDayName: string;
    function GetLastMatchDay: smallint;
    procedure SetupSeason(aSeasonID: integer; aLeagueID: smallint);
    procedure OpenCDSGolRanking(aSeasonID, aLeague, aDay: integer);
    procedure OpenDefaultSeason;
    procedure OpenDefaultSeasonChampionship;
    procedure SetNextMatchDay;
    procedure OpenCalendar;
    procedure OpenLiveScore;
    procedure OpenTeamPlayers;
    procedure OpenPlayerCareer;
    function OpenSeason(aSeason: smallint): Boolean;
    function SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint;
    function GetLastSeasonID: smallint;
    function GetChampionshipsDataset(aSeason: integer): integer;
    function OpenDynamicRanking: integer;
    function OpenMatchDayLists: integer;
    function OpenDynamicGoalRanking: integer;
  end;

type
  TJanuaServerPgFootballFactory = class(TJanuaServerFootballFactory, IJanuaServerFootballFactory)
  public
    function GetFootballStorage: IJanuaFootballStorage; override;
  end;

implementation

uses System.SysUtils, Spring, Janua.Orm.UniDac, Janua.Core.Functions, System.Math, System.StrUtils,
  Janua.Football.Impl;

{ TJanuaVirtualFootballStorage }

procedure TJanuaPgFootballStorage.CheckChampionshipID;
begin
  if FFootballSettings.league_id = 0 then
    FFootballSettings.league_id := self.OpenFirstLeague;
end;

procedure TJanuaPgFootballStorage.CheckMatchDay;
begin
  if (FFootballSettings.match_day = 0) and (FFootballSettings.match_id = 0) then
    self.GetLastMatchDay
end;

procedure TJanuaPgFootballStorage.CheckSeasonID;
begin
  { TODO : Spostare la funyione CheckSeasonID su Server e non su Storage }
  if self.FFootballSettings.season_id = 0 then
    OpenLastSeason
end;

constructor TJanuaPgFootballStorage.Create;
begin
  inherited;
  SetDBFunctions(TPgDatasetFunctions.Create);
  SetInternalCreateDataset(InternalCreateDataset);
  SetInternalDestroyDataset(InternalDestroyDataset);
end;

destructor TJanuaPgFootballStorage.Destroy;
begin
  if Assigned(self.FDM) then
    self.FDM.Free;
  FDM := nil;
  inherited;
end;

function TJanuaPgFootballStorage.GetChampionshipDayName: string;
begin
  OpenChampionship;
  Result := 'Marcatori ' + FDM.qryChampionshipsleague_name.AsWideString + ' ' +
    FDM.qryChampionshipsseason_des.AsWideString;
end;

function TJanuaPgFootballStorage.GetChampionshipsDataset(aSeason: integer): integer;
begin
  Result := -1;
end;

function TJanuaPgFootballStorage.GetLastMatchDay: smallint;
begin
  // FFootballSettings.match_day  := FDM.GetLastMatchDay;
  if (FDM.qryLastMatch.ParamByName('season_id').Value <> self.FFootballSettings.season_id) or
    (FDM.qryLastMatch.ParamByName('league_id').Value <> FFootballSettings.league_id) or
    (FFootballSettings.match_day = 0) then
  begin
    FDM.qryLastMatch.Close;
    self.FDM.qryLastMatch.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    self.FDM.qryLastMatch.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    FDM.ServerFunctions.OpenDataset(FDM.qryLastMatch);
    FFootballSettings.match_day := IfThen(FDM.qryLastMatchlast_match.AsInteger = 0, 1,
      FDM.qryLastMatchlast_match.AsInteger);
    self.FDM.qryLastMatch.Close;
  end;
  Result := FFootballSettings.match_day;
end;

function TJanuaPgFootballStorage.GetLastSeasonID: smallint;
begin
  Result := -1;
  // Default to -1 is an Error as no-data-found ......................................................................
  FFootballSettings.season_id := 0;
  Result := self.OpenLastSeason;
  // OpenDefaultSeason;
end;

function TJanuaPgFootballStorage.GetParamByName(const aName: string; aDataset: TPgQuery): TPgParam;
begin
  Result := aDataset.ParamByName(aName)
end;

procedure TJanuaPgFootballStorage.InternalCreateDataset;
begin
  inherited;
  if not Assigned(FDM) then
  begin
    self.FDM := TdmPgFootballStorage.Create(nil);
    InternalCreateDBDataSets
  end;

end;

procedure TJanuaPgFootballStorage.InternalCreateDBDataSets;
begin
  inherited;
  // qryTeamPlayers ?????????????????????????????????????????????????????????
  { TODO : Verificare Query Team Players non hanno il Dataset Assegnato }
  self.FjdsMatches := TJanuaPgDataset.Create(FDM.qryMatches);
  self.FjdsNextMatchDay := TJanuaPgDataset.Create(FDM.qryNextMatchDay);
  self.jdsChampionship := TJanuaPgDataset.Create(FDM.qryChampionship);
  self.jdsChampionships := TJanuaPgDataset.Create(FDM.qryChampionships);
  self.jdsGolRanking := TJanuaPgDataset.Create(FDM.qryGolRanking);
  self.jdsChampRanking := TJanuaPgDataset.Create(FDM.qryChampRanking);
  self.jdsSeasons := TJanuaPgDataset.Create(FDM.qrySeasons);
  // per ora uso la stessa tabelle di jdsChampionships
  self.jdsSeasonLeagues := TJanuaPgDataset.Create(FDM.qryChampionships);
  self.jdsMatchDay := TJanuaPgDataset.Create(FDM.qryMatchDay);
  self.jdsNextMatches := TJanuaPgDataset.Create(FDM.qryNextMatches);
  // le singole partite con match, formazioni ed eventi del match
  FjdsMatchDetail := TJanuaPgDataset.Create(FDM.qryMatchDetail);
  FjdsMatchDetailEvents := TJanuaPgDataset.Create(FDM.qryMatchDetailEvents);
  FjdsMatchDetailHomePlayers := TJanuaPgDataset.Create(FDM.qryMatchHomePlayers);
  FjdsMatchDetailVisitorPlayers := TJanuaPgDataset.Create(FDM.qryMatchVisitorsPlayers);
  // Dynamic Ranking
  self.FjdsDynamicRanking := TJanuaPgDataset.Create(FDM.qryDynamicRanking);
  self.FjdsLookupMatchDays := TJanuaPgDataset.Create(FDM.lkpMatchDays);
  // in questo momento Goal Ranking non è proprio 'molto' dynamic ...........
  { TODO : Verificare FjdsDynamicGoalRanking non hanno il Dataset Assegnato }
  self.FjdsDynamicGoalRanking := TJanuaPgDataset.Create(FDM.qryGolRanking);
  self.FjdsPlayerCareers := TJanuaPgDataset.Create(FDM.qryPlayerCareer);
  // Calendar Days & Calendar Matches
  self.FjdsCalendarMatches := TJanuaPgDataset.Create(FDM.qryCalendarMatches);
  self.FjdsCalendarMatchDay := TJanuaPgDataset.Create(FDM.qryCalendarDay);
  // FSelectedSeasonStorage: IJanuaRecordSetStorage;
  // per ora uso vtSeasons in realtà dovrei usare vtSelectedSeason per essere coerente ...
  FjdsSelectedSeason := TJanuaPgDataset.Create(FDM.qrySeasons);
end;

procedure TJanuaPgFootballStorage.InternalDestroyDataset;
begin
  inherited;
  if Assigned(self.FDM) and not self.KeepAlive then
  begin
    self.FDM.Free;
    FDM := nil;
  end;
end;

procedure TJanuaPgFootballStorage.OpenCalendar;
begin
  self.InternalCreateDataset;
  self.OpenChampionship;
  if (FDM.qryCalendarDay.ParamByName('season_id').AsInteger <> FFootballSettings.season_id) or
    (FDM.qryCalendarDay.ParamByName('league_id').AsInteger <> FFootballSettings.league_id) or
    not FDM.qryCalendarDay.Active then
  begin
    FDM.qryCalendarDay.Close;
    FDM.qryCalendarDay.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    FDM.qryCalendarDay.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    DBFunctions.OpenDataset(FDM.qryCalendarDay);
  end;
  FDM.qryCalendarMatches.Open;
end;

procedure TJanuaPgFootballStorage.OpenCDSGolRanking(aSeasonID, aLeague, aDay: integer);
begin
  self.InternalCreateDataset;
  if (FDM.qryGolRanking.Params[0].AsInteger <> aSeasonID) or (FDM.qryGolRanking.Params[1].AsInteger <> aLeague)
  then
    FDM.qryGolRanking.Close;
  if not FDM.qryGolRanking.Active then
  begin
    FDM.qryGolRanking.Params[0].AsInteger := aSeasonID;
    FDM.qryGolRanking.Params[10].AsInteger := aLeague;
    DBFunctions.OpenDataset(FDM.qryGolRanking);
  end;
end;

procedure TJanuaPgFootballStorage.OpenChampionship;
begin
  { TODO : Spostare la funyione Open Championship solo su Server e non su Storage }
  self.CheckSeasonID;
  self.CheckChampionshipID;
  TestOpenChampionship;
  if FDM.qryChampionship.RecordCount = 0 then
  begin
    OpenLastSeason;
    OpenFirstLeague;
    TestOpenChampionship;
  end;
  self.CheckMatchDay;
end;

procedure TJanuaPgFootballStorage.OpenChampionShips;
begin
  if (GetParamByName('season_id', FDM.qryChampionships).AsInteger <> FFootballSettings.season_id) or
    not FDM.qryChampionships.Active then
  begin
    FDM.qryChampionships.Close;
    GetParamByName('season_id', FDM.qryChampionships).AsInteger := FFootballSettings.season_id;
    DBFunctions.OpenDataset(FDM.qryChampionships);
    FDM.qryChampionships.First;
    self.FChampionshipsCount := FDM.qryChampionships.RecordCount;
  end;

  // Al momento aprendo la lista dei campionati non apro in partenza il BillBoard della giornata di Default del primo
  // Campionato in lista, semmai si demanda questa procedura ad una seconda chiamata ad esempio per la generazione
  // della pagina web di 'benvenuto' sul sito web principale.

  {
    if league_id > 0 then
    qryChampionships.Locate('league_id', league_id, [])
    else
    self.Setleague_id(self.qryChampionshipsleague_id.AsInteger);

    if self.Fmatch_day = 0 then
    self.Fmatch_day := GetLastMatchDay;

    self.OpenRanking;
    self.OpenGoalRanking;
    self.OpenMatches;
    self.OpenNextMatches;
  }
end;

procedure TJanuaPgFootballStorage.OpenChampionshipSummary;
begin
  Guard.CheckNotNull(FDM, 'OpenChampionshipSummary FMD is null');
  self.CheckSeasonID;
  self.CheckChampionshipID;
  self.OpenChampionship;
  self.OpenRanking;
  self.OpenGoalRanking;
  self.OpenMatches;
  self.OpenNextMatches;
end;

procedure TJanuaPgFootballStorage.OpenChampionshipTeam;
begin
  Guard.CheckNotNull(FDM, 'OpenChampionshipTeam FMD is null');
  self.OpenChampionship;
  self.OpenSeasonChampionship(FFootballSettings.season_id, FFootballSettings.league_id);
  FDM.qryChampionshipTeam.ParamByName('team_id').AsInteger := FFootballSettings.team_id;
  FDM.qryChampionshipTeam.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
  FDM.qryChampionshipTeam.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
  DBFunctions.OpenDataset(FDM.qryChampionshipTeam);
  DBFunctions.OpenDataset(FDM.qryTeamPlayers);
  DBFunctions.OpenDataset(FDM.qryTeamMatches);
end;

procedure TJanuaPgFootballStorage.OpenDefaultSeason;
begin
  Guard.CheckNotNull(FDM, 'OpenDefaultSeason FMD is null');
  if not FDM.qrySeasons.Active then
  begin
    FDM.qrySeasons.ParamByName('season_id').AsSmallInt := 0;
    DBFunctions.OpenDataset(FDM.qrySeasons);
  end;
  FDM.qrySeasons.First;

  if FFootballSettings.season_id > 0 then
    FDM.qrySeasons.Locate('season_id', FFootballSettings.season_id, [])
  else
    FFootballSettings.season_id := FDM.qrySeasonsseason_id.AsInteger;
end;

procedure TJanuaPgFootballStorage.OpenDefaultSeasonChampionship;
begin
  Guard.CheckNotNull(FDM, 'OpenDefaultSeasonChampionship FMD is null');
  self.OpenDefaultSeason;
  self.OpenChampionShips;
end;

function TJanuaPgFootballStorage.OpenDynamicGoalRanking: integer;
begin
  (*
    and m.season_id = :season_id and m.league_id = :league_id
    and e.event_id = 1
    and (m.match_day_number >= :from or :from = 0) and (m.match_day_number <= :to or :to = 0)
  *)
  Guard.CheckNotNull(FDM, self.ClassName + '.OpenDynamicGoalRanking FMD is null');
  OpenChampionship;
  if not FDM.DynamicGolRanking.Active or { Check at first if DS is active then checks params }
    (FDM.DynamicGolRanking.ParamByName('season_id').Value <> FFootballSettings.season_id) or
    (FDM.DynamicGolRanking.ParamByName('league_id').Value <> FFootballSettings.league_id) or
    (FDM.DynamicGolRanking.ParamByName('from').AsInteger <> FFootballSettings.match_day_from) or
    (FDM.DynamicGolRanking.ParamByName('to').AsInteger <> FFootballSettings.match_day_to) then
  begin
    FDM.DynamicGolRanking.Close;
    FDM.DynamicGolRanking.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    FDM.DynamicGolRanking.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    FDM.DynamicGolRanking.ParamByName('from').AsInteger := FFootballSettings.match_day_from;
    FDM.DynamicGolRanking.ParamByName('to').AsInteger := FFootballSettings.match_day_to;
    FDM.DynamicGolRanking.Open;
  end;
  Result := FDM.DynamicGolRanking.RecordCount
end;

function TJanuaPgFootballStorage.OpenDynamicRanking: integer;
begin
  Guard.CheckNotNull(FDM, self.ClassName + '.OpenDynamicRanking FMD is null');
  self.OpenChampionship;
  if not FDM.qryDynamicRanking.Active or { Check at first if DS is active then checks params }
    (FDM.qryDynamicRanking.ParamByName('season_id').Value <> FFootballSettings.season_id) or
    (FDM.qryDynamicRanking.ParamByName('league_id').Value <> FFootballSettings.league_id) or
    (FDM.qryDynamicRanking.ParamByName('from').AsInteger <> FFootballSettings.match_day_from) or
    (FDM.qryDynamicRanking.ParamByName('to').AsInteger <> FFootballSettings.match_day_to) then
  begin
    FDM.qryDynamicRanking.Close;
    FDM.qryDynamicRanking.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    FDM.qryDynamicRanking.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    FDM.qryDynamicRanking.ParamByName('from').AsInteger := FFootballSettings.match_day_from;
    FDM.qryDynamicRanking.ParamByName('to').AsInteger := FFootballSettings.match_day_to;
    FDM.qryDynamicRanking.Open;
  end;
  Result := FDM.qryDynamicRanking.RecordCount
end;

function TJanuaPgFootballStorage.OpenFirstLeague: integer;
begin
  Guard.CheckNotNull(FDM, self.ClassName + 'OpenFirstLeague FMD is null');
  FDM.qryFirstSeasonLeague.Close;
  FDM.qryFirstSeasonLeague.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
  FDM.qryFirstSeasonLeague.Open;
  Result := FDM.qryFirstSeasonLeagueleague_id.AsInteger;
  FFootballSettings.league_id := Result;
  FDM.qryFirstSeasonLeague.Close;
end;

procedure TJanuaPgFootballStorage.OpenGoalRanking;
begin
  Guard.CheckNotNull(FDM, self.ClassName + 'OpenGoalRanking FMD is null');
  self.OpenChampionship;
  if (FDM.qryGolRanking.ParamByName('season_id').Value <> FFootballSettings.season_id) or
    (FDM.qryGolRanking.ParamByName('league_id').Value <> FFootballSettings.league_id) or
    (not FDM.qryGolRanking.Active) then
  begin
    FDM.qryGolRanking.Close;
    FDM.qryGolRanking.ParamByName('season_id').Value := FFootballSettings.season_id;
    FDM.qryGolRanking.ParamByName('league_id').Value := FFootballSettings.league_id;
    DBFunctions.OpenDataset(FDM.qryGolRanking);
    FDM.qryGolRanking.First;
  end;
end;

function TJanuaPgFootballStorage.OpenLastSeason: integer;
begin
  Guard.CheckNotNull(FDM, self.ClassName + 'OpenLastSeason FMD is null');
  FDM.qryLastSeason.Close;
  DBFunctions.OpenDataset(FDM.qryLastSeason);
  FFootballSettings.season_id := FDM.qryLastSeasonseason_id.AsInteger;
  Result := FFootballSettings.season_id;
end;

procedure TJanuaPgFootballStorage.OpenLiveScore;
begin
  (*

    match_day_number = :match_day_number
    and c.league_id = :league_id
    and c.season_id = :season_id
    and :match_id = 0


    Live score da sistema. Se Match ID è ‘nullo’ apre nell’ordine
    Campionato (stagione lega ultima giornata)
    Classifica Squadre
    Classifica Marcatori
    se MatchDay = 0 esegue GetLastMatchDay

    dopodiché apre i risultati se match_id è <> 0 allora apre il match altrimenti apre tutti i match della giornata insieme.

  *)

  Guard.CheckNotNull(FDM, 'OpenLiveScore FMD is null');
  if FFootballSettings.match_id = 0 then
  begin
    self.OpenChampionship;
    {
      self.OpenRanking;
      self.OpenGoalRanking;
    }
    if (FFootballSettings.match_day = 0) then
      GetLastMatchDay;
  end;

  FDM.qryMatchDetail.Close;
  FDM.qryMatchDetail.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
  FDM.qryMatchDetail.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
  FDM.qryMatchDetail.ParamByName('match_day_number').AsInteger := FFootballSettings.match_day;
  FDM.qryMatchDetail.ParamByName('match_id').AsInteger := FFootballSettings.match_id;
  FDM.qryMatchDetail.Open;
end;

function TJanuaPgFootballStorage.OpenMatchDayLists: integer;
begin
  Result := 0;
  Guard.CheckNotNull(FDM, self.ClassName + '.OpenMatchDayLists FMD is null');
  // all'inizio verifico che siano aperte le tabelle base del campionato (Stagione, Campionato)
  OpenChampionship;
  // Se non è già aperta la query e non ritorna un numero di record > 0 allora rieseguo la ricerca
  if not(FDM.lkpMatchDays.Active and (FDM.lkpMatchDays.RecordCount > 0) and
    (FDM.lkpMatchDays.ParamByName('league_id').AsInteger = FFootballSettings.league_id) or
    (FDM.lkpMatchDays.ParamByName('season_id').AsInteger = FFootballSettings.season_id)) then
  begin
    FDM.lkpMatchDays.Close;
    FDM.lkpMatchDays.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    FDM.lkpMatchDays.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    FDM.lkpMatchDays.Open;
  end;
  Result := FDM.lkpMatchDays.RecordCount;
end;

procedure TJanuaPgFootballStorage.OpenMatchDetail;
begin
  Guard.CheckNotNull(FDM, self.ClassName + 'OpenMatchDetail FMD is null');
  OpenChampionship;
  if FFootballSettings.match_id > 0 then
  begin
    FDM.qryMatchDetail.ParamByName('match_day_number').AsInteger := 0;
    FDM.qryMatchDetail.ParamByName('league_id').AsInteger := 0;
    FDM.qryMatchDetail.ParamByName('season_id').AsInteger := 0;
    FDM.qryMatchDetail.ParamByName('match_id').AsLargeInt := FFootballSettings.match_id
  end
  else
  begin
    {
      match_day_number = :match_day_number
      and c.league_id = :league_id
      and c.season_id = :season_id
      and :match_id = 0
    }
    FDM.qryMatchDetail.ParamByName('match_id').AsLargeInt := 0;
    FDM.qryMatchDetail.ParamByName('match_day_number').AsInteger := FFootballSettings.match_day;
    FDM.qryMatchDetail.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    FDM.qryMatchDetail.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
  end;
  DBFunctions.OpenDataset(FDM.qryMatchDetail);
  if FDM.qryChampionship.RecordCount = 0 then
  begin
    FFootballSettings.season_id := FDM.qryMatchDetailseason_id.AsInteger;
    FFootballSettings.league_id := FDM.qryMatchDetailleague_id.AsInteger;
    FFootballSettings.match_day := FDM.qryMatchDetailmatch_day_number.AsInteger;
    OpenChampionship;
  end;
end;

procedure TJanuaPgFootballStorage.OpenMatches;
begin
  OpenChampionship;
  if (FDM.qryMatchDay.ParamByName('season_id').AsInteger <> FFootballSettings.season_id) or
    (FDM.qryMatchDay.ParamByName('league_id').AsInteger <> FFootballSettings.league_id) or
    (FDM.qryMatchDay.ParamByName('match_day_number').Value <> FFootballSettings.match_day) or
    (not FDM.qryMatchDay.Active) then
  begin
    FDM.qryMatchDay.Close;
    FDM.qryMatchDay.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    FDM.qryMatchDay.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    FDM.qryMatchDay.ParamByName('match_day_number').Value := FFootballSettings.match_day;
    DBFunctions.OpenDataset(FDM.qryMatchDay);
  end;

  if (FDM.qryMatches.ParamByName('season_id').Value <> FFootballSettings.season_id) or
    (FDM.qryMatches.ParamByName('league_id').Value <> FFootballSettings.league_id) or
    (FDM.qryMatches.ParamByName('match_day_number').Value <> FFootballSettings.match_day) or
    (not FDM.qryMatches.Active) then
  begin
    FDM.qryMatches.Close;
    FDM.qryMatches.ParamByName('season_id').Value := FFootballSettings.season_id;
    FDM.qryMatches.ParamByName('league_id').Value := FFootballSettings.league_id;
    FDM.qryMatches.ParamByName('match_day_number').Value := FFootballSettings.match_day;
    DBFunctions.OpenDataset(FDM.qryMatches);
  end;
  Fmatchescount := FDM.qryMatches.RecordCount;
end;

procedure TJanuaPgFootballStorage.OpenMatchTeam(aMatchID: Int64; aTeamID: integer);
begin
  self.InternalCreateDataset;
  FFootballSettings.match_id := aMatchID;
  FFootballSettings.match_team := aTeamID;
  GetParamByName('team_id', FDM.qryTeam).Value := aTeamID;
  DBFunctions.OpenDataset(FDM.qryTeam);

  self.FDM.qryMatchTeamPlayers.Close;
  GetParamByName('team_id', FDM.qryMatchTeamPlayers).Value := aTeamID;
  GetParamByName('match_id', FDM.qryMatchTeamPlayers).Value := aMatchID;
  DBFunctions.OpenDataset(FDM.qryMatchTeamPlayers);
end;

procedure TJanuaPgFootballStorage.OpenNextMatches;
begin
  self.InternalCreateDataset;
  if self.FFootballSettings.match_day = 0 then
    self.GetLastMatchDay;

  if (GetParamByName('season_id', FDM.qryNextMatches).Value <> FFootballSettings.season_id) or
    (GetParamByName('league_id', FDM.qryNextMatches).Value <> FFootballSettings.league_id) or
    (GetParamByName('match_day_number', FDM.qryNextMatches).Value <> FFootballSettings.match_day + 1) then
  begin
    FDM.qryNextMatches.Close();
    GetParamByName('season_id', FDM.qryNextMatches).Value := FFootballSettings.season_id;
    GetParamByName('league_id', FDM.qryNextMatches).Value := FFootballSettings.league_id;
    GetParamByName('match_day_number', FDM.qryNextMatches).Value := FFootballSettings.match_day + 1;
    DBFunctions.OpenDataset(FDM.qryNextMatches);
  end;

  if (GetParamByName('season_id', FDM.qryNextMatchDay).Value <> FFootballSettings.season_id) or
    (GetParamByName('league_id', FDM.qryNextMatchDay).Value <> FFootballSettings.league_id) or
    (GetParamByName('match_day_number', FDM.qryNextMatchDay).Value <> FFootballSettings.match_day + 1) or
    (not FDM.qryNextMatchDay.Active) then
  begin
    FDM.qryNextMatchDay.Close;
    GetParamByName('season_id', FDM.qryNextMatchDay).Value := FFootballSettings.season_id;
    GetParamByName('league_id', FDM.qryNextMatchDay).Value := FFootballSettings.league_id;
    GetParamByName('match_day_number', FDM.qryNextMatchDay).Value := FFootballSettings.match_day + 1;
    DBFunctions.OpenDataset(FDM.qryNextMatchDay);
  end;

  self.Fnextmatchescount := FDM.qryNextMatches.RecordCount;
end;

procedure TJanuaPgFootballStorage.OpenPlayerCareer;
begin
  try
    WriteLocalLog('OpenPlayerCareer', 'Player Career: ' + FFootballSettings.player_id.ToString);
    InternalCreateDataset;
    FDM.qryPlayer.Close;
    FDM.qryPlayer.ParamByName('player_id').AsInteger := FFootballSettings.player_id;
    FDM.qryPlayer.Open;
    WriteLocalLog('OpenPlayerCareer', 'Player Career Records: ' + FDM.qryPlayer.RecordCount.ToString);
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('OpenPlayerCareer', e, self, self.LogString);
  end
end;

procedure TJanuaPgFootballStorage.OpenRanking;
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      self.InternalCreateDataset;
      if (not FDM.qryChampRanking.Active) or (FDM.qryChampRanking.ParamByName('season_id').Value <>
        FFootballSettings.season_id) or (FDM.qryChampRanking.ParamByName('league_id').Value <>
        FFootballSettings.league_id) then
      begin
        FDM.qryChampRanking.Close();
        FDM.qryChampRanking.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
        FDM.qryChampRanking.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
        DBFunctions.OpenDataset(FDM.qryChampRanking);
      end;
      self.rankingcount := FDM.qryChampRanking.RecordCount;
    end, 'OpenRanking', self);
end;

function TJanuaPgFootballStorage.OpenSeason(aSeason: smallint): Boolean;
begin
  Result := False;
  try
    self.FootballSettings.season_id := aSeason;

    self.InternalCreateDataset;
    FDM.qrySeasons.Close;
    FDM.qrySeasons.ParamByName('season_id').AsSmallInt := aSeason;
    FDM.qrySeasons.Open;
    Result := FDM.qrySeasons.RecordCount > 0;
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('OpenSeason', e, self, self.LogString);
  end;
end;

procedure TJanuaPgFootballStorage.OpenSeasonChampionship(aSeasonID, aChampionshipID: integer);
begin

  Janua.Core.Functions.ExecProc(
    procedure
    begin
      FFootballSettings.season_id := aSeasonID;
      FFootballSettings.league_id := aChampionshipID;
      RefreshData;
    end, 'OpenRanking', self);

end;

procedure TJanuaPgFootballStorage.OpenSeasons;
begin
  Janua.Core.Functions.ExecProc(
    procedure
    begin
      self.InternalCreateDataset;
      if not FDM.qrySeasons.Prepared then
        FDM.qrySeasons.Prepare;
      FDM.qrySeasons.ParamByName('season_id').AsSmallInt := 0;
      DBFunctions.OpenDataset(FDM.qrySeasons);
      FSeasonsCount := FDM.qrySeasons.RecordCount;
    end, 'OpenSeasons', self);
end;

procedure TJanuaPgFootballStorage.OpenSeasonsList;
begin
  self.OpenSeasons
end;

procedure TJanuaPgFootballStorage.OpenTeamPlayers;
begin
  self.InternalCreateDataset;
  FDM.qryTeamPlayers.Close;
  FDM.qryTeamPlayers.ParamByName('season_id').AsSmallInt := self.FFootballSettings.season_id;
  FDM.qryTeamPlayers.ParamByName('team_id').AsSmallInt := self.FFootballSettings.team_id;
  FDM.qryTeamPlayers.Open;
end;

procedure TJanuaPgFootballStorage.RefreshData;
begin
  if (self.FFootballSettings.league_id <> 0) and (FFootballSettings.season_id <> 0) then
  begin
    if FFootballSettings.match_day = 0 then
      self.GetLastMatchDay;
    self.OpenGoalRanking;
    self.OpenRanking;
    if (FFootballSettings.match_day <> 0) then
    begin
      self.OpenMatches;
      self.OpenNextMatches;
    end;
  end;
end;

function TJanuaPgFootballStorage.SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint;
begin
  self.OpenChampionship;
  with FDM do
    if not(FDM.qryLastMatch.Active and (FDM.qryLastMatch.RecordCount > 0) and
      (FDM.qryLastMatch.ParamByName('league_id').AsInteger = FFootballSettings.league_id) or
      (FDM.qryLastMatch.ParamByName('season_id').AsInteger = FFootballSettings.season_id)) then
    begin
      qryLastMatch.Close;
      qryLastMatch.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
      qryLastMatch.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
      ServerFunctions.OpenDataset(qryLastMatch);
      FFootballSettings.match_day := IfThen(qryLastMatchlast_match.AsInteger = 0, 1,
        qryLastMatchlast_match.AsInteger);
      qryLastMatch.Close;
    end;
  Result := FFootballSettings.match_day;
end;

procedure TJanuaPgFootballStorage.SetNextMatchDay;
begin

end;

procedure TJanuaPgFootballStorage.SetupSeason(aSeasonID: integer; aLeagueID: smallint);
begin
  OpenCDSGolRanking(FFootballSettings.season_id, FFootballSettings.league_id, FFootballSettings.match_id);
end;

procedure TJanuaPgFootballStorage.TestOpenChampionship;
begin
  Guard.CheckNotNull(FDM, 'TJanuaPgFootballStorage.TestOpenChampionship FDM nil');
  if (FDM.qryChampionship.ParamByName('season_id').AsInteger <> FFootballSettings.season_id) or
    (FDM.qryChampionship.ParamByName('league_id').AsInteger <> FFootballSettings.league_id) or
    not FDM.qryChampionship.Active then
  begin
    FDM.qryChampionship.Close;
    FDM.qryChampionship.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    FDM.qryChampionship.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    FDM.ServerFunctions.OpenDataset(FDM.qryChampionship);
  end;
end;

{ TJanuaServerPgFootballFactory }

function TJanuaServerPgFootballFactory.GetFootballStorage: IJanuaFootballStorage;
var
  aSettings: IFootballSettings;
begin
  aSettings := TFootballSettings.Create;
  Result := TJanuaPgFootballStorage.Create(aSettings);
end;

end.
