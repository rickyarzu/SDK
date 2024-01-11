unit udmVirtualFootballServer;

interface

uses
  // System Units
  System.SysUtils, System.Classes,
  // Database Access Units
  Data.DB,
  // Janua Project Classes
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Servers, Janua.Core.DB, Janua.Core.Functions,
  Janua.Core.Jpublic, Janua.Core.Entities,
  Janua.Core.System, Janua.Core.Exceptions, udmVirtualServerModel,
  Janua.Football.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmVirtualFootballServer = class(TdmVirtualServerModel)
    vtChampRanking: TFDMemTable;
    vtChampRankingteam_name: TWideStringField;
    vtChampRankingranking_id: TIntegerField;
    vtChampRankingseason_id: TSmallintField;
    vtChampRankingleague_id: TSmallintField;
    vtChampRankingteam_id: TIntegerField;
    vtChampRankingpos: TSmallintField;
    vtChampRankingplayed_matches: TSmallintField;
    vtChampRankingwon_matches: TSmallintField;
    vtChampRankinglost_matches: TSmallintField;
    vtChampRankingtied_matches: TSmallintField;
    vtChampRankinghome_matches: TSmallintField;
    vtChampRankinghome_won: TSmallintField;
    vtChampRankinghome_lost: TSmallintField;
    vtChampRankinghome_tied: TSmallintField;
    vtChampRankingoutside_played: TSmallintField;
    vtChampRankingoutside_won: TSmallintField;
    vtChampRankingoutside_lost: TSmallintField;
    vtChampRankingoutside_tied: TSmallintField;
    vtChampRankinggoal_done: TSmallintField;
    vtChampRankinggoal_lost: TSmallintField;
    vtChampRankingpoints: TSmallintField;
    vtChampRankinggoal_diff: TSmallintField;
    vtChampRankingscoring_average: TFloatField;
    vtGolRanking: TFDMemTable;
    vtGolRankingrownum: TLargeintField;
    vtGolRankingfamily_name: TWideStringField;
    vtGolRankingteam_name: TWideStringField;
    vtGolRankingleague_id: TSmallintField;
    vtGolRankingseason_id: TSmallintField;
    vtGolRankingteam_id: TSmallintField;
    vtGolRankingplayer_id: TIntegerField;
    vtGolRankingfirst_name: TWideStringField;
    vtGolRankinggoals: TLargeintField;
    vtGolRankinggoal: TLargeintField;
    vtChampionship: TFDMemTable;
    vtChampionshipleague_id: TSmallintField;
    vtChampionshipleague_name: TWideStringField;
    vtChampionshipseason_id: TIntegerField;
    vtChampionshipseason_des: TWideStringField;
    vtChampionshipseason_code: TWideStringField;
    vtChampionshipdb_schema_id: TIntegerField;
    vtChampionshippromoted: TSmallintField;
    vtChampionshipplayoff: TSmallintField;
    vtChampionshiprelegation: TSmallintField;
    vtChampionshipchampions: TSmallintField;
    vtChampionshipplayout: TSmallintField;
    vtChampionshipteams: TSmallintField;
    vtChampionshipiso_country_code: TWideStringField;
    vtChampionshipleague_position: TSmallintField;
    vtChampionshipleague_code: TWideStringField;
    vtChampionshiprelegationcss: TWideStringField;
    vtChampionshipplayoutcss: TWideStringField;
    vtChampionshipchampionscss: TWideStringField;
    vtChampionshipplayoffcss: TWideStringField;
    vtChampionshippromotedcss: TWideStringField;
    vtSeasons: TFDMemTable;
    vtSeasonsseason_id: TIntegerField;
    vtSeasonsseason_des: TWideStringField;
    vtSeasonsseason_code: TWideStringField;
    vtSeasonsdb_schema_id: TIntegerField;
    vtMatchDay: TFDMemTable;
    vtMatchDayseason_des: TWideStringField;
    vtMatchDayseason_code: TWideStringField;
    vtMatchDayleague_name: TWideStringField;
    vtMatchDayseason_id: TSmallintField;
    vtMatchDayleague_id: TSmallintField;
    vtMatchDaymatch_day_number: TSmallintField;
    vtMatchDaymatch_day_date: TDateField;
    vtMatchDayrest_team_id: TIntegerField;
    vtMatchDaydb_schema_id: TIntegerField;
    vtMatchDaymatch_day_played: TDateField;
    vtMatches: TFDMemTable;
    vtMatchesmatch_id: TIntegerField;
    vtMatchesleague_id: TSmallintField;
    vtMatchesseason_id: TSmallintField;
    vtMatchesmatch_day_number: TSmallintField;
    vtMatchesmatch_date: TDateField;
    vtMatcheshome_team_id: TSmallintField;
    vtMatchesvisitors_team_id: TSmallintField;
    vtMatchesgoal_home: TSmallintField;
    vtMatchesgoal_visitor: TSmallintField;
    vtMatchespoints_home: TSmallintField;
    vtMatchespoints_visitors: TSmallintField;
    vtMatchesnotes: TWideMemoField;
    vtMatchesconfirmed: TBooleanField;
    vtMatchesdb_schema_id: TIntegerField;
    vtMatchesinsert_date: TSQLTimeStampField;
    vtMatchesupdate_date: TSQLTimeStampField;
    vtMatcheshome_notes: TWideStringField;
    vtMatchesvisitors_notes: TWideStringField;
    vtMatcheshome_team: TWideStringField;
    vtMatchesvisitors_team: TWideStringField;
    vtMatchesrownum: TLargeintField;
    vtMatchesmatch_time: TSQLTimeStampField;
    vtMatchesreferee_id: TIntegerField;
    vtMatchesreferee_second_id: TIntegerField;
    vtMatchesreferee_third_id: TIntegerField;
    vtMatchessuspended: TBooleanField;
    vtMatchespostponed: TBooleanField;
    vtMatchesforfeit: TBooleanField;
    vtMatchesremote_id: TIntegerField;
    vtMatchesfiled_id: TIntegerField;
    vtMatchesmatch_name: TStringField;
    vtMatchesmatch_level: TSmallintField;
    vtMatchDetail: TFDMemTable;
    vtMatchDetailmatch_id: TIntegerField;
    vtMatchDetailleague_id: TSmallintField;
    vtMatchDetailseason_id: TSmallintField;
    vtMatchDetailmatch_day_number: TSmallintField;
    vtMatchDetailmatch_date: TDateField;
    vtMatchDetailhome_team_id: TSmallintField;
    vtMatchDetailvisitors_team_id: TSmallintField;
    vtMatchDetailgoal_home: TSmallintField;
    vtMatchDetailgoal_visitor: TSmallintField;
    vtMatchDetailpoints_home: TSmallintField;
    vtMatchDetailpoints_visitors: TSmallintField;
    vtMatchDetailnotes: TWideMemoField;
    vtMatchDetailconfirmed: TBooleanField;
    vtMatchDetaildb_schema_id: TIntegerField;
    vtMatchDetailinsert_date: TSQLTimeStampField;
    vtMatchDetailupdate_date: TSQLTimeStampField;
    vtMatchDetailhome_notes: TWideStringField;
    vtMatchDetailvisitors_notes: TWideStringField;
    vtMatchDetailfiled_id: TIntegerField;
    vtMatchDetailremote_id: TIntegerField;
    vtMatchDetailforfeit: TBooleanField;
    vtMatchDetailpostponed: TBooleanField;
    vtMatchDetailsuspended: TBooleanField;
    vtMatchDetailreferee_third_id: TIntegerField;
    vtMatchDetailreferee_second_id: TIntegerField;
    vtMatchDetailreferee_id: TIntegerField;
    vtMatchDetailmatch_time: TSQLTimeStampField;
    vtMatchDetailhome_team: TWideStringField;
    vtMatchDetailvisitors_team: TWideStringField;
    vtMatchDetailmatch_level: TSmallintField;
    vtMatchDetailEvents: TFDMemTable;
    vtMatchDetailEventsmatch_id: TIntegerField;
    vtMatchDetailEventsteam_id: TSmallintField;
    vtMatchDetailEventsplayer_id: TIntegerField;
    vtMatchDetailEventsevent_id: TSmallintField;
    vtMatchDetailEventsminute: TIntegerField;
    vtMatchDetailEventsvalue: TSmallintField;
    vtMatchDetailEventsmatch_events_row_id: TLargeintField;
    vtMatchDetailEventsnotes: TWideStringField;
    vtMatchDetailEventsfavor_team_id: TIntegerField;
    vtMatchDetailEventsteamplayer: TWideStringField;
    vtMatchDetailEventsfamily_name: TWideStringField;
    vtMatchDetailEventsteam_name: TWideStringField;
    vtMatchDetailEventsanagraph_id: TIntegerField;
    vtMatchDetailEventsbirth_date: TDateField;
    vtMatchDetailEventsbirth_year: TSmallintField;
    vtMatchDetailEventsfirst_name: TWideStringField;
    vtMatchDetailEventsbirth_place: TWideStringField;
    vtMatchDetailEventsrole: TSmallintField;
    vtMatchHomePlayers: TFDMemTable;
    vtMatchHomePlayersmatch_id: TIntegerField;
    vtMatchHomePlayersplayer_id: TIntegerField;
    vtMatchHomePlayersminutes: TSmallintField;
    vtMatchHomePlayersvote: TFloatField;
    vtMatchHomePlayersplayed: TBooleanField;
    vtMatchHomePlayersteam_id: TSmallintField;
    vtMatchHomePlayerspos: TSmallintField;
    vtMatchHomePlayerssubst_id: TIntegerField;
    vtMatchHomePlayersfamily_name: TWideStringField;
    vtMatchHomePlayersfirst_name: TWideStringField;
    vtMatchHomePlayersfull_name: TWideStringField;
    vtMatchHomePlayersgoal: TSmallintField;
    vtMatchHomePlayersowngoal: TSmallintField;
    vtMatchHomePlayerslostgoal: TSmallintField;
    vtMatchHomePlayersrole_id: TSmallintField;
    vtMatchHomePlayerssince: TSmallintField;
    vtMatchHomePlayersuntil: TSmallintField;
    vtMatchHomePlayerssent_off: TSmallintField;
    vtMatchHomePlayersinjuries: TSmallintField;
    vtMatchHomePlayersrole_code: TWideStringField;
    vtMatchHomePlayersrole_name: TWideStringField;
    vtMatchHomePlayersanagraph_id: TIntegerField;
    vtMatchHomePlayersbirth_date: TDateField;
    vtMatchHomePlayersbirth_year: TSmallintField;
    vtMatchHomePlayersbirth_place: TWideStringField;
    vtMatchHomePlayersnotes: TWideMemoField;
    vtMatchHomePlayersrole: TSmallintField;
    vtMatchHomePlayersrow_name: TWideStringField;
    vtMatchHomePlayersseason_id: TIntegerField;
    vtMatchHomePlayersleague_id: TIntegerField;
    vtMatchHomePlayersteam_name: TWideStringField;
    vtMatchVisitorsPlayers: TFDMemTable;
    vtMatchVisitorsPlayersmatch_id: TIntegerField;
    vtMatchVisitorsPlayersplayer_id: TIntegerField;
    vtMatchVisitorsPlayersminutes: TSmallintField;
    vtMatchVisitorsPlayersvote: TFloatField;
    vtMatchVisitorsPlayersplayed: TBooleanField;
    vtMatchVisitorsPlayersteam_id: TSmallintField;
    vtMatchVisitorsPlayerspos: TSmallintField;
    vtMatchVisitorsPlayersfull_name: TWideStringField;
    vtMatchVisitorsPlayerssubst_id: TIntegerField;
    vtMatchVisitorsPlayersfamily_name: TWideStringField;
    vtMatchVisitorsPlayersfirst_name: TWideStringField;
    vtMatchVisitorsPlayersgoal: TSmallintField;
    vtMatchVisitorsPlayersowngoal: TSmallintField;
    vtMatchVisitorsPlayerslostgoal: TSmallintField;
    vtMatchVisitorsPlayersrole_id: TSmallintField;
    vtMatchVisitorsPlayerssince: TSmallintField;
    vtMatchVisitorsPlayersuntil: TSmallintField;
    vtMatchVisitorsPlayerssent_off: TSmallintField;
    vtMatchVisitorsPlayersinjuries: TSmallintField;
    vtMatchVisitorsPlayersrole_code: TWideStringField;
    vtMatchVisitorsPlayersrole_name: TWideStringField;
    vtMatchVisitorsPlayersanagraph_id: TIntegerField;
    vtMatchVisitorsPlayersbirth_date: TDateField;
    vtMatchVisitorsPlayersbirth_year: TSmallintField;
    vtMatchVisitorsPlayersbirth_place: TWideStringField;
    vtMatchVisitorsPlayersnotes: TWideMemoField;
    vtMatchVisitorsPlayersrole: TSmallintField;
    vtMatchVisitorsPlayersrow_name: TWideStringField;
    vtMatchVisitorsPlayersseason_id: TIntegerField;
    vtMatchVisitorsPlayersleague_id: TIntegerField;
    vtMatchVisitorsPlayersteam_name: TWideStringField;
    vtDynamicRanking: TFDMemTable;
    vtDynamicRankingpos: TLargeintField;
    vtDynamicRankingclub_name: TWideStringField;
    vtDynamicRankingleague_id: TSmallintField;
    vtDynamicRankingseason_id: TSmallintField;
    vtDynamicRankingteam_id: TIntegerField;
    vtDynamicRankinglast_match_day: TSmallintField;
    vtDynamicRankingplayed_home: TFloatField;
    vtDynamicRankingplayed_visitor: TFloatField;
    vtDynamicRankinggoal_win_home: TFloatField;
    vtDynamicRankinggoal_win_visitor: TFloatField;
    vtDynamicRankinggoal_lost_home: TFloatField;
    vtDynamicRankinggoal_lost_visitor: TFloatField;
    vtDynamicRankingpoints_home: TFloatField;
    vtDynamicRankingpoints_visitor: TFloatField;
    vtDynamicRankingpoints: TFloatField;
    vtDynamicRankingaverage_home: TFloatField;
    vtDynamicRankingaverage_visitor: TFloatField;
    vtDynamicRankingaverage: TFloatField;
    vtDynamicRankinggoal_win: TFloatField;
    vtDynamicRankinggoal_lost: TFloatField;
    vtDynamicRankinggoal_difference: TFloatField;
    vtDynamicRankinglost_home: TFloatField;
    vtDynamicRankingwin_home: TFloatField;
    vtDynamicRankingpair_home: TFloatField;
    vtDynamicRankinglost_visitor: TFloatField;
    vtDynamicRankingwin_visitor: TFloatField;
    vtDynamicRankingpair_visitor: TFloatField;
    vtDynamicRankinglost_matches: TFloatField;
    vtDynamicRankingwin_matches: TFloatField;
    vtDynamicRankingpair_matches: TFloatField;
    vtDynamicRankingplayed_matches: TFloatField;
    vtDynamicRankingpenalty: TSmallintField;
    vtMatchDaysList: TFDMemTable;
    vtMatchDaysListmatch_day_number: TSmallintField;
    vtChampionships: TFDMemTable;
    vtCalendarDay: TFDMemTable;
    vtCalendarDayseason_des: TWideStringField;
    vtCalendarDayseason_code: TWideStringField;
    vtCalendarDayleague_name: TWideStringField;
    vtCalendarDayseason_id: TSmallintField;
    vtCalendarDayleague_id: TSmallintField;
    vtCalendarDaymatch_day_number: TSmallintField;
    vtCalendarDaymatch_day_date: TDateField;
    vtCalendarDayrest_team_id: TIntegerField;
    vtCalendarDaydb_schema_id: TIntegerField;
    vtCalendarDaymatch_day_played: TDateField;
    vtCalendarDayfmtd_jguid: TWideStringField;
    vtCalendarDayfmtd_deleted: TBooleanField;
    vtCalendarMatches: TFDMemTable;
    vtCalendarMatchesrownum: TLargeintField;
    vtCalendarMatchesmatch_id: TIntegerField;
    vtCalendarMatchesleague_id: TSmallintField;
    vtCalendarMatchesseason_id: TSmallintField;
    vtCalendarMatchesmatch_day_number: TSmallintField;
    vtCalendarMatchesmatch_date: TDateField;
    vtCalendarMatcheshome_team_id: TSmallintField;
    vtCalendarMatchesvisitors_team_id: TSmallintField;
    vtCalendarMatchesgoal_home: TSmallintField;
    vtCalendarMatchesgoal_visitor: TSmallintField;
    vtCalendarMatchespoints_home: TSmallintField;
    vtCalendarMatchespoints_visitors: TSmallintField;
    vtCalendarMatchesnotes: TWideMemoField;
    vtCalendarMatchesconfirmed: TBooleanField;
    vtCalendarMatchesdb_schema_id: TIntegerField;
    vtCalendarMatchesinsert_date: TSQLTimeStampField;
    vtCalendarMatchesupdate_date: TSQLTimeStampField;
    vtCalendarMatcheshome_notes: TWideStringField;
    vtCalendarMatchesvisitors_notes: TWideStringField;
    vtCalendarMatchesfiled_id: TIntegerField;
    vtCalendarMatchesremote_id: TIntegerField;
    vtCalendarMatchesforfeit: TBooleanField;
    vtCalendarMatchespostponed: TBooleanField;
    vtCalendarMatchessuspended: TBooleanField;
    vtCalendarMatchesreferee_third_id: TIntegerField;
    vtCalendarMatchesreferee_second_id: TIntegerField;
    vtCalendarMatchesreferee_id: TIntegerField;
    vtCalendarMatchesmatch_time: TSQLTimeStampField;
    vtCalendarMatcheshome_team: TWideStringField;
    vtCalendarMatchesvisitors_team: TWideStringField;
    vtCalendarMatchesfcld_jguid: TWideStringField;
    vtCalendarMatchesfcld_deleted: TBooleanField;
    vtCalendarMatchesarticle_url: TWideStringField;
    vtCalendarMatchesvideo_url: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  strict protected
    FFootballSettings: IFootballSettings;
  strict private
    procedure OpenGolRanking(aSeasonID, aLeague, aDay: integer);
  protected
    procedure SetFootballSettings(const Value: IFootballSettings);
  public
    property FootballSettings: IFootballSettings read FFootballSettings write SetFootballSettings;
  strict private
    FLastErrorMessage: string;
    FUserID: integer;
    FSessionUID: Int64;
    FLimit: integer;
    FSchemaID: integer;
    FLastCount: integer;
    FKeepAlive: boolean;
    FUserProfile: TJanuaRecordUserProfile;
    FisServer: boolean;
    FOffset: integer;
    FSessionKey: string;
    function getUser: TJanuaUser;
    procedure SetisServer(const Value: boolean);

    procedure SetKeepAlive(const Value: boolean);
    procedure SetLastCount(const Value: integer);
    procedure SetLastErrorMessage(const Value: string);
    procedure SetLimit(const Value: integer);
    procedure SetOffset(const Value: integer);
    procedure SetSchemaID(const Value: integer);
    procedure SetSessionUID(const Value: Int64);
    procedure SetUser(const Value: TJanuaUser);
    procedure SetUserID(const Value: integer);
    procedure SetUserProfile(const Value: TJanuaRecordUserProfile);
  protected
    Fnextmatchescount: integer;
    Fmatchescount: integer;
    Frankingcount: integer;
    FChampionshipsCount: integer;
    FSeasonsCount: integer;
    procedure Setmatchescount(const Value: integer);
    procedure Setnextmatchescount(const Value: integer);
    procedure Setrankingcount(const Value: integer);
    procedure RefreshData;
    procedure SetChampionshipsCount(const Value: integer);
    procedure SetSeasonsCount(const Value: integer);
    function OpenLastSeason: integer;
    function OpenFirstLeague: integer;
    procedure CheckSeasonID;
    procedure CheckChampionshipID;
    procedure CheckMatchDay;
  public
    { Football Functions and Procedure }
    procedure OpenChampionshipTeam; overload;
    procedure OpenChampionshipTeam(aSeasonID, aLeagueID, aTeam: integer); overload;
    procedure OpenSeasons;
    procedure OpenChampionShips; overload;
    procedure OpenChampionShips(aSeasonID: integer); overload;
    procedure OpenMatchDetail; overload;
    procedure OpenMatchDetail(aMatchID: Int64); overload;
    procedure OpenMatchDetail(aSeasonID, aLeagueID, aMatchNumber: integer); overload;
    procedure OpenChampionship;
    procedure TestOpenChampionship;
    procedure OpenChampionshipSummary;
    procedure OpenGoalRanking;
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
    procedure OpenCDSGolRanking(aSeasonID, aLeague, aDay: integer);
    procedure SetupSeason(aSeasonID: integer; aLeagueID: smallint);
    procedure OpenDefaultSeason;
    procedure OpenDefaultSeasonChampionship;
    procedure SetNextMatchDay;
    procedure OpenCalendar;
    procedure OpenLiveScore;
    procedure OpenTeamPlayers(aTeamID, aSeasonID: Int16);
    procedure OpenPlayerCareer; overload;
    procedure OpenPlayerCareer(aID: integer); overload;
  public
    { Public declarations }
    property SeasonsCount: integer read FSeasonsCount write SetSeasonsCount;
    property ChampionshipsCount: integer read FChampionshipsCount write SetChampionshipsCount;
    property rankingcount: integer read Frankingcount write Setrankingcount;
    property matchescount: integer read Fmatchescount write Setmatchescount;
    property nextmatchescount: integer read Fnextmatchescount write Setnextmatchescount;
    // This procedure Tests the Datamodule and ouputs a detailed Test Report.
    function SearchPostalCode(aCode: string): string;
    function CheckSessionKey(aSessionKey: string): boolean; virtual;
    function OpenProfile(aUserID: integer): boolean; virtual;
    // this procedure opens an user profile to read it or to store it ...........................
    function SaveUserProfile(const aProfile: TJanuaRecordUserProfile): boolean;
    // This procedures saves a user profile, it can save and store only the session user profile.
  public
    property isServer: boolean read FisServer write SetisServer;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
    procedure GetSchemasList(SessionKey: string);
    property UserID: integer read FUserID write SetUserID;
    property UserProfile: TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
    // Limit and offset parameters to be used by queries if needed
    property Limit: integer read FLimit write SetLimit;
    property Offset: integer read FOffset write SetOffset;
    property LastCount: integer read FLastCount write SetLastCount;
    property KeepAlive: boolean read FKeepAlive write SetKeepAlive;
    property SessionUID: Int64 read FSessionUID write SetSessionUID;
    property SchemaID: integer read FSchemaID write SetSchemaID;
    property User: TJanuaUser read getUser write SetUser;

  end;

