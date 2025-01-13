unit udlgSportsSelectTeamLastSeason;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ImgList, MemDS, DBAccess, Uni, System.ImageList;

type
  TdlgSportsSelectTeamLastSeason = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdSelectedTeams: TCRDBGrid;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ImageList1: TImageList;
    btnEdiSearchClub: TButtonedEdit;
    procedure FormShow(Sender: TObject);
    procedure btnEdiSearchClubChange(Sender: TObject);
    procedure grdSelectedTeamsDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgSportsSelectTeamLastSeason: TdlgSportsSelectTeamLastSeason;

implementation

{$R *.dfm}

uses Janua.Sports.PgChampionship;


procedure TdlgSportsSelectTeamLastSeason.btnEdiSearchClubChange(Sender: TObject);
begin
  if btnEdiSearchClub.Text > '' then
  begin
    // se è scritto qualcosa .....
    TUniQuery(DataSource1.DataSet).Filtered := True;
    TUniQuery(DataSource1.DataSet).Filter := 'team_name like ''%' + (btnEdiSearchClub.Text) + '%' + '''';
  end
  else
  begin
    // nel caso che non sia scritto nulla .....
    TUniQuery(DataSource1.DataSet).Filtered := False;
  end;
end;

procedure TdlgSportsSelectTeamLastSeason.FormShow(Sender: TObject);
begin
  DataSource1.DataSet.Close;
  DataSource1.DataSet.Open;
end;

procedure TdlgSportsSelectTeamLastSeason.grdSelectedTeamsDblClick(Sender: TObject);
var
  id: integer;
begin
  if self.DataSource1.DataSet = dmUniDacPgChampionships.qryAllTeamsNoSeason then
    with dmUniDacPgChampionships do
    begin
      qryTeamsChampionships.Append;
      qryTeamsChampionshipsseason_id.AsInteger := qryChampionshipsseason_id.AsInteger;
      qryTeamsChampionshipsleague_id.AsInteger := qryChampionshipsleague_id.AsInteger;
      qryTeamsChampionshipsteam_id.AsInteger := qryAllTeamsNoSeasonteam_id.AsInteger;
      qryTeamsChampionshipsteam_name.AsString := qryAllTeamsNoSeasonteam_name.AsString;
      qryTeamsChampionships.Post;
      id := qryAllTeamsNoSeasonteam_id.AsInteger;
      qryAllTeamsNoSeason.Close;
      qryAllTeamsNoSeason.Open;
      qryAllTeamsNoSeason.Locate('team_id', id, [])
    end;
end;

end.
