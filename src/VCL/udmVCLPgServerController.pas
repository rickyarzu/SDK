unit udmVCLPgServerController;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, Janua.Core.System, Janua.Core.CustomControls,
  Janua.VCL.Dialogs, Janua.Server.System, VCL.Forms, udmPgAnagraph, udmPostgresCloud,
  Janua.Core.Cloud, Janua.Postgres.Cloud, MemData, Janua.Core.JPublic, Janua.Server.JPublic,
  Janua.Core.Mail, Janua.Core.Ads, Janua.Postgres.Ads, Data.DB, Datasnap.DBClient,
  Janua.Core.University, Janua.Core.Football, Janua.Postgres.Football, Janua.Postgres.Univeristy,
  Janua.Core.Health, Janua.Server.Health, Janua.Core.Users, Janua.Core.Http, Janua.Oracle.Web,
  Janua.Core.Params;

type
  TdmVCLPgServerController = class(TDataModule)
    JanuaOraServerLogs: TJanuaOraServerLogs;
    JanuaAnagDoctor: TJanuaAnagDoctor;
    JanuaServerHealth: TJanuaServerHealth;
    JanuaIsoLanguageCountry: TJanuaIsoLanguageCountry;
    JanuaServerPgUniversity: TJanuaServerPgUniversity;
    JanuaServerPgFootball: TJanuaServerPgFootball;
    JanuaCountrySearch: TCountrySearch;
    JanuaProfile: TJanuaProfile;
    JanuaPostgresCloud: TJanuaPostgresCloud;
    JanuaUniProfile: TJanuaUniProfile;
    cdsRegions: TClientDataSet;
    cdsRegionsregion_id: TSmallintField;
    cdsRegionsregion_name: TWideStringField;
    cdsRegionsiso_region_code: TWideStringField;
    cdsRegionslocal_region_code: TWideStringField;
    cdsRegionscountry_id: TSmallintField;
    cdsRegionstbDistricts: TDataSetField;
    cdsDistricts: TClientDataSet;
    cdsDistrictsdistrict_id: TSmallintField;
    cdsDistrictsregion_id: TSmallintField;
    cdsDistrictsiso_district_code: TWideStringField;
    cdsDistrictsdistrict_name: TWideStringField;
    cdsDistrictslocal_district_code: TWideStringField;
    cdsDistrictsnumberplate_code: TWideStringField;
    cdsDistrictstbTowns: TDataSetField;
    cdsTowns: TClientDataSet;
    cdsTownstown_id: TIntegerField;
    cdsTownstown_name: TWideStringField;
    cdsTownstown_iso_code: TWideStringField;
    cdsTownstown_local_code: TWideStringField;
    cdsTownstown_postal_code: TWideStringField;
    cdsTownsdistrict_id: TSmallintField;
    cdsCountries: TClientDataSet;
    cdsCountriesiso_country_code: TWideStringField;
    cdsCountriesiso_country_code2: TWideStringField;
    cdsCountriescountry_year: TSmallintField;
    cdsCountriescountry_name: TWideStringField;
    cdsCountriesiso_currency_id: TSmallintField;
    cdsCountriescountry_id: TSmallintField;
    cdsCountriesiso_country_number: TWideStringField;
    cdsCountriescountry_key: TWideStringField;
    cdsCountriestbRegions: TDataSetField;
    JanuaServerPgAds: TJanuaServerPgAds;
    JanuaISOCountry: TJanuaISOCountry;
    JanuaFiscalCode: TJanuaFiscalCode;
    JanuaVatCode: TJanuaVatCode;
    JanuaIBAN: TJanuaIBAN;
    JanuaBarcode: TJanuaBarcode;
    JanuaMailSender: TJanuaMailSender;
    JanuaServerSystem: TJanuaServerSystem;
    JanuaServerJPublic: TJanuaServerJPublic;
    JanuaOS: TJanuaOS;
    JanuaApplicationProfile: TJanuaApplicationProfile;
    JanuaCoreLogger: TJanuaCoreLogger;
    JanuaDialogLogin: TJanuaDialogLogin;
    JanuaDialog: TJanuaDialog;
  private
    FLoginAttempts: smallint;
    FMaxLoginAttempts: smallint;
    procedure SetLoginAttempts(const Value: smallint);
    procedure SetMaxLoginAttempts(const Value: smallint);
    { Private declarations }
  public
    { Public declarations }
    function TestFootball: boolean;
    function TestJanuaOS: boolean;
    function TestJanuaAds: boolean;
    function TestJanuaIsoLanguageCountry: boolean;
    function Login: boolean;
  published
    property MaxLoginAttempts: smallint read FMaxLoginAttempts write SetMaxLoginAttempts;
    property LoginAttempts: smallint read FLoginAttempts write SetLoginAttempts;
  end;

var
  dmVCLPgServerController: TdmVCLPgServerController;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TdmVCLPgServerController }

function TdmVCLPgServerController.Login: boolean;
begin
  Inc(FLoginAttempts);
  self.JanuaServerSystem.LoginDialog := self.JanuaDialogLogin;
  self.JanuaServerSystem.LoginPrompt := True;
  // il numero di Tentativi è gestito direttamente dentro alla procedura di Login.
  Result := self.JanuaServerSystem.Login;
  // if not Result and (self.FLoginAttempts <= self.FMaxLoginAttempts) then
  // Result := self.Login;

end;

procedure TdmVCLPgServerController.SetLoginAttempts(const Value: smallint);
begin
  FLoginAttempts := Value;
end;

procedure TdmVCLPgServerController.SetMaxLoginAttempts(const Value: smallint);
begin
  FMaxLoginAttempts := Value;
end;

function TdmVCLPgServerController.TestFootball: boolean;
var
  aSeasonID, aChampionship: integer;
begin
  Result := self.TestJanuaOS and self.TestJanuaIsoLanguageCountry and self.TestJanuaAds;
  if Result then
  begin
    Result := JanuaServerPgFootball.Activate;
    if not Result then
    begin
       self.JanuaDialog.JShowError('Attenzione Errore di Apertura JanuaServerPgFootball ' +
       self.JanuaServerPgFootball.LastErrorMessage, self.JanuaServerPgFootball.Log.Text, '');
      Exit;
    end;
  end;
end;

function TdmVCLPgServerController.TestJanuaAds: boolean;
begin
  Result := JanuaServerPgAds.Activate;
  if not Result then
  begin
    self.JanuaDialog.JShowError('Attenzione Errore di Apertura JanuaServerPgAds ' +
      self.JanuaServerPgAds.LastErrorMessage, self.JanuaServerPgAds.Log.Text, '');
  end;
end;

function TdmVCLPgServerController.TestJanuaIsoLanguageCountry: boolean;
begin
   Result := JanuaIsoLanguageCountry.Activate;
  if not Result then
  begin
    self.JanuaDialog.JShowError('Attenzione Errore di Apertura JanuaIsoLanguageCountry ' +
      self.JanuaIsoLanguageCountry.LastErrorMessage, self.JanuaOS.Log.Text, '');
  end;
end;

function TdmVCLPgServerController.TestJanuaOS: boolean;
begin
  Result := JanuaOS.Activate;
  if not Result then
  begin
    self.JanuaDialog.JShowError('Attenzione Errore di Apertura JanuaOS ' +
      self.JanuaOS.LastErrorMessage, self.JanuaOS.Log.Text, '');
    Exit;
  end;
end;

end.
