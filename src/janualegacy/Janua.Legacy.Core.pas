unit Janua.Legacy.Core;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes;

Type

  TJanuaisoCountryCode = (jicNone, jicITA, jicGBR, jicUSA, jicFRA, jicPOR, jicESP);

  TJanuaisoLanguageCode = (jilNone, jilITA_ITA, jilENG_ENG, jilFRA_FRA, jilPOR_POR, jilPOR_BRA, jilESP_ESP,
    jilESP_ARG, jilESP_MEX, jilDEU, jilHOL);

  TJanuaisoLanguages = (jilNessuno, jilItaliano_Italia, jilEnglish_England, jilFrancais_France,
    jilEspanol_Espana, jilEspanol_Argentina, jilPortugues_Portugal, jilPortugues_Brazil);

  TJanuaISOCountries = (jicItalia, jicFrance, jicEngland, jicEspana, jicPortugal, jicBrazil, jicArgentina,
    jicRussia, jicWorld);

  TJanuaDocumentPrintType = (jdtSalesInvoice, jdtBillOfLading);

  TJanuaBarcodeType = (jbtEAN13, jbtEAN8);

  {

    1 : FJanuaAnagraphType := jatSchoolCustomer;
    2 : FJanuaAnagraphType := jatSchoolSupplier;
    9 : FJanuaAnagraphType := jatAgent;
    10: FJanuaAnagraphType := jatSchoolWorker;
    11: FJanuaAnagraphType := jatSchoolStudent;
    12: FJanuaAnagraphType := jatSchoolGroup;
    13: FJanuaAnagraphType := jatSchoolTeacher;





    TJanuaAnagraphType = (jatCustomer, jatAgent, jatSupplier, jatUnknown, jatCustom,

    jatMinilink, jatNoProfit, jatMarketCustomer, JatMarketCompany

    , jatMarketWorker, jatSchoolCustomer, jatSchoolSupplier,

    jatSchoolWorker, jatSchoolStudent, jatSchoolGroup,

    jatSchoolTeacher);

  }

  TJanuaISOCountry = class(TJanuaCoreComponent)
  private
    FCountry2Code: string;
    FisoCountry: TJanuaISOCountries;
    FCountry3Code: string;
    function GetCountry2Code: string;
    function GetCountry3Code: string;
    procedure SetCountry2Code(val: string);
    procedure SetCountry3Code(val: string);
    procedure SetisoCountry(const Value: TJanuaISOCountries);
  published
    property Country3Code: string read FCountry3Code write SetCountry3Code;
    property isoCountry: TJanuaISOCountries read FisoCountry write SetisoCountry;
    property Country2Code: string read FCountry2Code write SetCountry2Code;
  end;

  TJanuaIsoLanguage = class(TComponent)
  strict private
  private
    FLanguage: TJanuaisoLanguages;
    FIsoCode: String;
    FLanguageName: WideString;
    FMainCountryCode: TJanuaisoCountryCode;
    FMainCountry: TJanuaISOCountries;
    procedure SetLanguage(const Value: TJanuaisoLanguages);
  public
    destructor Destroy; override;
  published
    property Language: TJanuaisoLanguages read FLanguage write SetLanguage;
    property IsoCode: String read FIsoCode;
    property LanguageName: WideString read FLanguageName;
    property MainCountryCode: TJanuaisoCountryCode read FMainCountryCode;
    property MainCountry: TJanuaISOCountries read FMainCountry;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

function TJanuaISOCountry.GetCountry2Code: string;
begin
  Result := FCountry2Code
end;

procedure TJanuaISOCountry.SetCountry2Code(val: string);
begin
  if val = FCountry2Code then
    Exit;
  FCountry2Code := val;
end;

function TJanuaISOCountry.GetCountry3Code: string;
begin
  Result := FCountry3Code
end;

procedure TJanuaISOCountry.SetCountry3Code(val: string);
begin
  if val = FCountry3Code then
    Exit;
  FCountry3Code := val;
end;

procedure TJanuaISOCountry.SetisoCountry(const Value: TJanuaISOCountries);
begin
  if Value = FisoCountry then
    Exit;
  FisoCountry := Value;
end;

{ TJanuaIsoLanguage }

destructor TJanuaIsoLanguage.Destroy;
begin
  try
    FIsoCode := '';
    FLanguageName := '';
  except
    on e: exception do
    begin
      LogException('Destroy', e, self);
      raise;
    end;
  end;
  inherited;
end;

procedure TJanuaIsoLanguage.SetLanguage(const Value: TJanuaisoLanguages);
begin
  FLanguage := Value;
  case Value of

    jilItaliano_Italia:
      begin
        FIsoCode := 'ITA_ITA';
        FLanguageName := 'Italiano Italia';
        FMainCountryCode := jicITA;
        FMainCountry := jicItalia;

      end;
    jilEnglish_England:
      begin
        FIsoCode := 'ENG_GBR';
        FLanguageName := 'Englis GB';
      end;

    jilFrancais_France:
      begin
        FIsoCode := 'FRA_FRA';
        FLanguageName := 'Français France';
      end;

    jilEspanol_Espana:
      begin
        FIsoCode := 'ESP_ESP';
        FLanguageName := 'Espanol Espana';
      end;

    jilEspanol_Argentina:
      begin
        FIsoCode := 'ESP_ARG';
        FLanguageName := 'Espanol Argentina';
      end;

    jilPortugues_Portugal:
      begin
        FIsoCode := 'POR_POR';
        FLanguageName := 'Portugues Portugal';
      end;

    jilPortugues_Brazil:
      begin
        FIsoCode := 'POR_BRA';
      end;

  end;
end;

end.
