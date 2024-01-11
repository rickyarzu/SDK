unit JOrm.Football.RankingTable.Intf;

interface

uses Janua.Orm.Intf;

type

  IRankingRow = interface(IJanuaRecord)
    ['{C9342121-528F-4ACB-BB2F-AA6E0F51063A}']
    function GetRankingId: IJanuaField;
    procedure SetRankingId(const Value: IJanuaField);
    property RankingId: IJanuaField read GetRankingId write SetRankingId;
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    property Pos: IJanuaField read GetPos write SetPos;
    function GetPlayedMatches: IJanuaField;
    procedure SetPlayedMatches(const Value: IJanuaField);
    property PlayedMatches: IJanuaField read GetPlayedMatches write SetPlayedMatches;
    function GetWonMatches: IJanuaField;
    procedure SetWonMatches(const Value: IJanuaField);
    property WonMatches: IJanuaField read GetWonMatches write SetWonMatches;
    function GetLostMatches: IJanuaField;
    procedure SetLostMatches(const Value: IJanuaField);
    property LostMatches: IJanuaField read GetLostMatches write SetLostMatches;
    function GetTiedMatches: IJanuaField;
    procedure SetTiedMatches(const Value: IJanuaField);
    property TiedMatches: IJanuaField read GetTiedMatches write SetTiedMatches;
    function GetHomeMatches: IJanuaField;
    procedure SetHomeMatches(const Value: IJanuaField);
    property HomeMatches: IJanuaField read GetHomeMatches write SetHomeMatches;
    function GetHomeWon: IJanuaField;
    procedure SetHomeWon(const Value: IJanuaField);
    property HomeWon: IJanuaField read GetHomeWon write SetHomeWon;
    function GetHomeLost: IJanuaField;
    procedure SetHomeLost(const Value: IJanuaField);
    property HomeLost: IJanuaField read GetHomeLost write SetHomeLost;
    function GetHomeTied: IJanuaField;
    procedure SetHomeTied(const Value: IJanuaField);
    property HomeTied: IJanuaField read GetHomeTied write SetHomeTied;
    function GetOutsidePlayed: IJanuaField;
    procedure SetOutsidePlayed(const Value: IJanuaField);
    property OutsidePlayed: IJanuaField read GetOutsidePlayed write SetOutsidePlayed;
    function GetOutsideWon: IJanuaField;
    procedure SetOutsideWon(const Value: IJanuaField);
    property OutsideWon: IJanuaField read GetOutsideWon write SetOutsideWon;
    function GetOutsideLost: IJanuaField;
    procedure SetOutsideLost(const Value: IJanuaField);
    property OutsideLost: IJanuaField read GetOutsideLost write SetOutsideLost;
    function GetOutsideTied: IJanuaField;
    procedure SetOutsideTied(const Value: IJanuaField);
    property OutsideTied: IJanuaField read GetOutsideTied write SetOutsideTied;
    function GetGoalDone: IJanuaField;
    procedure SetGoalDone(const Value: IJanuaField);
    property GoalDone: IJanuaField read GetGoalDone write SetGoalDone;
    function GetGoalLost: IJanuaField;
    procedure SetGoalLost(const Value: IJanuaField);
    property GoalLost: IJanuaField read GetGoalLost write SetGoalLost;
    function GetPoints: IJanuaField;
    procedure SetPoints(const Value: IJanuaField);
    property Points: IJanuaField read GetPoints write SetPoints;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    // read only team_name
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    // Calc Fields
    function GetTeamNameLogo: IJanuaField;
    procedure SetTeamNameLogo(const Value: IJanuaField);
    property TeamNameLogo: IJanuaField read GetTeamNameLogo write SetTeamNameLogo;
  end;

  IRankingTable = interface(IJanuaRecordSet)
    ['{D95431B5-09B7-4808-B932-8A1BB69B6475}']
    function GetRankingId: IJanuaField;
    procedure SetRankingId(const Value: IJanuaField);
    property RankingId: IJanuaField read GetRankingId write SetRankingId;
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    property Pos: IJanuaField read GetPos write SetPos;
    function GetPlayedMatches: IJanuaField;
    procedure SetPlayedMatches(const Value: IJanuaField);
    property PlayedMatches: IJanuaField read GetPlayedMatches write SetPlayedMatches;
    function GetWonMatches: IJanuaField;
    procedure SetWonMatches(const Value: IJanuaField);
    property WonMatches: IJanuaField read GetWonMatches write SetWonMatches;
    function GetLostMatches: IJanuaField;
    procedure SetLostMatches(const Value: IJanuaField);
    property LostMatches: IJanuaField read GetLostMatches write SetLostMatches;
    function GetTiedMatches: IJanuaField;
    procedure SetTiedMatches(const Value: IJanuaField);
    property TiedMatches: IJanuaField read GetTiedMatches write SetTiedMatches;
    function GetHomeMatches: IJanuaField;
    procedure SetHomeMatches(const Value: IJanuaField);
    property HomeMatches: IJanuaField read GetHomeMatches write SetHomeMatches;
    function GetHomeWon: IJanuaField;
    procedure SetHomeWon(const Value: IJanuaField);
    property HomeWon: IJanuaField read GetHomeWon write SetHomeWon;
    function GetHomeLost: IJanuaField;
    procedure SetHomeLost(const Value: IJanuaField);
    property HomeLost: IJanuaField read GetHomeLost write SetHomeLost;
    function GetHomeTied: IJanuaField;
    procedure SetHomeTied(const Value: IJanuaField);
    property HomeTied: IJanuaField read GetHomeTied write SetHomeTied;
    function GetOutsidePlayed: IJanuaField;
    procedure SetOutsidePlayed(const Value: IJanuaField);
    property OutsidePlayed: IJanuaField read GetOutsidePlayed write SetOutsidePlayed;
    function GetOutsideWon: IJanuaField;
    procedure SetOutsideWon(const Value: IJanuaField);
    property OutsideWon: IJanuaField read GetOutsideWon write SetOutsideWon;
    function GetOutsideLost: IJanuaField;
    procedure SetOutsideLost(const Value: IJanuaField);
    property OutsideLost: IJanuaField read GetOutsideLost write SetOutsideLost;
    function GetOutsideTied: IJanuaField;
    procedure SetOutsideTied(const Value: IJanuaField);
    property OutsideTied: IJanuaField read GetOutsideTied write SetOutsideTied;
    function GetGoalDone: IJanuaField;
    procedure SetGoalDone(const Value: IJanuaField);
    property GoalDone: IJanuaField read GetGoalDone write SetGoalDone;
    function GetGoalLost: IJanuaField;
    procedure SetGoalLost(const Value: IJanuaField);
    property GoalLost: IJanuaField read GetGoalLost write SetGoalLost;
    function GetPoints: IJanuaField;
    procedure SetPoints(const Value: IJanuaField);
    property Points: IJanuaField read GetPoints write SetPoints;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    // Record
    function GetRankingRow: IRankingRow;
    procedure SetRankingRow(const Value: IRankingRow);
    property RankingRow: IRankingRow read GetRankingRow write SetRankingRow;
    // Calc Fields  Read only Fields
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
  end;

implementation

end.
