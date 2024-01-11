unit JOrm.Football.LeagueGroups.Intf;

interface

uses Janua.Orm.Intf;

type

  ILeagueGroups = interface(IJanuaRecord)
    ['{33DDD3E0-94EB-4922-8322-FAB0495863CA}']
    function GetLeagueGroupId: IJanuaField;
    procedure SetLeagueGroupId(const Value: IJanuaField);
    property LeagueGroupId: IJanuaField read GetLeagueGroupId write SetLeagueGroupId;
    function GetLeagueGroupName: IJanuaField;
    procedure SetLeagueGroupName(const Value: IJanuaField);
    property LeagueGroupName: IJanuaField read GetLeagueGroupName write SetLeagueGroupName;
    function GetLeagueGroupCode: IJanuaField;
    procedure SetLeagueGroupCode(const Value: IJanuaField);
    property LeagueGroupCode: IJanuaField read GetLeagueGroupCode write SetLeagueGroupCode;
    function GetFlgrJguid: IJanuaField;
    procedure SetFlgrJguid(const Value: IJanuaField);
    property FlgrJguid: IJanuaField read GetFlgrJguid write SetFlgrJguid;
    function GetFlgrDeleted: IJanuaField;
    procedure SetFlgrDeleted(const Value: IJanuaField);
    property FlgrDeleted: IJanuaField read GetFlgrDeleted write SetFlgrDeleted;
  end;

  ILeagueGroupss = interface(IJanuaRecordSet)
    ['{954D93F1-DEA6-4085-A167-95821FA8E23E}']
    function GetLeagueGroupId: IJanuaField;
    procedure SetLeagueGroupId(const Value: IJanuaField);
    property LeagueGroupId: IJanuaField read GetLeagueGroupId write SetLeagueGroupId;
    function GetLeagueGroupName: IJanuaField;
    procedure SetLeagueGroupName(const Value: IJanuaField);
    property LeagueGroupName: IJanuaField read GetLeagueGroupName write SetLeagueGroupName;
    function GetLeagueGroupCode: IJanuaField;
    procedure SetLeagueGroupCode(const Value: IJanuaField);
    property LeagueGroupCode: IJanuaField read GetLeagueGroupCode write SetLeagueGroupCode;
    function GetFlgrJguid: IJanuaField;
    procedure SetFlgrJguid(const Value: IJanuaField);
    property FlgrJguid: IJanuaField read GetFlgrJguid write SetFlgrJguid;
    function GetFlgrDeleted: IJanuaField;
    procedure SetFlgrDeleted(const Value: IJanuaField);
    property FlgrDeleted: IJanuaField read GetFlgrDeleted write SetFlgrDeleted;
    function GetLeagueGroups: ILeagueGroups;
    procedure SetLeagueGroups(const Value: ILeagueGroups);
    property LeagueGroups: ILeagueGroups read GetLeagueGroups write SetLeagueGroups;

  end;

implementation

end.
