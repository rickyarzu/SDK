unit Janua.Virtual.Football;

interface

uses Janua.Football.Server.Impl, Janua.Orm.Intf, Janua.Football.Intf, Janua.Football.Server.Intf,
  Janua.Core.DB.Intf, Janua.Server.Intf, udmVirtualFootballStorage;
// DataModule

type
  TJanuaVirtualFootballStorage = class(TJanuaCustomFootballStorage, IJanuaStorage, IJanuaFootballStorage,
    IJanuaDBFootballStorage)
  protected
    FDM: udmVirtualFootballStorage.TdmVirtualFootballStorage;
  strict protected
    procedure SetAfterDestroyDataset; override;
    procedure SetInternalCreateDBDataSets; override;
    procedure SetInternalCreateDataset; override;
    procedure SetAfterCreateDataset; override;
    procedure SetInternalDestroyDataset; override;
    procedure SetInternalAssignDatasets; override;
  public
    constructor Create; override;

    procedure RefreshData;
    function OpenLastSeason: integer;
    function OpenFirstLeague: integer;
    procedure CheckSeasonID;
    procedure CheckChampionshipID;
    procedure CheckMatchDay;
    { Private declarations }
  public
    { Football Functions and Procedure }
    procedure OpenChampionshipTeam; overload;
    procedure OpenChampionshipTeam(aSeasonID, aLeagueID, aTeam: integer); overload;
    procedure OpenSeasons;
    procedure OpenSeasonsList;
    procedure OpenChampionShips; overload;
    procedure OpenChampionShips(aSeasonID: integer); overload;
    procedure OpenMatchDetail; overload;
    procedure OpenMatchDetail(aMatchID: Int64); overload;
    procedure OpenMatchDetail(aSeasonID, aLeagueID, aMatchNumber: integer); overload;
    procedure OpenChampionship;
    procedure TestOpenChampionship;
    procedure OpenChampionshipSummary;
    procedure OpenGoalRanking; overload;
    procedure OpenGolRanking(aSeasonID, aLeague, aDay: integer); overload;
    procedure OpenMatches; overload;
    procedure OpenMatches(aSeasonID, aLeagueID, aMatchNumber: integer); overload;
    procedure OpenNextMatches;
    procedure OpenMatchTeam(aMatchID: Int64; aTeamID: integer);
    procedure OpenRanking; overload;
    procedure OpenRanking(aSeasonID, aChampionshipID: integer); overload;
    procedure OpenSeasonChampionship(aSeasonID, aChampionshipID: integer);
    { Deprecated Functions and Procedure }
    function GetChampionshipDayName: string;
    function GetLastMatchDay: smallint;
    procedure SetupSeason(aSeasonID: integer; aLeagueID: smallint);
    procedure OpenDefaultSeason;
    procedure OpenDefaultSeasonChampionship;
    procedure SetNextMatchDay;
    procedure OpenCalendar; overload;
    procedure OpenCalendar(aSeasonID, aLeagueID: Word); overload;
    procedure OpenLiveScore;
    procedure OpenTeamPlayers;
    procedure OpenPlayerCareer; overload;
    procedure OpenPlayerCareer(aID: integer); overload;
    function OpenSeason(aSeason: smallint): Boolean;
    function SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint;
    function GetLastSeasonID: smallint;
    function GetChampionshipsDataset(aSeason: integer): integer;
    function OpenDynamicRanking: integer;
    function OpenMatchDayLists: integer;
    function OpenDynamicGoalRanking: integer;
    destructor Destroy; override;
  end;

type
  TJanuaServerVirtualFootballFactory = class(TJanuaServerFootballFactory, IJanuaServerFootballFactory)
  public
    function GetFootballStorage: IJanuaFootballStorage; override;
  end;

implementation

uses
  Janua.Orm.Types, System.SysUtils, Janua.Orm.Firedac, Janua.Football.Impl, Janua.Core.functions,
  Janua.Application.Framework;

{ TJanuaVirtualFootballStorage }

procedure TJanuaVirtualFootballStorage.CheckChampionshipID;
begin

end;

procedure TJanuaVirtualFootballStorage.CheckMatchDay;
begin
  // Does some Stuff ....
end;

procedure TJanuaVirtualFootballStorage.CheckSeasonID;
begin
  // Does some Stuff ....
end;

constructor TJanuaVirtualFootballStorage.Create;
begin
  try
    inherited;
  except
    on e: exception do
      RaiseException('Create', e, self, self.LogString);
    // raise exception.Create(self.ClassName + '.Create ' + e.Message);
  end;
