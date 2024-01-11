unit Janua.Postgres.Football;

interface

uses Janua.Core.Classes, Janua.Core.System, Datasnap.DBClient, Data.DB,
  Data.DBXJSON,
  System.SysUtils, System.Classes, Janua.Core.Football, udmPgFootballServer, Janua.Core.Types,
  Janua.Core.Functions;

{$I JANUACORE.INC}

type
  /// <summary>
  /// Classe base del 'server' football inteso come ServerController o meglio
  /// come Model dati del football verrrà poi implementato nei vari database
  /// come motore.
  /// </summary>
  TJanuaServerPgFootball = class(TJanuaCustomServerFootball)
  private
    DM: TdmPgFootballServer;
    procedure SetSeasonLeagueDay;
    // procedure SetSeasonLague;
  strict protected
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
  strict protected
    // virtual Abstract Methods Implementation from CustomServer ...............................................
    function InternalCheckSessionKey: Boolean; override;
    function InternalActivate: Boolean; override;
    procedure SetUserSessionProfile; override;
    procedure DestroyDataModule(Force: Boolean = false); override;
    procedure CreateDataModule; override;
    procedure AssignDatasets; override;
  public
    destructor Destroy; override;
  public
    function OpenDefaultSeason: Boolean; override;
    function OpenSeason(aSeason: smallint): Boolean; override;
    function SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint; override;
    function GetLastSeasonID: smallint; override;
    function GetChampionshipDayName: string; override;
    function GetChampionshipsDataset(aSeason: integer): integer; override;
    procedure OpenMatchTeam(aMatchID: int64; aTeamID: integer); override;
    property PgFootballServer: TdmPgFootballServer read DM;
  end;

type
  TJanuaPgTemplateFootball = class(TJanuaTemplateFootball)

  end;

type
  TJanuaPgFootballWebController = class(TJanuaFootballWebController)
  end;
{$IFDEF WEBBROKER}

type
  TJanuaPgWebSessionFootball = class(TJanuaWebSessionFootball)
  private
    FIsSetController: Boolean;
    FJanuaPgFootballWebController: TJanuaPgFootballWebController;
    procedure SetJanuaPgFootballWebController(const Value: TJanuaPgFootballWebController);
  protected
    procedure StartSession; override;
    procedure InternalCreateController; override;
    procedure InternalDestroyController; override;
  public
  published
    property JanuaPgFootballWebController: TJanuaPgFootballWebController read FJanuaPgFootballWebController
      write SetJanuaPgFootballWebController;
  end;
{$ENDIF}

implementation

uses Janua.Application.Framework;
{ TJanuaServerPgFootball }

procedure TJanuaServerPgFootball.AssignDatasets;
begin
  inherited;
  if self.KeepAlive then
  begin
    self.FcdsChampRanking.MemDataset := self.DM.qryChampRanking;
    self.FcdsGolRanking.MemDataset := self.DM.qryGolRanking;
    self.FcdsChampionships.MemDataset := self.DM.qryChampionships;
    self.FcdsChampionship.MemDataset := self.DM.qryChampionship;
    self.FcdsMatches.MemDataset := self.DM.qryMatches;
    self.FcdsSeasons.MemDataset := self.DM.qrySeasons;
    self.FcdsNextMatches.MemDataset := self.DM.qryNextMatches;
    self.FcdsMatchDay.MemDataset := self.DM.qryMatchDay;
    self.FcdsNextMatchDay.MemDataset := DM.qryNextMatchDay;
    // Match Detail Assignements.......................................................................................
    FcdsMatchDetailHome.MemDataset := self.DM.qryMatchHomePlayers;
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
  end
  else
  begin
    self.cdsNextMatchDay.AssignDataset(DM.qryNextMatchDay);
    self.FcdsChampRanking.AssignDataset(self.DM.qryChampRanking);
    self.FcdsGolRanking.AssignDataset(self.DM.qryGolRanking);
    self.FcdsChampionships.AssignDataset(self.DM.qryChampionships);
    self.FcdsChampionship.AssignDataset(self.DM.qryChampionship);
    self.FcdsMatches.AssignDataset(self.DM.qryMatches);
    self.FcdsSeasons.AssignDataset(self.DM.qrySeasons);
    self.FcdsNextMatches.AssignDataset(self.DM.qryNextMatches);
    self.FcdsMatchDay.AssignDataset(self.DM.qryMatchDay);
    // Match Detail Assignements.......................................................................................
    FcdsMatchDetailHome.AssignDataset(self.DM.qryMatchHomePlayers);
    FcdsMatchDetail.AssignDataset(self.DM.qryMatchDetail);
    FcdsMatchDetailVisitors.AssignDataset(self.DM.qryMatchVisitorsPlayers);
    FcdsMatchDetailEvents.AssignDataset(self.DM.qryMatchDetailEvents);
    self.FcdsCalendarMatchDay.AssignDataset(self.DM.qryCalendarDay);
    self.FcdsCalendarMatches.AssignDataset(self.DM.qryCalendarMatches);
    // Championship Team .................
    FcdsChampTeam.AssignDataset(DM.qryChampionshipTeam);
    FcdsChampTeamPlayers.AssignDataset(DM.qryTeamPlayers);
    FcdsChampTeamMatches.AssignDataset(self.DM.qryTeamMatches);
  end;
