unit JOrm.Football.FtChampionships.Intf;

interface

uses Janua.Orm.Intf;

type

  IFtChampionship = interface(IJanuaRecord)
    ['{8964CF99-793C-4FCB-9F3E-9319AB01D284}']
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

  IFtChampionships = interface(IJanuaRecordSet)
    ['{CB282F7A-4A45-44C7-B9B4-ED1F96DEC444}']
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
    function GetFtChampionships: IFtChampionship;
    procedure SetFtChampionships(const Value: IFtChampionship);
    property FtChampionship: IFtChampionship read GetFtChampionships write SetFtChampionships;

  end;

implementation

end.