end;

destructor TJanuaVirtualFootballStorage.Destroy;
begin
  if Assigned(self.FDM) then
    FreeAndNil(FDM);
  inherited;
end;

function TJanuaVirtualFootballStorage.GetChampionshipDayName: string;
begin
  // Genera il nome della giornata adatto per i Test. Stagione - Campionato - Giornata (occorre avere impostato il day)
  Result := 'Promozione A';
end;

function TJanuaVirtualFootballStorage.GetChampionshipsDataset(aSeason: integer): integer;
begin
  Result := 1;
end;

function TJanuaVirtualFootballStorage.GetLastMatchDay: smallint;
begin
  Result := 30;
end;

function TJanuaVirtualFootballStorage.GetLastSeasonID: smallint;
begin
  Result := FDM.vtLastSeasonseason_id.AsInteger
end;

procedure TJanuaVirtualFootballStorage.OpenCalendar;
begin
  if not FDM.vtCalendarDay.Active then
    FDM.vtCalendarDay.Open;
  if not FDM.vtCalendarMatches.Active then
    FDM.vtCalendarMatches.Open;
end;

procedure TJanuaVirtualFootballStorage.OpenCalendar(aSeasonID, aLeagueID: Word);
begin

end;

procedure TJanuaVirtualFootballStorage.OpenChampionship;
begin
  if not FDM.vtChampRanking.Active then
    FDM.vtChampRanking.Open;

end;

procedure TJanuaVirtualFootballStorage.OpenChampionShips;
begin

end;

procedure TJanuaVirtualFootballStorage.OpenChampionShips(aSeasonID: integer);
begin

end;

procedure TJanuaVirtualFootballStorage.OpenChampionshipSummary;
begin

end;

procedure TJanuaVirtualFootballStorage.OpenChampionshipTeam(aSeasonID, aLeagueID, aTeam: integer);
begin

end;

procedure TJanuaVirtualFootballStorage.OpenChampionshipTeam;
begin

end;

procedure TJanuaVirtualFootballStorage.OpenDefaultSeason;
begin

end;

procedure TJanuaVirtualFootballStorage.OpenDefaultSeasonChampionship;
begin

end;

function TJanuaVirtualFootballStorage.OpenDynamicGoalRanking: integer;
begin
  if not FDM.vtGolRanking.Active then
    self.FDM.vtGolRanking.Open;
  Result := FDM.vtGolRanking.RecordCount;
end;

function TJanuaVirtualFootballStorage.OpenDynamicRanking: integer;
begin
  if not FDM.vtDynamicRanking.Active then
    FDM.vtDynamicRanking.Open;
  Result := FDM.vtDynamicRanking.RecordCount
end;

function TJanuaVirtualFootballStorage.OpenFirstLeague: integer;
begin
  Result := 124;
end;

procedure TJanuaVirtualFootballStorage.OpenGoalRanking;
begin
  if not Assigned(FDM) then
    CreateDataset;
  if not FDM.vtGolRanking.Active then
    self.FDM.vtGolRanking.Open;
end;

procedure TJanuaVirtualFootballStorage.OpenGolRanking(aSeasonID, aLeague, aDay: integer);
begin
  if not Assigned(FDM) then
    CreateDataset;
  if not FDM.vtGolRanking.Active then
    self.FDM.vtGolRanking.Open;
end;

function TJanuaVirtualFootballStorage.OpenLastSeason: integer;
begin
  Result := 32;
end;

procedure TJanuaVirtualFootballStorage.OpenLiveScore;
begin

end;

procedure TJanuaVirtualFootballStorage.OpenMatchDetail;
begin
  if not Assigned(FDM) then
    CreateDataset;
  if not FDM.vtMatches.Active then
    self.FDM.vtMatches.Open;
  if not FDM.vtMatchDetail.Active then
    self.FDM.vtMatchDetail.Open;
  if not FDM.vtMatchDetailEvents.Active then
    self.FDM.vtMatchDetailEvents.Open;
end;

function TJanuaVirtualFootballStorage.OpenMatchDayLists: integer;
begin
  if not FDM.vtMatchDaysList.Active then
    FDM.vtMatchDaysList.Open;
  Result := FDM.vtMatchDaysList.RecordCount;
end;

procedure TJanuaVirtualFootballStorage.OpenMatchDetail(aSeasonID, aLeagueID, aMatchNumber: integer);
begin

