unit udmPublic;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Uni, MemDS, DBAccess, UniProvider, PostgreSQLUniProvider,
  Janua.Core.Jpublic,
  Datasnap.DBClient, Janua.Core.System,
  Janua.Core.Functions, Datasnap.Provider, Janua.Core.Types, Janua.Core.Entities,
  udmJanuaPostgresModel, Janua.Core.Classes, Janua.Core.Exceptions;

type
  TdmPublic = class(TdmJanuaPostgresModel)
    dsRegions: TDataSource;
    tbDistricts: TUniTable;
    tbDistrictsdistrict_id: TSmallintField;
    tbDistrictsregion_id: TSmallintField;
    tbDistrictsiso_district_code: TWideStringField;
    tbDistrictsdistrict_name: TWideStringField;
    tbDistrictslocal_district_code: TWideStringField;
    tbDistrictsnumberplate_code: TWideStringField;
    dsDistricts: TDataSource;
    tbTowns: TUniTable;
    tbTownstown_id: TIntegerField;
    tbTownstown_name: TWideStringField;
    tbTownstown_iso_code: TWideStringField;
    tbTownstown_local_code: TWideStringField;
    tbTownstown_postal_code: TWideStringField;
    tbTownsdistrict_id: TSmallintField;
    qryDistricts: TUniQuery;
    qryDistrictsdistrict_id: TSmallintField;
    qryDistrictsregion_id: TSmallintField;
    qryDistrictsiso_district_code: TWideStringField;
    qryDistrictsdistrict_name: TWideStringField;
    qryDistrictslocal_district_code: TWideStringField;
    qryDistrictsnumberplate_code: TWideStringField;
    dsTowns: TDataSource;
    qryCountries: TUniQuery;
    qryCountriesiso_country_code: TWideStringField;
    qryCountriesiso_country_code2: TWideStringField;
    qryCountriescountry_year: TSmallintField;
    qryCountriescountry_name: TWideStringField;
    qryCountriesiso_currency_id: TSmallintField;
    qryCountriescountry_id: TSmallintField;
    qryCountriesiso_country_number: TWideStringField;
    qryCountriescountry_key: TWideStringField;
    dspCountries: TDataSetProvider;
    tbRegions: TUniQuery;
    tbRegionsregion_id: TSmallintField;
    tbRegionsregion_name: TWideStringField;
    tbRegionsiso_region_code: TWideStringField;
    tbRegionslocal_region_code: TWideStringField;
    tbRegionscountry_id: TSmallintField;
    qryLanguages: TUniQuery;
    qryCultures: TUniQuery;
    qryCulturesiso_country_code: TWideStringField;
    qryCulturesiso_language_code: TWideStringField;
    qryCulturescountry_id: TSmallintField;
    qryCulturesiso_culture_code: TWideStringField;
    qryCultureslanguage_id: TSmallintField;
    qryLanguagesiso_language_code: TWideStringField;
    qryLanguagesiso_language_code2: TWideStringField;
    qryLanguageslanguage_name: TWideStringField;
    qryLanguageslanguage_id: TSmallintField;
    qryLkpCountryName: TUniQuery;
    qryLkpCountryNamecountry_name: TWideStringField;
    qryLkpCountryNamecountry_id: TSmallintField;
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
    dsCountries: TDataSource;
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
    dsLkpTowns: TUniDataSource;
    qryLkpTowns: TUniQuery;
    qryLkpTownstown_id: TIntegerField;
    qryLkpTownstown_name: TWideStringField;
    qryLkpTownstown_iso_code: TWideStringField;
    qryLkpTownstown_local_code: TWideStringField;
    qryLkpTownstown_postal_code: TWideStringField;
    qryLkpTownsdistrict_id: TSmallintField;
    qryLkpTownsregion_id: TSmallintField;
    qryLkpTownsiso_district_code: TWideStringField;
    qryLkpTownsdistrict_name: TWideStringField;
    qryLkpTownslocal_district_code: TWideStringField;
    qryLkpTownsnumberplate_code: TWideStringField;
    procedure tbRegionsAfterOpen(DataSet: TDataSet);
    procedure tbRegionsAfterClose(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject); override;
  private
    FListaRegioni: TStringList;
    FListaProvince: TStringList;
    FCountry: TCountry;
    procedure SetRegionPostgres;
    procedure SetRegionCache;
    { Private declarations }
  public
    { Public declarations }
    function GetAllRegionsArray(iCountry_id: smallint): TArray<TRegion>;
    function GetAllRegionsDataset(iCountry_id: smallint): TClientDataSet;
    function FindDistrictByName(sDistrictName: string): TDistrict;
    function FindDistrinctByID(rID, sID: integer): TDistrict;
    procedure SetCountry(id: smallint);
    procedure SetCountryByName(name: string);
    procedure SetCountryByCode(code: string);
    property Country: TCountry read FCountry;
    procedure OpenLKPTowns; // opens the towns Lookup for faster Search
  end;

