unit Janua.Football.Impl;

interface

uses Janua.Football.Intf, Janua.Html.Intf;

type
  TFootballSettings = class(TInterfacedObject, IFootballSettings)
  private
    FLeague_ID: smallint;
    FSeason_ID: smallint;
    FMatch_Day: smallint;
    FLastMatch_Day: smallint;
    FMatch_ID: int64;
    FTeam_id: integer;
    FPlayer_id: integer;
    FMatch_team: integer;
    Fmatch_day_to: smallint;
    Fmatch_day_from: smallint;
    FMainArgumentID: Word;
    FArgumentID: Word;
    FArticleID: int64;
  protected
    function GetMainArgumentID: Word;
    function GetArgumentID: Word;
    procedure SetArgumentID(const Value: Word);
    procedure SetMainArgumentID(const Value: Word);
    function getLeague_ID: smallint;
    function getSeason_ID: smallint;
    function getMatch_Day: smallint;
    function getLastMatch_Day: smallint;
    function getMatch_ID: int64;
    function getTeam_id: integer;
    function getPlayer_id: integer;
    function getMatch_team: integer;
    procedure Setmatch_day_from(const Value: smallint);
    procedure Setmatch_day_to(const Value: smallint);
    function getMatch_Day_to: smallint;
    function Getmatch_day_from: smallint;
    // Setters
    procedure setMatch_ID(const Value: int64);
    procedure setPlayer_ID(const Value: integer);
    procedure setSeason_ID(const Value: smallint);
    procedure setLeague_ID(const Value: smallint);
    procedure SetTeam_ID(const Value: integer);
    procedure setMatch_day(const Value: smallint);
    procedure Setmatch_team(const Value: integer);
    procedure SetLastMatchDay(const Value: smallint);
    function GetArticleID: int64;
    procedure SetArticleID(const Value: int64);
  public
    Constructor Create; overload;
    class function New: IFootballSettings; static;
    procedure Clear;
    function Log: string;
  public
    // properties
    property match_id: int64 read getMatch_ID write setMatch_ID;
    property season_id: smallint read getSeason_ID write setSeason_ID;
    property league_id: smallint read getLeague_ID write setLeague_ID;
    property team_id: integer read getTeam_id write SetTeam_ID;
    property match_day: smallint read getMatch_Day write setMatch_day;
    property player_id: integer read getPlayer_id write setPlayer_ID;
    property match_team: integer read getMatch_team write Setmatch_team;
    property LastMatchDay: smallint read getLastMatch_Day write SetLastMatchDay;
    property match_day_from: smallint read Getmatch_day_from write Setmatch_day_from;
    property match_day_to: smallint read getMatch_Day_to write Setmatch_day_to;
    property MainArgumentID: Word read GetMainArgumentID write SetMainArgumentID;
    property ArgumentID: Word read GetArgumentID write SetArgumentID;
    property ArticleID: int64 read GetArticleID write SetArticleID;
  End;

Type
  TFooballFactory = class
    class function GenerateTeamLogo(aTeam: string; aLogoID: integer): string; overload;
    class function GenerateTeamLogoObject(aTeam: string; aLogoID: integer): IJanuaHtmlObject; overload;
  end;

implementation

uses Janua.Html.Impl, Janua.Core.Types, Janua.Html.Types, System.SysUtils, System.StrUtils;

{ TFootballSettings }

constructor TFootballSettings.Create;
begin
  Clear;
end;

procedure TFootballSettings.Clear;
begin
  FLeague_ID := 0;
  FSeason_ID := 0;
  FMatch_Day := 0;
  FLastMatch_Day := 0;
  FMatch_ID := 0;
  FTeam_id := 0;
  FPlayer_id := 0;
  FMatch_team := 0;
end;

function TFootballSettings.GetArgumentID: Word;
begin
  Result := self.FArgumentID
end;

function TFootballSettings.GetArticleID: int64;
begin
  Result := self.FArticleID;
end;

function TFootballSettings.getLastMatch_Day: smallint;
begin
  Result := self.FLastMatch_Day
end;

function TFootballSettings.getLeague_ID: smallint;
begin
  Result := self.FLeague_ID
end;

function TFootballSettings.GetMainArgumentID: Word;
begin
  Result := self.FMainArgumentID
end;

function TFootballSettings.getMatch_Day: smallint;
begin
  Result := self.FMatch_Day
end;

