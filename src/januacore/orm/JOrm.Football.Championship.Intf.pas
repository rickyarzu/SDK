unit JOrm.Football.Championship.Intf;

interface

uses Janua.Orm.Intf;

type

  IChampionship = interface(IJanuaRecord)
    ['{43566CB0-2B22-481B-B21C-A82E0392EF8F}']
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetPromoted: IJanuaField;
    procedure SetPromoted(const Value: IJanuaField);
    property Promoted: IJanuaField read GetPromoted write SetPromoted;
    function GetPlayoff: IJanuaField;
    procedure SetPlayoff(const Value: IJanuaField);
    property Playoff: IJanuaField read GetPlayoff write SetPlayoff;
    function GetRelegation: IJanuaField;
    procedure SetRelegation(const Value: IJanuaField);
    property Relegation: IJanuaField read GetRelegation write SetRelegation;
    function GetChampions: IJanuaField;
    procedure SetChampions(const Value: IJanuaField);
    property Champions: IJanuaField read GetChampions write SetChampions;
    function GetPlayout: IJanuaField;
    procedure SetPlayout(const Value: IJanuaField);
    property Playout: IJanuaField read GetPlayout write SetPlayout;
    function GetTeams: IJanuaField;
    procedure SetTeams(const Value: IJanuaField);
    property Teams: IJanuaField read GetTeams write SetTeams;
  end;

  IChampionships = interface(IJanuaRecordSet)
    ['{C1A152A9-8D23-49BE-919E-13388563A5D9}']
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetPromoted: IJanuaField;
    procedure SetPromoted(const Value: IJanuaField);
    property Promoted: IJanuaField read GetPromoted write SetPromoted;
    function GetPlayoff: IJanuaField;
    procedure SetPlayoff(const Value: IJanuaField);
    property Playoff: IJanuaField read GetPlayoff write SetPlayoff;
    function GetRelegation: IJanuaField;
    procedure SetRelegation(const Value: IJanuaField);
    property Relegation: IJanuaField read GetRelegation write SetRelegation;
    function GetChampions: IJanuaField;
    procedure SetChampions(const Value: IJanuaField);
    property Champions: IJanuaField read GetChampions write SetChampions;
    function GetPlayout: IJanuaField;
    procedure SetPlayout(const Value: IJanuaField);
    property Playout: IJanuaField read GetPlayout write SetPlayout;
    function GetTeams: IJanuaField;
    procedure SetTeams(const Value: IJanuaField);
    property Teams: IJanuaField read GetTeams write SetTeams;
    function GetChampionship: IChampionship;
    procedure SetChampionship(const Value: IChampionship);
    property Championship: IChampionship read GetChampionship write SetChampionship;

  end;

implementation

end.