var
  dmPublic: TdmPublic;

implementation

{$R *.dfm}
{ TdmPublic }

procedure TdmPublic.DataModuleCreate(Sender: TObject);
begin
  /// faremo qualcosa  ....
  inherited;
  try
    self.WriteLog('TdmPublic.DataModuleCreate');
  except
    on e: exception do
    begin
      self.WriteError('TdmPublic.DataModuleCreate: Errore:', e);
    end;

  end;
end;

function TdmPublic.FindDistrictByName(sDistrictName: string): TDistrict;
begin

end;

function TdmPublic.FindDistrinctByID(rID, sID: integer): TDistrict;
begin
  /// idemm ......
  ///
end;

function TdmPublic.GetAllRegionsArray(iCountry_id: smallint): TArray<TRegion>;
var
  i: integer;
begin
  self.PgErgoConnection.Connect;
  ServerFunctions.OpenDataset(self.tbRegions);
  self.tbRegions.Last;
  self.tbRegions.First;
  SetLength(result, self.tbRegions.RecordCount);
  i := 0;
  while not self.tbRegions.Eof do
  begin
    result[i].Region.id := self.tbRegionsregion_id.AsInteger;
    result[i].Region.name := self.tbRegionsregion_name.AsWideString;
  end;

  self.PgErgoConnection.Close;
end;

function TdmPublic.GetAllRegionsDataset(iCountry_id: smallint): TClientDataSet;
begin
  { TODO -oRiccardo -cSystem : Implementare funzione TdmPublic.GetAllRegionsDataset }
  Result := nil;
end;

procedure TdmPublic.OpenLKPTowns;
begin
  self.ServerFunctions.OpenDataset(qryLkpTowns);
end;

procedure TdmPublic.SetRegionCache;
var
  i, j, k: integer;
begin
  SetLength(FCountry.Regions, self.cdsRegions.RecordCount);
  self.WriteLog('TdmPublic.SetRegionCache: Inizio');
  // self.WriteLog('SetLength(FCountry.Regions. ' + self.cdsRegions.RecordCount.ToString());
  self.cdsRegions.First;
  i := 0;
  while not self.cdsRegions.Eof do
  begin
    FCountry.Regions[i].Region.id := self.cdsRegionsregion_id.AsInteger;
    FCountry.Regions[i].Region.index := i;
    FCountry.Regions[i].Region.name := self.cdsRegionsregion_name.AsString;
    self.ServerFunctions.OpenDataset(cdsDistricts);
    self.cdsDistricts.Last;
    SetLength(FCountry.Regions[i].Districts, self.cdsDistricts.RecordCount);
    // self.WriteLog('SetLength(FCountry.Regions.Districts ' + self.cdsDistricts.RecordCount.ToString());
    cdsDistricts.First;
    j := 0;
    while not cdsDistricts.Eof do
    begin
      FCountry.Regions[i].Districts[j].District.name := self.cdsDistrictsdistrict_name.AsString;
      FCountry.Regions[i].Districts[j].District.code := self.cdsDistrictsiso_district_code.AsString;
      FCountry.Regions[i].Districts[j].District.id := self.cdsDistrictsdistrict_id.AsInteger;
      self.ServerFunctions.OpenDataset(qryTowns);
      self.qryTowns.Last;
      self.qryTowns.First;
      SetLength(FCountry.Regions[i].Districts[j].Towns, self.qryTowns.RecordCount);
      // self.WriteLog('SetLength(FCountry.Regions.Districts.cdsTowns ' + self.cdsTowns.RecordCount.ToString());
      k := 0;
      while not qryTowns.Eof do
      begin
        FCountry.Regions[i].Districts[j].Towns[k].id := self.qryTownstown_id.AsInteger;
        FCountry.Regions[i].Districts[j].Towns[k].name := self.qryTownstown_name.AsString;
        FCountry.Regions[i].Districts[j].Towns[k].code := self.qryTownstown_local_code.AsString;
        FCountry.Regions[i].Districts[j].Towns[k].postalcode := self.qryTownstown_postal_code.AsString;
        FCountry.Regions[i].Districts[j].Towns[k].isocode := self.qryTownstown_iso_code.AsString;
        inc(k);
        self.qryTowns.Next;
      end;
      cdsDistricts.Next;
      inc(j);
    end;
    self.cdsRegions.Next;
    inc(i);
  end;
  self.WriteLog('TdmPublic.SetRegionCache: Fine');
