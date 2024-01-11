unit udlgFootballSelectTeamClubPlayers;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB,
  // Vcl
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, CRGrid,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  // Janua
  Janua.Core.Football, Janua.Vcl.EnhCRDBGrid, Janua.Football.Types;

type
  TdlgFootballSelectTeamClubPlayers = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    grdTeamPlayers: TEnhCRDBGrid;
    grdAllClubPlayers: TEnhCRDBGrid;
    BitBtn1: TBitBtn;
    DBNavigator6: TDBNavigator;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    Button2: TButton;
    dsAllTeamPlayers: TDataSource;
    dsAllClubPlayers: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
  private
    FFSelectedForm: TJanuaFooballForm;
    procedure SetFSelectedForm(const Value: TJanuaFooballForm);
    { Private declarations }
  public
    { Public declarations }
    property FSelectedForm: TJanuaFooballForm read FFSelectedForm write SetFSelectedForm;
  end;

var
  dlgFootballSelectTeamClubPlayers: TdlgFootballSelectTeamClubPlayers;

implementation

{$R *.dfm}

uses udmFootballPostgres;

procedure TdlgFootballSelectTeamClubPlayers.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TdlgFootballSelectTeamClubPlayers.SetFSelectedForm(const Value: TJanuaFooballForm);
begin
  FFSelectedForm := Value;
end;

end.