end;

procedure TJanuaServerPgFootball.CreateDataModule;
var
  temp: TJanuaServerSession;
begin
  if not(self.isInitializing or (csDesigning in self.ComponentState)) then
    try
      Assert(Assigned(self.FFootballSettings), 'TJanuaServerPgFootball.CreateDataModule IFootballSettings not set');
      Assert(Assigned(self.FJanuaSystem), 'TJanuaServerPgFootball.CreateDataModule FJanuaSystem not set');
      self.Active := True;

      if self.Active and not Assigned(self.DM) then
      begin
        DM := TdmPgFootballServer.Create(nil);
        DM.FootballSettings := self.FootballSettings;
        IDM := DM;
        temp := self.FJanuaSystem.JanuaServerSession;
        DM.ServerSession := temp;
        DM.isServer := not(TJanuaApplication.ApplicationType in [jatClientWin]);
        self.FConnected := DM.TestConnect;
      end;

    Except
      on E: Exception do
      begin
        self.WriteError('TJanuaServerPgFootball.CreateDataModule Error:', E, false);
        self.FConnected := false;
        self.HasErrors := True;
        self.Active := false;
      end;
    end;

end;

destructor TJanuaServerPgFootball.Destroy;
begin
  if Assigned(DM) then
  begin
    DM.DisposeOf;
    DM := nil;
  end;
  inherited;
end;

{
  procedure TJanuaServerPgFootball.SetSeasonLague;
  begin
  self.DM.season_id := self.Fseason_id;
  self.DM.league_id := self.Fleague_id;
  end;
}

procedure TJanuaServerPgFootball.SetSeasonLeagueDay;
begin
  // SetSeasonLague;
  LastMatchDay := DM.GetLastMatchDay;
  if (self.FFootballSettings.match_id = 0) and (FFootballSettings.match_day = 0) then
    self.FFootballSettings.match_day := LastMatchDay;
end;

procedure TJanuaServerPgFootball.SetUserSessionProfile;
begin
  inherited;
  if Assigned(DM) then
  begin
    self.SetUserProfile(DM.UserProfile);
    self.WriteLog('UserProfile: ' + sLineBreak + UserProfile.ToString);
    self.WriteLog(self.UserProfile.ToString);
    self.WriteLog(self.UserProfile.User.ToJSON);
    self.WriteLog('TJanuaPostgresSystem.SessionKey: ' + DM.SessionKey);
    self.SessionKey := DM.SessionKey;
    self.Activate;
    self.FJanuaServerSession := DM.ServerSession;
    self.FJanuaServerSession.Key := DM.SessionKey;
    self.FJanuaServerSession.Session_id := DM.SessionUID;
    self.FJanuaServerSession.Email := DM.UserProfile.User.Email;
    self.FJanuaServerSession.Schema_id := DM.SchemaID;
    self.FJanuaServerSession.User_id := DM.UserProfile.User.id;
    self.FJanuaServerSession.Social_ID := DM.UserProfile.User.SocialID;
    self.FJanuaServerSession.Social_Kind := DM.UserProfile.User.SocialType;
    self.FJanuaServerSession.isPublic := DM.UserProfile.User.isPublic;
  end;
end;

procedure TJanuaServerPgFootball.DestroyDataModule(Force: Boolean);
begin
  if not(self.InTransaction) and ((not KeepAlive) or Force) and Assigned(DM) then
  begin
    DM.Free;
    DM := nil;
    self.IDM := nil;
  end;
  inherited;
end;

function TJanuaServerPgFootball.GetChampionshipDayName: string;
begin
  self.CreateDataModule;
  try
    Result := DM.GetChampionshipDayName;
  finally
    if not self.InTransaction then
      self.DestroyDataModule;
  end;
