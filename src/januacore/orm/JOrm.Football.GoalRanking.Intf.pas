unit JOrm.Football.GoalRanking.Intf;

interface

uses Janua.Orm.Intf;

type

  IGoalRanking = interface(IJanuaRecord)
    ['{47859854-2D7A-4B47-82C9-5DE4A410796A}']
    function GetRownum: IJanuaField;
    procedure SetRownum(const Value: IJanuaField);
    property Rownum: IJanuaField read GetRownum write SetRownum;
    function GetFirstName: IJanuaField;
    procedure SetFirstName(const Value: IJanuaField);
    property FirstName: IJanuaField read GetFirstName write SetFirstName;
    function GetFamilyName: IJanuaField;
    procedure SetFamilyName(const Value: IJanuaField);
    property FamilyName: IJanuaField read GetFamilyName write SetFamilyName;
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    function GetGoals: IJanuaField;
    procedure SetGoals(const Value: IJanuaField);
    property Goals: IJanuaField read GetGoals write SetGoals;
    function GetGoal: IJanuaField;
    procedure SetGoal(const Value: IJanuaField);
    property Goal: IJanuaField read GetGoal write SetGoal;
    function GetFullName: IJanuaField;
    procedure SetFullName(const Value: IJanuaField);
    property FullName: IJanuaField read GetFullName write SetFullName;
    function GetFullTeamName: IJanuaField;
    procedure SetFullTeamName(const Value: IJanuaField);
    property FullTeamName: IJanuaField read GetFullTeamName write SetFullTeamName;
  end;

  IGoalRankingTable = interface(IJanuaRecordSet)
    ['{6EB7C2B9-6EAF-4685-B549-63D6A78F780D}']
    function GetRownum: IJanuaField;
    procedure SetRownum(const Value: IJanuaField);
    property Rownum: IJanuaField read GetRownum write SetRownum;
    function GetFirstName: IJanuaField;
    procedure SetFirstName(const Value: IJanuaField);
    property FirstName: IJanuaField read GetFirstName write SetFirstName;
    function GetFamilyName: IJanuaField;
    procedure SetFamilyName(const Value: IJanuaField);
    property FamilyName: IJanuaField read GetFamilyName write SetFamilyName;
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    function GetGoals: IJanuaField;
    procedure SetGoals(const Value: IJanuaField);
    property Goals: IJanuaField read GetGoals write SetGoals;
    function GetGoal: IJanuaField;
    procedure SetGoal(const Value: IJanuaField);
    property Goal: IJanuaField read GetGoal write SetGoal;
    function GetGoalRanking: IGoalRanking;
    procedure SetGoalRanking(const Value: IGoalRanking);
    property GoalRanking: IGoalRanking read GetGoalRanking write SetGoalRanking;
    function GetFullName: IJanuaField;
    procedure SetFullName(const Value: IJanuaField);
    property FullName: IJanuaField read GetFullName write SetFullName;
  end;

implementation

end.
