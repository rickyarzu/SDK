unit JOrm.Football.Leagues.Intf;

interface

uses Janua.Orm.Intf;

type

  ILeague = interface(IJanuaRecord)
    ['{2FB13456-0272-41BA-995C-AFE1B6774775}']
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetLeagueName: IJanuaField;
    procedure SetLeagueName(const Value: IJanuaField);
    property LeagueName: IJanuaField read GetLeagueName write SetLeagueName;
    function GetIsoCountryCode: IJanuaField;
    procedure SetIsoCountryCode(const Value: IJanuaField);
    property IsoCountryCode: IJanuaField read GetIsoCountryCode write SetIsoCountryCode;
    function GetLeaguePosition: IJanuaField;
    procedure SetLeaguePosition(const Value: IJanuaField);
    property LeaguePosition: IJanuaField read GetLeaguePosition write SetLeaguePosition;
    function GetLeagueCode: IJanuaField;
    procedure SetLeagueCode(const Value: IJanuaField);
    property LeagueCode: IJanuaField read GetLeagueCode write SetLeagueCode;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    function GetPromotedcss: IJanuaField;
    procedure SetPromotedcss(const Value: IJanuaField);
    property Promotedcss: IJanuaField read GetPromotedcss write SetPromotedcss;
    function GetPlayoffcss: IJanuaField;
    procedure SetPlayoffcss(const Value: IJanuaField);
    property Playoffcss: IJanuaField read GetPlayoffcss write SetPlayoffcss;
    function GetChampionscss: IJanuaField;
    procedure SetChampionscss(const Value: IJanuaField);
    property Championscss: IJanuaField read GetChampionscss write SetChampionscss;
    function GetPlayoutcss: IJanuaField;
    procedure SetPlayoutcss(const Value: IJanuaField);
    property Playoutcss: IJanuaField read GetPlayoutcss write SetPlayoutcss;
    function GetRelegationcss: IJanuaField;
    procedure SetRelegationcss(const Value: IJanuaField);
    property Relegationcss: IJanuaField read GetRelegationcss write SetRelegationcss;
    function GetAllPlayers: IJanuaField;
    procedure SetAllPlayers(const Value: IJanuaField);
    property AllPlayers: IJanuaField read GetAllPlayers write SetAllPlayers;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
  end;

  ILeagues = interface(IJanuaRecordSet)
    ['{FA780B1D-BF69-43C6-9CA2-B56407FE0E8E}']
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    function GetLeagueName: IJanuaField;
    procedure SetLeagueName(const Value: IJanuaField);
    property LeagueName: IJanuaField read GetLeagueName write SetLeagueName;
    function GetIsoCountryCode: IJanuaField;
    procedure SetIsoCountryCode(const Value: IJanuaField);
    property IsoCountryCode: IJanuaField read GetIsoCountryCode write SetIsoCountryCode;
    function GetLeaguePosition: IJanuaField;
    procedure SetLeaguePosition(const Value: IJanuaField);
    property LeaguePosition: IJanuaField read GetLeaguePosition write SetLeaguePosition;
    function GetLeagueCode: IJanuaField;
    procedure SetLeagueCode(const Value: IJanuaField);
    property LeagueCode: IJanuaField read GetLeagueCode write SetLeagueCode;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    function GetPromotedcss: IJanuaField;
    procedure SetPromotedcss(const Value: IJanuaField);
    property Promotedcss: IJanuaField read GetPromotedcss write SetPromotedcss;
    function GetPlayoffcss: IJanuaField;
    procedure SetPlayoffcss(const Value: IJanuaField);
    property Playoffcss: IJanuaField read GetPlayoffcss write SetPlayoffcss;
    function GetChampionscss: IJanuaField;
    procedure SetChampionscss(const Value: IJanuaField);
    property Championscss: IJanuaField read GetChampionscss write SetChampionscss;
    function GetPlayoutcss: IJanuaField;
    procedure SetPlayoutcss(const Value: IJanuaField);
    property Playoutcss: IJanuaField read GetPlayoutcss write SetPlayoutcss;
    function GetRelegationcss: IJanuaField;
    procedure SetRelegationcss(const Value: IJanuaField);
    property Relegationcss: IJanuaField read GetRelegationcss write SetRelegationcss;
    function GetAllPlayers: IJanuaField;
    procedure SetAllPlayers(const Value: IJanuaField);
    property AllPlayers: IJanuaField read GetAllPlayers write SetAllPlayers;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetLeagues: ILeague;
    procedure SetLeagues(const Value: ILeague);
    property League: ILeague read GetLeagues write SetLeagues;

  end;

implementation

end.
