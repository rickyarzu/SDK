unit udmVirtualFootballStorage;

interface

uses
  // System Units
  System.SysUtils, System.Classes,
  // Database Access Units
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.Comp.Client,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet,
  // Janua Project Classes
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Servers, Janua.Core.DB, Janua.Core.Functions,
  Janua.Core.Jpublic,
  Janua.Core.System, Janua.Core.Exceptions, udmVirtualServerModel,
  Janua.Football.Intf;

type
  TdmVirtualFootballStorage = class(TdmVirtualServerModel)
    vtChampionships: TFDMemTable;
    vtChampRanking: TFDMemTable;
    vtGolRanking: TFDMemTable;
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
    vtChampionship: TFDMemTable;
    vtMatchDay: TFDMemTable;
    vtMatches: TFDMemTable;
    vtMatchDetail: TFDMemTable;
    vtMatchDetailEvents: TFDMemTable;
    vtMatchHomePlayers: TFDMemTable;
    vtMatchVisitorsPlayers: TFDMemTable;
    vtDynamicRanking: TFDMemTable;
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
    vtPlayer: TFDMemTable;
    vtPlayeranagraph_id: TIntegerField;
    vtPlayerbirth_date: TDateField;
    vtPlayerbirth_year: TSmallintField;
    vtPlayerfirst_name: TWideStringField;
    vtPlayerfamily_name: TWideStringField;
    vtPlayerbirth_place: TWideStringField;
    vtPlayernotes: TWideMemoField;
    vtPlayerrole: TSmallintField;
    vtPlayerfull_name: TWideStringField;
    vtPlayerdb_schema_id: TIntegerField;
    vtPlayerpplr_deleted: TBooleanField;
    vtPlayerpplr_jguid: TWideStringField;
    vtPlayerCareer: TFDMemTable;
    vtPlayerCareerdb_schema_id: TIntegerField;
    vtPlayerCareercareer_id: TIntegerField;
    vtPlayerCareermatches: TWideStringField;
    vtPlayerCareergoals: TWideStringField;
    vtPlayerCareerplayer_id: TIntegerField;
    vtPlayerCareernotes: TWideStringField;
    vtPlayerCareervotes: TFloatField;
    vtPlayerCareerminutes: TIntegerField;
    vtPlayerCareerimage_id: TLargeintField;
    vtPlayerCareerseason_id: TIntegerField;
    vtPlayerCareerseason_des: TWideStringField;
    vtPlayerCareerseason_code: TWideStringField;
    vtPlayerCareerdb_schema_id_1: TIntegerField;
    vtPlayerCareerteam_name: TWideStringField;
    vtPlayerCareerteam_id: TIntegerField;
    vtPlayerCareerleague_id: TSmallintField;
    vtPlayerCareerleague_name: TWideStringField;
    vtPlayerCareeriso_country_code: TWideStringField;
    vtPlayerCareerleague_position: TSmallintField;
    vtPlayerCareerleague_code: TWideStringField;
    vtPlayerCareerdb_schema_id_2: TIntegerField;
    vtPlayerCareerremote_id: TSmallintField;
    vtPlayerCareerpromotedcss: TWideStringField;
    vtPlayerCareerplayoffcss: TWideStringField;
    vtPlayerCareerchampionscss: TWideStringField;
    vtPlayerCareerplayoutcss: TWideStringField;
    vtPlayerCareerrelegationcss: TWideStringField;
    vtPlayerCareerall_players: TBooleanField;
    vtPlayerCareerfssn_jguid: TWideStringField;
    vtPlayerCareerfssn_deleted: TBooleanField;
    vtPlayerCareerflgs_deleted: TBooleanField;
    vtPlayerCareerflgs_jguid: TWideStringField;
    vtSeasons: TFDMemTable;
    vtSeasonsseason_id: TIntegerField;
    vtSeasonsseason_des: TWideStringField;
    vtSeasonsseason_code: TWideStringField;
    vtSeasonsdb_schema_id: TIntegerField;
    vtLastSeason: TFDMemTable;
    vtLastSeasonseason_id: TIntegerField;
    vtSelectedSeason: TFDMemTable;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField2: TIntegerField;
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
    vtMatchDaysList: TFDMemTable;
    vtMatchDaysListmatch_day_number: TSmallintField;
    procedure DataModuleCreate(Sender: TObject);
    procedure vtCalendarMatchesAfterOpen(DataSet: TDataSet);
  end;

var
  dmVirtualFootballStorage: TdmVirtualFootballStorage;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TDataModule1 }

procedure TdmVirtualFootballStorage.DataModuleCreate(Sender: TObject);
begin
  try
    FUserProfile.User.Email := 'test@email.it';
    FUserProfile.User.Username := 'test';
    FUserProfile.User.ID := 1;
    FUserProfile.User.Password := 'temp';
    self.vtGolRanking.Open;
  except
    on e: exception do
      raise exception.Create('TdmVirtualFootballStorage.DataModuleCreate ' + e.Message);

  end;
end;

procedure TdmVirtualFootballStorage.vtCalendarMatchesAfterOpen(DataSet: TDataSet);

  procedure SetJGUID(const aField: TField);
  begin
    DataSet.First;
    while not DataSet.Eof do
    begin
      if aField.AsWideString = '' then
      begin
        DataSet.Edit;
        aField.AsWideString := Janua.Core.Functions.GenerateGUID.ToString;
        DataSet.Post;
      end;
      DataSet.Next;
    end;
  end;

var
  i: integer;
  s: string;
begin
  inherited;
  for i := 0 to Pred(DataSet.FieldCount) do
  begin
    s := DataSet.Fields[i].Name;
    if s.ToLower.EndsWith('jguid') then
      SetJGUID(DataSet.Fields[i]);
  end;
end;

end.
