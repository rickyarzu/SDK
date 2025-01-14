unit udlgSportsSelectSeason;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid, Vcl.ExtCtrls,
  DBAdvGlowNavigator;

type
  TdlgSportsSelectSeason = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsSelectLeagues: TDataSource;
    grdChampionships: TEnhCRDBGrid;
    DBNavigator3: TDBAdvGlowNavigator;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgSportsSelectSeason: TdlgSportsSelectSeason;

implementation

{$R *.dfm}

uses Janua.Sports.PgChampionship;


procedure TdlgSportsSelectSeason.FormShow(Sender: TObject);
begin
  dmUniDacPgChampionships.qrySelectLeagues.Close;
  dmUniDacPgChampionships.qrySelectLeagues.Open;
end;

end.
