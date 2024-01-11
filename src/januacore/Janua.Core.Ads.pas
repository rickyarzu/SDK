unit Janua.Core.Ads;

interface

{$I JANUACORE.INC}

uses Janua.Core.Classes, Janua.Core.System, Data.DB,
  Janua.Core.Servers,
  System.SysUtils, System.Classes, Janua.Core.Http;

type
  TJanuaBannerTypes = (jbtSmallFrame, jbtRightColumn, jbtHeader, jbtFooter, jbtManchette);

type
  TJanuaBanner = record
    id: int64;
    url: string;
    targeturl: string;
    key: String;
  private
    FBannerType: TJanuaBannerTypes;
    procedure SetBannerType(val: TJanuaBannerTypes);
  public
    property BannerType: TJanuaBannerTypes read FBannerType write SetBannerType;
  end;

type
  TJanuaBanners = record
    BannersList: array of TJanuaBanner;
    count: integer;
    SelectedBanner: TJanuaBanner;
    Found: boolean;
    Advertisment: string;
    Title: string;
  public
    function ToString(full: boolean = true): string;
    function GetBannerByUrl(aName: string): boolean;
    function GetBannerByID(aID: integer): boolean;
    function ListBanners: TStringList;
    function GetBannerbyIndex(aIndex: integer): boolean;
    procedure Add(newBanner: TJanuaBanner);
    procedure DeleteBanners;
  end;

type
  /// <summary>
  /// Classe base del 'server' Ads serve per selezionare i banner da Pubblicare sul sito
  /// i Banner devono contenere un ID, un url di destinazione ed un url per l'immagine
  /// gli oggetti banner potrebber però contenre anche una immagine.
  /// </summary>
  TJanuaCustomServerAds = class(TJanuaCustomServer)
  private
    FSelectedBanners: TJanuaBanners;
    FStoredBanners: TJanuaBanners;
    procedure SetJanuaWebProfile(const Value: TJanuaCustomRequestParser);
    procedure SetSelectedBanners(const Value: TJanuaBanners);
    procedure SetStoredBanners(const Value: TJanuaBanners);
  strict protected
    function InternalActivate: boolean; override;
  protected
    FJanuaWebProfile: TJanuaCustomRequestParser;
    function GetBannerByID(bID: int64): TJanuaBanner; virtual; abstract;
    function GetBannerInternal: string; virtual; abstract;
    function GetBannerUrlInternal(imgUrl: string): string; virtual; abstract;
  public
    // this gets a banner from database given some coordinates
    function GetSiteBanner(iSite: int64 = 0; bType: TJanuaBannerTypes = jbtSmallFrame): TJanuaBanner; virtual; abstract;
    function PopulateBanner(iSite: int64 = 0): integer;
    // this, instead, returns the url given the image url of a banner......
    function GetBannerUrl(imgUrl: string): string; overload;
    function GetBannerUrl(bID: int64): string; overload;
    function GetBanners(iBanners: integer; iSite: int64 = 0; bType: TJanuaBannerTypes = jbtSmallFrame): boolean;
      virtual; abstract;
    function GetBanner: string;
  published
    property JanuaWebProfile: TJanuaCustomRequestParser read FJanuaWebProfile write SetJanuaWebProfile;
    property SelectedBanners: TJanuaBanners read FSelectedBanners write SetSelectedBanners;
    property StoredBanners: TJanuaBanners read FStoredBanners write SetStoredBanners;
  end;

implementation

{ TJanuaCustomServerAds }

function TJanuaCustomServerAds.GetBannerUrl(imgUrl: string): string;
begin
  Result := GetBannerUrlInternal(imgUrl);
end;

function TJanuaCustomServerAds.GetBanner: string;
begin
  Result := GetBannerInternal;
end;

function TJanuaCustomServerAds.GetBannerUrl(bID: int64): string;
begin
  { TODO : Implementare un Wrapper al DataSource per recuperare un Array di Banner }
end;

function TJanuaCustomServerAds.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited and Assigned(self.FJanuaWebProfile) and self.JanuaWebProfile.Active
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

function TJanuaCustomServerAds.PopulateBanner(iSite: int64): integer;
begin
  Result := 0;
  { TODO :
    Implementare popolamento della lista dei banner e  procedura che ritorni banner per id per sito
  }
end;

procedure TJanuaCustomServerAds.SetJanuaWebProfile(const Value: TJanuaCustomRequestParser);
begin
  FJanuaWebProfile := Value;
end;

procedure TJanuaCustomServerAds.SetSelectedBanners(const Value: TJanuaBanners);
begin
  FSelectedBanners := Value;
end;

procedure TJanuaCustomServerAds.SetStoredBanners(const Value: TJanuaBanners);
begin
  FStoredBanners := Value;
end;

{ TJanuaBanners }

procedure TJanuaBanners.Add(newBanner: TJanuaBanner);
begin
  if not self.GetBannerByID(newBanner.id) then
  begin

  end;
end;

procedure TJanuaBanners.DeleteBanners;
begin
  SetLength(self.BannersList, 0);
  self.count := 0;
end;

function TJanuaBanners.GetBannerByID(aID: integer): boolean;
var
  aBanner: TJanuaBanner;
begin
  Result := false;
  for aBanner in self.BannersList do
    if aBanner.id = aID then
    begin
      Result := true;
      self.SelectedBanner := aBanner;
      Exit;
    end;

end;

function TJanuaBanners.GetBannerbyIndex(aIndex: integer): boolean;
begin
  Result := false;
end;

function TJanuaBanners.GetBannerByUrl(aName: string): boolean;
var
  aBanner: TJanuaBanner;
begin
  Result := false;
  for aBanner in self.BannersList do
    if aBanner.url = aName then
    begin
      Result := true;
      self.SelectedBanner := aBanner;
      Exit;
    end;
end;

function TJanuaBanners.ListBanners: TStringList;
begin
  Result := TStringList.Create;

end;

function TJanuaBanners.ToString(full: boolean): string;
begin
  { TODO : Generale la lista Stringa e Json }
end;

procedure TJanuaBanner.SetBannerType(val: TJanuaBannerTypes);
begin
end;

end.
