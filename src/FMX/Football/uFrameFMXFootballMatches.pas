unit uFrameFMXFootballMatches;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.StrUtils,
  // Janua Project
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Football,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TMSBaseControl, FMX.TMSGridCell,
  FMX.TMSGridOptions, FMX.TMSGridData, FMX.TMSCustomGrid, FMX.TMSGrid, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.TabControl, FMX.Controls.Presentation,
  FMX.Objects;

type
  TFrameFMXFootballMatches = class(TFrame)
    TabControlMatches: TTabControl;
    TabItemMatches: TTabItem;
    TabItemMatchDetail: TTabItem;
    TabItemMatchTeam: TTabItem;
    TabItem4: TTabItem;
    ListViewMatches: TListView;
    VertScrollBox1: TVertScrollBox;
    LabelEvents: TLabel;
    PanelHome: TPanel;
    lbHome: TLabel;
    lbHomeGoal: TLabel;
    SpeedButton1: TSpeedButton;
    PanelVisitors: TPanel;
    lbVisitors: TLabel;
    lbGoalVisitors: TLabel;
    SpeedButton2: TSpeedButton;
    TabControlTabellino: TTabControl;
    TabItemHome: TTabItem;
    TabItemVisitors: TTabItem;
    Rectangle1: TRectangle;
    TextHome: TText;
    Rectangle2: TRectangle;
    TextVisitors: TText;
    ListViewMatchEvents: TListView;
    lbTeamName: TLabel;
    VertScrollBox2: TVertScrollBox;
    ListViewTeam: TListView;
    procedure HomeTeamClick(Sender: TObject);
    procedure ListViewMatchesItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure VisitorsClick(Sender: TObject);
  private
    { Private declarations }
    FJanuaFootballCLient: Janua.Core.Football.TJanuaCustomFootballClient;
    procedure SetJanuaFootballCLient(const Value: TJanuaCustomFootballClient);
    procedure UpdateMatcheDetails;
    procedure UpdateMatchHome;
    procedure UpdateMatchVisitors;
    procedure UpdateMatchTeam(aTeam: TJanuaMatchTeam);
  public
    { Public declarations }
    procedure Update;
    procedure GoMatchHome;
    procedure GoMatchVisitors;
    procedure GoMatchDetails;
    procedure Back;
    function IsFirst: boolean;
    procedure First;
    procedure SetFirst;
  public
    property JanuaFootballCLient: TJanuaCustomFootballClient read FJanuaFootballCLient write SetJanuaFootballCLient;
  end;

implementation

{$R *.fmx}
{ TFrameFMXFootballMatches }

procedure TFrameFMXFootballMatches.Back;
begin
  if not self.IsFirst then
    self.TabControlMatches.Previous(TTAbTransition.Slide)
end;

procedure TFrameFMXFootballMatches.First;
begin
  self.TabControlMatches.First(TTAbTransition.Slide);
end;

procedure TFrameFMXFootballMatches.GoMatchDetails;
begin
  // per prima cosa carico dal sever tutti i dati del match e poi mi sposto ...........................................
  self.UpdateMatcheDetails;
  // eseguo uno slide to Next.
  self.TabControlMatches.Next(TTAbTransition.Slide);
end;

procedure TFrameFMXFootballMatches.GoMatchHome;
begin
  self.UpdateMatchTeam(self.FJanuaFootballCLient.MatchDetails.hometeam);
  self.TabControlMatches.Next(TTAbTransition.Slide)
end;

procedure TFrameFMXFootballMatches.GoMatchVisitors;
begin
  self.UpdateMatchTeam(self.FJanuaFootballCLient.MatchDetails.visitorsteam);
  self.TabControlMatches.Next(TTAbTransition.Slide)
end;

procedure TFrameFMXFootballMatches.HomeTeamClick(Sender: TObject);
begin
  self.GoMatchHome;
end;

function TFrameFMXFootballMatches.IsFirst: boolean;
begin
  Result := self.TabControlMatches.ActiveTab = self.TabItemMatches;
end;

procedure TFrameFMXFootballMatches.VisitorsClick(Sender: TObject);
begin
  // Funzione che Visualizza nella prossima Tabella la formazione dettagliata della squadra Ospite .....................
  GoMatchVisitors
end;

procedure TFrameFMXFootballMatches.ListViewMatchesItemClick(const Sender: TObject; const AItem: TListViewItem);
var
  aMatch: Janua.Core.Football.TJanuaMatch;
begin
  aMatch := FJanuaFootballCLient.matches.matches[AItem.Index];
  self.FJanuaFootballCLient.MatchID := aMatch.match_id;
  self.GoMatchDetails;
end;

procedure TFrameFMXFootballMatches.SetFirst;
begin
  self.TabControlMatches.ActiveTab := self.TabControlMatches.Tabs[0]
end;

procedure TFrameFMXFootballMatches.SetJanuaFootballCLient(const Value: TJanuaCustomFootballClient);
begin
  self.FJanuaFootballCLient := Value;
end;

procedure TFrameFMXFootballMatches.Update;
var
  aMatch: Janua.Core.Football.TJanuaMatch;