var
  dmVirtualFootballServer: TdmVirtualFootballServer;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TDataModule1 }

procedure TdmVirtualFootballServer.CheckChampionshipID;
begin
  // Stub
end;

procedure TdmVirtualFootballServer.CheckMatchDay;
begin
  // Stub
end;

procedure TdmVirtualFootballServer.CheckSeasonID;
begin
  // Stub
end;

function TdmVirtualFootballServer.CheckSessionKey(aSessionKey: string): boolean;
begin
  Result := True
end;

procedure TdmVirtualFootballServer.DataModuleCreate(Sender: TObject);
begin
  self.FUserProfile.User.Email := 'test@email.it';
  self.FUserProfile.User.Username := 'test';
  self.FUserProfile.User.ID := 1;
  self.FUserProfile.User.Password := 'temp';
  self.vtGolRanking.Open;
end;

function TdmVirtualFootballServer.GetChampionshipDayName: string;
begin
  Result := 'Promozione A';
end;

function TdmVirtualFootballServer.GetLastMatchDay: smallint;
begin
  Result := 30;
end;

procedure TdmVirtualFootballServer.GetSchemasList(SessionKey: string);
begin
  // Stub .........................
end;

function TdmVirtualFootballServer.getUser: TJanuaUser;
begin
  Result := self.FUserProfile.User;

