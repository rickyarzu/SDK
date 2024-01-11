unit Janua.FMX.SportMediaMainTabForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls,
  FMX.Controls.Presentation,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, Data.DB, MemDS, DBAccess, Uni, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, UniProvider, PostgreSQLUniProvider, gtClasses;

type
  TfrmSpormediaAppMainFMX = class(TForm)
    TabControl1: TTabControl;
    tabChampionships: TTabItem;
    TabControlChampionships: TTabControl;
    TabItem5: TTabItem;
    ToolBar1: TToolBar;
    lblTitle1: TLabel;
    TabItem6: TTabItem;
    ToolBar2: TToolBar;
    lblTitle2: TLabel;
    btnBack: TSpeedButton;
    tabTeams: TTabItem;
    ToolBar3: TToolBar;
    lblTitle3: TLabel;
    TabItem3: TTabItem;
    ToolBar4: TToolBar;
    lblTitle4: TLabel;
    TabItem4: TTabItem;
    ToolBar5: TToolBar;
    lblTitle5: TLabel;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    ListViewChampionships: TListView;
    PgErgoConnection: TJanuaUniConnection;
    qryChampionships: TUniQuery;
    qryChampionshipsleague_name: TWideStringField;
    qryChampionshipsseason_id: TIntegerField;
    qryChampionshipsseason_des: TWideStringField;
    qryChampionshipsseason_code: TWideStringField;
    qryChampionshipsdb_schema_id: TIntegerField;
    qryChampionshipsleague_id: TSmallintField;
    qryLastSeason: TUniQuery;
    qryLastSeasonseason_id: TIntegerField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    qryChampionshipsorder_number: TSmallintField;
    qryChampionshipsremote_id: TSmallintField;
    qryChampionshipsforward: TWideMemoField;
    qryMatchDay: TUniQuery;
    qryMatchDayseason_des: TWideStringField;
    qryMatchDayseason_code: TWideStringField;
    qryMatchDayleague_name: TWideStringField;
    qryMatchDayseason_id: TSmallintField;
    qryMatchDayleague_id: TSmallintField;
    qryMatchDaymatch_day_number: TSmallintField;
    qryMatchDayrest_team_id: TIntegerField;
    qryMatchDaydb_schema_id: TIntegerField;
    qryLastMatch: TUniQuery;
    qryLastMatchlast_match: TSmallintField;
    ListViewMatches: TListView;
    qryMatches: TUniQuery;
    qryMatchesmatch_id: TIntegerField;
    qryMatchesleague_id: TSmallintField;
    qryMatchesseason_id: TSmallintField;
    qryMatchesmatch_day_number: TSmallintField;
    qryMatchesmatch_date: TDateField;
    qryMatcheshome_team_id: TSmallintField;
    qryMatchesvisitors_team_id: TSmallintField;
    qryMatchesgoal_home: TSmallintField;
    qryMatchesgoal_visitor: TSmallintField;
    qryMatchespoints_home: TSmallintField;
    qryMatchespoints_visitors: TSmallintField;
    qryMatchesnotes: TWideMemoField;
    qryMatchesconfirmed: TBooleanField;
    qryMatchesdb_schema_id: TIntegerField;
    qryMatchesinsert_date: TSQLTimeStampField;
    qryMatchesupdate_date: TSQLTimeStampField;
    qryMatcheshome_notes: TWideStringField;
    qryMatchesvisitors_notes: TWideStringField;
    qryMatcheshome_team: TWideStringField;
    qryMatchesvisitors_team: TWideStringField;
    qryMatchesrownum: TLargeintField;
    qryMatchesmatch_time: TSQLTimeStampField;
    qryMatchesreferee_id: TIntegerField;
    qryMatchesreferee_second_id: TIntegerField;
    qryMatchesreferee_third_id: TIntegerField;
    qryMatchessuspended: TBooleanField;
    qryMatchespostponed: TBooleanField;
    qryMatchesforfeit: TBooleanField;
    qryMatchesremote_id: TIntegerField;
    qryMatchesfiled_id: TIntegerField;
    qryMatchesteam_des: TWideStringField;
    qryMatchesgoal: TWideStringField;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    qryMatchDaymatch_day_date: TDateField;
    qryMatchDaymatch_day_played: TDateField;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure ListViewChampionshipsButtonClick(const Sender: TObject; const AItem: TListItem;
      const AObject: TListItemSimpleControl);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSpormediaAppMainFMX: TfrmSpormediaAppMainFMX;

implementation

{$R *.fmx}

procedure TfrmSpormediaAppMainFMX.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControl1.ActiveTab := self.tabChampionships;
  self.qryLastSeason.Open;

  self.qryChampionships.Params[0].AsInteger := self.qryLastSeasonseason_id.AsInteger;
  self.qryChampionships.Open;

end;

procedure TfrmSpormediaAppMainFMX.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (TabControl1.ActiveTab = tabChampionships) and (TabControlChampionships.ActiveTab = TabItem6) then
    begin
      TabControlChampionships.Previous;
      Key := 0;
    end;
  end;
end;

procedure TfrmSpormediaAppMainFMX.GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo;
  var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[TabControl1.TabCount - 1] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[0] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

procedure TfrmSpormediaAppMainFMX.ListViewChampionshipsButtonClick(const Sender: TObject; const AItem: TListItem;
  const AObject: TListItemSimpleControl);
var
  aMessage: string;
begin
  // self.ListViewChampionships.Items[AItem.Index].HeaderRef
  aMessage := ListViewChampionships.Items[AItem.Index].Text;
  //ShowMessage(aMessage);

  {select
max(played_matches) as last_match
from
football.ft_ranking_table
where
season_id = :season_id
and
league_id = :league_id
}

  if self.qryChampionships.Locate('league_name', aMessage, []) then
  begin
    self.qryLastMatch.ParamByName('league_id').AsInteger := self.qryChampionshipsleague_id.AsInteger;
    qryLastMatch.ParamByName('season_id').AsInteger := self.qryLastSeasonseason_id.AsInteger;
    qryLastMatch.Open;

    self.qryMatchDay.ParamByName('league_id').AsInteger := self.qryChampionshipsleague_id.AsInteger;
    qryMatchDay.ParamByName('season_id').AsInteger := self.qryLastSeasonseason_id.AsInteger;
    qryMatchDay.ParamByName('match_day_number').AsInteger := self.qryLastMatchlast_match.AsInteger;
    qryMatchDay.Open;


    self.qryMatchDay.ParamByName('league_id').AsInteger := self.qryChampionshipsleague_id.AsInteger;
    qryMatches.ParamByName('season_id').AsInteger := self.qryLastSeasonseason_id.AsInteger;
    qryMatches.ParamByName('match_day_number').AsInteger := 10; // self.qryLastMatchlast_match.AsInteger;

    qryMatches.Open;

    TabControlChampionships.Next;
  end;

{
m.league_id = :league_id
and
m.season_id = :season_id
and
m.match_day_number = :match_day_number
}

end;

end.
