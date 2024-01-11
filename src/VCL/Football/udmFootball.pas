unit udmFootball;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Uni, Data.DB, DBAccess,
  Datasnap.DBClient, MemDS, Datasnap.Provider, Vcl.ExtDlgs, Janua.Core.Classes,
  Janua.Core.CustomControls, Janua.Vcl.Dialogs, Janua.Core.Exceptions,
  udmFootballPostgres, DAScript, UniScript, UniProvider, PostgreSQLUniProvider;

type
  TdmFootball = class(TdmFootballPostgres)
    qryTeamsChampionshipsteam_name_1: TWideStringField;
    qryTeamsChampionshipsremote_id: TLargeintField;
    qryTeamsChampionshipsdb_schema_id: TIntegerField;
    qryTeamstrainer_id: TIntegerField;
    qryTeamsremote_id: TIntegerField;
    qryTeamsdb_schema_id: TIntegerField;
    qryTeamsimage: TBlobField;
    lkpLeagues: TUniQuery;
    lkpLeaguesleague_id: TSmallintField;
    lkpLeaguesleague_name: TWideStringField;
    lkpLeaguesiso_country_code: TWideStringField;
    lkpLeaguesleague_position: TSmallintField;
    lkpLeaguesleague_code: TWideStringField;
    lkpLeaguesdb_schema_id: TSmallintField;
    lkpLeaguesremote_id: TSmallintField;
    lkpLeaguespromotedcss: TWideStringField;
    lkpLeaguesplayoffcss: TWideStringField;
    lkpLeagueschampionscss: TWideStringField;
    lkpLeaguesplayoutcss: TWideStringField;
    lkpLeaguesrelegationcss: TWideStringField;
    lkpLeaguesall_players: TBooleanField;
    qryPlayerAlbumlkpLeague: TStringField;
    procedure DataModuleCreate(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFootball: TdmFootball;

implementation

{$R *.dfm}

uses udmFootballAnagraph;

procedure TdmFootball.DataModuleCreate(Sender: TObject);
begin
  inherited;
  // check inherited function ...............................
end;

end.