begin
  self.First;
  FJanuaFootballCLient.seasonID := 48;
  if FJanuaFootballCLient.getChampionshipsList > 0 then
  begin
    // self.advMemRestSeasons.Lines.Text := ClientModuleFootballVCLREST.JanuaRESTFootballClient.Seasons.AsJsonPretty;
    // FJanuaFootballCLient.Seasons.CreateDataset
    // (ClientModuleFMXFootballREST.vrtRestSeasons);

    self.ListViewMatches.items.Clear;
    for aMatch in FJanuaFootballCLient.matches.matches do
      with ListViewMatches.items.Add do
      begin
        Data['Text1'] := aMatch.Match_Name(False);
        Data['Text2'] := aMatch.goal_home.ToString + ' - ' + aMatch.goal_visitors.ToString;
      end;
  end;

end;

procedure TFrameFMXFootballMatches.UpdateMatcheDetails;
var
  aEvent: Janua.Core.Football.TJanuaMatchEvent;
  i: integer;
  h: single;
begin
  FJanuaFootballCLient.getMatchDetails;
  i := FJanuaFootballCLient.MatchDetails.events.Count;
  ListViewMatchEvents.items.Clear;
  for aEvent in FJanuaFootballCLient.MatchDetails.events.items do
  begin
    // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    if aEvent.Team.Name = '' then
    begin
      if aEvent.team_id = FJanuaFootballCLient.MatchDetails.hometeam.id then
        aEvent.Team := FJanuaFootballCLient.MatchDetails.hometeam
      else
        aEvent.Team := FJanuaFootballCLient.MatchDetails.visitorsteam
    end;

    with ListViewMatchEvents.items.Add do
    begin
      Text := aEvent.ShortDescription;
      Purpose := TListItemPurpose.Header;
    end;
    with ListViewMatchEvents.items.Add do
    begin
      Text := aEvent.Player.Player.LastName + ' ' + aEvent.Player.Player.FirstName;
      Tag := i;
    end;
    {
      with self.ListViewMatchEvents.items.Add do
      with ListViewMatches.items.Add do
      begin
      Data['Text1'] := aEvent.ShortDescription;
      Data['Text2'] := aEvent.Player.Player.LastName + ' ' + aEvent.Player.Player.FirstName;
      end;
    }
    // Data ['Text2'] := aMatch.goal_home.ToString + ' - ' + aMatch.goal_visitors.ToString;
  end;
  // se esiste almeno un evento visualizzo la lista ....................................................................
  ListViewMatchEvents.Visible := i > 0;
  // se esiste almeno un evento visualizzo la lista ....................................................................
  h := 64 * i * 1.0;
  self.ListViewMatchEvents.Height := h;

  // Imposto i Valori delle Squadre e del risultato della partita e delle note alle squadre ............................
  self.lbHome.Text := FJanuaFootballCLient.MatchDetails.hometeam.Name;
  self.TabItemHome.Text := FJanuaFootballCLient.MatchDetails.hometeam.Name;
  self.lbHomeGoal.Text := FJanuaFootballCLient.MatchDetails.match.goal_home.ToString;

  self.lbVisitors.Text := FJanuaFootballCLient.MatchDetails.visitorsteam.Name;
  self.TabItemVisitors.Text := FJanuaFootballCLient.MatchDetails.visitorsteam.Name;
  self.lbGoalVisitors.Text := FJanuaFootballCLient.MatchDetails.match.goal_visitors.ToString;

  self.TextHome.Text := FJanuaFootballCLient.MatchDetails.match.home_notes;
  self.TextVisitors.Text := FJanuaFootballCLient.MatchDetails.match.visitors_notes;

end;

procedure TFrameFMXFootballMatches.UpdateMatchHome;
begin

end;

procedure TFrameFMXFootballMatches.UpdateMatchTeam(aTeam: TJanuaMatchTeam);
var
  aPlayer: Janua.Core.Football.TJanuaMatchPlayer;
  // i: integer;
  h: single;
  sost, sostMin, sGoal: string;
begin
  lbTeamName.Text := aTeam.Name;
  ListViewTeam.items.Clear;
  for aPlayer in aTeam.Players do
    with aPlayer do
    begin
      with self.ListViewTeam.items.Add do
      begin
        Data['Text4'] := pos.ToString;
        Data['Text1'] := aPlayer.Player.FirstName + ' ' + aPlayer.Player.LastName;
        sostMin := IfThen(playuntil = minutes, '', ' ' + playuntil.ToString + '''');
        sost := IfThen(substitute <> '', 'sost. (' + substitute + sostMin + ')');
        sGoal := IfThen(goal > 0, ' gol: ' + goal.ToString, '');
        Data['Text2'] := minutes.ToString + '''' + sGoal + sost;
      end;
    end;

  self.ListViewTeam.Height := aTeam.Count * 44;

end;

procedure TFrameFMXFootballMatches.UpdateMatchVisitors;
var
  aEvent: Janua.Core.Football.TJanuaMatchEvent;
  i: integer;
  h: single;
begin

end;

end.
