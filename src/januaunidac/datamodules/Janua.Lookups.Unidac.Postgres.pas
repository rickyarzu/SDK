unit Janua.Lookups.Unidac.Postgres;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // Januaproject
  udmPgStorage, Janua.Lookups.Intf, Janua.Lookups.Impl, Janua.Core.Types, Janua.Orm.Types, Janua.Orm.Intf,
  Janua.Unidac.Connection;

type
  /// <summary> Generic Anagraph Module that contains all anagraphs in one specific
  /// schema in database. </summary>
  TdmPgLookupsStorage = class(TdmPgStorage)
    qryCountries: TUniQuery;
    qryCountriesiso_country_code: TWideStringField;
    qryCountriesiso_country_code2: TWideStringField;
    qryCountriescountry_year: TSmallintField;
    qryCountriescountry_name: TWideStringField;
    qryCountriesiso_currency_id: TSmallintField;
    qryCountriescountry_id: TSmallintField;
    qryCountriesiso_country_number: TWideStringField;
    qryCountriesjguid: TGuidField;
    qryCountryCodes: TUniQuery;
    qryCountryCodesiso_country_code: TWideStringField;
    qryCountryCodescountry_id: TSmallintField;
    qryCurrencies: TUniQuery;
    qryCurrenciescurrency_id: TSmallintField;
    qryCurrenciescurrency_code: TWideStringField;
    qryCurrenciescurrency_name: TWideStringField;
    qryHazmat: TUniQuery;
    SmallintField1: TSmallintField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    qryLookup: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

type
  TJanuaUniPgLookups = class(TJanuaCustomLookups, IJanuaLookupFactory)
  public
    function TryGetJanuaDataset(const aGUID: TGUID; const aGroupID: Variant; out aDataset: IJanuaDBDataset)
      : Boolean; override;
    constructor Create; override;
  end;

var
  dmPgLookupsStorage: TdmPgLookupsStorage;

implementation

uses System.StrUtils, Janua.Orm.UniDac, Janua.Application.Framework, Janua.Uni.Virtual;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaUniPgLookups }

constructor TJanuaUniPgLookups.Create;
var
  aBuilder: TStringBuilder;
begin
  inherited;
  aBuilder := TStringBuilder.Create;
  try
    RegisterQueryDef(IjlsVessels, TJanuaQueryDef.Create(TJanuaEntity.ShippingVessels,
      aBuilder.AppendLine
      ('select v.jguid, v.code, v.name, v.vessel_id, upper(v.name || ''-'' || v.name) as search_index')
      .AppendLine(', row_number() over()::integer as pos').AppendLine('from shipping.vessels v')
      .AppendLine('where trim(name) > '''' and name is not null').AppendLine('order by name').ToString));
    aBuilder.Clear;
  finally
    aBuilder.Free;
  end;
end;

function TJanuaUniPgLookups.TryGetJanuaDataset(const aGUID: TGUID; const aGroupID: Variant;
  out aDataset: IJanuaDBDataset): Boolean;
var
  lFDM: TdmPgLookupsStorage;
  lQueryDef: TJanuaQueryDef;
  lParam: TUniParam;
begin
  Result := inherited; // (aGUID, aGroupID, aDataset);
  if not Result and TryGetQueryDef(aGUID, lQueryDef) then
  begin
    lFDM := TdmPgLookupsStorage.Create(nil);
    try
      lFDM.qryLookup.SQL.Clear;
      lFDM.qryLookup.SQL.Text := lQueryDef.SQL;
      lParam := lFDM.qryLookup.FindParam('p_group_id');
      if Assigned(lParam) then
        lParam.Value := aGroupID;
      lFDM.qryLookup.Prepare;
      if lFDM.qryLookup.Prepared then
        lFDM.qryLookup.Open;
      aDataset := TJanuaUniMemTable.CreateWithEntities(lFDM.qryLookup, [lQueryDef.EntityType]);
      Result := Assigned(aDataset);
      if Result then
        TJanuaApplicationFactory.RegisterLookupDataset(aGUID, aGroupID, aDataset);
    finally
      lFDM.Free;
      lFDM := nil;
    end;
  end;
end;

{ TdmPgLookupsStorage }

procedure TdmPgLookupsStorage.RefreshDetails;
begin
  inherited;

end;

end.