end;

procedure TJanuaVirtualFootballStorage.OpenMatchDetail(aMatchID: Int64);
begin

end;

procedure TJanuaVirtualFootballStorage.OpenMatches(aSeasonID, aLeagueID, aMatchNumber: integer);
begin
  if not Assigned(FDM) then
    CreateDataset;
  if not FDM.vtMatches.Active then
    self.FDM.vtMatches.Open;
end;

procedure TJanuaVirtualFootballStorage.OpenMatches;
begin
  if not Assigned(FDM) then
    CreateDataset;
  if not FDM.vtMatches.Active then
    self.FDM.vtMatches.Open;
end;

procedure TJanuaVirtualFootballStorage.OpenMatchTeam(aMatchID: Int64; aTeamID: integer);
begin
  self.FFootballSettings.match_id := aMatchID;
  self.FFootballSettings.team_id := aTeamID;
  OpenMatches;
end;

procedure TJanuaVirtualFootballStorage.OpenNextMatches;
begin
  if not Assigned(FDM) then
    CreateDataset;
  self.FDM.vtMatches.Open;
end;

procedure TJanuaVirtualFootballStorage.OpenPlayerCareer;
begin
  // if not self.FDM.vt then
  if not Assigned(FDM) then
    CreateDataset;
  if not FDM.vtPlayerCareer.Active then
    self.FDM.vtPlayerCareer.Open;
end;

procedure TJanuaVirtualFootballStorage.OpenPlayerCareer(aID: integer);
begin
  self.FFootballSettings.player_id := aID;
  self.OpenPlayerCareer
end;

procedure TJanuaVirtualFootballStorage.OpenRanking;
begin
  if not Assigned(FDM) then
    CreateDataset;
  if not FDM.vtChampRanking.Active then
    self.FDM.vtChampRanking.Open;
end;

procedure TJanuaVirtualFootballStorage.OpenRanking(aSeasonID, aChampionshipID: integer);
begin
  if not Assigned(FDM) then
    CreateDataset;
  if not FDM.vtChampRanking.Active then
    self.FDM.vtChampRanking.Open;
end;

function TJanuaVirtualFootballStorage.OpenSeason(aSeason: smallint): Boolean;
begin
  Result := True;
end;

procedure TJanuaVirtualFootballStorage.OpenSeasonChampionship(aSeasonID, aChampionshipID: integer);
begin

end;

procedure TJanuaVirtualFootballStorage.OpenSeasons;
begin

end;

procedure TJanuaVirtualFootballStorage.OpenSeasonsList;
begin
  if not Assigned(FDM) then
    CreateDataset;
  if not FDM.vtChampRanking.Active then
    self.FDM.vtChampRanking.Open;
end;

procedure TJanuaVirtualFootballStorage.OpenTeamPlayers;
begin
  // non fa nulla of course
end;

procedure TJanuaVirtualFootballStorage.RefreshData;
begin

end;

function TJanuaVirtualFootballStorage.SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint;
begin
  Result := -1;
end;

procedure TJanuaVirtualFootballStorage.SetAfterCreateDataset;
begin
  inherited;

end;

procedure TJanuaVirtualFootballStorage.SetAfterDestroyDataset;
begin
  inherited;

end;

procedure TJanuaVirtualFootballStorage.SetInternalAssignDatasets;
begin
  inherited;

end;

procedure TJanuaVirtualFootballStorage.SetInternalCreateDataset;
begin
  inherited;

  FInternalCreateDataset := procedure
    begin
      try
        if not Assigned(FDM) then
          FDM := udmVirtualFootballStorage.TdmVirtualFootballStorage.Create(nil);
      except
        on e: exception do
          RaiseException('InternalCreateDataset', e, self, self.LogString);
      end;
    end;
end;

