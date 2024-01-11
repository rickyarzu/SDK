unit JOrm.Football.TeamsChampionships.Intf;

interface

uses Janua.Orm.Intf;

type

  ITeamsChampionships = interface(IJanuaRecord)
  ['{7876DE82-AD85-49F4-BA09-C3565BC4B054}']
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    property Position: IJanuaField read GetPosition write SetPosition;
    function GetPenalty: IJanuaField;
    procedure SetPenalty(const Value: IJanuaField);
    property Penalty: IJanuaField read GetPenalty write SetPenalty;
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    function GetClubName: IJanuaField;
    procedure SetClubName(const Value: IJanuaField);
    property ClubName: IJanuaField read GetClubName write SetClubName;
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
  end;

  ITeamsChampionshipss = interface(IJanuaRecordSet)
  ['{A5E58AA8-C4BA-4DD7-97F0-57DC9FD53014}']
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    property Position: IJanuaField read GetPosition write SetPosition;
    function GetPenalty: IJanuaField;
    procedure SetPenalty(const Value: IJanuaField);
    property Penalty: IJanuaField read GetPenalty write SetPenalty;
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    function GetClubName: IJanuaField;
    procedure SetClubName(const Value: IJanuaField);
    property ClubName: IJanuaField read GetClubName write SetClubName;
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetTeamsChampionships: ITeamsChampionships;
    procedure SetTeamsChampionships(const Value: ITeamsChampionships);
    property TeamsChampionships:ITeamsChampionships read GetTeamsChampionships write SetTeamsChampionships;

  end;

implementation

end.

