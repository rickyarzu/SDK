unit uFrameFMXFootballRanking;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua Project
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Football,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, System.Rtti, FMX.Grid.Style,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, FMX.TMSBaseControl, FMX.TMSGridCell, FMX.TMSGridOptions,
  FMX.TMSGridData, FMX.TMSCustomGrid, FMX.TMSGrid, FMX.Layouts;

type
  TFrameFMXFootballRanking = class(TFrame)
    VertScrollBox1: TVertScrollBox;
    grdFootballRanking: TTMSFMXGrid;
    procedure grdFootballRankingResize(Sender: TObject);
  private
    { Private declarations }
    FJanuaFootballCLient: Janua.Core.Football.TJanuaCustomFootballClient;
    procedure SetJanuaFootballCLient(const Value: TJanuaCustomFootballClient);
  public
    { Public declarations }
    procedure UpdateGrid;
  public
    property JanuaFootballCLient: TJanuaCustomFootballClient read FJanuaFootballCLient write SetJanuaFootballCLient;
  end;

implementation

{$R *.fmx}
{ TFrame1 }

procedure TFrameFMXFootballRanking.grdFootballRankingResize(Sender: TObject);
var
  a, b, c: integer;
begin
  a := Round(self.VertScrollBox1.Width);
  b := Round(grdFootballRanking.Columns[0].Width);
  c := (grdFootballRanking.Columns.Count - 1) * 30;
  grdFootballRanking.Columns[0].Width := a - c;
end;

procedure TFrameFMXFootballRanking.SetJanuaFootballCLient(const Value: TJanuaCustomFootballClient);
begin
  FJanuaFootballCLient := Value;
end;

procedure TFrameFMXFootballRanking.UpdateGrid;
var
  i, j: integer;
begin
  if not Assigned(FJanuaFootballCLient) then
    raise Exception.Create('FrameFMXFootballRanking Error JanuaFootballCLient not set');

  j := 0;

  // grdFootballRanking.Columns[0].Width := Round(self.VertScrollBox1.Width) -
  // ((grdFootballRanking.Columns.Count - 1) * 30);

  grdFootballRanking.RowCount := 1;

  grdFootballRanking.Cells[0, 0] := 'Squadra';
  grdFootballRanking.Cells[1, 0] := 'Pt.';
  grdFootballRanking.Cells[2, 0] := 'G';
  grdFootballRanking.Cells[3, 0] := 'V';
  grdFootballRanking.Cells[4, 0] := 'N';
  grdFootballRanking.Cells[5, 0] := 'P';
  grdFootballRanking.Cells[6, 0] := 'GF';
  grdFootballRanking.Cells[7, 0] := 'GS';

  grdFootballRanking.RowCount := 1 + Length(FJanuaFootballCLient.Ranking.rankings);

  for i := Low(FJanuaFootballCLient.Ranking.rankings) to High(FJanuaFootballCLient.Ranking.rankings) do
    with FJanuaFootballCLient do
    begin
      grdFootballRanking.Cells[0, i + 1] := Ranking.rankings[i].team_name;
      grdFootballRanking.Cells[1, i + 1] := Ranking.rankings[i].points.ToString;
      grdFootballRanking.Cells[2, i + 1] := Ranking.rankings[i].played_matches.ToString;
      grdFootballRanking.Cells[3, i + 1] := Ranking.rankings[i].won_matches.ToString;
      grdFootballRanking.Cells[4, i + 1] := Ranking.rankings[i].tied_matches.ToString;
      grdFootballRanking.Cells[5, i + 1] := Ranking.rankings[i].lost_matches.ToString;
      grdFootballRanking.Cells[6, i + 1] := Ranking.rankings[i].goal_done.ToString;
      grdFootballRanking.Cells[7, i + 1] := Ranking.rankings[i].goal_lost.ToString;
    end;

end;

end.
