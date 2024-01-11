unit Janua.Core.RESTClient.Football;

interface

uses

  // System
  System.SysUtils, System.JSON,
  // Janua
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Football, Janua.Core.REST.Football,
  Janua.Core.System, Janua.Core.Anagraph;

type
  TJanuaRESTFootballClient = class(TJanuaCustomFootballClient)
  private
    FFootballMethodsClient: TServerMethodsSportmediaClient;
  public
    constructor Create(aFootballMethodsClient: TServerMethodsSportmediaClient); overload;
    // Connection Testing Procedures ..................................................................................
    function EchoString(Value: string): string; override;
    function ReverseString(Value: string): string; override;
    // Common System Procedures .......................................................................................
    procedure Logout; override;
    function StartPublicSession(const aAppName: string): TJanuaServerSession; override;
    function SaveProfile(var aUser: TJanuaRecordUserProfile): boolean; override;
    function Login(aUser: TJanuaRecordUserProfile): TJanuaLoginRecord; overload; override;
    function Login(Username, Password: string): TJanuaLoginRecord; overload; override;
    function CheckSessionKey(aSessionKey: string): TJanuaLoginRecord; overload; override;
    function CheckNewUser(aUser: TJanuaRecordUserProfile): boolean; overload; override;
    function CheckNewUser(aUser: string): boolean; overload; override;
    function CreateNewUser(aUser: TJanuaRecordUserProfile; var aChecked: boolean): TJanuaRecordUserProfile; override;
    // Football Specific Procedures ....................................................................................
    function getSeasonsList: integer; override; // (aSessionKey: string)
    // Server Method function getChampionshipsList(aSessionKey: string; aSeasonID: integer = 0): TJsonObject;
    function getChampionshipsList: integer; override; // (aSessionKey:  aSeasonID: integer = 0);
    // Server function getChampionshipSummary(aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getChampionshipSummary: boolean; override; // (aSessionKey aSeasonID, aChampionshipID)
    // Server function getRanking(aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getRanking: boolean; override; // (aSessionKey: aSeasonID, aChampionshipID: integer)
    // function getGoalRanking(aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getGoalRanking: boolean; override; // (aSessionKey: aSeasonID, aChampionshipID: integer)
    // Server function getMatchDay(aSessionKey: string; aSeasonID, aChampionshipID, aMatchDay: integer): TJsonObject;
    function getMatchDay: boolean; override; // (aSessionKey: aSeasonID, aChampionshipID, aMatchDay: integer)
    // Server function getChampSummary(aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getChampSummary: boolean; override; // (aSessionKey: aSeasonID, aChampionshipID, aMatchDay)
    // Server function getMatchDetails(aSessionKey: string; aSeasonID, aChampionshipID, aMatchID: integer): TJsonObject;
    function getMatchDetails: boolean; override; // (aSessionKey: aSeasonID, aChampionshipID, aMatchID)
    // Server function GetTeamChampionship(aSessionKey: string; aSeasonID, aChampionshipID, aTeamID: integer): TJsonObject;
    function GetTeamChampionship: boolean; override; // (aSessionKey: aSeasonID, aChampionshipID, aTeamID)
    // Server Function getCalendar (aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function GetCalendar: boolean; override; // (aSessionKey: aSeasonID, aChampionshipID)
    { TODO : Implementare GetNotifications nel programma Football }
    function GetNotifications: integer; override;
    function GetNotifications(aSessionKey: string): integer; override;
  end;

implementation

{ TJanuaRESTHealthClient }

function TJanuaRESTFootballClient.CheckNewUser(aUser: TJanuaRecordUserProfile): boolean;
begin

end;

function TJanuaRESTFootballClient.CheckNewUser(aUser: string): boolean;
begin

end;

function TJanuaRESTFootballClient.CheckSessionKey(aSessionKey: string): TJanuaLoginRecord;
begin

end;

constructor TJanuaRESTFootballClient.Create(aFootballMethodsClient: TServerMethodsSportmediaClient);
begin
  self.FFootballMethodsClient := aFootballMethodsClient;
end;

function TJanuaRESTFootballClient.CreateNewUser(aUser: TJanuaRecordUserProfile; var aChecked: boolean)
  : TJanuaRecordUserProfile;
begin

end;

function TJanuaRESTFootballClient.EchoString(Value: string): string;
begin
  Result := self.FFootballMethodsClient.EchoString(Value)
end;

function TJanuaRESTFootballClient.GetCalendar: boolean;
begin
  self.Calendar.SetFromJson(self.FFootballMethodsClient.GetCalendar(SessionKey, seasonID, ChampionshipID));
end;

function TJanuaRESTFootballClient.getChampionshipsList: integer;
begin
  self.FChampionships.SetFromJson(FFootballMethodsClient.getChampionshipsList(self.SessionKey, self.seasonID));
  Result := self.FChampionships.Count;
end;

function TJanuaRESTFootballClient.getChampionshipSummary: boolean;
begin

end;

function TJanuaRESTFootballClient.getChampSummary: boolean;
begin

end;

function TJanuaRESTFootballClient.getGoalRanking: boolean;
begin
  GoalRanking.SetFromJson(self.FFootballMethodsClient.getGoalRanking(SessionKey, seasonID, ChampionshipID));
  Result := self.GoalRanking.Count > 0;
end;

function TJanuaRESTFootballClient.getMatchDay: boolean;
begin
  matches.SetFromJson(self.FFootballMethodsClient.getMatchDay(SessionKey, seasonID, ChampionshipID, MatchDayNum));
  Result := True;
end;

function TJanuaRESTFootballClient.getMatchDetails: boolean;
begin
  MatchDetails.SetFromJson(FFootballMethodsClient.getMatchDetails(SessionKey, seasonID, ChampionshipID, MatchDayNum,
    MatchID));
  Result := True;
end;

function TJanuaRESTFootballClient.GetNotifications: integer;
begin
  { TODO : Implementare GetNotifications nel programma Football }
  Result := 0;
end;

function TJanuaRESTFootballClient.GetNotifications(aSessionKey: string): integer;
begin
  { TODO : Implementare GetNotifications-aSessionKey nel programma Football }
  Result := 0;
end;

function TJanuaRESTFootballClient.getRanking: boolean;
begin

  self.Ranking.SetFromJson(self.FFootballMethodsClient.getRanking(SessionKey, seasonID, ChampionshipID));
  Result := self.Ranking.Count > 0;
end;

function TJanuaRESTFootballClient.getSeasonsList: integer;
begin
  self.FSeasons.SetFromJson(FFootballMethodsClient.getSeasonsList(self.SessionKey));
  Result := self.FSeasons.Count;
end;

function TJanuaRESTFootballClient.GetTeamChampionship: boolean;
begin
  Result := True;
end;

function TJanuaRESTFootballClient.Login(Username, Password: string): TJanuaLoginRecord;
begin
  Result.Clear;
  Result.IsLoggedIn := False;
end;

function TJanuaRESTFootballClient.Login(aUser: TJanuaRecordUserProfile): TJanuaLoginRecord;
begin

end;

procedure TJanuaRESTFootballClient.Logout;
begin
  inherited;

end;

function TJanuaRESTFootballClient.ReverseString(Value: string): string;
begin

end;

function TJanuaRESTFootballClient.SaveProfile(var aUser: TJanuaRecordUserProfile): boolean;
begin

end;

function TJanuaRESTFootballClient.StartPublicSession(const aAppName: string): TJanuaServerSession;
begin
  Result.LoadFromJsonObject(self.FFootballMethodsClient.StartPublicSession(self.AppName));
  self.FLoginRecord.Session := Result;
end;

end.
