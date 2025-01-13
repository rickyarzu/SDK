unit udlgSportsClub;

interface

uses
  // rtl
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // vcl
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, CRGrid, Vcl.ExtCtrls,
  // Janua
  Janua.Vcl.EnhCRDBGrid, AdvGlowButton, Vcl.Buttons;

type
  TdlgSportsClubs = class(TForm)
    lbClubID: TLabel;
    edClubID: TDBEdit;
    dsClub: TDataSource;
    lbClubName: TLabel;
    edClubName: TDBEdit;
    lbClubFoundationDate: TLabel;
    edFoundation_date: TDBEdit;
    grdTeams: TEnhCRDBGrid;
    dsTeams: TDataSource;
    navTeams: TDBNavigator;
    GroupBox1: TGroupBox;
    lbListTeams: TLabel;
    Label1: TLabel;
    edlast_name: TDBEdit;
    Label2: TLabel;
    edAddress: TDBEdit;
    Label3: TLabel;
    edtown: TDBEdit;
    Label4: TLabel;
    edPostalCode: TDBEdit;
    Label5: TLabel;
    Ediso_country_code: TDBEdit;
    Label6: TLabel;
    edstate_province: TDBEdit;
    Label7: TLabel;
    edphone: TDBEdit;
    Label8: TLabel;
    edcellular: TDBEdit;
    Label9: TLabel;
    edcode: TDBEdit;
    Label10: TLabel;
    Edemail: TDBEdit;
    btnOk: TAdvGlowButton;
    Edanagraph_id: TDBEdit;
    Label11: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgSportsClubs: TdlgSportsClubs;

implementation

{$R *.dfm}

uses Janua.Sports.PgChampionship;

procedure TdlgSportsClubs.btnOkClick(Sender: TObject);
begin
  {
    if dmFootballAnagraph.qryAnagraphs.Modified then
    dmFootballAnagraph.qryAnagraphs.Post;
  }
end;

end.