procedure TJanuaVirtualFootballStorage.SetInternalCreateDBDataSets;
begin
  inherited;
  FInternalCreateDBDataSets := procedure
    begin
      try
        inherited;
        FjdsChampionship := TJanuaVtDataset.Create(FDM.vtChampionship, [TJanuaEntity.FtChampionships]);
        FjdsChampionships := TJanuaVtDataset.Create(FDM.vtChampionships, [TJanuaEntity.FtChampionships]);
        // self.FjdsSeasons := TJanuaVtDataset.Create(FDM.vtSeasons);
        FjdsMatches := TJanuaVtDataset.Create(FDM.vtMatches, [TJanuaEntity.FtCalendar]);
        FjdsNextMatchDay := TJanuaVtDataset.Create(FDM.vtMatchDay, [TJanuaEntity.FtMatchDays]);
        FjdsGolRanking := TJanuaVtDataset.Create(FDM.vtGolRanking, [TJanuaEntity.FtGoalRanking]);
        FjdsChampRanking := TJanuaVtDataset.Create(FDM.vtChampRanking, [TJanuaEntity.FtRankingTable]);
        FjdsSeasons := TJanuaVtDataset.Create(FDM.vtSeasons, [TJanuaEntity.FtSeasons]);
        FjdsMatchDay := TJanuaVtDataset.Create(FDM.vtMatchDay, [TJanuaEntity.FtMatchDays]);
        FjdsNextMatches := TJanuaVtDataset.Create(FDM.vtMatches, [TJanuaEntity.FtCalendar]);
        // le singole partite con match, formazioni ed eventi del match
        FjdsMatchDetail := TJanuaVtDataset.Create(FDM.vtMatchDetail, [FtCalendar, FtTeamsHome, FtTeamsVisitors]);
        FjdsMatchDetailEvents := TJanuaVtDataset.Create(FDM.vtMatchDetailEvents, [FtMatchEvents]);
        FjdsMatchDetailHomePlayers := TJanuaVtDataset.Create(FDM.vtMatchHomePlayers, [FtMatchPlayers, FtPlayers]);
        FjdsMatchDetailVisitorPlayers := TJanuaVtDataset.Create(FDM.vtMatchVisitorsPlayers,
          [FtMatchPlayers, FtPlayers]);
        // Dynamic Ranking
        FjdsDynamicRanking := TJanuaVtDataset.Create(FDM.vtDynamicRanking, [TJanuaEntity.FtRankingTable]);
        FjdsLookupMatchDays := TJanuaVtDataset.Create(FDM.vtMatchDaysList, [TJanuaEntity.FtMatchDays]);
        FjdsSeasonLeagues := TJanuaVtDataset.Create(FDM.vtChampionships, [TJanuaEntity.FtLeagues]);
        FjdsDynamicGoalRanking := TJanuaVtDataset.Create(FDM.vtGolRanking, [TJanuaEntity.FtGoalRanking]);
        // Calendar Matches
        // football.ft_calendar c, football.ft_teams a, football.ft_teams b
        FjdsCalendarMatches := TJanuaVtDataset.Create(FDM.vtCalendarMatches,
          [TJanuaEntity.FtCalendar, FtTeamsHome, FtTeamsVisitors]);
        // Calendar MatchDay football.ft_match_days m, football.ft_leagues l, football.ft_seasons s
        FjdsCalendarMatchDay := TJanuaVtDataset.Create(FDM.vtCalendarDay, [TJanuaEntity.FtMatchDays]);
        // Careers
        FjdsPlayerCareers := TJanuaVtDataset.Create(FDM.vtPlayerCareer, [TJanuaEntity.FtPlayerCareer]);
        // FSelectedSeasonStorage: IJanuaRecordSetStorage;
        // per ora uso vtSeasons in realt? dovrei usare vtSelectedSeason per essere coerente ...
        FjdsSelectedSeason := TJanuaVtDataset.Create(FDM.vtSelectedSeason, [TJanuaEntity.FtSeasons]);
      except
        on e: exception do
          RaiseException('InternalCreateDBDataSets', e, self, self.LogString);
      end;
    end;

end;

procedure TJanuaVirtualFootballStorage.SetInternalDestroyDataset;
begin
  inherited;

  FInternalDestroyDataset := procedure
    begin
      if Assigned(FDM) then
      begin
        self.FDM.Free;
        FDM := nil;
      end;
    end;
end;

procedure TJanuaVirtualFootballStorage.SetNextMatchDay;
begin

end;

procedure TJanuaVirtualFootballStorage.SetupSeason(aSeasonID: integer; aLeagueID: smallint);
begin

end;

procedure TJanuaVirtualFootballStorage.TestOpenChampionship;
begin

end;

{ TJanuaServerVirtualFootballFactory }

function TJanuaServerVirtualFootballFactory.GetFootballStorage: IJanuaFootballStorage;
var
  aSettings: IFootballSettings;
begin
  aSettings := TFootballSettings.Create;
  Result := TJanuaVirtualFootballStorage.Create(aSettings);
end;

end.
