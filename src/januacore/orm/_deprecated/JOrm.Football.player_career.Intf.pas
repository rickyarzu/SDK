unit JOrm.Football.player_career.Intf;

interface

uses Janua.Orm.Intf;

type

  Iplayer_career = interface(IJanuaRecord)
  ['{AE027ABD-2308-43BC-8BD5-D2E29990F448}']
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

  Iplayer_careers = interface(IJanuaRecordSet)
  ['{670AC225-5077-434D-A231-AC245C2F2068}']
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
    function Getplayer_career: Iplayer_career;
    procedure Setplayer_career(const Value: Iplayer_career);
    property player_career:Iplayer_career read Getplayer_career write Setplayer_career;

  end;

implementation

end.

