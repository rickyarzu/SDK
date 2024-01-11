unit Janua.Test.Football;

interface

uses Janua.Core.Classes, Janua.Core.System, Data.DB,
  Data.DBXJSON,
  System.SysUtils, System.Classes, Janua.Core.Football, udmVirtualFootballServer, Janua.Core.Types,
  Janua.Core.Functions;

type
  /// <summary>
  /// Classe base del 'server' football inteso come ServerController o meglio
  /// come Model dati del football verrrà poi implementato nei vari database
  /// come motore.
  /// </summary>
  TJanuaServerVTFootball = class(TJanuaCustomServerFootball)
  public // private
    DM: TdmVirtualFootballServer;
    procedure SetSeasonLeagueDay;
    // procedure SetSeasonLague;
  public // protected
    // apre i recordset che compongono un Team del campionato selezionato e ne estrae la Rosa
    procedure InternalOpenTeamChampionship; override;
    procedure InternalOpenCalendar; override;
    procedure InternalOpenRanking; override;
    procedure InternalOpenMatches; override;
    procedure InternalOpenGoalRanking; override;
    procedure InternalOpenNextMatches; override;
    procedure InternalOpenMatch; override;
    // Apre la lista delle partite della giornata in Live Score deve avere un corrispondente in DataModule.....
    procedure InternalOpenLiveScore; override;
    procedure InternalOpenChampionship; override;
    // Apre la lista delle stagioni da inviare alla pagina web di Menu o ad un Client. Volendo la lista potrebbe
    // anche essere pre-caricata in Cache Memory ...............................................................
    procedure InternalOpenSeasonsList; override;
    // Apre la lista dei Campionati, questa lista viene controllata dalla Stagione selezionata (season_id)
    // se season_id è <= 0 allora il programma deve cercare l'ultima stagione di campionato attiva LastSeason;
    procedure InternalOpenChampionshipsList; override;
    // Apre la partita nel suo dettaglio, questo oggetto potrà essere impiegato per generare una pagina Web od inviato
    // verso una App per la visualizzazione del Match selezionato.
    procedure InternalOpenMatchDetail; override;
    procedure InternalOpenPlayerCareer; override;
    // virtual Abstract Methods Implementation from CustomServer ...............................................
    function InternalCheckSessionKey: Boolean; override;
    function InternalActivate: Boolean; override;
    procedure SetUserSessionProfile; override;
    procedure DestroyDataModule(Force: Boolean = false); override;
    procedure CreateDataModule; override;
    procedure AssignDatasets; override;
    // ******************************* overridden methods from Virtual Abstract *****
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  public
    function OpenDefaultSeason: Boolean; override;
    function OpenSeason(aSeason: smallint): Boolean; override;
    function SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint; override;
    function GetLastSeasonID: smallint; override;
    function GetChampionshipDayName: string; override;
    function GetChampionshipsDataset(aSeason: integer): integer; override;
    procedure OpenMatchTeam(aMatchID: int64; aTeamID: integer); override;
    property PgFootballServer: TdmVirtualFootballServer read DM;
    // overloading Virtual Abstract Functions
    function GetDefaultLeague: smallint; override;
    function GetLastMatchNumber: smallint; override;
    procedure InternalOpenNextMatch; override;
    function GetDefaults: Boolean; override;
    procedure OpenRanking; override;
    procedure OpenRanking(aSeasonID, aLeagueID: integer); override;
  end;

implementation

uses Janua.Application.Framework, Janua.Football.Impl;

{ TJanuaServerVTFootball }

procedure TJanuaServerVTFootball.AssignDatasets;
begin
  inherited;
  self.FcdsChampRanking.MemDataset := self.DM.vtChampRanking;
  self.FcdsGolRanking.MemDataset := self.DM.vtGolRanking;
  self.FcdsGolRanking.MemDataset.Open;
  self.FcdsChampionships.MemDataset := self.DM.vtChampionships;
  self.FcdsChampionship.MemDataset := self.DM.vtChampionship;
  self.FcdsMatches.MemDataset := self.DM.vtMatches;
  // self.FcdsSeasons.MemDataset := self.DM.vtSeasons;
  self.FcdsNextMatches.MemDataset := self.DM.vtMatches;
  self.FcdsMatchDay.MemDataset := self.DM.vtMatchDay;
  self.FcdsNextMatchDay.MemDataset := DM.vtMatchDay;
  // Match Detail Assignements.......................................................................................
  { FcdsMatchDetailHome.MemDataset := self.DM.qryMatchHomePlayers;
    FcdsMatchDetail.MemDataset := self.DM.qryMatchDetail;
    FcdsMatchDetailVisitors.MemDataset := self.DM.qryMatchVisitorsPlayers;
    FcdsMatchDetailEvents.MemDataset := self.DM.qryMatchDetailEvents;
    self.FcdsCalendarMatchDay.MemDataset := self.DM.qryCalendarDay;
    self.FcdsCalendarMatches.MemDataset := self.DM.qryCalendarMatches;
    // Championship Team .................
    FcdsChampTeam.MemDataset := self.DM.qryChampionshipTeam;
    FcdsChampTeamPlayers.MemDataset := self.DM.qryTeamPlayers;
    FcdsChampTeamMatches.MemDataset := self.DM.qryTeamMatches;
    self.FCdsPlayer.MemDataset := self.DM.qryPlayer;
    self.FCdsPlayerCareer.MemDataset := self.DM.qryPlayerCareer;
  }
