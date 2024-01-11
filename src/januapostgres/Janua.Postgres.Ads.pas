unit Janua.Postgres.Ads;

interface

uses Janua.Core.Classes, Janua.Core.System, MemData, System.Classes,
  System.IOUtils,
  System.SysUtils, udmPgAdsServer, Janua.Core.Functions, Janua.Core.Ads;

type
  TJanuaServerPgAds = class(TJanuaCustomServerAds)
  private
    DM: TdmPgAdsServer;
    procedure CreateAds;
    procedure DestroyAds(Force: boolean = false);
    procedure SetdmPgAdsServer(const Value: TdmPgAdsServer);
  protected
    function GetBannerByID(bID: int64): TJanuaBanner; override;
    function GetBannerInternal: string; override;
    function GetBannerUrlInternal(imgUrl: string): string; override;
  protected
    procedure DestroyDataModule(Force: Boolean = false); override;
    procedure CreateDataModule; override;
    procedure AssignDatasets; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Activate: boolean; override;
    procedure Deactivate; override;
  published
    property dmPgAdsServer: TdmPgAdsServer read DM write SetdmPgAdsServer;
  end;

implementation

{ TJanuaPostgresCloud }

function TJanuaServerPgAds.Activate: boolean;
begin
  Result := inherited;
  if Result and self.KeepAlive then
    CreateAds;
end;

procedure TJanuaServerPgAds.AssignDatasets;
begin
  inherited;

end;

constructor TJanuaServerPgAds.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TJanuaServerPgAds.CreateAds;
begin
  if not Assigned(DM) then
    DM := TdmPgAdsServer.Create(self);
  self.IDM := DM;
  DM.TestConnect
end;

procedure TJanuaServerPgAds.CreateDataModule;
begin
  inherited;
  self.CreateAds;
end;

procedure TJanuaServerPgAds.Deactivate;
begin
  inherited;
  DestroyAds(True);
end;

destructor TJanuaServerPgAds.Destroy;
begin
  DestroyAds(True);
  inherited;
end;

procedure TJanuaServerPgAds.DestroyAds(Force: boolean = false);
begin
  if (not(self.KeepAlive) or Force) and Assigned(DM) then
  begin
    DM.DisposeOf;
    DM := nil;
    self.IDM := nil;
  end;
end;

procedure TJanuaServerPgAds.DestroyDataModule(Force: Boolean);
begin
  DestroyAds(Force);
  inherited;

end;

function TJanuaServerPgAds.GetBannerByID(bID: int64): TJanuaBanner;
begin
  { TODO : Funzione da Implementare forse nella classe genitore }
end;

function TJanuaServerPgAds.GetBannerInternal: string;
begin
  CreateAds;
  try
    if Assigned(self.FJanuaWebProfile) then
    begin
      DM.ipNumber := FJanuaWebProfile.RequestHandler.IPAddress;
      DM.UserAgent := self.FJanuaWebProfile.RequestHandler.UserAgent;
    end;

    Result := self.DM.GetBanner;
  finally
    self.DestroyAds;
  end;
end;

function TJanuaServerPgAds.GetBannerUrlInternal(imgUrl: string): string;
begin
  CreateAds;
  try
    Result := self.DM.GetBannerUrl(imgUrl);
  finally
    self.DestroyAds;
  end;
end;

procedure TJanuaServerPgAds.SetdmPgAdsServer(const Value: TdmPgAdsServer);
begin
  DM := Value;
end;

end.
