unit JOrm.Football.FtClubSeasons.Intf;

interface

uses Janua.Orm.Intf;

type

  IFtClubSeasons = interface(IJanuaRecord)
  ['{13A9C648-103A-46FC-9239-AEA2848DD71E}']
    function GetClubId: IJanuaField;
    procedure SetClubId(const Value: IJanuaField);
    property ClubId: IJanuaField read GetClubId write SetClubId;
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetClubName: IJanuaField;
    procedure SetClubName(const Value: IJanuaField);
    property ClubName: IJanuaField read GetClubName write SetClubName;
  end;

  IFtClubSeasonss = interface(IJanuaRecordSet)
  ['{6F3F707E-3171-43F6-987E-D22872DCBB80}']
    function GetClubId: IJanuaField;
    procedure SetClubId(const Value: IJanuaField);
    property ClubId: IJanuaField read GetClubId write SetClubId;
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetClubName: IJanuaField;
    procedure SetClubName(const Value: IJanuaField);
    property ClubName: IJanuaField read GetClubName write SetClubName;
    function GetFtClubSeasons: IFtClubSeasons;
    procedure SetFtClubSeasons(const Value: IFtClubSeasons);
    property FtClubSeasons:IFtClubSeasons read GetFtClubSeasons write SetFtClubSeasons;

  end;

implementation

end.

