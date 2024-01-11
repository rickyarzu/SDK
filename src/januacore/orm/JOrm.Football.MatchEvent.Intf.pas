unit JOrm.Football.MatchEvent.Intf;

interface

uses Janua.Orm.Intf, Janua.Football.Types;

type

  IMatchEvent = interface(IJanuaRecord)
    ['{6B3B1CF4-CC23-4D34-B7BF-D83A44BBA3B5}']
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const aValue: IJanuaField);
    property MatchId: IJanuaField read GetMatchId write SetMatchId;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const aValue: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const aValue: IJanuaField);
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    function GetEventId: IJanuaField;
    procedure SetEventId(const aValue: IJanuaField);
    property EventId: IJanuaField read GetEventId write SetEventId;
    function GetMinute: IJanuaField;
    procedure SetMinute(const aValue: IJanuaField);
    property Minute: IJanuaField read GetMinute write SetMinute;
    function GetValue: IJanuaField;
    procedure SetValue(const aValue: IJanuaField);
    property EventValue: IJanuaField read GetValue write SetValue;
    function GetMatchEventsRowId: IJanuaField;
    procedure SetMatchEventsRowId(const aValue: IJanuaField);
    property MatchEventsRowId: IJanuaField read GetMatchEventsRowId write SetMatchEventsRowId;
    function GetNotes: IJanuaField;
    procedure SetNotes(const aValue: IJanuaField);
    property Notes: IJanuaField read GetNotes write SetNotes;
    function GetFavorTeamId: IJanuaField;
    procedure SetFavorTeamId(const aValue: IJanuaField);
    property FavorTeamId: IJanuaField read GetFavorTeamId write SetFavorTeamId;
    function GetHalf: IJanuaField;
    procedure SetHalf(const aValue: IJanuaField);
    property Half: IJanuaField read GetHalf write SetHalf;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const aValue: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function EventDef: TJanuaMatchEventDef;
    function GetLastName: IJanuaField;
    procedure SetLastName(const aValue: IJanuaField);
    property LastName: IJanuaField read GetLastName write SetLastName;
  end;

  IMatchEvents = interface(IJanuaRecordSet)
    ['{8CA84E40-88FD-4A97-AEA9-16D091CD7817}']
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const aValue: IJanuaField);
    property MatchId: IJanuaField read GetMatchId write SetMatchId;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const aValue: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const aValue: IJanuaField);
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    function GetEventId: IJanuaField;
    procedure SetEventId(const aValue: IJanuaField);
    property EventId: IJanuaField read GetEventId write SetEventId;
    function GetMinute: IJanuaField;
    procedure SetMinute(const aValue: IJanuaField);
    property Minute: IJanuaField read GetMinute write SetMinute;
    function GetValue: IJanuaField;
    procedure SetValue(const aValue: IJanuaField);
    property Value: IJanuaField read GetValue write SetValue;
    function GetMatchEventsRowId: IJanuaField;
    procedure SetMatchEventsRowId(const aValue: IJanuaField);
    property MatchEventsRowId: IJanuaField read GetMatchEventsRowId write SetMatchEventsRowId;
    function GetNotes: IJanuaField;
    procedure SetNotes(const aValue: IJanuaField);
    property Notes: IJanuaField read GetNotes write SetNotes;
    function GetFavorTeamId: IJanuaField;
    procedure SetFavorTeamId(const aValue: IJanuaField);
    property FavorTeamId: IJanuaField read GetFavorTeamId write SetFavorTeamId;
    function GetHalf: IJanuaField;
    procedure SetHalf(const aValue: IJanuaField);
    property Half: IJanuaField read GetHalf write SetHalf;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const aValue: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetMatchEvent: IMatchEvent;
    procedure SetMatchEvent(const aValue: IMatchEvent);
    property MatchEvent: IMatchEvent read GetMatchEvent write SetMatchEvent;
    function GoalList(aTeamID: Integer; aNewLine: boolean = False): string;
  end;

implementation

end.
