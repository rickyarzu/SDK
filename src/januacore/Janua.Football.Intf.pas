unit Janua.Football.Intf;

interface

uses Janua.Orm.Intf;

type
  IFootballSettings = Interface(IInterface)
    ['{E8CD99D0-BC35-4CE9-8A78-923F396980A9}']
    function getLeague_ID: smallint;
    function getSeason_ID: smallint;
    function getMatch_Day: smallint;
    function getMatch_Day_from: smallint;
    function getMatch_Day_to: smallint;
    function getLastMatch_Day: smallint;
    function getMatch_ID: int64;
    function getTeam_id: integer;
    function getPlayer_id: integer;
    function getMatch_team: integer;
    // Setters
    procedure setMatch_ID(const Value: int64);
    procedure setPlayer_ID(const Value: integer);
    procedure setSeason_ID(const Value: smallint);
    procedure setLeague_ID(const Value: smallint);
    procedure SetTeam_ID(const Value: integer);
    procedure setMatch_day(const Value: smallint);
    procedure setMatch_day_to(const Value: smallint);
    procedure setMatch_day_from(const Value: smallint);
    procedure Setmatch_team(const Value: integer);
    procedure SetLastMatchDay(const Value: smallint);
    // properties
    property match_id: int64 read getMatch_ID write setMatch_ID;
    property season_id: smallint read getSeason_ID write setSeason_ID;
    property league_id: smallint read getLeague_ID write setLeague_ID;
    property team_id: integer read getTeam_id write SetTeam_ID;
    property match_day: smallint read getMatch_Day write setMatch_day;
    property player_id: integer read getPlayer_id write setPlayer_ID;
    property match_team: integer read getMatch_team write Setmatch_team;
    property LastMatchDay: smallint read getLastMatch_Day write SetLastMatchDay;
    property match_day_from: smallint read getMatch_Day_from write setMatch_day_from;
    property match_day_to: smallint read getMatch_Day_to write setMatch_day_to;
    // Settings Argument e Main Argument
    function GetMainArgumentID: Word;
    function GetArgumentID: Word;
    procedure SetArgumentID(const Value: Word);
    procedure SetMainArgumentID(const Value: Word);
    property MainArgumentID: Word read GetMainArgumentID write SetMainArgumentID;
    property ArgumentID: Word read GetArgumentID write SetArgumentID;
    function GetArticleID: int64;
    procedure SetArticleID(const Value: int64);
    property ArticleID: int64 read GetArticleID write SetArticleID;
    procedure Clear;
    function Log: string;
  End;

implementation

end.
