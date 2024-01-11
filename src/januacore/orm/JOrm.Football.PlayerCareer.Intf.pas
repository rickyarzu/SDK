unit JOrm.Football.PlayerCareer.Intf;

interface

uses Janua.Orm.Intf;

type

  IPlayerCareer = interface(IJanuaRecord)
    ['{062B1B59-904B-43DB-9E7E-00BB5D87A534}']
    function GetCareerId: IJanuaField;
    procedure SetCareerId(const Value: IJanuaField);
    property CareerId: IJanuaField read GetCareerId write SetCareerId;
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetSeasonCode: IJanuaField;
    procedure SetSeasonCode(const Value: IJanuaField);
    property SeasonCode: IJanuaField read GetSeasonCode write SetSeasonCode;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetLeagueCode: IJanuaField;
    procedure SetLeagueCode(const Value: IJanuaField);
    property LeagueCode: IJanuaField read GetLeagueCode write SetLeagueCode;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetMatches: IJanuaField;
    procedure SetMatches(const Value: IJanuaField);
    property Matches: IJanuaField read GetMatches write SetMatches;
    function GetGoals: IJanuaField;
    procedure SetGoals(const Value: IJanuaField);
    property Goals: IJanuaField read GetGoals write SetGoals;
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    property Notes: IJanuaField read GetNotes write SetNotes;
    function GetVotes: IJanuaField;
    procedure SetVotes(const Value: IJanuaField);
    property Votes: IJanuaField read GetVotes write SetVotes;
    function GetMinutes: IJanuaField;
    procedure SetMinutes(const Value: IJanuaField);
    property Minutes: IJanuaField read GetMinutes write SetMinutes;
    function GetImageId: IJanuaField;
    procedure SetImageId(const Value: IJanuaField);
    property ImageId: IJanuaField read GetImageId write SetImageId;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetOwngoal: IJanuaField;
    procedure SetOwngoal(const Value: IJanuaField);
    property Owngoal: IJanuaField read GetOwngoal write SetOwngoal;
    function GetLostgoal: IJanuaField;
    procedure SetLostgoal(const Value: IJanuaField);
    property Lostgoal: IJanuaField read GetLostgoal write SetLostgoal;
    function GetInjuries: IJanuaField;
    procedure SetInjuries(const Value: IJanuaField);
    property Injuries: IJanuaField read GetInjuries write SetInjuries;
    function GetSentOff: IJanuaField;
    procedure SetSentOff(const Value: IJanuaField);
    property SentOff: IJanuaField read GetSentOff write SetSentOff;
  end;

  IPlayerCareers = interface(IJanuaRecordSet)
    ['{30D6BDEE-1CF3-4022-9EC2-8FB62A4B4083}']
    function GetCareerId: IJanuaField;
    procedure SetCareerId(const Value: IJanuaField);
    property CareerId: IJanuaField read GetCareerId write SetCareerId;
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetSeasonCode: IJanuaField;
    procedure SetSeasonCode(const Value: IJanuaField);
    property SeasonCode: IJanuaField read GetSeasonCode write SetSeasonCode;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetLeagueCode: IJanuaField;
    procedure SetLeagueCode(const Value: IJanuaField);
    property LeagueCode: IJanuaField read GetLeagueCode write SetLeagueCode;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetMatches: IJanuaField;
    procedure SetMatches(const Value: IJanuaField);
    property Matches: IJanuaField read GetMatches write SetMatches;
    function GetGoals: IJanuaField;
    procedure SetGoals(const Value: IJanuaField);
    property Goals: IJanuaField read GetGoals write SetGoals;
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    property Notes: IJanuaField read GetNotes write SetNotes;
    function GetVotes: IJanuaField;
    procedure SetVotes(const Value: IJanuaField);
    property Votes: IJanuaField read GetVotes write SetVotes;
    function GetMinutes: IJanuaField;
    procedure SetMinutes(const Value: IJanuaField);
    property Minutes: IJanuaField read GetMinutes write SetMinutes;
    function GetImageId: IJanuaField;
    procedure SetImageId(const Value: IJanuaField);
    property ImageId: IJanuaField read GetImageId write SetImageId;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetOwngoal: IJanuaField;
    procedure SetOwngoal(const Value: IJanuaField);
    property Owngoal: IJanuaField read GetOwngoal write SetOwngoal;
    function GetLostgoal: IJanuaField;
    procedure SetLostgoal(const Value: IJanuaField);
    property Lostgoal: IJanuaField read GetLostgoal write SetLostgoal;
    function GetInjuries: IJanuaField;
    procedure SetInjuries(const Value: IJanuaField);
    property Injuries: IJanuaField read GetInjuries write SetInjuries;
    function GetSentOff: IJanuaField;
    procedure SetSentOff(const Value: IJanuaField);
    property SentOff: IJanuaField read GetSentOff write SetSentOff;
    function GetPlayerCareer: IPlayerCareer;
    procedure SetPlayerCareer(const Value: IPlayerCareer);
    property PlayerCareer: IPlayerCareer read GetPlayerCareer write SetPlayerCareer;

  end;

implementation

end.