end;

function TJanuaServerPgFootball.GetChampionshipsDataset(aSeason: integer): integer;
begin
  Result := -1;
  // Default to -1
end;

function TJanuaServerPgFootball.GetLastSeasonID: smallint;
begin
  Result := -1;
  // Default to -1 is an Error as no-data-found ......................................................................
  self.CreateDataModule;
  self.FFootballSettings.season_id := 0;
  self.DM.OpenDefaultSeason;
  self.AssignDatasets;
  self.Championships.SetFromDataset(self.DM.qryChampionships);
  if not self.InTransaction then
    self.DestroyDataModule;
end;

function TJanuaServerPgFootball.OpenDefaultSeason: Boolean;
var
  LintSeason: smallint;
begin
  LintSeason := GetLastSeasonID;
  Result := (LintSeason > 0) and OpenSeason(LintSeason)
end;

procedure TJanuaServerPgFootball.OpenMatchTeam(aMatchID: int64; aTeamID: integer);
begin
  inherited;
  self.CreateDataModule;
  try
    DM.OpenMatchTeam(aMatchID, aTeamID);
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaServerPgFootball.OpenSeason(aSeason: smallint): Boolean;
begin
  Result := false;
  self.season_id := aSeason;
  self.OpenChampionship;
  Result := True;
end;

function TJanuaServerPgFootball.SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint;
begin
  Result := -1;
  self.CreateDataModule;
  try
    { where season_id = :season_id and league_id = :league_id and goal_home is not null }
    DM.qryLastMatch.ParamByName('season_id').AsSmallInt := aSeasonID;
    DM.qryLastMatch.ParamByName('league_id').AsSmallInt := aLeagueID;
    DM.qryLastMatch.Open;
    if DM.qryLastMatch.RecordCount > 0 then
      Result := DM.qryLastMatchlast_match.AsInteger;
  finally
    self.DestroyDataModule;
  end;
end;

function TJanuaServerPgFootball.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not(self.isInitializing or (csDesigning in self.ComponentState)) then
        begin
          if not Assigned(self.DM) then
            CreateDataModule;
          AssignDatasets;
          Result := FConnected;
        end;
      end;
    except
      on E: Exception do
        RaiseLocalException('InternalActivate', E);
    end;

end;

function TJanuaServerPgFootball.InternalCheckSessionKey: Boolean;
begin
  Result := (self.SessionKey <> '') and Assigned(self.DM) and DM.CheckSessionKey(self.SessionKey);
  if Result then
    self.FUserProfile := self.DM.UserProfile;
end;

procedure TJanuaServerPgFootball.InternalOpenCalendar;
begin
  inherited;
  Assert(Assigned(self.FFootballSettings), 'TJanuaServerPgFootball.InternalOpenCalendar IFootballSettings not set');
  DM.OpenCalendar;
  self.AssignDatasets;
end;

procedure TJanuaServerPgFootball.InternalOpenChampionship;
begin
  SetSeasonLeagueDay;
  DM.OpenChampionshipSummary;
  self.AssignDatasets;
end;

procedure TJanuaServerPgFootball.InternalOpenChampionshipsList;
begin
  inherited;
  if Assigned(DM) then
  begin
    DM.OpenChampionShips;
    self.AssignDatasets;
  end;
end;

procedure TJanuaServerPgFootball.InternalOpenGoalRanking;
begin
  SetSeasonLeagueDay;
  DM.OpenGoalRanking;
  self.AssignDatasets;
end;

procedure TJanuaServerPgFootball.InternalOpenLiveScore;
begin
  inherited;
  Assert(Assigned(DM), 'TJanuaServerPgFootball.InternalOpenLiveScore DM not Assigned');
  DM.OpenLiveScore;
end;

procedure TJanuaServerPgFootball.InternalOpenMatch;
begin
  Assert(Assigned(DM), 'TJanuaServerPgFootball.InternalOpenMatch DM not Assigned');
  SetSeasonLeagueDay;

end;

procedure TJanuaServerPgFootball.InternalOpenMatchDetail;
begin
  inherited;
  Assert(Assigned(DM), 'TJanuaServerPgFootball.InternalOpenMatchDetail DM not Assigned');
  DM.OpenMatchDetail;

end;

procedure TJanuaServerPgFootball.InternalOpenMatches;
begin
  inherited;
  Assert(Assigned(DM), 'TJanuaServerPgFootball.InternalOpenMatchDetail DM not Assigned');
  DM.OpenMatchDetail;
  SetSeasonLeagueDay;
  DM.OpenMatches;
  self.AssignDatasets;

