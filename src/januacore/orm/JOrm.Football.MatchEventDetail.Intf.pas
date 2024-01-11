unit JOrm.Football.MatchEventDetail.Intf;

interface

uses Janua.Orm.Intf, Janua.Football.Types;

type

  IMatchEventDetail = interface(IJanuaRecord)
    ['{F2B0C4D9-7306-45F5-9D16-861A5422524B}']
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
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetFmthJguid: IJanuaField;
    procedure SetFmthJguid(const Value: IJanuaField);
    property FmthJguid: IJanuaField read GetFmthJguid write SetFmthJguid;
    function GetFmthDeleted: IJanuaField;
    procedure SetFmthDeleted(const Value: IJanuaField);
    property FmthDeleted: IJanuaField read GetFmthDeleted write SetFmthDeleted;
    // Calc Fields .............................................................
    function GetTeamplayer: IJanuaField;
    procedure SetTeamplayer(const Value: IJanuaField);
    property Teamplayer: IJanuaField read GetTeamplayer write SetTeamplayer;
    function GetBirthDate: IJanuaField;
    procedure SetBirthDate(const Value: IJanuaField);
    property BirthDate: IJanuaField read GetBirthDate write SetBirthDate;
    function GetBirthYear: IJanuaField;
    procedure SetBirthYear(const Value: IJanuaField);
    property BirthYear: IJanuaField read GetBirthYear write SetBirthYear;
    function GetFirstName: IJanuaField;
    procedure SetFirstName(const Value: IJanuaField);
    property FirstName: IJanuaField read GetFirstName write SetFirstName;
    function GetFamilyName: IJanuaField;
    procedure SetFamilyName(const Value: IJanuaField);
    property FamilyName: IJanuaField read GetFamilyName write SetFamilyName;
    function GetBirthPlace: IJanuaField;
    procedure SetBirthPlace(const Value: IJanuaField);
    property BirthPlace: IJanuaField read GetBirthPlace write SetBirthPlace;
    function GetRole: IJanuaField;
    procedure SetRole(const Value: IJanuaField);
    property Role: IJanuaField read GetRole write SetRole;
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    function EventDef: TJanuaMatchEventDef;
  end;

  IMatchEventsDetails = interface(IJanuaRecordSet)
    ['{10FA5C7C-4F7A-4C7B-BD6B-D4853DF9AE54}']
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
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetFmthJguid: IJanuaField;
    procedure SetFmthJguid(const Value: IJanuaField);
    property FmthJguid: IJanuaField read GetFmthJguid write SetFmthJguid;
    function GetFmthDeleted: IJanuaField;
    procedure SetFmthDeleted(const Value: IJanuaField);
    property FmthDeleted: IJanuaField read GetFmthDeleted write SetFmthDeleted;
    function GetTeamplayer: IJanuaField;
    procedure SetTeamplayer(const Value: IJanuaField);
    property Teamplayer: IJanuaField read GetTeamplayer write SetTeamplayer;
    function GetBirthDate: IJanuaField;
    procedure SetBirthDate(const Value: IJanuaField);
    property BirthDate: IJanuaField read GetBirthDate write SetBirthDate;
    function GetBirthYear: IJanuaField;
    procedure SetBirthYear(const Value: IJanuaField);
    property BirthYear: IJanuaField read GetBirthYear write SetBirthYear;
    function GetFirstName: IJanuaField;
    procedure SetFirstName(const Value: IJanuaField);
    property FirstName: IJanuaField read GetFirstName write SetFirstName;
    function GetFamilyName: IJanuaField;
    procedure SetFamilyName(const Value: IJanuaField);
    property FamilyName: IJanuaField read GetFamilyName write SetFamilyName;
    function GetBirthPlace: IJanuaField;
    procedure SetBirthPlace(const Value: IJanuaField);
    property BirthPlace: IJanuaField read GetBirthPlace write SetBirthPlace;
    function GetRole: IJanuaField;
    procedure SetRole(const Value: IJanuaField);
    property Role: IJanuaField read GetRole write SetRole;
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    function GetMatchEventDetail: IMatchEventDetail;
    procedure SetMatchEventDetail(const Value: IMatchEventDetail);
    property MatchEventDetail: IMatchEventDetail read GetMatchEventDetail write SetMatchEventDetail;
    function GoalList(aTeamID: Integer; aNewLine: boolean = False): string;
  end;

implementation

end.
