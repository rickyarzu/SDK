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
  strict protected
    procedure DestroyDataModule(Force: boolean = false); override;
    procedure CreateDataModule; override;
    procedure AssignDatasets; override;
    function InternalActivate: boolean; override;
    procedure InternalDeactivate; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property dmPgAdsServer: TdmPgAdsServer read DM write SetdmPgAdsServer;
  end;

implementation

uses Janua.Core.Servers;

{ TJanuaServerPgAds }

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

procedure TJanuaServerPgAds.InternalDeactivate;
begin
  DestroyAds(True);
  inherited;
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
    DM.Free;
    DM := nil;
    self.IDM := nil;
  end;
end;

procedure TJanuaServerPgAds.DestroyDataModule(Force: boolean);
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

function TJanuaServerPgAds.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if KeepAlive then
          CreateAds;
        Result := True
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaServerPgAds.SetdmPgAdsServer(const Value: TdmPgAdsServer);
begin
  DM := Value;
end;

end.