end;

procedure TJanuaServerPgFootball.InternalOpenNextMatches;
begin
  Assert(Assigned(DM), 'TJanuaServerPgFootball.InternalOpenNextMatches DM not Assigned');
  Assert(Assigned(FFootballSettings), 'TJanuaServerPgFootball.InternalOpenNextMatches FFootballSettings not Assigned');
  SetSeasonLeagueDay;
  self.InternalOpenChampionship;
  DM.OpenNextMatches;
  self.AssignDatasets;
end;

procedure TJanuaServerPgFootball.InternalOpenPlayerCareer;
begin
  inherited;
  Assert(Assigned(DM), 'TJanuaServerPgFootball.InternalOpenPlayerCareer DM not Assigned');
  Assert(Assigned(FFootballSettings), 'TJanuaServerPgFootball.InternalOpenPlayerCareer FFootballSettings not Assigned');
  DM.OpenPlayerCareer(self.Player_ID);
  self.AssignDatasets;
end;

procedure TJanuaServerPgFootball.InternalOpenRanking;
begin
  Assert(Assigned(DM), 'TJanuaServerPgFootball.InternalOpenRanking DM not Assigned');
  Assert(Assigned(FFootballSettings), 'TJanuaServerPgFootball.InternalOpenRanking FFootballSettings not Assigned');
  SetSeasonLeagueDay;
  DM.OpenRanking;
  self.AssignDatasets;
  {
    if self.KeepAlive then
    begin
    self.FcdsChampRanking := DM.qryChampRanking;
    end
    else
    begin
    // Janua.Core.Functions.CloneDataset(FPgFootballServer.qryChampRanking, TVirtualTable(cdsChampRanking))
    self.CloneLocalData(DM.qryChampRanking, FcdsChampRanking);
    end;
  }
end;

procedure TJanuaServerPgFootball.InternalOpenSeasonsList;
begin
  inherited;
  Assert(Assigned(DM), 'TJanuaServerPgFootball.InternalOpenSeasonsList DM not Assigned');
  Assert(Assigned(FFootballSettings), 'TJanuaServerPgFootball.InternalOpenSeasonsList FFootballSettings not Assigned');
  self.DM.OpenSeasons;
  if self.FFootballSettings.season_id = 0 then
    self.FFootballSettings.season_id := self.GetLastSeasonID;
end;

procedure TJanuaServerPgFootball.InternalOpenTeamChampionship;
begin
  inherited;
  Assert(Assigned(DM), 'TJanuaServerPgFootball.InternalOpenSeasonsList DM not Assigned');
  Assert(Assigned(FFootballSettings), 'TJanuaServerPgFootball.InternalOpenSeasonsList FFootballSettings not Assigned');
  self.DM.OpenChampionshipTeam;
  // (self.Fseason_id, self.Fleague_id, self.Fteam_id);
end;

{ TJanuaPgWebSessionFootball }

{$IFDEF WEBBROKER}

procedure TJanuaPgWebSessionFootball.InternalCreateController;
begin
  if not Assigned(self.FJanuaPgFootballWebController) then
    self.FJanuaPgFootballWebController := TJanuaPgFootballWebController.Create(self);
  if Assigned(FJanuaPgFootballWebController) then
  begin
    self.JanuaFootballController := self.FJanuaPgFootballWebController;
    self.FJanuaController := FJanuaPgFootballWebController;
    FJanuaPgFootballWebController.Activate;
  end;
end;

procedure TJanuaPgWebSessionFootball.InternalDestroyController;
begin
  inherited;
  if not self.FIsSetController then
  begin
    begin
      FJanuaPgFootballWebController.DisposeOf;
      FJanuaPgFootballWebController := nil;
    end;
    self.FJanuaPgFootballWebController := nil;
    self.JanuaFootballController := nil;
    self.FJanuaController := nil;
  end;

end;

procedure TJanuaPgWebSessionFootball.SetJanuaPgFootballWebController(const Value: TJanuaPgFootballWebController);
begin
  FJanuaPgFootballWebController := Value;
  self.FIsSetController := Assigned(FJanuaPgFootballWebController);
  JanuaFootballController := FJanuaPgFootballWebController;
  self.FJanuaController := FJanuaPgFootballWebController;
end;

procedure TJanuaPgWebSessionFootball.StartSession;
begin
  inherited;

end;

{$ENDIF WEBBROKER}

end.
