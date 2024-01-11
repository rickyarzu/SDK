unit udlgFootballSelectMatchTeams;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids,
  Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid;

type
  TdlgFootballSelectMatchTeams = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    EnhCRDBGrid1: TEnhCRDBGrid;
    EnhCRDBGrid2: TEnhCRDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgFootballSelectMatchTeams: TdlgFootballSelectMatchTeams;

implementation

{$R *.dfm}

uses udmFootballPostgres;

end.