function TFootballSettings.Getmatch_day_from: smallint;
begin
  Result := self.Fmatch_day_from
end;

function TFootballSettings.getMatch_Day_to: smallint;
begin
  Result := self.Fmatch_day_to
end;

function TFootballSettings.getMatch_ID: int64;
begin
  Result := self.FMatch_ID
end;

function TFootballSettings.getMatch_team: integer;
begin
  Result := self.FMatch_team
end;

function TFootballSettings.getPlayer_id: integer;
begin
  Result := self.FPlayer_id
end;

function TFootballSettings.getSeason_ID: smallint;
begin
  Result := self.FSeason_ID
end;

function TFootballSettings.getTeam_id: integer;
begin
  Result := self.FTeam_id
end;

function TFootballSettings.Log: string;
var
  LB: IStringBuilder;
begin
  LB := TJanuaStringBuilder.Create;

  LB.AppendLine('FSeason_ID' + FSeason_ID.ToString);
  LB.AppendLine('FLeague_ID' + self.FLeague_ID.ToString);
  LB.AppendLine('FMatch_Day' + self.FMatch_Day.ToString);
  LB.AppendLine('FMatch_ID' + self.FMatch_ID.ToString);
  Result := LB.ToString
end;

class function TFootballSettings.New: IFootballSettings;
begin
  Result := TFootballSettings.Create as IFootballSettings;
end;

procedure TFootballSettings.SetArgumentID(const Value: Word);
begin
  FArgumentID := Value;
end;

procedure TFootballSettings.SetArticleID(const Value: int64);
begin
  FArticleID := Value;
end;

procedure TFootballSettings.SetLastMatchDay(const Value: smallint);
begin
  self.FLastMatch_Day := Value
end;

procedure TFootballSettings.setLeague_ID(const Value: smallint);
begin
  self.FLeague_ID := Value
end;

procedure TFootballSettings.SetMainArgumentID(const Value: Word);
begin
  FMainArgumentID := Value;
end;

procedure TFootballSettings.setMatch_day(const Value: smallint);
begin
  self.FMatch_Day := Value
end;

procedure TFootballSettings.Setmatch_day_from(const Value: smallint);
begin
  Fmatch_day_from := Value;
end;

procedure TFootballSettings.Setmatch_day_to(const Value: smallint);
begin
  Fmatch_day_to := Value;
end;

procedure TFootballSettings.setMatch_ID(const Value: int64);
begin
  self.FMatch_ID := Value
end;

procedure TFootballSettings.Setmatch_team(const Value: integer);
begin
  self.FMatch_team := Value
end;

procedure TFootballSettings.setPlayer_ID(const Value: integer);
begin
  self.FPlayer_id := Value
end;

procedure TFootballSettings.setSeason_ID(const Value: smallint);
begin
  self.FSeason_ID := Value
end;

procedure TFootballSettings.SetTeam_ID(const Value: integer);
begin
  self.FTeam_id := Value
end;

{ TFooballFactory }

class function TFooballFactory.GenerateTeamLogo(aTeam: string; aLogoID: integer): string;
begin
  Result := GenerateTeamLogoObject(aTeam, aLogoID).AsHtml
end;

class function TFooballFactory.GenerateTeamLogoObject(aTeam: string; aLogoID: integer): IJanuaHtmlObject;
begin
  // self.FTeamNameLogo.AsString := '<img src="/?page=image&file=' + FTeamId.AsString + '.jpg"  alt="' + FTeamName.AsString
  // + '" style="width:32px; height:32px"> ' + FTeamName.AsString;
  Result := TJanuaHtmlFactory.CreateObject('span', '', [], false);
  Result.AddSimpleTag('img', '', false, []);
  Result.SelectedItem.AddStyle(THtmlStyle.Width, '32px');
  Result.SelectedItem.AddStyle(THtmlStyle.Height, '32px');
  Result.SelectedItem.AddParam('src', '/?page=image&file=' + aLogoID.ToString + '.jpg');
  Result.SelectedItem.AddParam('alt', aTeam);
  Result.AddSimpleTag('span', aTeam, false, []);
  Result.SelectedItem.AddStyle(THtmlStyle.MarginTop, '8px');
  Result.SelectedItem.AddStyle(THtmlStyle.MarginBottom, '5px');
  Result.SelectedItem.AddStyle(THtmlStyle.MarginLeft, '5px');
  Result.SelectedItem.AddStyle(THtmlStyle.MarginRight, '5px');
end;

end.
