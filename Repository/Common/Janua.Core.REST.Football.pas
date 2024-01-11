//
// Created by the DataSnap proxy generator.
// 12/09/2017 10:44:16
//

unit Janua.Core.REST.Football;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap,
  Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.DBXDBReaders,
  Data.DBXJSONReflect;

type
  TServerMethodsSportmediaClient = class(TDSAdminRestClient)
  private
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
    FgetCalendarCommand: TDSRestCommand;
    FgetCalendarCommand_Cache: TDSRestCommand;
    FgetSeasonsListCommand: TDSRestCommand;
    FgetSeasonsListCommand_Cache: TDSRestCommand;
    FgetChampionshipsListCommand: TDSRestCommand;
    FgetChampionshipsListCommand_Cache: TDSRestCommand;
    FgetChampionshipSummaryCommand: TDSRestCommand;
    FgetChampionshipSummaryCommand_Cache: TDSRestCommand;
    FgetRankingCommand: TDSRestCommand;
    FgetRankingCommand_Cache: TDSRestCommand;
    FgetGoalRankingCommand: TDSRestCommand;
    FgetGoalRankingCommand_Cache: TDSRestCommand;
    FgetMatchDayCommand: TDSRestCommand;
    FgetMatchDayCommand_Cache: TDSRestCommand;
    FgetMatchDetailsCommand: TDSRestCommand;
    FgetMatchDetailsCommand_Cache: TDSRestCommand;
    FGetTeamChampionshipCommand: TDSRestCommand;
    FGetTeamChampionshipCommand_Cache: TDSRestCommand;
    FDSServerModuleCreateCommand: TDSRestCommand;
    FLoginJsonCommand: TDSRestCommand;
    FLoginJsonCommand_Cache: TDSRestCommand;
    FLoginCommand: TDSRestCommand;
    FLoginCommand_Cache: TDSRestCommand;
    FStartPublicSessionCommand: TDSRestCommand;
    FStartPublicSessionCommand_Cache: TDSRestCommand;
    FCheckNewUserCommand: TDSRestCommand;
    FCheckNewUserJsonCommand: TDSRestCommand;
    FCreateNewUserCommand: TDSRestCommand;
    FCreateNewUserCommand_Cache: TDSRestCommand;
    FSaveProfileCommand: TDSRestCommand;
    FSaveProfileCommand_Cache: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
    function getCalendar(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
      const ARequestFilter: string = ''): TJSONObject;
    function getCalendar_Cache(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
      const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function getSeasonsList(aSessionKey: string; const ARequestFilter: string = ''): TJSONObject;
    function getSeasonsList_Cache(aSessionKey: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function getChampionshipsList(aSessionKey: string; aSeasonID: Integer; const ARequestFilter: string = '')
      : TJSONObject;
    function getChampionshipsList_Cache(aSessionKey: string; aSeasonID: Integer; const ARequestFilter: string = '')
      : IDSRestCachedJSONObject;
    function getChampionshipSummary(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
      const ARequestFilter: string = ''): TJSONObject;
    function getChampionshipSummary_Cache(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
      const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function getRanking(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
      const ARequestFilter: string = ''): TJSONObject;
    function getRanking_Cache(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
      const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function getGoalRanking(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
      const ARequestFilter: string = ''): TJSONObject;
    function getGoalRanking_Cache(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
      const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function getMatchDay(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer; aMatchDay: Integer;
      const ARequestFilter: string = ''): TJSONObject;
    function getMatchDay_Cache(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer; aMatchDay: Integer;
      const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function getMatchDetails(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer; aMatchDay: Integer;
      aMatchID: Int64; const ARequestFilter: string = ''): TJSONObject;
    function getMatchDetails_Cache(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
      aMatchDay: Integer; aMatchID: Int64; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function GetTeamChampionship(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer; aTeamID: Integer;
      const ARequestFilter: string = ''): TJSONObject;
    function GetTeamChampionship_Cache(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
      aTeamID: Integer; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    procedure DSServerModuleCreate(Sender: TObject);
    function LoginJson(aJsonObject: TJSONObject; const ARequestFilter: string = ''): TJSONObject;
    function LoginJson_Cache(aJsonObject: TJSONObject; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function Login(UserName: string; Password: string; const ARequestFilter: string = ''): TJSONObject;
    function Login_Cache(UserName: string; Password: string; const ARequestFilter: string = '')
      : IDSRestCachedJSONObject;
    function StartPublicSession(aAppName: string; const ARequestFilter: string = ''): TJSONObject;
    function StartPublicSession_Cache(aAppName: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function CheckNewUser(aUserName: string; const ARequestFilter: string = ''): Boolean;
    function CheckNewUserJson(aUser: TJSONObject; const ARequestFilter: string = ''): Boolean;
    function CreateNewUser(aUser: TJSONObject; var aChecked: Boolean; const ARequestFilter: string = ''): TJSONObject;
    function CreateNewUser_Cache(aUser: TJSONObject; var aChecked: Boolean; const ARequestFilter: string = '')
      : IDSRestCachedJSONObject;
    function SaveProfile(aUserProfile: TJSONObject; var aChecked: Boolean; var aError: string;
      const ARequestFilter: string = ''): TJSONObject;
    function SaveProfile_Cache(aUserProfile: TJSONObject; var aChecked: Boolean; var aError: string;
      const ARequestFilter: string = ''): IDSRestCachedJSONObject;
  end;

const
  TServerMethodsSportmedia_EchoString: array [0 .. 1] of TDSRestParameterMetaData = ((Name: 'Value'; Direction: 1;
    DBXType: 26; TypeName: 'string'), (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string'));

  TServerMethodsSportmedia_ReverseString: array [0 .. 1] of TDSRestParameterMetaData = ((Name: 'Value'; Direction: 1;
    DBXType: 26; TypeName: 'string'), (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string'));

  TServerMethodsSportmedia_getCalendar: array [0 .. 3] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 37;
    TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_getCalendar_Cache: array [0 .. 3] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 26;
    TypeName: 'String'));

  TServerMethodsSportmedia_getSeasonsList: array [0 .. 1] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_getSeasonsList_Cache: array [0 .. 1] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String'));

  TServerMethodsSportmedia_getChampionshipsList: array [0 .. 2] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_getChampionshipsList_Cache: array [0 .. 2] of TDSRestParameterMetaData =
    ((Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6;
    TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String'));

  TServerMethodsSportmedia_getChampionshipSummary: array [0 .. 3] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 37;
    TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_getChampionshipSummary_Cache: array [0 .. 3] of TDSRestParameterMetaData =
    ((Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6;
    TypeName: 'Integer'), (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: '';
    Direction: 4; DBXType: 26; TypeName: 'String'));

  TServerMethodsSportmedia_getRanking: array [0 .. 3] of TDSRestParameterMetaData = ((Name: 'aSessionKey'; Direction: 1;
    DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 37;
    TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_getRanking_Cache: array [0 .. 3] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 26;
    TypeName: 'String'));

  TServerMethodsSportmedia_getGoalRanking: array [0 .. 3] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 37;
    TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_getGoalRanking_Cache: array [0 .. 3] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 26;
    TypeName: 'String'));

  TServerMethodsSportmedia_getMatchDay: array [0 .. 4] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: 'aMatchDay'; Direction: 1;
    DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_getMatchDay_Cache: array [0 .. 4] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: 'aMatchDay'; Direction: 1;
    DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String'));

  TServerMethodsSportmedia_getMatchDetails: array [0 .. 5] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: 'aMatchDay'; Direction: 1;
    DBXType: 6; TypeName: 'Integer'), (Name: 'aMatchID'; Direction: 1; DBXType: 18; TypeName: 'Int64'), (Name: '';
    Direction: 4; DBXType: 37; TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_getMatchDetails_Cache: array [0 .. 5] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: 'aMatchDay'; Direction: 1;
    DBXType: 6; TypeName: 'Integer'), (Name: 'aMatchID'; Direction: 1; DBXType: 18; TypeName: 'Int64'), (Name: '';
    Direction: 4; DBXType: 26; TypeName: 'String'));

  TServerMethodsSportmedia_GetTeamChampionship: array [0 .. 4] of TDSRestParameterMetaData = ((Name: 'aSessionKey';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: 'aTeamID'; Direction: 1;
    DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_GetTeamChampionship_Cache: array [0 .. 4] of TDSRestParameterMetaData =
    ((Name: 'aSessionKey'; Direction: 1; DBXType: 26; TypeName: 'string'), (Name: 'aSeasonID'; Direction: 1; DBXType: 6;
    TypeName: 'Integer'), (Name: 'aChampionshipID'; Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: 'aTeamID';
    Direction: 1; DBXType: 6; TypeName: 'Integer'), (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String'));

  TServerMethodsSportmedia_DSServerModuleCreate: array [0 .. 0] of TDSRestParameterMetaData = ((Name: 'Sender';
    Direction: 1; DBXType: 37; TypeName: 'TObject'));

  TServerMethodsSportmedia_LoginJson: array [0 .. 1] of TDSRestParameterMetaData = ((Name: 'aJsonObject'; Direction: 1;
    DBXType: 37; TypeName: 'TJSONObject'), (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_LoginJson_Cache: array [0 .. 1] of TDSRestParameterMetaData = ((Name: 'aJsonObject';
    Direction: 1; DBXType: 37; TypeName: 'TJSONObject'), (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String'));

  TServerMethodsSportmedia_Login: array [0 .. 2] of TDSRestParameterMetaData = ((Name: 'UserName'; Direction: 1;
    DBXType: 26; TypeName: 'string'), (Name: 'Password'; Direction: 1; DBXType: 26; TypeName: 'string'), (Name: '';
    Direction: 4; DBXType: 37; TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_Login_Cache: array [0 .. 2] of TDSRestParameterMetaData = ((Name: 'UserName'; Direction: 1;
    DBXType: 26; TypeName: 'string'), (Name: 'Password'; Direction: 1; DBXType: 26; TypeName: 'string'), (Name: '';
    Direction: 4; DBXType: 26; TypeName: 'String'));

  TServerMethodsSportmedia_StartPublicSession: array [0 .. 1] of TDSRestParameterMetaData = ((Name: 'aAppName';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_StartPublicSession_Cache: array [0 .. 1] of TDSRestParameterMetaData = ((Name: 'aAppName';
    Direction: 1; DBXType: 26; TypeName: 'string'), (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String'));

  TServerMethodsSportmedia_CheckNewUser: array [0 .. 1] of TDSRestParameterMetaData = ((Name: 'aUserName'; Direction: 1;
    DBXType: 26; TypeName: 'string'), (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean'));

  TServerMethodsSportmedia_CheckNewUserJson: array [0 .. 1] of TDSRestParameterMetaData = ((Name: 'aUser'; Direction: 1;
    DBXType: 37; TypeName: 'TJSONObject'), (Name: ''; Direction: 4; DBXType: 4; TypeName: 'Boolean'));

  TServerMethodsSportmedia_CreateNewUser: array [0 .. 2] of TDSRestParameterMetaData = ((Name: 'aUser'; Direction: 1;
    DBXType: 37; TypeName: 'TJSONObject'), (Name: 'aChecked'; Direction: 3; DBXType: 4; TypeName: 'Boolean'), (Name: '';
    Direction: 4; DBXType: 37; TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_CreateNewUser_Cache: array [0 .. 2] of TDSRestParameterMetaData = ((Name: 'aUser';
    Direction: 1; DBXType: 37; TypeName: 'TJSONObject'), (Name: 'aChecked'; Direction: 3; DBXType: 4;
    TypeName: 'Boolean'), (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String'));

  TServerMethodsSportmedia_SaveProfile: array [0 .. 3] of TDSRestParameterMetaData = ((Name: 'aUserProfile';
    Direction: 1; DBXType: 37; TypeName: 'TJSONObject'), (Name: 'aChecked'; Direction: 3; DBXType: 4;
    TypeName: 'Boolean'), (Name: 'aError'; Direction: 3; DBXType: 26; TypeName: 'string'), (Name: ''; Direction: 4;
    DBXType: 37; TypeName: 'TJSONObject'));

  TServerMethodsSportmedia_SaveProfile_Cache: array [0 .. 3] of TDSRestParameterMetaData = ((Name: 'aUserProfile';
    Direction: 1; DBXType: 37; TypeName: 'TJSONObject'), (Name: 'aChecked'; Direction: 3; DBXType: 4;
    TypeName: 'Boolean'), (Name: 'aError'; Direction: 3; DBXType: 26; TypeName: 'string'), (Name: ''; Direction: 4;
    DBXType: 26; TypeName: 'String'));

implementation

function TServerMethodsSportmediaClient.EchoString(Value: string; const ARequestFilter: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FConnection.CreateCommand;
    FEchoStringCommand.RequestType := 'GET';
    FEchoStringCommand.Text := 'TServerMethodsSportmedia.EchoString';
    FEchoStringCommand.Prepare(TServerMethodsSportmedia_EchoString);
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.Execute(ARequestFilter);
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsSportmediaClient.ReverseString(Value: string; const ARequestFilter: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FConnection.CreateCommand;
    FReverseStringCommand.RequestType := 'GET';
    FReverseStringCommand.Text := 'TServerMethodsSportmedia.ReverseString';
    FReverseStringCommand.Prepare(TServerMethodsSportmedia_ReverseString);
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.Execute(ARequestFilter);
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsSportmediaClient.getCalendar(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
  const ARequestFilter: string): TJSONObject;
begin
  if FgetCalendarCommand = nil then
  begin
    FgetCalendarCommand := FConnection.CreateCommand;
    FgetCalendarCommand.RequestType := 'GET';
    FgetCalendarCommand.Text := 'TServerMethodsSportmedia.getCalendar';
    FgetCalendarCommand.Prepare(TServerMethodsSportmedia_getCalendar);
  end;
  FgetCalendarCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FgetCalendarCommand.Parameters[1].Value.SetInt32(aSeasonID);
  FgetCalendarCommand.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetCalendarCommand.Execute(ARequestFilter);
  Result := TJSONObject(FgetCalendarCommand.Parameters[3].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.getCalendar_Cache(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FgetCalendarCommand_Cache = nil then
  begin
    FgetCalendarCommand_Cache := FConnection.CreateCommand;
    FgetCalendarCommand_Cache.RequestType := 'GET';
    FgetCalendarCommand_Cache.Text := 'TServerMethodsSportmedia.getCalendar';
    FgetCalendarCommand_Cache.Prepare(TServerMethodsSportmedia_getCalendar_Cache);
  end;
  FgetCalendarCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FgetCalendarCommand_Cache.Parameters[1].Value.SetInt32(aSeasonID);
  FgetCalendarCommand_Cache.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetCalendarCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FgetCalendarCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethodsSportmediaClient.getSeasonsList(aSessionKey: string; const ARequestFilter: string): TJSONObject;
begin
  if FgetSeasonsListCommand = nil then
  begin
    FgetSeasonsListCommand := FConnection.CreateCommand;
    FgetSeasonsListCommand.RequestType := 'GET';
    FgetSeasonsListCommand.Text := 'TServerMethodsSportmedia.getSeasonsList';
    FgetSeasonsListCommand.Prepare(TServerMethodsSportmedia_getSeasonsList);
  end;
  FgetSeasonsListCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FgetSeasonsListCommand.Execute(ARequestFilter);
  Result := TJSONObject(FgetSeasonsListCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.getSeasonsList_Cache(aSessionKey: string; const ARequestFilter: string)
  : IDSRestCachedJSONObject;
begin
  if FgetSeasonsListCommand_Cache = nil then
  begin
    FgetSeasonsListCommand_Cache := FConnection.CreateCommand;
    FgetSeasonsListCommand_Cache.RequestType := 'GET';
    FgetSeasonsListCommand_Cache.Text := 'TServerMethodsSportmedia.getSeasonsList';
    FgetSeasonsListCommand_Cache.Prepare(TServerMethodsSportmedia_getSeasonsList_Cache);
  end;
  FgetSeasonsListCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FgetSeasonsListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FgetSeasonsListCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethodsSportmediaClient.getChampionshipsList(aSessionKey: string; aSeasonID: Integer;
  const ARequestFilter: string): TJSONObject;
begin
  if FgetChampionshipsListCommand = nil then
  begin
    FgetChampionshipsListCommand := FConnection.CreateCommand;
    FgetChampionshipsListCommand.RequestType := 'GET';
    FgetChampionshipsListCommand.Text := 'TServerMethodsSportmedia.getChampionshipsList';
    FgetChampionshipsListCommand.Prepare(TServerMethodsSportmedia_getChampionshipsList);
  end;
  FgetChampionshipsListCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FgetChampionshipsListCommand.Parameters[1].Value.SetInt32(aSeasonID);
  FgetChampionshipsListCommand.Execute(ARequestFilter);
  Result := TJSONObject(FgetChampionshipsListCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.getChampionshipsList_Cache(aSessionKey: string; aSeasonID: Integer;
  const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FgetChampionshipsListCommand_Cache = nil then
  begin
    FgetChampionshipsListCommand_Cache := FConnection.CreateCommand;
    FgetChampionshipsListCommand_Cache.RequestType := 'GET';
    FgetChampionshipsListCommand_Cache.Text := 'TServerMethodsSportmedia.getChampionshipsList';
    FgetChampionshipsListCommand_Cache.Prepare(TServerMethodsSportmedia_getChampionshipsList_Cache);
  end;
  FgetChampionshipsListCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FgetChampionshipsListCommand_Cache.Parameters[1].Value.SetInt32(aSeasonID);
  FgetChampionshipsListCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FgetChampionshipsListCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethodsSportmediaClient.getChampionshipSummary(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; const ARequestFilter: string): TJSONObject;
begin
  if FgetChampionshipSummaryCommand = nil then
  begin
    FgetChampionshipSummaryCommand := FConnection.CreateCommand;
    FgetChampionshipSummaryCommand.RequestType := 'GET';
    FgetChampionshipSummaryCommand.Text := 'TServerMethodsSportmedia.getChampionshipSummary';
    FgetChampionshipSummaryCommand.Prepare(TServerMethodsSportmedia_getChampionshipSummary);
  end;
  FgetChampionshipSummaryCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FgetChampionshipSummaryCommand.Parameters[1].Value.SetInt32(aSeasonID);
  FgetChampionshipSummaryCommand.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetChampionshipSummaryCommand.Execute(ARequestFilter);
  Result := TJSONObject(FgetChampionshipSummaryCommand.Parameters[3].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.getChampionshipSummary_Cache(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FgetChampionshipSummaryCommand_Cache = nil then
  begin
    FgetChampionshipSummaryCommand_Cache := FConnection.CreateCommand;
    FgetChampionshipSummaryCommand_Cache.RequestType := 'GET';
    FgetChampionshipSummaryCommand_Cache.Text := 'TServerMethodsSportmedia.getChampionshipSummary';
    FgetChampionshipSummaryCommand_Cache.Prepare(TServerMethodsSportmedia_getChampionshipSummary_Cache);
  end;
  FgetChampionshipSummaryCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FgetChampionshipSummaryCommand_Cache.Parameters[1].Value.SetInt32(aSeasonID);
  FgetChampionshipSummaryCommand_Cache.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetChampionshipSummaryCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FgetChampionshipSummaryCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethodsSportmediaClient.getRanking(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
  const ARequestFilter: string): TJSONObject;
begin
  if FgetRankingCommand = nil then
  begin
    FgetRankingCommand := FConnection.CreateCommand;
    FgetRankingCommand.RequestType := 'GET';
    FgetRankingCommand.Text := 'TServerMethodsSportmedia.getRanking';
    FgetRankingCommand.Prepare(TServerMethodsSportmedia_getRanking);
  end;
  FgetRankingCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FgetRankingCommand.Parameters[1].Value.SetInt32(aSeasonID);
  FgetRankingCommand.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetRankingCommand.Execute(ARequestFilter);
  Result := TJSONObject(FgetRankingCommand.Parameters[3].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.getRanking_Cache(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FgetRankingCommand_Cache = nil then
  begin
    FgetRankingCommand_Cache := FConnection.CreateCommand;
    FgetRankingCommand_Cache.RequestType := 'GET';
    FgetRankingCommand_Cache.Text := 'TServerMethodsSportmedia.getRanking';
    FgetRankingCommand_Cache.Prepare(TServerMethodsSportmedia_getRanking_Cache);
  end;
  FgetRankingCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FgetRankingCommand_Cache.Parameters[1].Value.SetInt32(aSeasonID);
  FgetRankingCommand_Cache.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetRankingCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FgetRankingCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethodsSportmediaClient.getGoalRanking(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; const ARequestFilter: string): TJSONObject;
begin
  if FgetGoalRankingCommand = nil then
  begin
    FgetGoalRankingCommand := FConnection.CreateCommand;
    FgetGoalRankingCommand.RequestType := 'GET';
    FgetGoalRankingCommand.Text := 'TServerMethodsSportmedia.getGoalRanking';
    FgetGoalRankingCommand.Prepare(TServerMethodsSportmedia_getGoalRanking);
  end;
  FgetGoalRankingCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FgetGoalRankingCommand.Parameters[1].Value.SetInt32(aSeasonID);
  FgetGoalRankingCommand.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetGoalRankingCommand.Execute(ARequestFilter);
  Result := TJSONObject(FgetGoalRankingCommand.Parameters[3].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.getGoalRanking_Cache(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FgetGoalRankingCommand_Cache = nil then
  begin
    FgetGoalRankingCommand_Cache := FConnection.CreateCommand;
    FgetGoalRankingCommand_Cache.RequestType := 'GET';
    FgetGoalRankingCommand_Cache.Text := 'TServerMethodsSportmedia.getGoalRanking';
    FgetGoalRankingCommand_Cache.Prepare(TServerMethodsSportmedia_getGoalRanking_Cache);
  end;
  FgetGoalRankingCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FgetGoalRankingCommand_Cache.Parameters[1].Value.SetInt32(aSeasonID);
  FgetGoalRankingCommand_Cache.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetGoalRankingCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FgetGoalRankingCommand_Cache.Parameters[3].Value.GetString);
end;

function TServerMethodsSportmediaClient.getMatchDay(aSessionKey: string; aSeasonID: Integer; aChampionshipID: Integer;
  aMatchDay: Integer; const ARequestFilter: string): TJSONObject;
begin
  if FgetMatchDayCommand = nil then
  begin
    FgetMatchDayCommand := FConnection.CreateCommand;
    FgetMatchDayCommand.RequestType := 'GET';
    FgetMatchDayCommand.Text := 'TServerMethodsSportmedia.getMatchDay';
    FgetMatchDayCommand.Prepare(TServerMethodsSportmedia_getMatchDay);
  end;
  FgetMatchDayCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FgetMatchDayCommand.Parameters[1].Value.SetInt32(aSeasonID);
  FgetMatchDayCommand.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetMatchDayCommand.Parameters[3].Value.SetInt32(aMatchDay);
  FgetMatchDayCommand.Execute(ARequestFilter);
  Result := TJSONObject(FgetMatchDayCommand.Parameters[4].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.getMatchDay_Cache(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; aMatchDay: Integer; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FgetMatchDayCommand_Cache = nil then
  begin
    FgetMatchDayCommand_Cache := FConnection.CreateCommand;
    FgetMatchDayCommand_Cache.RequestType := 'GET';
    FgetMatchDayCommand_Cache.Text := 'TServerMethodsSportmedia.getMatchDay';
    FgetMatchDayCommand_Cache.Prepare(TServerMethodsSportmedia_getMatchDay_Cache);
  end;
  FgetMatchDayCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FgetMatchDayCommand_Cache.Parameters[1].Value.SetInt32(aSeasonID);
  FgetMatchDayCommand_Cache.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetMatchDayCommand_Cache.Parameters[3].Value.SetInt32(aMatchDay);
  FgetMatchDayCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FgetMatchDayCommand_Cache.Parameters[4].Value.GetString);
end;

function TServerMethodsSportmediaClient.getMatchDetails(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; aMatchDay: Integer; aMatchID: Int64; const ARequestFilter: string): TJSONObject;
begin
  if FgetMatchDetailsCommand = nil then
  begin
    FgetMatchDetailsCommand := FConnection.CreateCommand;
    FgetMatchDetailsCommand.RequestType := 'GET';
    FgetMatchDetailsCommand.Text := 'TServerMethodsSportmedia.getMatchDetails';
    FgetMatchDetailsCommand.Prepare(TServerMethodsSportmedia_getMatchDetails);
  end;
  FgetMatchDetailsCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FgetMatchDetailsCommand.Parameters[1].Value.SetInt32(aSeasonID);
  FgetMatchDetailsCommand.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetMatchDetailsCommand.Parameters[3].Value.SetInt32(aMatchDay);
  FgetMatchDetailsCommand.Parameters[4].Value.SetInt64(aMatchID);
  FgetMatchDetailsCommand.Execute(ARequestFilter);
  Result := TJSONObject(FgetMatchDetailsCommand.Parameters[5].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.getMatchDetails_Cache(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; aMatchDay: Integer; aMatchID: Int64; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FgetMatchDetailsCommand_Cache = nil then
  begin
    FgetMatchDetailsCommand_Cache := FConnection.CreateCommand;
    FgetMatchDetailsCommand_Cache.RequestType := 'GET';
    FgetMatchDetailsCommand_Cache.Text := 'TServerMethodsSportmedia.getMatchDetails';
    FgetMatchDetailsCommand_Cache.Prepare(TServerMethodsSportmedia_getMatchDetails_Cache);
  end;
  FgetMatchDetailsCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FgetMatchDetailsCommand_Cache.Parameters[1].Value.SetInt32(aSeasonID);
  FgetMatchDetailsCommand_Cache.Parameters[2].Value.SetInt32(aChampionshipID);
  FgetMatchDetailsCommand_Cache.Parameters[3].Value.SetInt32(aMatchDay);
  FgetMatchDetailsCommand_Cache.Parameters[4].Value.SetInt64(aMatchID);
  FgetMatchDetailsCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FgetMatchDetailsCommand_Cache.Parameters[5].Value.GetString);
end;

function TServerMethodsSportmediaClient.GetTeamChampionship(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; aTeamID: Integer; const ARequestFilter: string): TJSONObject;
begin
  if FGetTeamChampionshipCommand = nil then
  begin
    FGetTeamChampionshipCommand := FConnection.CreateCommand;
    FGetTeamChampionshipCommand.RequestType := 'GET';
    FGetTeamChampionshipCommand.Text := 'TServerMethodsSportmedia.GetTeamChampionship';
    FGetTeamChampionshipCommand.Prepare(TServerMethodsSportmedia_GetTeamChampionship);
  end;
  FGetTeamChampionshipCommand.Parameters[0].Value.SetWideString(aSessionKey);
  FGetTeamChampionshipCommand.Parameters[1].Value.SetInt32(aSeasonID);
  FGetTeamChampionshipCommand.Parameters[2].Value.SetInt32(aChampionshipID);
  FGetTeamChampionshipCommand.Parameters[3].Value.SetInt32(aTeamID);
  FGetTeamChampionshipCommand.Execute(ARequestFilter);
  Result := TJSONObject(FGetTeamChampionshipCommand.Parameters[4].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.GetTeamChampionship_Cache(aSessionKey: string; aSeasonID: Integer;
  aChampionshipID: Integer; aTeamID: Integer; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FGetTeamChampionshipCommand_Cache = nil then
  begin
    FGetTeamChampionshipCommand_Cache := FConnection.CreateCommand;
    FGetTeamChampionshipCommand_Cache.RequestType := 'GET';
    FGetTeamChampionshipCommand_Cache.Text := 'TServerMethodsSportmedia.GetTeamChampionship';
    FGetTeamChampionshipCommand_Cache.Prepare(TServerMethodsSportmedia_GetTeamChampionship_Cache);
  end;
  FGetTeamChampionshipCommand_Cache.Parameters[0].Value.SetWideString(aSessionKey);
  FGetTeamChampionshipCommand_Cache.Parameters[1].Value.SetInt32(aSeasonID);
  FGetTeamChampionshipCommand_Cache.Parameters[2].Value.SetInt32(aChampionshipID);
  FGetTeamChampionshipCommand_Cache.Parameters[3].Value.SetInt32(aTeamID);
  FGetTeamChampionshipCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FGetTeamChampionshipCommand_Cache.Parameters[4].Value.GetString);
end;

procedure TServerMethodsSportmediaClient.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FConnection.CreateCommand;
    FDSServerModuleCreateCommand.RequestType := 'POST';
    FDSServerModuleCreateCommand.Text := 'TServerMethodsSportmedia."DSServerModuleCreate"';
    FDSServerModuleCreateCommand.Prepare(TServerMethodsSportmedia_DSServerModuleCreate);
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FDSServerModuleCreateCommand.Execute;
end;

function TServerMethodsSportmediaClient.LoginJson(aJsonObject: TJSONObject; const ARequestFilter: string): TJSONObject;
begin
  if FLoginJsonCommand = nil then
  begin
    FLoginJsonCommand := FConnection.CreateCommand;
    FLoginJsonCommand.RequestType := 'POST';
    FLoginJsonCommand.Text := 'TServerMethodsSportmedia."LoginJson"';
    FLoginJsonCommand.Prepare(TServerMethodsSportmedia_LoginJson);
  end;
  FLoginJsonCommand.Parameters[0].Value.SetJSONValue(aJsonObject, FInstanceOwner);
  FLoginJsonCommand.Execute(ARequestFilter);
  Result := TJSONObject(FLoginJsonCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.LoginJson_Cache(aJsonObject: TJSONObject; const ARequestFilter: string)
  : IDSRestCachedJSONObject;
begin
  if FLoginJsonCommand_Cache = nil then
  begin
    FLoginJsonCommand_Cache := FConnection.CreateCommand;
    FLoginJsonCommand_Cache.RequestType := 'POST';
    FLoginJsonCommand_Cache.Text := 'TServerMethodsSportmedia."LoginJson"';
    FLoginJsonCommand_Cache.Prepare(TServerMethodsSportmedia_LoginJson_Cache);
  end;
  FLoginJsonCommand_Cache.Parameters[0].Value.SetJSONValue(aJsonObject, FInstanceOwner);
  FLoginJsonCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FLoginJsonCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethodsSportmediaClient.Login(UserName: string; Password: string; const ARequestFilter: string)
  : TJSONObject;
begin
  if FLoginCommand = nil then
  begin
    FLoginCommand := FConnection.CreateCommand;
    FLoginCommand.RequestType := 'GET';
    FLoginCommand.Text := 'TServerMethodsSportmedia.Login';
    FLoginCommand.Prepare(TServerMethodsSportmedia_Login);
  end;
  FLoginCommand.Parameters[0].Value.SetWideString(UserName);
  FLoginCommand.Parameters[1].Value.SetWideString(Password);
  FLoginCommand.Execute(ARequestFilter);
  Result := TJSONObject(FLoginCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.Login_Cache(UserName: string; Password: string; const ARequestFilter: string)
  : IDSRestCachedJSONObject;
begin
  if FLoginCommand_Cache = nil then
  begin
    FLoginCommand_Cache := FConnection.CreateCommand;
    FLoginCommand_Cache.RequestType := 'GET';
    FLoginCommand_Cache.Text := 'TServerMethodsSportmedia.Login';
    FLoginCommand_Cache.Prepare(TServerMethodsSportmedia_Login_Cache);
  end;
  FLoginCommand_Cache.Parameters[0].Value.SetWideString(UserName);
  FLoginCommand_Cache.Parameters[1].Value.SetWideString(Password);
  FLoginCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FLoginCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethodsSportmediaClient.StartPublicSession(aAppName: string; const ARequestFilter: string): TJSONObject;
begin
  if FStartPublicSessionCommand = nil then
  begin
    FStartPublicSessionCommand := FConnection.CreateCommand;
    FStartPublicSessionCommand.RequestType := 'GET';
    FStartPublicSessionCommand.Text := 'TServerMethodsSportmedia.StartPublicSession';
    FStartPublicSessionCommand.Prepare(TServerMethodsSportmedia_StartPublicSession);
  end;
  FStartPublicSessionCommand.Parameters[0].Value.SetWideString(aAppName);
  FStartPublicSessionCommand.Execute(ARequestFilter);
  Result := TJSONObject(FStartPublicSessionCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.StartPublicSession_Cache(aAppName: string; const ARequestFilter: string)
  : IDSRestCachedJSONObject;
begin
  if FStartPublicSessionCommand_Cache = nil then
  begin
    FStartPublicSessionCommand_Cache := FConnection.CreateCommand;
    FStartPublicSessionCommand_Cache.RequestType := 'GET';
    FStartPublicSessionCommand_Cache.Text := 'TServerMethodsSportmedia.StartPublicSession';
    FStartPublicSessionCommand_Cache.Prepare(TServerMethodsSportmedia_StartPublicSession_Cache);
  end;
  FStartPublicSessionCommand_Cache.Parameters[0].Value.SetWideString(aAppName);
  FStartPublicSessionCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FStartPublicSessionCommand_Cache.Parameters[1].Value.GetString);
end;

function TServerMethodsSportmediaClient.CheckNewUser(aUserName: string; const ARequestFilter: string): Boolean;
begin
  if FCheckNewUserCommand = nil then
  begin
    FCheckNewUserCommand := FConnection.CreateCommand;
    FCheckNewUserCommand.RequestType := 'GET';
    FCheckNewUserCommand.Text := 'TServerMethodsSportmedia.CheckNewUser';
    FCheckNewUserCommand.Prepare(TServerMethodsSportmedia_CheckNewUser);
  end;
  FCheckNewUserCommand.Parameters[0].Value.SetWideString(aUserName);
  FCheckNewUserCommand.Execute(ARequestFilter);
  Result := FCheckNewUserCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethodsSportmediaClient.CheckNewUserJson(aUser: TJSONObject; const ARequestFilter: string): Boolean;
begin
  if FCheckNewUserJsonCommand = nil then
  begin
    FCheckNewUserJsonCommand := FConnection.CreateCommand;
    FCheckNewUserJsonCommand.RequestType := 'POST';
    FCheckNewUserJsonCommand.Text := 'TServerMethodsSportmedia."CheckNewUserJson"';
    FCheckNewUserJsonCommand.Prepare(TServerMethodsSportmedia_CheckNewUserJson);
  end;
  FCheckNewUserJsonCommand.Parameters[0].Value.SetJSONValue(aUser, FInstanceOwner);
  FCheckNewUserJsonCommand.Execute(ARequestFilter);
  Result := FCheckNewUserJsonCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethodsSportmediaClient.CreateNewUser(aUser: TJSONObject; var aChecked: Boolean;
  const ARequestFilter: string): TJSONObject;
begin
  if FCreateNewUserCommand = nil then
  begin
    FCreateNewUserCommand := FConnection.CreateCommand;
    FCreateNewUserCommand.RequestType := 'POST';
    FCreateNewUserCommand.Text := 'TServerMethodsSportmedia."CreateNewUser"';
    FCreateNewUserCommand.Prepare(TServerMethodsSportmedia_CreateNewUser);
  end;
  FCreateNewUserCommand.Parameters[0].Value.SetJSONValue(aUser, FInstanceOwner);
  FCreateNewUserCommand.Parameters[1].Value.SetBoolean(aChecked);
  FCreateNewUserCommand.Execute(ARequestFilter);
  aChecked := FCreateNewUserCommand.Parameters[1].Value.GetBoolean;
  Result := TJSONObject(FCreateNewUserCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.CreateNewUser_Cache(aUser: TJSONObject; var aChecked: Boolean;
  const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FCreateNewUserCommand_Cache = nil then
  begin
    FCreateNewUserCommand_Cache := FConnection.CreateCommand;
    FCreateNewUserCommand_Cache.RequestType := 'POST';
    FCreateNewUserCommand_Cache.Text := 'TServerMethodsSportmedia."CreateNewUser"';
    FCreateNewUserCommand_Cache.Prepare(TServerMethodsSportmedia_CreateNewUser_Cache);
  end;
  FCreateNewUserCommand_Cache.Parameters[0].Value.SetJSONValue(aUser, FInstanceOwner);
  FCreateNewUserCommand_Cache.Parameters[1].Value.SetBoolean(aChecked);
  FCreateNewUserCommand_Cache.ExecuteCache(ARequestFilter);
  aChecked := FCreateNewUserCommand_Cache.Parameters[1].Value.GetBoolean;
  Result := TDSRestCachedJSONObject.Create(FCreateNewUserCommand_Cache.Parameters[2].Value.GetString);
end;

function TServerMethodsSportmediaClient.SaveProfile(aUserProfile: TJSONObject; var aChecked: Boolean;
  var aError: string; const ARequestFilter: string): TJSONObject;
begin
  if FSaveProfileCommand = nil then
  begin
    FSaveProfileCommand := FConnection.CreateCommand;
    FSaveProfileCommand.RequestType := 'POST';
    FSaveProfileCommand.Text := 'TServerMethodsSportmedia."SaveProfile"';
    FSaveProfileCommand.Prepare(TServerMethodsSportmedia_SaveProfile);
  end;
  FSaveProfileCommand.Parameters[0].Value.SetJSONValue(aUserProfile, FInstanceOwner);
  FSaveProfileCommand.Parameters[1].Value.SetBoolean(aChecked);
  FSaveProfileCommand.Parameters[2].Value.SetWideString(aError);
  FSaveProfileCommand.Execute(ARequestFilter);
  aChecked := FSaveProfileCommand.Parameters[1].Value.GetBoolean;
  aError := FSaveProfileCommand.Parameters[2].Value.GetWideString;
  Result := TJSONObject(FSaveProfileCommand.Parameters[3].Value.GetJSONValue(FInstanceOwner));
end;

function TServerMethodsSportmediaClient.SaveProfile_Cache(aUserProfile: TJSONObject; var aChecked: Boolean;
  var aError: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FSaveProfileCommand_Cache = nil then
  begin
    FSaveProfileCommand_Cache := FConnection.CreateCommand;
    FSaveProfileCommand_Cache.RequestType := 'POST';
    FSaveProfileCommand_Cache.Text := 'TServerMethodsSportmedia."SaveProfile"';
    FSaveProfileCommand_Cache.Prepare(TServerMethodsSportmedia_SaveProfile_Cache);
  end;
  FSaveProfileCommand_Cache.Parameters[0].Value.SetJSONValue(aUserProfile, FInstanceOwner);
  FSaveProfileCommand_Cache.Parameters[1].Value.SetBoolean(aChecked);
  FSaveProfileCommand_Cache.Parameters[2].Value.SetWideString(aError);
  FSaveProfileCommand_Cache.ExecuteCache(ARequestFilter);
  aChecked := FSaveProfileCommand_Cache.Parameters[1].Value.GetBoolean;
  aError := FSaveProfileCommand_Cache.Parameters[2].Value.GetWideString;
  Result := TDSRestCachedJSONObject.Create(FSaveProfileCommand_Cache.Parameters[3].Value.GetString);
end;

constructor TServerMethodsSportmediaClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TServerMethodsSportmediaClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TServerMethodsSportmediaClient.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FgetCalendarCommand.DisposeOf;
  FgetCalendarCommand_Cache.DisposeOf;
  FgetSeasonsListCommand.DisposeOf;
  FgetSeasonsListCommand_Cache.DisposeOf;
  FgetChampionshipsListCommand.DisposeOf;
  FgetChampionshipsListCommand_Cache.DisposeOf;
  FgetChampionshipSummaryCommand.DisposeOf;
  FgetChampionshipSummaryCommand_Cache.DisposeOf;
  FgetRankingCommand.DisposeOf;
  FgetRankingCommand_Cache.DisposeOf;
  FgetGoalRankingCommand.DisposeOf;
  FgetGoalRankingCommand_Cache.DisposeOf;
  FgetMatchDayCommand.DisposeOf;
  FgetMatchDayCommand_Cache.DisposeOf;
  FgetMatchDetailsCommand.DisposeOf;
  FgetMatchDetailsCommand_Cache.DisposeOf;
  FGetTeamChampionshipCommand.DisposeOf;
  FGetTeamChampionshipCommand_Cache.DisposeOf;
  FDSServerModuleCreateCommand.DisposeOf;
  FLoginJsonCommand.DisposeOf;
  FLoginJsonCommand_Cache.DisposeOf;
  FLoginCommand.DisposeOf;
  FLoginCommand_Cache.DisposeOf;
  FStartPublicSessionCommand.DisposeOf;
  FStartPublicSessionCommand_Cache.DisposeOf;
  FCheckNewUserCommand.DisposeOf;
  FCheckNewUserJsonCommand.DisposeOf;
  FCreateNewUserCommand.DisposeOf;
  FCreateNewUserCommand_Cache.DisposeOf;
  FSaveProfileCommand.DisposeOf;
  FSaveProfileCommand_Cache.DisposeOf;
  inherited;
end;

end.
