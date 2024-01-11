unit udlgSelectPlayerMatch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid, Data.DB;

type
  TdlgSelectPlayerMatch = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    grdMatchTeamAllPlayers: TEnhCRDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgSelectPlayerMatch: TdlgSelectPlayerMatch;

implementation

{$R *.dfm}

uses udmFootballPostgres;

end.