end;

procedure TdmPublic.SetRegionPostgres;
var
  i, j, k: integer;
begin
  ServerFunctions.OpenDataset(self.tbRegions);
  SetLength(FCountry.Regions, self.tbRegions.RecordCount);
  // self.WriteLog('SetLength(FCountry.Regions. ' + self.tbRegions.RecordCount.ToString());
  self.tbRegions.First;
  i := 0;
  while not self.tbRegions.Eof do
  begin
    FCountry.Regions[i].Region.id := self.tbRegionsregion_id.AsInteger;
    FCountry.Regions[i].Region.index := i;
    FCountry.Regions[i].Region.name := self.tbRegionsregion_name.AsString;
    self.ServerFunctions.OpenDataset(tbDistricts);
    self.tbDistricts.Last;
    SetLength(FCountry.Regions[i].Districts, self.tbDistricts.RecordCount);
    // self.WriteLog('SetLength(FCountry.Regions.Districts ' + self.tbDistricts.RecordCount.ToString());
    tbDistricts.First;
    j := 0;
    while not tbDistricts.Eof do
    begin
      FCountry.Regions[i].Districts[j].District.name := self.tbDistrictsdistrict_name.AsString;
      FCountry.Regions[i].Districts[j].District.code := self.qryDistrictsiso_district_code.AsString;
      FCountry.Regions[i].Districts[j].District.id := self.qryDistrictsdistrict_id.AsInteger;
      self.ServerFunctions.OpenDataset(tbTowns);
      self.tbTowns.Last;
      self.tbTowns.First;
      SetLength(FCountry.Regions[i].Districts[j].Towns, self.tbTowns.RecordCount);
      // self.WriteLog('SetLength(FCountry.Regions.Districts.tbTowns ' + self.tbTowns.RecordCount.ToString());
      k := 0;
      while not tbTowns.Eof do
      begin
        FCountry.Regions[i].Districts[j].Towns[k].id := self.tbTownstown_id.AsInteger;
        FCountry.Regions[i].Districts[j].Towns[k].name := self.tbTownstown_name.AsString;
        FCountry.Regions[i].Districts[j].Towns[k].code := self.tbTownstown_local_code.AsString;
        FCountry.Regions[i].Districts[j].Towns[k].postalcode := self.tbTownstown_postal_code.AsString;
        FCountry.Regions[i].Districts[j].Towns[k].isocode := self.tbTownstown_iso_code.AsString;
        inc(k);
        self.tbTowns.Next;
      end;
      tbDistricts.Next;
      inc(j);
    end;
    self.tbRegions.Next;
    inc(i);
  end;
end;

procedure TdmPublic.SetCountry(id: smallint);
begin
  self.WriteLog('TdmPublic.SetCountry: ' + id.ToString());

  if self.cdsCountries.Locate('country_id', id, []) then
  begin
    self.FCountry.Country.id := id;
    self.FCountry.Country.name := cdsCountriescountry_name.AsString;
    self.FCountry.Country.code := cdsCountriesiso_country_code.AsString;
    self.FCountry.Country.Code2 := cdsCountriesiso_country_code2.AsString;
    self.FCountry.Indent := '';
    self.SetRegionCache;
  end
  else if ServerFunctions.GetCountryByID(id, self.qryCountries) then
  begin
    self.FCountry.Country.id := id;
    self.FCountry.Country.name := qryCountriescountry_name.AsString;
    self.FCountry.Country.code := qryCountriesiso_country_code.AsString;
    self.FCountry.Country.Code2 := qryCountriesiso_country_code2.AsString;
    self.FCountry.Indent := '';
    self.SetRegionPostgres;
  end;

  self.WriteLog('TdmPublic.SetCountry: Terminato correttamente ... 1');
end;

procedure TdmPublic.SetCountryByCode(code: string);
begin
  self.SetCountry(ServerFunctions.GetCountryByCode(code, self.qryCountries));
end;

procedure TdmPublic.SetCountryByName(name: string);
begin
  self.SetCountry(ServerFunctions.GetCountryByName(name, self.qryCountries));
end;

procedure TdmPublic.tbRegionsAfterClose(DataSet: TDataSet);
begin
  self.tbDistricts.Close;
  self.tbTowns.Close;
end;

procedure TdmPublic.tbRegionsAfterOpen(DataSet: TDataSet);
begin
  self.ServerFunctions.OpenDataset(tbDistricts);
  self.ServerFunctions.OpenDataset(tbTowns);
end;

end.
