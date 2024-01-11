unit udmPgAdsServer;

interface

uses
  System.SysUtils, System.Variants,
  System.Classes,
  udmJanuaPostgresModel, Data.DB, Uni, MemDS, DBAccess, Janua.Core.Ads,
  Janua.Core.Classes,Datasnap.Provider, Datasnap.DBClient, UniProvider,
  PostgreSQLUniProvider;

type
  TdmPgAdsServer = class(TdmJanuaPostgresModel)
    spAds: TUniStoredProc;
    spBanner: TUniStoredProc;
    qryBanners: TUniQuery;
    qryBannersnumber: TSmallintField;
    qryBannersimage_url: TWideStringField;
    qryBannerstarget_url: TWideStringField;
    qryBannersvisions: TLargeintField;
    qryBannersclicks: TLargeintField;
  private
    FipNumber: string;
    FUserAgent: string;
    FStoredBanners: TJanuaBanners;
    FSelectedBanners: TJanuaBanners;
    procedure SetipNumber(const Value: string);
    procedure SetUserAgent(const Value: string);
    procedure SetStoredBanners(const Value: TJanuaBanners);
    procedure SetSelectedBanners(const Value: TJanuaBanners);
    { Private declarations }
  public
    { Public declarations }
    function GetBanner: string;
    function GetBannerUrl(imgUrl: string): string;
    function SetBanners(iSite, iBanners: Integer): boolean;
    function LoadBannersList(iSite: Integer): Integer;
  published
    property ipNumber: string read FipNumber write SetipNumber;
    property UserAgent: string read FUserAgent write SetUserAgent;
    property StoredBanners: TJanuaBanners read FStoredBanners write SetStoredBanners;
    property SelectedBanners: TJanuaBanners read FSelectedBanners write SetSelectedBanners;
  end;

var
  dmPgAdsServer: TdmPgAdsServer;

implementation

{$R *.dfm}
{ TdmPgAdsServer }

function TdmPgAdsServer.GetBanner: string;
begin
  self.spBanner.ExecProc;
  Result := self.spBanner.ParamByName('Result').AsWideString;
end;

function TdmPgAdsServer.GetBannerUrl(imgUrl: string): string;
begin
  self.spAds.ParamByName('urlbanner').AsString := imgUrl;
  self.spAds.ExecProc;
  Result := self.spAds.ParamByName('result').AsWideString;
end;

function TdmPgAdsServer.LoadBannersList(iSite: Integer): Integer;
var
  aBanner: TJanuaBanner;
begin
  ServerFunctions.OpenDataset(qryBanners);
  Result := self.qryBanners.RecordCount;
  while not self.qryBanners.Eof do
  begin
    aBanner.id := self.qryBannersnumber.AsInteger;
    { TODO : Implementare caricamento della lista dei Banners }
  end;
end;

function TdmPgAdsServer.SetBanners(iSite, iBanners: Integer): boolean;
begin
  { TODO : Implementare caricamento della lista dei Banners in Pagina }
  Result := False;
end;

procedure TdmPgAdsServer.SetipNumber(const Value: string);
begin
  FipNumber := Value;
  spBanner.ParamByName('ip').Value := self.FipNumber;
end;

procedure TdmPgAdsServer.SetSelectedBanners(const Value: TJanuaBanners);
begin
  FSelectedBanners := Value;
end;

procedure TdmPgAdsServer.SetStoredBanners(const Value: TJanuaBanners);
begin
  FStoredBanners := Value;
end;

procedure TdmPgAdsServer.SetUserAgent(const Value: string);
begin
  FUserAgent := Value;
  spBanner.ParamByName('headers').Value := self.FUserAgent;
end;

end.
