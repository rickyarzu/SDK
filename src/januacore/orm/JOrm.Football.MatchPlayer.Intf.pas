unit JOrm.Football.MatchPlayer.Intf;

interface

uses Janua.Orm.Intf;

type

  IMatchPlayer = interface(IJanuaRecord)
    ['{72469631-1005-4481-9DF4-AB6227120CF9}']
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const Value: IJanuaField);
    property MatchId: IJanuaField read GetMatchId write SetMatchId;
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    function GetMinutes: IJanuaField;
    procedure SetMinutes(const Value: IJanuaField);
    property Minutes: IJanuaField read GetMinutes write SetMinutes;
    function GetVote: IJanuaField;
    procedure SetVote(const Value: IJanuaField);
    property Vote: IJanuaField read GetVote write SetVote;
    function GetPlayed: IJanuaField;
    procedure SetPlayed(const Value: IJanuaField);
    property Played: IJanuaField read GetPlayed write SetPlayed;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    property Pos: IJanuaField read GetPos write SetPos;
    function GetSubstId: IJanuaField;
    procedure SetSubstId(const Value: IJanuaField);
    property SubstId: IJanuaField read GetSubstId write SetSubstId;
    function GetGoal: IJanuaField;
    procedure SetGoal(const Value: IJanuaField);
    property Goal: IJanuaField read GetGoal write SetGoal;
    function GetOwngoal: IJanuaField;
    procedure SetOwngoal(const Value: IJanuaField);
    property Owngoal: IJanuaField read GetOwngoal write SetOwngoal;
    function GetLostgoal: IJanuaField;
    procedure SetLostgoal(const Value: IJanuaField);
    property Lostgoal: IJanuaField read GetLostgoal write SetLostgoal;
    function GetSince: IJanuaField;
    procedure SetSince(const Value: IJanuaField);
    property Since: IJanuaField read GetSince write SetSince;
    function GetUntil: IJanuaField;
    procedure SetUntil(const Value: IJanuaField);
    property PlaydUntil: IJanuaField read GetUntil write SetUntil;
    function GetSentOff: IJanuaField;
    procedure SetSentOff(const Value: IJanuaField);
    property SentOff: IJanuaField read GetSentOff write SetSentOff;
    function GetInjuries: IJanuaField;
    procedure SetInjuries(const Value: IJanuaField);
    property Injuries: IJanuaField read GetInjuries write SetInjuries;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    // campi aggiunti alle formazioni
    function GetLastName: IJanuaField;
    procedure SetLastName(const Value: IJanuaField);
    property LastName: IJanuaField read GetLastName write SetLastName;
    function GetFirstName: IJanuaField;
    procedure SetFirstName(const Value: IJanuaField);
    property FirstName: IJanuaField read GetFirstName write SetFirstName;
  end;

  IMatchPlayers = interface(IJanuaRecordSet)
    ['{B581A27C-55BC-46F4-B367-406CD8741080}']
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const Value: IJanuaField);
    property MatchId: IJanuaField read GetMatchId write SetMatchId;
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    function GetMinutes: IJanuaField;
    procedure SetMinutes(const Value: IJanuaField);
    property Minutes: IJanuaField read GetMinutes write SetMinutes;
    function GetVote: IJanuaField;
    procedure SetVote(const Value: IJanuaField);
    property Vote: IJanuaField read GetVote write SetVote;
    function GetPlayed: IJanuaField;
    procedure SetPlayed(const Value: IJanuaField);
    property Played: IJanuaField read GetPlayed write SetPlayed;
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    property Pos: IJanuaField read GetPos write SetPos;
    function GetSubstId: IJanuaField;
    procedure SetSubstId(const Value: IJanuaField);
    property SubstId: IJanuaField read GetSubstId write SetSubstId;
    function GetGoal: IJanuaField;
    procedure SetGoal(const Value: IJanuaField);
    property Goal: IJanuaField read GetGoal write SetGoal;
    function GetOwngoal: IJanuaField;
    procedure SetOwngoal(const Value: IJanuaField);
    property Owngoal: IJanuaField read GetOwngoal write SetOwngoal;
    function GetLostgoal: IJanuaField;
    procedure SetLostgoal(const Value: IJanuaField);
    property Lostgoal: IJanuaField read GetLostgoal write SetLostgoal;
    function GetSince: IJanuaField;
    procedure SetSince(const Value: IJanuaField);
    property Since: IJanuaField read GetSince write SetSince;
    function GetUntil: IJanuaField;
    procedure SetUntil(const Value: IJanuaField);
    property PlaydUntil: IJanuaField read GetUntil write SetUntil;
    function GetSentOff: IJanuaField;
    procedure SetSentOff(const Value: IJanuaField);
    property SentOff: IJanuaField read GetSentOff write SetSentOff;
    function GetInjuries: IJanuaField;
    procedure SetInjuries(const Value: IJanuaField);
    property Injuries: IJanuaField read GetInjuries write SetInjuries;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    // Nuovo Campo Aggiunto ..................................................
    function GetMatchPlayer: IMatchPlayer;
    procedure SetMatchPlayer(const Value: IMatchPlayer);
    property MatchPlayer: IMatchPlayer read GetMatchPlayer write SetMatchPlayer;

  end;

implementation

end.
