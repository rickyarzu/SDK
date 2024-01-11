unit JOrm.Football.Leagues.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.Leagues.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TLeague = class(TJanuaRecord, ILeague)
  private
    FLeagueId: IJanuaField;
    FLeagueIdIndex: Integer;
    FLeagueName: IJanuaField;
    FLeagueNameIndex: Integer;
    FIsoCountryCode: IJanuaField;
    FIsoCountryCodeIndex: Integer;
    FLeaguePosition: IJanuaField;
    FLeaguePositionIndex: Integer;
    FLeagueCode: IJanuaField;
    FLeagueCodeIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
    FRemoteId: IJanuaField;
    FRemoteIdIndex: Integer;
    FPromotedcss: IJanuaField;
    FPromotedcssIndex: Integer;
    FPlayoffcss: IJanuaField;
    FPlayoffcssIndex: Integer;
    FChampionscss: IJanuaField;
    FChampionscssIndex: Integer;
    FPlayoutcss: IJanuaField;
    FPlayoutcssIndex: Integer;
    FRelegationcss: IJanuaField;
    FRelegationcssIndex: Integer;
    FAllPlayers: IJanuaField;
    FAllPlayersIndex: Integer;
    FJguid: IJanuaField;
    FJguidIndex: Integer;
  private
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetLeagueName: IJanuaField;
    procedure SetLeagueName(const Value: IJanuaField);
    function GetIsoCountryCode: IJanuaField;
    procedure SetIsoCountryCode(const Value: IJanuaField);
    function GetLeaguePosition: IJanuaField;
    procedure SetLeaguePosition(const Value: IJanuaField);
    function GetLeagueCode: IJanuaField;
    procedure SetLeagueCode(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    function GetPromotedcss: IJanuaField;
    procedure SetPromotedcss(const Value: IJanuaField);
    function GetPlayoffcss: IJanuaField;
    procedure SetPlayoffcss(const Value: IJanuaField);
    function GetChampionscss: IJanuaField;
    procedure SetChampionscss(const Value: IJanuaField);
    function GetPlayoutcss: IJanuaField;
    procedure SetPlayoutcss(const Value: IJanuaField);
    function GetRelegationcss: IJanuaField;
    procedure SetRelegationcss(const Value: IJanuaField);
    function GetAllPlayers: IJanuaField;
    procedure SetAllPlayers(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
  public
    constructor Create; override;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property LeagueName: IJanuaField read GetLeagueName write SetLeagueName;
    property IsoCountryCode: IJanuaField read GetIsoCountryCode write SetIsoCountryCode;
    property LeaguePosition: IJanuaField read GetLeaguePosition write SetLeaguePosition;
    property LeagueCode: IJanuaField read GetLeagueCode write SetLeagueCode;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    property Promotedcss: IJanuaField read GetPromotedcss write SetPromotedcss;
    property Playoffcss: IJanuaField read GetPlayoffcss write SetPlayoffcss;
    property Championscss: IJanuaField read GetChampionscss write SetChampionscss;
    property Playoutcss: IJanuaField read GetPlayoutcss write SetPlayoutcss;
    property Relegationcss: IJanuaField read GetRelegationcss write SetRelegationcss;
    property AllPlayers: IJanuaField read GetAllPlayers write SetAllPlayers;
    property Jguid: IJanuaField read GetJguid write SetJguid;

  end;

  TLeagues = class(TJanuaRecordSet, IJanuaRecordSet, ILeagues)
  private
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetLeagueName: IJanuaField;
    procedure SetLeagueName(const Value: IJanuaField);
    function GetIsoCountryCode: IJanuaField;
    procedure SetIsoCountryCode(const Value: IJanuaField);
    function GetLeaguePosition: IJanuaField;
    procedure SetLeaguePosition(const Value: IJanuaField);
    function GetLeagueCode: IJanuaField;
    procedure SetLeagueCode(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    function GetPromotedcss: IJanuaField;
    procedure SetPromotedcss(const Value: IJanuaField);
    function GetPlayoffcss: IJanuaField;
    procedure SetPlayoffcss(const Value: IJanuaField);
    function GetChampionscss: IJanuaField;
    procedure SetChampionscss(const Value: IJanuaField);
    function GetPlayoutcss: IJanuaField;
    procedure SetPlayoutcss(const Value: IJanuaField);
    function GetRelegationcss: IJanuaField;
    procedure SetRelegationcss(const Value: IJanuaField);
    function GetAllPlayers: IJanuaField;
    procedure SetAllPlayers(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetLeagues: ILeague;
    procedure SetLeagues(const Value: ILeague);
  public
    constructor Create; override;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property LeagueName: IJanuaField read GetLeagueName write SetLeagueName;
    property IsoCountryCode: IJanuaField read GetIsoCountryCode write SetIsoCountryCode;
    property LeaguePosition: IJanuaField read GetLeaguePosition write SetLeaguePosition;
    property LeagueCode: IJanuaField read GetLeagueCode write SetLeagueCode;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    property Promotedcss: IJanuaField read GetPromotedcss write SetPromotedcss;
    property Playoffcss: IJanuaField read GetPlayoffcss write SetPlayoffcss;
    property Championscss: IJanuaField read GetChampionscss write SetChampionscss;
    property Playoutcss: IJanuaField read GetPlayoutcss write SetPlayoutcss;
    property Relegationcss: IJanuaField read GetRelegationcss write SetRelegationcss;
    property AllPlayers: IJanuaField read GetAllPlayers write SetAllPlayers;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property League: ILeague read GetLeagues write SetLeagues;
  end;

  TLeaguesFactory = class
    class function CreateRecord(const aKey: string): ILeague; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ILeagues; overload;
  end;

implementation

uses Janua.Orm.Types;
// ------------------------------------------ Impl TLeagues -------------------------------

{ TLeagues }

constructor TLeague.Create;
begin
  inherited;
  self.FPrefix := 'flgs';
  SetEntity(TJanuaEntity.FtLeagues);
  FLeagueId := TJanuaOrmFactory.CreateSmallintField('league_id', 'league_id');
  FLeagueIdIndex := AddField(FLeagueId);
  FLeagueName := TJanuaOrmFactory.CreateStringField('league_name', 'league_name');
  FLeagueNameIndex := AddField(FLeagueName);
  FIsoCountryCode := TJanuaOrmFactory.CreateStringField('iso_country_code', 'iso_country_code');
  FIsoCountryCodeIndex := AddField(FIsoCountryCode);
  FLeaguePosition := TJanuaOrmFactory.CreateSmallintField('league_position', 'league_position');
  FLeaguePositionIndex := AddField(FLeaguePosition);
  FLeagueCode := TJanuaOrmFactory.CreateStringField('league_code', 'league_code');
  FLeagueCodeIndex := AddField(FLeagueCode);
  FDbSchemaId := TJanuaOrmFactory.CreateSmallintField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
  FRemoteId := TJanuaOrmFactory.CreateSmallintField('remote_id', 'remote_id');
  FRemoteIdIndex := AddField(FRemoteId);
  FPromotedcss := TJanuaOrmFactory.CreateStringField('promotedcss', 'promotedcss');
  FPromotedcssIndex := AddField(FPromotedcss);
  FPlayoffcss := TJanuaOrmFactory.CreateStringField('playoffcss', 'playoffcss');
  FPlayoffcssIndex := AddField(FPlayoffcss);
  FChampionscss := TJanuaOrmFactory.CreateStringField('championscss', 'championscss');
  FChampionscssIndex := AddField(FChampionscss);
  FPlayoutcss := TJanuaOrmFactory.CreateStringField('playoutcss', 'playoutcss');
  FPlayoutcssIndex := AddField(FPlayoutcss);
  FRelegationcss := TJanuaOrmFactory.CreateStringField('relegationcss', 'relegationcss');
  FRelegationcssIndex := AddField(FRelegationcss);
  FAllPlayers := TJanuaOrmFactory.CreateBoolField('all_players', 'all_players');
  FAllPlayersIndex := AddField(FAllPlayers);
  // Campo non Gestitojguid Type= ftGuid
end;

function TLeague.GetLeagueId: IJanuaField;
begin
  Result := FLeagueId;
end;

procedure TLeague.SetLeagueId(const Value: IJanuaField);
begin
  FLeagueId := Value;
end;

function TLeague.GetLeagueName: IJanuaField;
begin
  Result := FLeagueName;
end;

procedure TLeague.SetLeagueName(const Value: IJanuaField);
begin
  FLeagueName := Value;
end;

function TLeague.GetIsoCountryCode: IJanuaField;
begin
  Result := FIsoCountryCode;
end;

procedure TLeague.SetIsoCountryCode(const Value: IJanuaField);
begin
  FIsoCountryCode := Value;
end;

function TLeague.GetLeaguePosition: IJanuaField;
begin
  Result := FLeaguePosition;
end;

procedure TLeague.SetLeaguePosition(const Value: IJanuaField);
begin
  FLeaguePosition := Value;
end;

function TLeague.GetLeagueCode: IJanuaField;
begin
  Result := FLeagueCode;
end;

procedure TLeague.SetLeagueCode(const Value: IJanuaField);
begin
  FLeagueCode := Value;
end;

function TLeague.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TLeague.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TLeague.GetRemoteId: IJanuaField;
begin
  Result := FRemoteId;
end;

procedure TLeague.SetRemoteId(const Value: IJanuaField);
begin
  FRemoteId := Value;
end;

function TLeague.GetPromotedcss: IJanuaField;
begin
  Result := FPromotedcss;
end;

procedure TLeague.SetPromotedcss(const Value: IJanuaField);
begin
  FPromotedcss := Value;
end;

function TLeague.GetPlayoffcss: IJanuaField;
begin
  Result := FPlayoffcss;
end;

procedure TLeague.SetPlayoffcss(const Value: IJanuaField);
begin
  FPlayoffcss := Value;
end;

function TLeague.GetChampionscss: IJanuaField;
begin
  Result := FChampionscss;
end;

procedure TLeague.SetChampionscss(const Value: IJanuaField);
begin
  FChampionscss := Value;
end;

function TLeague.GetPlayoutcss: IJanuaField;
begin
  Result := FPlayoutcss;
end;

procedure TLeague.SetPlayoutcss(const Value: IJanuaField);
begin
  FPlayoutcss := Value;
end;

function TLeague.GetRelegationcss: IJanuaField;
begin
  Result := FRelegationcss;
end;

procedure TLeague.SetRelegationcss(const Value: IJanuaField);
begin
  FRelegationcss := Value;
end;

function TLeague.GetAllPlayers: IJanuaField;
begin
  Result := FAllPlayers;
end;

procedure TLeague.SetAllPlayers(const Value: IJanuaField);
begin
  FAllPlayers := Value;
end;

function TLeague.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TLeague.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

{ TLeaguess }
constructor TLeagues.Create;
begin
  inherited;
  self.FRecord := TLeaguesFactory.CreateRecord('Leagues');
end;

function TLeagues.GetLeagueId: IJanuaField;
begin
  Result := self.League.LeagueId;
end;

procedure TLeagues.SetLeagueId(const Value: IJanuaField);
begin
  self.League.LeagueId := Value;
end;

function TLeagues.GetLeagueName: IJanuaField;
begin
  Result := self.League.LeagueName;
end;

procedure TLeagues.SetLeagueName(const Value: IJanuaField);
begin
  self.League.LeagueName := Value;
end;

function TLeagues.GetIsoCountryCode: IJanuaField;
begin
  Result := self.League.IsoCountryCode;
end;

procedure TLeagues.SetIsoCountryCode(const Value: IJanuaField);
begin
  self.League.IsoCountryCode := Value;
end;

function TLeagues.GetLeaguePosition: IJanuaField;
begin
  Result := self.League.LeaguePosition;
end;

procedure TLeagues.SetLeaguePosition(const Value: IJanuaField);
begin
  self.League.LeaguePosition := Value;
end;

function TLeagues.GetLeagueCode: IJanuaField;
begin
  Result := self.League.LeagueCode;
end;

procedure TLeagues.SetLeagueCode(const Value: IJanuaField);
begin
  self.League.LeagueCode := Value;
end;

function TLeagues.GetDbSchemaId: IJanuaField;
begin
  Result := self.League.DbSchemaId;
end;

procedure TLeagues.SetDbSchemaId(const Value: IJanuaField);
begin
  self.League.DbSchemaId := Value;
end;

function TLeagues.GetRemoteId: IJanuaField;
begin
  Result := self.League.RemoteId;
end;

procedure TLeagues.SetRemoteId(const Value: IJanuaField);
begin
  self.League.RemoteId := Value;
end;

function TLeagues.GetPromotedcss: IJanuaField;
begin
  Result := self.League.Promotedcss;
end;

procedure TLeagues.SetPromotedcss(const Value: IJanuaField);
begin
  self.League.Promotedcss := Value;
end;

function TLeagues.GetPlayoffcss: IJanuaField;
begin
  Result := self.League.Playoffcss;
end;

procedure TLeagues.SetPlayoffcss(const Value: IJanuaField);
begin
  self.League.Playoffcss := Value;
end;

function TLeagues.GetChampionscss: IJanuaField;
begin
  Result := self.League.Championscss;
end;

procedure TLeagues.SetChampionscss(const Value: IJanuaField);
begin
  self.League.Championscss := Value;
end;

function TLeagues.GetPlayoutcss: IJanuaField;
begin
  Result := self.League.Playoutcss;
end;

procedure TLeagues.SetPlayoutcss(const Value: IJanuaField);
begin
  self.League.Playoutcss := Value;
end;

function TLeagues.GetRelegationcss: IJanuaField;
begin
  Result := self.League.Relegationcss;
end;

procedure TLeagues.SetRelegationcss(const Value: IJanuaField);
begin
  self.League.Relegationcss := Value;
end;

function TLeagues.GetAllPlayers: IJanuaField;
begin
  Result := self.League.AllPlayers;
end;

procedure TLeagues.SetAllPlayers(const Value: IJanuaField);
begin
  self.League.AllPlayers := Value;
end;

function TLeagues.GetJguid: IJanuaField;
begin
  Result := self.League.Jguid;
end;

procedure TLeagues.SetJguid(const Value: IJanuaField);
begin
  self.League.Jguid := Value;
end;

function TLeagues.GetLeagues: ILeague;
begin
  Result := self.FRecord as ILeague;
end;

procedure TLeagues.SetLeagues(const Value: ILeague);
begin
  self.FRecord := Value;
end;

{ TLeaguesFactory }

class function TLeaguesFactory.CreateRecord(const aKey: string): ILeague;
begin
  Result := TLeague.Create;
end;

class function TLeaguesFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ILeagues;
begin
  Result := TLeagues.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