end;

procedure TdmVirtualFootballServer.OpenCalendar;
begin
  // Stub .........................

end;

procedure TdmVirtualFootballServer.OpenCDSGolRanking(aSeasonID, aLeague, aDay: integer);
begin

end;

procedure TdmVirtualFootballServer.OpenChampionship;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenChampionShips(aSeasonID: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenChampionShips;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenChampionshipSummary;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenChampionshipTeam;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenChampionshipTeam(aSeasonID, aLeagueID, aTeam: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenDefaultSeason;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenDefaultSeasonChampionship;
begin
  // Stub .........................
end;

function TdmVirtualFootballServer.OpenFirstLeague: integer;
begin
  Result := 124;
end;

procedure TdmVirtualFootballServer.OpenGoalRanking;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenGolRanking(aSeasonID, aLeague, aDay: integer);
begin
  inherited;

end;

function TdmVirtualFootballServer.OpenLastSeason: integer;
begin
  Result := 32;
end;

procedure TdmVirtualFootballServer.OpenLiveScore;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenMatchDetail(aMatchID: Int64);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenMatchDetail;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenMatchDetail(aSeasonID, aLeagueID, aMatchNumber: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenMatches;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenMatches(aSeasonID, aLeagueID, aMatchNumber: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenMatchTeam(aMatchID: Int64; aTeamID: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenNextMatches;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenPlayerCareer;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenPlayerCareer(aID: integer);
begin
  // Stub .........................
end;

function TdmVirtualFootballServer.OpenProfile(aUserID: integer): boolean;
begin
  Result := True;
end;

procedure TdmVirtualFootballServer.OpenRanking;
begin
  // Stub .........................
  self.vtChampRanking.Open;

end;

procedure TdmVirtualFootballServer.OpenRanking(aSeasonID, aChampionshipID: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenSeasonChampionship(aSeasonID, aChampionshipID: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenSeasons;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.OpenTeamPlayers(aTeamID, aSeasonID: Int16);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.RefreshData;
begin
  // Stub .........................
end;

function TdmVirtualFootballServer.SaveUserProfile(const aProfile: TJanuaRecordUserProfile): boolean;
begin
  Result := True;
end;

function TdmVirtualFootballServer.SearchPostalCode(aCode: string): string;
begin
  Result := '16100';
end;

procedure TdmVirtualFootballServer.SetChampionshipsCount(const Value: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.SetFootballSettings(const Value: IFootballSettings);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.SetisServer(const Value: boolean);
begin
  FisServer := Value;
end;


procedure TdmVirtualFootballServer.SetKeepAlive(const Value: boolean);
begin
  FKeepAlive := Value;
end;

procedure TdmVirtualFootballServer.SetLastCount(const Value: integer);
begin
  FLastCount := Value;
end;

procedure TdmVirtualFootballServer.SetLastErrorMessage(const Value: string);
begin
  FLastErrorMessage := Value;
end;

procedure TdmVirtualFootballServer.SetLimit(const Value: integer);
begin
  FLimit := Value;
end;

procedure TdmVirtualFootballServer.Setmatchescount(const Value: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.SetNextMatchDay;
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.Setnextmatchescount(const Value: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.SetOffset(const Value: integer);
begin
  FOffset := Value;
end;

procedure TdmVirtualFootballServer.Setrankingcount(const Value: integer);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.SetSchemaID(const Value: integer);
begin
  FSchemaID := Value;
end;

procedure TdmVirtualFootballServer.SetSeasonsCount(const Value: integer);
begin
  self.FSeasonsCount := Value;
end;

procedure TdmVirtualFootballServer.SetSessionUID(const Value: Int64);
begin
  FSessionUID := Value;
end;

procedure TdmVirtualFootballServer.SetupSeason(aSeasonID: integer; aLeagueID: smallint);
begin
  // Stub .........................
end;

procedure TdmVirtualFootballServer.SetUser(const Value: TJanuaUser);
begin
  self.FUserProfile.User := Value
end;

procedure TdmVirtualFootballServer.SetUserID(const Value: integer);
begin
  FUserID := Value;
end;

procedure TdmVirtualFootballServer.SetUserProfile(const Value: TJanuaRecordUserProfile);
begin
  FUserProfile := Value;
end;

procedure TdmVirtualFootballServer.TestOpenChampionship;
begin
  // Stub .........................
end;

end.
