unit udlgFootballSelectSeason;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid, Vcl.ExtCtrls,
  DBAdvGlowNavigator;

type
  TdlgFootballSelectSeason = class(TForm)
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
  dlgFootballSelectSeason: TdlgFootballSelectSeason;

implementation

{$R *.dfm}

uses udmFootballPostgres;

procedure TdlgFootballSelectSeason.FormShow(Sender: TObject);
begin
  dmFootballPostgres.qrySelectLeagues.Close;
  dmFootballPostgres.qrySelectLeagues.Open;
end;

end.
