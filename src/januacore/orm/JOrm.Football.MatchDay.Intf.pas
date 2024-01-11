unit JOrm.Football.MatchDay.Intf;

interface

uses Janua.Orm.Intf, JOrm.Football.Matches.Intf;

type

  IMatchDay = interface(IJanuaRecord)
    ['{7180C594-00D8-42A5-9D53-B9BC6C04EC7E}']
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetMatchDayNumber: IJanuaField;
    procedure SetMatchDayNumber(const Value: IJanuaField);
    property MatchDayNumber: IJanuaField read GetMatchDayNumber write SetMatchDayNumber;
    function GetMatchDayDate: IJanuaField;
    procedure SetMatchDayDate(const Value: IJanuaField);
    property MatchDayDate: IJanuaField read GetMatchDayDate write SetMatchDayDate;
    function GetMatchDayPlayed: IJanuaField;
    procedure SetMatchDayPlayed(const Value: IJanuaField);
    property MatchDayPlayed: IJanuaField read GetMatchDayPlayed write SetMatchDayPlayed;
    function GetRestTeamId: IJanuaField;
    procedure SetRestTeamId(const Value: IJanuaField);
    property RestTeamId: IJanuaField read GetRestTeamId write SetRestTeamId;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
  end;

  IMatchCalendarDay = interface(IMatchDay)
    ['{217BE2D4-6F8B-418D-9004-09954963AA00}']
    function GetMatches: IMatches;
    procedure SetMatches(const Value: IMatches);
    property Matches: IMatches read GetMatches write SetMatches;
  end;

  IMatchDayNumber = interface(IJanuaRecord)
    ['{1E69F7F5-1968-4E61-B591-18C78171490A}']
    function GetMatchDayNumber: IJanuaField;
    procedure SetMatchDayNumber(const Value: IJanuaField);
    property MatchDayNumber: IJanuaField read GetMatchDayNumber write SetMatchDayNumber;
  end;

  IMatchDayNumbers = interface(IJanuaRecordSet)
    ['{85E95AEA-5728-4B47-A885-2D36DCE45519}']
    function GetMatchDayNumber: IJanuaField;
    procedure SetMatchDayNumber(const Value: IJanuaField);
    property MatchDayNumber: IJanuaField read GetMatchDayNumber write SetMatchDayNumber;

    function GetMatchDay: IMatchDayNumber;
    procedure SetMatchDay(const Value: IMatchDayNumber);
    property MatchDay: IMatchDayNumber read GetMatchDay write SetMatchDay;
  end;

  IMatchDays = interface(IJanuaRecordSet)
    ['{0127A128-43E6-4420-A406-9B7733A66119}']
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetMatchDayNumber: IJanuaField;
    procedure SetMatchDayNumber(const Value: IJanuaField);
    property MatchDayNumber: IJanuaField read GetMatchDayNumber write SetMatchDayNumber;
    function GetMatchDayDate: IJanuaField;
    procedure SetMatchDayDate(const Value: IJanuaField);
    property MatchDayDate: IJanuaField read GetMatchDayDate write SetMatchDayDate;
    function GetMatchDayPlayed: IJanuaField;
    procedure SetMatchDayPlayed(const Value: IJanuaField);
    property MatchDayPlayed: IJanuaField read GetMatchDayPlayed write SetMatchDayPlayed;
    function GetRestTeamId: IJanuaField;
    procedure SetRestTeamId(const Value: IJanuaField);
    property RestTeamId: IJanuaField read GetRestTeamId write SetRestTeamId;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetMatchDay: IMatchDay;
    procedure SetMatchDay(const Value: IMatchDay);
    property MatchDay: IMatchDay read GetMatchDay write SetMatchDay;

  end;

  IMatchCalendarDays = interface(IMatchDays)
    ['{230A38D6-D3BE-448A-904D-69B8BF986A2E}']
    function GetMatchCalendarDay: IMatchCalendarDay;
    procedure SetMatchCalendarDay(const Value: IMatchCalendarDay);
    property MatchCalendarDay: IMatchCalendarDay read GetMatchCalendarDay write SetMatchCalendarDay;
    function GetMatches: IMatches;
    procedure SetMatches(const Value: IMatches);
    property Matches: IMatches read GetMatches write SetMatches;
  end;

implementation

end.