end;

constructor TJanuaServerVTFootball.Create(AOwner: TComponent);
begin
  inherited;
  FFootballSettings := TFootballSettings.Create
end;

procedure TJanuaServerVTFootball.CreateDataModule;
begin
  try
    Assert(Assigned(self.FFootballSettings), 'TJanuaServerPgFootball.CreateDataModule IFootballSettings not set');
    // Assert(Assigned(self.FJanuaSystem), 'TJanuaServerPgFootball.CreateDataModule FJanuaSystem not set');
    self.Active := True;

    if self.Active and not Assigned(self.DM) then
    begin
      DM := TdmVirtualFootballServer.Create(nil);
      DM.FootballSettings := self.FootballSettings;
      IDM := DM;
      // temp := self.FJanuaSystem.JanuaServerSession;
      // DM.ServerSession := temp;
      DM.isServer := not(TJanuaApplication.ApplicationType in [jatClientWin]);
      self.FConnected := DM.TestConnect;
    end;

  Except
    on E: Exception do
    begin
      self.WriteError('TJanuaServerPgFootball.CreateDataModule Error:', E, false);
      self.FConnected := false;
      self.HasErrors := True;
    end;
  end;

end;

destructor TJanuaServerVTFootball.Destroy;
begin

  inherited;
end;

procedure TJanuaServerVTFootball.DestroyDataModule(Force: Boolean);
begin
  inherited;
  if Assigned(self.DM) and (Force or not KeepAlive) then
  begin
    self.IDM := nil;
    self.DM := nil;
  end;

end;

function TJanuaServerVTFootball.GetChampionshipDayName: string;
begin

end;

function TJanuaServerVTFootball.GetChampionshipsDataset(aSeason: integer): integer;
begin
  self.CreateDataModule;
  self.AssignDatasets;
  Result := self.Championships.Count
end;

function TJanuaServerVTFootball.GetDefaultLeague: smallint;
begin
  Result := -1;
  { TODO : Add GetDefaultLeague TJanuaServerVTFootball }
end;

function TJanuaServerVTFootball.GetDefaults: Boolean;
begin
  Result := inherited;
end;

function TJanuaServerVTFootball.GetLastMatchNumber: smallint;
begin
  Result := -1;
  { TODO : Add GetLastMatchNumber TJanuaServerVTFootball }
end;

function TJanuaServerVTFootball.GetLastSeasonID: smallint;
begin
  Result := 76;
end;

function TJanuaServerVTFootball.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        self.CreateDataModule;
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, self);
    end;
end;

function TJanuaServerVTFootball.InternalCheckSessionKey: Boolean;
begin
  Result := True;
end;

procedure TJanuaServerVTFootball.InternalOpenCalendar;
begin
  inherited;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenChampionship;
begin
  inherited;
  self.DM.vtChampionship.Open;
  self.DM.vtMatchDay.Open;
  self.DM.vtMatches.Open;
  self.DM.vtGolRanking.Open;
  self.DM.vtChampRanking.Open;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenChampionshipsList;
begin
  inherited;
  self.DM.vtChampionships.Open;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenGoalRanking;
begin
  inherited;
  self.DM.vtGolRanking.Open;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenLiveScore;
begin
  inherited;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenMatch;
begin
  inherited;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenMatchDetail;
begin
  inherited;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenMatches;
begin
  inherited;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenNextMatch;
begin
  inherited;

end;

procedure TJanuaServerVTFootball.InternalOpenNextMatches;
begin
  inherited;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenPlayerCareer;
begin
  inherited;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenRanking;
begin
  Assert(Assigned(DM), 'TJanuaServerVTFootball.InternalOpenRanking DM not Assigned');
  Assert(Assigned(FFootballSettings), 'TJanuaServerVTFootball.InternalOpenRanking FFootballSettings not Assigned');
  SetSeasonLeagueDay;
  DM.OpenRanking;
  self.AssignDatasets;

end;

procedure TJanuaServerVTFootball.InternalOpenSeasonsList;
begin
  inherited;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.InternalOpenTeamChampionship;
begin
  inherited;
  self.AssignDatasets
end;

function TJanuaServerVTFootball.OpenDefaultSeason: Boolean;
begin
  Result := True;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.OpenMatchTeam(aMatchID: int64; aTeamID: integer);
begin
  inherited;
  self.AssignDatasets
end;

procedure TJanuaServerVTFootball.OpenRanking;
begin

end;

procedure TJanuaServerVTFootball.OpenRanking(aSeasonID, aLeagueID: integer);
begin

end;

function TJanuaServerVTFootball.OpenSeason(aSeason: smallint): Boolean;
begin
  Result := True;
end;

function TJanuaServerVTFootball.SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint;
begin
  Result := 30;
end;

procedure TJanuaServerVTFootball.SetSeasonLeagueDay;
begin
  self.match_day := 30;
end;

procedure TJanuaServerVTFootball.SetUserSessionProfile;
begin
  inherited;

end;

end.
