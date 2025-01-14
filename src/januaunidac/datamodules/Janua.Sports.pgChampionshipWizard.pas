unit Janua.Sports.pgChampionshipWizard;

interface

uses
  System.SysUtils, System.Classes, udmJanuaPostgresModel, Uni, UniProvider, PostgreSQLUniProvider, Data.DB,
  MemDS, DBAccess, Janua.Unidac.Connection;

type
  TdmPgSportsChampionshipWizard = class(TdmJanuaPostgresModel)
    qryChampionships: TUniQuery;
    dsSeasons: TDataSource;
    dsChampionships: TDataSource;
    qrySeasons: TUniQuery;
    qryTeamsChampionships: TUniQuery;
    dsTeamChampionships: TDataSource;
    qryAllTeams: TUniQuery;
    qryMatches: TUniQuery;
    qryMatchDays: TUniQuery;
    dsMatchDays: TDataSource;
    qrySeasonsid: TIntegerField;
    qrySeasonsseason_des: TWideStringField;
    qrySeasonsseason_code: TWideStringField;
    qrySeasonsdb_schema_id: TIntegerField;
    qrySeasonsorder_number: TSmallintField;
    qrySeasonsremote_id: TSmallintField;
    qrySeasonsjguid: TGuidField;
    qrySeasonsdeleted: TBooleanField;
    qrySeasonsinsert_date: TDateTimeField;
    qrySeasonsupdate_date: TDateTimeField;
    qrySeasonsuser_insert: TWideStringField;
    qrySeasonsuser_update: TWideStringField;
    qryChampionshipsseason_id: TSmallintField;
    qryChampionshipsleague_id: TSmallintField;
    qryChampionshipspromoted: TSmallintField;
    qryChampionshipsplayoff: TSmallintField;
    qryChampionshipsrelegation: TSmallintField;
    qryChampionshipschampions: TSmallintField;
    qryChampionshipsplayout: TSmallintField;
    qryChampionshipsteams: TSmallintField;
    qryChampionshipsdb_schema_id: TIntegerField;
    qryChampionshipsjguid: TGuidField;
    qryChampionshipsdeleted: TBooleanField;
    qryChampionshipsinsert_date: TDateTimeField;
    qryChampionshipsupdate_date: TDateTimeField;
    qryChampionshipsuser_insert: TWideStringField;
    qryChampionshipsuser_update: TWideStringField;
    qryChampionshipsid: TIntegerField;
    qryChampionshipsleague_name: TWideStringField;
    qryChampionshipsleague_position: TSmallintField;
    qryChampionshipsleague_code: TWideStringField;
    qryTeamsChampionshipsteam_name: TWideStringField;
    qryTeamsChampionshipsclub_name: TWideStringField;
    qryTeamsChampionshipsid: TIntegerField;
    qryTeamsChampionshipsseason_id: TSmallintField;
    qryTeamsChampionshipsleague_id: TSmallintField;
    qryTeamsChampionshipsteam_id: TSmallintField;
    qryTeamsChampionshipsposition: TSmallintField;
    qryTeamsChampionshipspenalty: TSmallintField;
    qryTeamsChampionshipsremote_id: TIntegerField;
    qryTeamsChampionshipsdb_schema_id: TIntegerField;
    qryTeamsChampionshipsjguid: TGuidField;
    qryTeamsChampionshipsdeleted: TBooleanField;
    qryTeamsChampionshipsinsert_date: TDateTimeField;
    qryTeamsChampionshipsupdate_date: TDateTimeField;
    qryTeamsChampionshipsuser_insert: TWideStringField;
    qryTeamsChampionshipsuser_update: TWideStringField;
    qryTeamsChampionshipsclub_id: TSmallintField;
    qryTeamsChampionshipsleague_name: TWideStringField;
    qryAllTeamsid: TIntegerField;
    qryAllTeamsclub_id: TSmallintField;
    qryAllTeamsteam_name: TWideStringField;
    qryAllTeamstrainer_id: TIntegerField;
    qryAllTeamsimage: TBlobField;
    qryAllTeamsremote_id: TIntegerField;
    qryAllTeamsdb_schema_id: TIntegerField;
    qryAllTeamsjguid: TGuidField;
    qryAllTeamsdeleted: TBooleanField;
    qryAllTeamsinsert_date: TDateTimeField;
    qryAllTeamsupdate_date: TDateTimeField;
    qryAllTeamsuser_insert: TWideStringField;
    qryAllTeamsuser_update: TWideStringField;
    qryAllTeamsclub_name: TWideStringField;
    qryAllTeamsclub_image: TBlobField;
    qryAllTeamsteam_id: TIntegerField;
    qryMatchesmatch_id: TIntegerField;
    qryMatchesid: TIntegerField;
    qryMatchesleague_id: TSmallintField;
    qryMatchesseason_id: TSmallintField;
    qryMatchesmatch_day_number: TSmallintField;
    qryMatchesmatch_time: TDateTimeField;
    qryMatchesmatch_date: TDateField;
    qryMatcheshome_team_id: TIntegerField;
    qryMatchesvisitors_team_id: TIntegerField;
    qryMatchesscore_home: TSmallintField;
    qryMatchesscore_visitor: TSmallintField;
    qryMatchespoints_home: TSmallintField;
    qryMatchespoints_visitors: TSmallintField;
    qryMatchesnotes: TWideStringField;
    qryMatchesconfirmed: TBooleanField;
    qryMatcheshome_notes: TWideStringField;
    qryMatchesvisitors_notes: TWideStringField;
    qryMatchessuspended: TBooleanField;
    qryMatchespostponed: TBooleanField;
    qryMatchesforfeit: TBooleanField;
    qryMatchesremote_id: TIntegerField;
    qryMatchesfield_id: TIntegerField;
    qryMatchesarticle_url: TWideStringField;
    qryMatchesvideo_url: TWideStringField;
    qryMatchesdb_schema_id: TIntegerField;
    qryMatchesjguid: TGuidField;
    qryMatchesdeleted: TBooleanField;
    qryMatchesinsert_date: TDateTimeField;
    qryMatchesupdate_date: TDateTimeField;
    qryMatchesuser_insert: TWideStringField;
    qryMatchesuser_update: TWideStringField;
    qryMatcheshome_team_name: TWideStringField;
    qryMatchesvisitors_team_name: TWideStringField;
    qryMatchesgames_sets: TWideMemoField;
    qryMatchDaysseason_id: TSmallintField;
    qryMatchDaysleague_id: TSmallintField;
    qryMatchDaysmatch_day_number: TSmallintField;
    qryMatchDaysmatch_day_date: TDateField;
    qryMatchDaysmatch_day_played: TDateField;
    qryMatchDaysrest_team_id: TIntegerField;
    qryMatchDaysdb_schema_id: TIntegerField;
    qryMatchDaysjguid: TGuidField;
    qryMatchDaysdeleted: TBooleanField;
    qryMatchDaysinsert_date: TDateTimeField;
    qryMatchDaysupdate_date: TDateTimeField;
    qryMatchDaysuser_insert: TWideStringField;
    qryMatchDaysuser_update: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qrySeasonsAfterOpen(DataSet: TDataSet);
    procedure qryChampionshipsAfterOpen(DataSet: TDataSet);
    procedure qryTeamsChampionshipsNewRecord(DataSet: TDataSet);
    procedure qryAllTeamsNewRecord(DataSet: TDataSet);
    procedure qryMatchDaysAfterOpen(DataSet: TDataSet);
    procedure qryMatchDaysAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgSportsChampionshipWizard: TdmPgSportsChampionshipWizard;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmPgSportsChampionshipWizard.DataModuleCreate(Sender: TObject);
begin
  inherited;
  qrySeasons.Open;
  qryAllTeams.Open;
end;

procedure TdmPgSportsChampionshipWizard.qryAllTeamsNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryAllTeamsdb_schema_id.AsInteger := PgErgoConnection.SchemaID;
end;

procedure TdmPgSportsChampionshipWizard.qryChampionshipsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryTeamsChampionships.Open;
  qryMatchDays.Open;
end;

procedure TdmPgSportsChampionshipWizard.qryMatchDaysAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryMatches.Open;
end;

procedure TdmPgSportsChampionshipWizard.qryMatchDaysAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryMatches.Close;
  qryMatches.Open;
end;

procedure TdmPgSportsChampionshipWizard.qrySeasonsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryChampionships.Open;
end;

procedure TdmPgSportsChampionshipWizard.qryTeamsChampionshipsNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryTeamsChampionshipsdb_schema_id.AsInteger := PgErgoConnection.SchemaID;
  qryTeamsChampionshipsseason_id.AsInteger := qryChampionshipsseason_id.AsInteger;
  qryTeamsChampionshipsleague_id.AsInteger := qryChampionshipsleague_id.AsInteger;

end;

end.
