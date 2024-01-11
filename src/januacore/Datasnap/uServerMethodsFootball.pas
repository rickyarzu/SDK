unit uServerMethodsFootball;

interface

uses System.SysUtils, System.Classes, System.Json,
  DataSnap.DSProviderDataModuleAdapter,
  DataSnap.DSServer, DataSnap.DSAuth, System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  Janua.Core.Classes, Janua.Core.System, Janua.Core.Mail, Janua.Postgres.System, Janua.Core.JPublic,
  Janua.Postgres.JPublic, System.Generics.Collections, Janua.Core.Cms, Janua.Postgres.Cms, Janua.Core.Servers,
  Janua.Postgres.Football,
  // Visual Form Inheritance Datasnap Model
  uServerMethodsModel, Janua.Core.Cloud, Janua.Core.DB, Data.DB, MemDS, VirtualTable, DBAccess, Uni, Janua.Unidac.Connection, ,
  Janua.Football.Intf, Janua.Core.Football;

type
{$METHODINFO ON}
  TServerMethodsSportmedia = class(TDSServerModuleModel)
    JanuaServerPgFootball: TJanuaServerPgFootball;
    JanuaCloudOAuth1: TJanuaCloudOAuth;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure DSServerModuleDestroy(Sender: TObject);
  private
    FFootballSetting: Janua.Football.Intf.IFootballSettings;
    function getDayBillBoard(aSessionKey: string; aSeasonID, aChampionshipID, aMatchDay: integer): TJsonObject;
    procedure CheckSessionKey(aSessionKey: string);
    { Private declarations }
  public
    { Public declarations }
    // **************************************** Test Methods *************************************
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    // **************************************** System Methods *************************************
    {
      function LoginJson(aJsonObject: TJsonObject): TJsonObject; override;
      function Login(UserName, Password: string): TJsonObject; override;
      function StartPublicSession(aAppName: string = 'dico33.com'): TJsonObject; override;
      function CheckNewUser(aUserName: string): boolean; override;
      function CheckNewUserJson(aUser: TJsonObject): boolean; override;
      function CreateNewUser(aUser: TJsonObject; var aChecked: boolean): TJsonObject; override;
      function SaveProfile(aUserProfile: TJsonObject; var aChecked: boolean; var aError: string): TJsonObject; override;
    }
    // **************************************** Football Methods *************************************
    function getCalendar(aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getSeasonsList(const aSessionKey: string): TJsonObject;
    function getChampionshipsList(const aSessionKey: string; aSeasonID: integer = 0): TJsonObject;
    function getChampionshipSummary(const aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getRanking(const aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getGoalRanking(const aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getMatchDay(const aSessionKey: string; aSeasonID, aChampionshipID, aMatchDay: integer): TJsonObject;
    // function getChampSummary(const aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getMatchDetails(const aSessionKey: string; aSeasonID, aChampionshipID, aMatchDay: integer;
      const aMatchID: Int64): TJsonObject;
    function GetTeamChampionship(const aSessionKey: string; aSeasonID, aChampionshipID, aTeamID: integer): TJsonObject;

  end;
{$METHODINFO OFF}

implementation

{$R *.dfm}

uses System.StrUtils, Janua.Football.Impl;
{
  function TServerMethodsSportmedia.CheckNewUser(aUserName: string): boolean;
  begin
  Result := inherited;
  end;

  function TServerMethodsSportmedia.CheckNewUserJson(aUser: TJsonObject): boolean;
  begin
  Result := inherited;

  end;

  function TServerMethodsSportmedia.CreateNewUser(aUser: TJsonObject; var aChecked: boolean): TJsonObject;
  begin
  Result := inherited;
  end;

  function TServerMethodsSportmedia.Login(UserName, Password: string): TJsonObject;
  begin
  Result := inherited;
  end;

  function TServerMethodsSportmedia.LoginJson(aJsonObject: TJsonObject): TJsonObject;
  begin
  Result := inherited;
  end;

  function TServerMethodsSportmedia.SaveProfile(aUserProfile: TJsonObject; var aChecked: boolean; var aError: string)
  : TJsonObject;
  begin
  Result := inherited;
  end;

  function TServerMethodsSportmedia.StartPublicSession(aAppName: string): TJsonObject;
  begin
  Result := inherited;
  end;
}

procedure TServerMethodsSportmedia.DSServerModuleCreate(Sender: TObject);
begin
  inherited;
  self.FFootballSetting := TFootballSettings.Create;
end;

procedure TServerMethodsSportmedia.DSServerModuleDestroy(Sender: TObject);
begin
  inherited;
  FFootballSetting := nil;
end;

function TServerMethodsSportmedia.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethodsSportmedia.getCalendar(aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
begin
  if JanuaServerPgFootball.CheckSessionKey(aSessionKey) then
  begin
    JanuaServerPgFootball.season_id := aSeasonID;
    JanuaServerPgFootball.league_id := aChampionshipID;
    self.JanuaServerPgFootball.OpenCalendar;
    Result := self.JanuaServerPgFootball.Calendar.AsJsonObject
  end;
end;

function TServerMethodsSportmedia.getChampionshipsList(const aSessionKey: string; aSeasonID: integer): TJsonObject;
begin
  // At the moment I can leave the check session key disabled
  if JanuaServerPgFootball.CheckSessionKey(aSessionKey) then
  begin
    JanuaServerPgFootball.season_id := aSeasonID;
    self.JanuaServerPgFootball.OpenChampionshipsList;
    Result := self.JanuaServerPgFootball.Championships.AsJsonObject
  end;
end;

function TServerMethodsSportmedia.getChampionshipSummary(const aSessionKey: string; aSeasonID, aChampionshipID: integer)
  : TJsonObject;
begin
  if JanuaServerPgFootball.CheckSessionKey(aSessionKey) then
  begin
    JanuaServerPgFootball.season_id := aSeasonID;
    JanuaServerPgFootball.league_id := aChampionshipID;
    self.JanuaServerPgFootball.OpenChampionship;;
    Result := self.JanuaServerPgFootball.ChampSummary.AsJsonObject
  end;
end;

function TServerMethodsSportmedia.getDayBillBoard(aSessionKey: string; aSeasonID, aChampionshipID, aMatchDay: integer)
  : TJsonObject;
begin
  if JanuaServerPgFootball.CheckSessionKey(aSessionKey) then
  begin

  end;

end;

function TServerMethodsSportmedia.getGoalRanking(const aSessionKey: string; aSeasonID, aChampionshipID: integer)
  : TJsonObject;
begin
  // At the moment I can leave the check session key disabled
  if JanuaServerPgFootball.CheckSessionKey(aSessionKey) then
  begin
    self.JanuaServerPgFootball.season_id := aSeasonID;
    self.JanuaServerPgFootball.league_id := aChampionshipID;
    JanuaServerPgFootball.OpenGoalRanking;
    Result := JanuaServerPgFootball.goalrankings.AsJsonObject;
  end;
end;

function TServerMethodsSportmedia.getMatchDay(const aSessionKey: string; aSeasonID, aChampionshipID, aMatchDay: integer)
  : TJsonObject;
begin
  // At the moment I can leave the check session key disabled
  if JanuaServerPgFootball.CheckSessionKey(aSessionKey) then
  begin
    self.JanuaServerPgFootball.season_id := aSeasonID;
    self.JanuaServerPgFootball.league_id := aChampionshipID;
    self.JanuaServerPgFootball.match_day := aMatchDay;
    JanuaServerPgFootball.OpenMatches;
    Result := JanuaServerPgFootball.matches.AsJsonObject;
  end;
end;

function TServerMethodsSportmedia.getMatchDetails(const aSessionKey: string;
  aSeasonID, aChampionshipID, aMatchDay: integer; const aMatchID: Int64): TJsonObject;
begin
  // At the moment I can leave the check session key disabled
  if JanuaServerPgFootball.CheckSessionKey(aSessionKey) then
  begin
    self.JanuaServerPgFootball.match_id := aMatchID;
    self.JanuaServerPgFootball.season_id := aSeasonID;
    self.JanuaServerPgFootball.league_id := aChampionshipID;
    self.JanuaServerPgFootball.match_day := aMatchDay;
    self.JanuaServerPgFootball.OpenMatchDetail;
    Result := self.JanuaServerPgFootball.MatchDetail.AsJsonObject
  end;
end;

function TServerMethodsSportmedia.getRanking(const aSessionKey: string; aSeasonID, aChampionshipID: integer)
  : TJsonObject;
begin
  // At the moment I can leave the check session key disabled

  if JanuaServerPgFootball.CheckSessionKey(aSessionKey) then
  begin
    JanuaServerPgFootball.season_id := aSeasonID;
    JanuaServerPgFootball.league_id := aChampionshipID;
    JanuaServerPgFootball.OpenRanking;
    Result := self.JanuaServerPgFootball.rankings.AsJsonObject;
  end;
end;

function TServerMethodsSportmedia.getSeasonsList(const aSessionKey: string): TJsonObject;
begin
  // At the moment I can leave the check session key disabled
  if JanuaServerPgFootball.CheckSessionKey(aSessionKey) then
  begin
    self.JanuaServerPgFootball.OpenSeasonsList;
    Result := self.JanuaServerPgFootball.Seasons.AsJsonObject;
  end;

end;

function TServerMethodsSportmedia.GetTeamChampionship(const aSessionKey: string;
  aSeasonID, aChampionshipID, aTeamID: integer): TJsonObject;
begin
  // At the moment I can leave the check session key disabled
  if JanuaServerPgFootball.CheckSessionKey(aSessionKey) then
  begin

  end;
end;

procedure TServerMethodsSportmedia.CheckSessionKey(aSessionKey: string);
begin
  CheckSessionKey(aSessionKey);
end;

function TServerMethodsSportmedia.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.
