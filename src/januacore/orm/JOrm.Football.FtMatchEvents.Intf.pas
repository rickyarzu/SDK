unit JOrm.Football.FtMatchEvents.Intf;

interface

uses Janua.Orm.Intf;

type

  IFtMatchEvents = interface(IJanuaRecord)
  ['{C6AB3C15-60DE-4A10-BCCA-7C4193625CA6}']
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const Value: IJanuaField);
    property MatchId: IJanuaField read GetMatchId write SetMatchId;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    function GetEventId: IJanuaField;
    procedure SetEventId(const Value: IJanuaField);
    property EventId: IJanuaField read GetEventId write SetEventId;
    function GetMinute: IJanuaField;
    procedure SetMinute(const Value: IJanuaField);
    property Minute: IJanuaField read GetMinute write SetMinute;
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    property Value: IJanuaField read GetValue write SetValue;
    function GetMatchEventsRowId: IJanuaField;
    procedure SetMatchEventsRowId(const Value: IJanuaField);
    property MatchEventsRowId: IJanuaField read GetMatchEventsRowId write SetMatchEventsRowId;
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    property Notes: IJanuaField read GetNotes write SetNotes;
    function GetFavorTeamId: IJanuaField;
    procedure SetFavorTeamId(const Value: IJanuaField);
    property FavorTeamId: IJanuaField read GetFavorTeamId write SetFavorTeamId;
    function GetHalf: IJanuaField;
    procedure SetHalf(const Value: IJanuaField);
    property Half: IJanuaField read GetHalf write SetHalf;
  end;

  IFtMatchEventss = interface(IJanuaRecordSet)
  ['{217174AF-C9F6-4C0D-A7D4-A98789405B14}']
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const Value: IJanuaField);
    property MatchId: IJanuaField read GetMatchId write SetMatchId;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    function GetEventId: IJanuaField;
    procedure SetEventId(const Value: IJanuaField);
    property EventId: IJanuaField read GetEventId write SetEventId;
    function GetMinute: IJanuaField;
    procedure SetMinute(const Value: IJanuaField);
    property Minute: IJanuaField read GetMinute write SetMinute;
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    property Value: IJanuaField read GetValue write SetValue;
    function GetMatchEventsRowId: IJanuaField;
    procedure SetMatchEventsRowId(const Value: IJanuaField);
    property MatchEventsRowId: IJanuaField read GetMatchEventsRowId write SetMatchEventsRowId;
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    property Notes: IJanuaField read GetNotes write SetNotes;
    function GetFavorTeamId: IJanuaField;
    procedure SetFavorTeamId(const Value: IJanuaField);
    property FavorTeamId: IJanuaField read GetFavorTeamId write SetFavorTeamId;
    function GetHalf: IJanuaField;
    procedure SetHalf(const Value: IJanuaField);
    property Half: IJanuaField read GetHalf write SetHalf;
    function GetFtMatchEvents: IFtMatchEvents;
    procedure SetFtMatchEvents(const Value: IFtMatchEvents);
    property FtMatchEvents:IFtMatchEvents read GetFtMatchEvents write SetFtMatchEvents;

  end;

implementation

end.

