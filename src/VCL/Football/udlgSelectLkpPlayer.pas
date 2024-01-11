unit udlgSelectLkpPlayer;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.VCL.EnhCRDBGrid;

type
  TdlgSelectLkpPlayer = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Label2: TLabel;
    ButtonedEditPlayers: TButtonedEdit;
    DBGrid2: TDBGrid;
    grdAllPlayers: TEnhCRDBGrid;
    procedure ButtonedEditPlayersChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgSelectLkpPlayer: TdlgSelectLkpPlayer;

implementation

uses
  ufrmMDCFootball, udmFootballPostgres;

{$R *.dfm}

procedure TdlgSelectLkpPlayer.ButtonedEditPlayersChange(Sender: TObject);
begin
   dmFootballPostgres.SearchLkpPlayer(self.ButtonedEditPlayers.Text);
end;

end.
