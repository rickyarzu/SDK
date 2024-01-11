unit Janua.Anagraph.Types;

interface

{$I JANUACORE.INC}

uses System.JSON, Data.DB,
{$IF Defined(WEBBROKER)}
  Web.HttpApp,
{$ENDIF}
  // System

  Janua.Core.Types, System.SysUtils, Janua.Core.Entities;

type
  TJanuaAnagraphCategory = record
    ID: smallint;
    ImageID: smallint;
    Name: string;
    Code: string;
    MasterID: smallint;
    MasterImageID: smallint;
  public
    procedure LoadFromDataset(aDataset: TDataset);
  end;

type
  TJanuaAnagraphRecord = record
    anagraph_id: integer;
    MainCategory: TJanuaAnagraphCategory;
    id64: string;
    Title: string;
    FirstName: string;
    SecondName: string;
    LastName: string;
    Notes: string;
    Address: TJanuaRecordAddress;
    an_code: string;
    an_vat_numeric: string;
    EMail: string;
    an_web: string;
    an_contact_id: integer;
    an_bank_account: string;
    an_payment_des: string;
    an_discount: Real;
    an_distance: integer;
    an_distance_mesunit: integer;
    Gender: TJanuaGender;
    an_cod_comune: string;
    an_cod_provincia: string;
    an_credit_line: Extended;
    an_currency_id: integer;
    an_cat_id: integer;
    an_notes2: string;
    an_notes3: string;
    an_edi: boolean;
    an_privacy: boolean;
    an_office_id: integer;
    an_cod_prov_rif: string;
    an_data_fido: TDateTime;
    an_area_id: integer;
    an_agent_id: integer;
    an_area_code: string;
    an_zone_id: string;
    an_documents: integer;
    an_last_date: TDateTime;
    an_birthdate: TDateTime;
    an_birthplace: string;
    an_birthplacecode: string;
    an_extra_ue_flag: boolean;
    an_personal_fiscal_code: string;
    an_privacy_print: integer;
    an_sms: boolean;
    an_vat_purcentage: integer;
    an_status: integer;
    an_ownsite: boolean;
    an_insurance_id: Int64;
    an_anagraphs_anagraph_id: integer;
    an_main_language_code: string;
    an_main_culture_code: string;
    FiscalCode: string;
    an_main_group_id: integer;
    an_image_id: Int64;
    distance: Extended;
  private
    procedure SetLatitude(const Value: Double);
    procedure SetLongitude(const Value: Double);
    function GetLatitude: Double;
    function GetLongitude: Double;
  public
    function FullAddress: string;
    Constructor Create(aDataset: TDataset); overload;
    Constructor Create(aID: integer); overload;
    procedure LoadFromDataset(aDataset: TDataset; const CheckFields: boolean = False);
    function AsHtml(aTemplate: string; Javascript: boolean): string;
    function AsJsonObject: TJsonObject;
    function AsJson: string;
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJson: TJsonObject);
    procedure Clear;
    property Latitude: Double read GetLatitude write SetLatitude;
    property longitude: Double read GetLongitude write SetLongitude;
{$IF Defined(WEBBROKER)}
    procedure LoadFromHttpParams(aRequest: TWebRequest);
    procedure LoadFromPersonHttpParams(aRequest: TWebRequest);
{$ENDIF}
  end;

type
  TJanuaAnagraphs = record
    Items: array of TJanuaAnagraphRecord;
    SecondLineChar: string;
    TemplateHeader: string;
    TemplateRow: string;
    SelectedItem: TJanuaAnagraphRecord;
    function GetAsJsonObject: TJsonObject;
  public
    function FullAddress: string;
    function FindItemByFirstName(aName: string): boolean;
    function FindItemByLastName(aName: string): boolean;
    function FindItemByID(aID: integer): boolean;
    function count: integer;
    procedure Remove(aAnagraph: TJanuaAnagraphRecord); overload;
    procedure Add(aAnagraph: TJanuaAnagraphRecord); overload;
    procedure Add(aObject: TJsonObject); overload;
    procedure Clear;
    function AsHtml(aTemplateHeader, aTemplateRow: string; bJavascript: boolean): string; overload;
    function AsHtml(bJavascript: boolean): string; overload;
    function AsJson: string;
    procedure LoadFromDataset(aDataset: TDataset; aLimit: integer = -1);
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJson: TJsonObject);
  public
    property AsJsonObject: TJsonObject read GetAsJsonObject write LoadFromJsonObject;
{$IF Defined(WEBBROKER)}
  public
    procedure AddFromHttpParams(aRequest: TWebRequest);
    procedure Add(aRequest: TWebRequest); overload;
{$ENDIF}
  end;

implementation

uses
  System.Classes, Janua.Core.functions, Janua.Core.JSON;

{ TJanuaAnagraphRecord }

constructor TJanuaAnagraphRecord.Create(aDataset: TDataset);
begin
  self.Create(0);
  self.LoadFromDataset(aDataset);
end;

function TJanuaAnagraphRecord.AsHtml(aTemplate: string; Javascript: boolean): string;
begin
  Result := aTemplate;
  HtmlReplace(Result, 'anagraph_id', anagraph_id);
  HtmlReplace(Result, 'an_name', FirstName);
  HtmlReplace(Result, 'an_second_name', SecondName);
  HtmlReplace(Result, 'an_last_name', LastName);
  HtmlReplace(Result, 'an_address', self.Address.Address);
  HtmlReplace(Result, 'an_town', self.Address.Town);
  HtmlReplace(Result, 'an_phone', self.Address.Phone);
  HtmlReplace(Result, 'an_postal_code', self.Address.postalcode);
  HtmlReplace(Result, 'an_iso_country_code', self.Address.ISOCountryCode);
  HtmlReplace(Result, 'an_phone2', self.Address.WorkPhone);
  HtmlReplace(Result, 'an_fax', self.Address.FaxNumber);
  HtmlReplace(Result, 'an_vat_numeric', an_vat_numeric);
  HtmlReplace(Result, 'an_fax', self.Address.FaxNumber);
  HtmlReplace(Result, 'an_cellular', self.Address.CellularPhone);
  HtmlReplace(Result, 'an_email', EMail);
  HtmlReplace(Result, 'an_web', an_web);
  if Javascript then
  begin
    JavascriptReplace(Result, 'longitude', longitude);
    JavascriptReplace(Result, 'latitude', Latitude);
    JavascriptReplace(Result, 'distance', distance);
  end
  else
  begin
    HtmlReplace(Result, 'longitude', longitude);
    HtmlReplace(Result, 'latitude', Latitude);
    HtmlReplace(Result, 'distance', distance);
  end;
  // BirthPlace and BirthPlace Code added for Italian Fiscal Code generation ...........................
  HtmlReplace(Result, 'an_birthplace', an_birthplace);
  HtmlReplace(Result, 'an_birthplace_code', an_birthplacecode);
end;

function TJanuaAnagraphRecord.AsJson: string;
var
  lJson: TJsonObject;
begin
  lJson := AsJsonObject;
  try
    Result := lJson.ToJSON
  finally
    lJson.Free
  end;
end;

function TJanuaAnagraphRecord.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'anagraph_id', anagraph_id);
  Janua.Core.JSON.JsonPair(Result, 'an_title', Title);
  Janua.Core.JSON.JsonPair(Result, 'an_name', FirstName);
  Janua.Core.JSON.JsonPair(Result, 'an_second_name', SecondName);
  Janua.Core.JSON.JsonPair(Result, 'an_last_name', LastName);
  Janua.Core.JSON.JsonPair(Result, 'an_notes', Notes);

  Janua.Core.JSON.JsonPair(Result, 'address', self.Address.AsJsonObject);

  // ***** legacy code for compatiblity need to be replaced ************************************************************
  Janua.Core.JSON.JsonPair(Result, 'an_address', Address.Address);
  Janua.Core.JSON.JsonPair(Result, 'an_address_number', Address.Number);
  Janua.Core.JSON.JsonPair(Result, 'an_town', Address.Town);
  Janua.Core.JSON.JsonPair(Result, 'an_postal_code', Address.postalcode);
  Janua.Core.JSON.JsonPair(Result, 'an_iso_country_code', Address.ISOCountryCode);
  Janua.Core.JSON.JsonPair(Result, 'an_state_province', Address.StateProvince);
  Janua.Core.JSON.JsonPair(Result, 'an_fax', Address.FaxNumber);
  Janua.Core.JSON.JsonPair(Result, 'an_cellular', Address.CellularPhone);
  Janua.Core.JSON.JsonPair(Result, 'an_phone', Address.Phone);
  Janua.Core.JSON.JsonPair(Result, 'an_phone2', Address.WorkPhone);
  Janua.Core.JSON.JsonPair(Result, 'an_address_email', Address.AddressMail);

  // *******************************************************************************************************************
  Janua.Core.JSON.JsonPair(Result, 'address', self.Address.AsJsonObject);
  Janua.Core.JSON.JsonPair(Result, 'an_email', EMail);
  Janua.Core.JSON.JsonPair(Result, 'an_code', an_code);
  Janua.Core.JSON.JsonPair(Result, 'an_vat_numeric', an_vat_numeric);
  Janua.Core.JSON.JsonPair(Result, 'an_web', an_web);
  Janua.Core.JSON.JsonPair(Result, 'an_bank_account', an_bank_account);
  Janua.Core.JSON.JsonPair(Result, 'an_payment_des', an_payment_des);
  Janua.Core.JSON.JsonPair(Result, 'an_distance', an_distance);
  Janua.Core.JSON.JsonPair(Result, 'an_sex', Gender.GenderCode);
  Janua.Core.JSON.JsonPair(Result, 'latitude', Latitude);
  Janua.Core.JSON.JsonPair(Result, 'longitude', longitude);
  Janua.Core.JSON.JsonPair(Result, 'distance', distance);
  Janua.Core.JSON.JsonPair(Result, 'an_birthplace', an_birthplace);
  Janua.Core.JSON.JsonPair(Result, 'an_birthplace_code', an_birthplacecode);
end;

procedure TJanuaAnagraphRecord.Clear;
begin
  self := Default (TJanuaAnagraphRecord);
  anagraph_id := 0;
  Title := '';
  FirstName := '';
  SecondName := '';
  LastName := '';
  Notes := '';
  self.Address.Clear;
  an_code := '';
  an_vat_numeric := '';
  EMail := '';
  an_web := '';
  an_contact_id := 0;
  an_bank_account := '';
  an_payment_des := '';
  an_discount := 0.0;
  an_distance := 0;
  an_distance_mesunit := 0;
  an_cod_comune := '';
  an_cod_provincia := '';
  an_credit_line := 0.0;
  an_currency_id := 0;
  an_cat_id := 0;
  an_notes2 := '';
  an_notes3 := '';
  an_edi := False;
  an_privacy := False;
  an_office_id := 0;
  an_cod_prov_rif := '';
  an_data_fido := 0.0;
  an_area_id := 0;
  an_agent_id := 0;
  an_area_code := '';
  an_zone_id := '';
  an_documents := 0;
  an_last_date := 0.0;
  an_birthdate := 0.0;
  an_extra_ue_flag := False;
  an_personal_fiscal_code := '';
  an_privacy_print := 0;
  an_sms := False;
  an_vat_purcentage := 0;
  an_status := 0;
  an_ownsite := False;
  an_insurance_id := 0;
  an_anagraphs_anagraph_id := 0;
  an_main_language_code := '';
  an_main_culture_code := '';
  FiscalCode := '';
  an_main_group_id := 0;
  an_image_id := 0;
  Latitude := 0.0;
  longitude := 0.0;
  distance := 0.0;
end;

constructor TJanuaAnagraphRecord.Create(aID: integer);
begin
  self.Clear;
  self.anagraph_id := aID;
  Latitude := 0;
  longitude := 0;
  distance := 0;
end;

function TJanuaAnagraphRecord.FullAddress: string;
begin
  if Address.AddressFull = '' then
    Result := Address.Address + ', ' + Address.Number + ', ' + Address.Town
  else
    Result := Address.AddressFull
end;

function TJanuaAnagraphRecord.GetLatitude: Double;
begin
  Result := self.Address.Latitude
end;

function TJanuaAnagraphRecord.GetLongitude: Double;
begin
  Result := self.Address.longitude
end;

procedure TJanuaAnagraphRecord.LoadFromDataset(aDataset: TDataset; const CheckFields: boolean = False);
var
  temp: string;
begin
  GetFieldValue(anagraph_id, aDataset, 'anagraph_id', CheckFields);
  GetFieldValue(id64, aDataset, 'anagraph64', CheckFields);
  GetFieldValue(Title, aDataset, 'an_title', CheckFields);
  GetFieldValue(FirstName, aDataset, 'an_name', CheckFields);
  GetFieldValue(SecondName, aDataset, 'an_second_name', CheckFields);
  GetFieldValue(LastName, aDataset, 'an_last_name', CheckFields);
  GetFieldValue(Notes, aDataset, 'an_notes', CheckFields);
  GetFieldValue(an_code, aDataset, 'an_code', CheckFields);
  GetFieldValue(an_vat_numeric, aDataset, 'an_vat_numeric', CheckFields);
  GetFieldValue(EMail, aDataset, 'an_email', CheckFields);
  GetFieldValue(an_web, aDataset, 'an_web', CheckFields);
  GetFieldValue(an_contact_id, aDataset, 'an_contact_id', CheckFields);
  GetFieldValue(an_bank_account, aDataset, 'an_bank_account', CheckFields);
  GetFieldValue(an_payment_des, aDataset, 'an_payment_des', CheckFields);
  GetFieldValue(an_discount, aDataset, 'an_discount', CheckFields);
  GetFieldValue(an_distance, aDataset, 'an_distance', CheckFields);
  GetFieldValue(an_distance_mesunit, aDataset, 'an_distance_mesunit', CheckFields);
  GetFieldValue(temp, aDataset, 'an_sex', CheckFields);
  Gender.GenderCode := temp;
  GetFieldValue(an_cod_comune, aDataset, 'an_cod_comune', CheckFields);
  GetFieldValue(an_cod_provincia, aDataset, 'an_cod_provincia', CheckFields);
  GetFieldValue(an_credit_line, aDataset, 'an_credit_line', CheckFields);
  GetFieldValue(an_currency_id, aDataset, 'an_currency_id', CheckFields);
  GetFieldValue(an_cat_id, aDataset, 'an_cat_id', CheckFields);
  GetFieldValue(an_notes2, aDataset, 'an_notes2', CheckFields);
  GetFieldValue(an_notes3, aDataset, 'an_notes3', CheckFields);
  GetFieldValue(distance, aDataset, 'distance', CheckFields);
  GetFieldValue(an_birthplace, aDataset, 'an_birthplace', CheckFields);
  GetFieldValue(an_birthplacecode, aDataset, 'an_birthplace_code', CheckFields);
  self.Address.LoadFromAnagraphDataset(aDataset);
  self.MainCategory.LoadFromDataset(aDataset);
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaAnagraphRecord.LoadFromPersonHttpParams(aRequest: TWebRequest);
var
  temp: string;
begin
  self.Clear;
  FirstName := Janua.Core.functions.HttpGetParamValue(aRequest, 'person_firstname');
  LastName := Janua.Core.functions.HttpGetParamValue(aRequest, 'person_lastname');
  self.FiscalCode := Janua.Core.functions.HttpGetParamValue(aRequest, 'person_fiscalcode');
  temp := Janua.Core.functions.HttpGetParamValue(aRequest, 'person_fiscalcode');
  if temp <> '' then
    self.EMail := temp;

  self.Gender.GenderCode := Janua.Core.functions.HttpGetParamValue(aRequest, 'sex');
  self.Address.LoadFromPersonHttpParams(aRequest);
  self.FiscalCode := Janua.Core.functions.HttpGetParamValue(aRequest, 'person_fiscalcode');
  self.FiscalCode := Janua.Core.functions.HttpGetParamValue(aRequest, 'person_fiscalcode');
  self.FiscalCode := Janua.Core.functions.HttpGetParamValue(aRequest, 'person_fiscalcode');
  self.FiscalCode := Janua.Core.functions.HttpGetParamValue(aRequest, 'person_fiscalcode');

end;

procedure TJanuaAnagraphRecord.LoadFromHttpParams(aRequest: TWebRequest);
begin
  self.Clear;
  self.Address.LoadFromHttpParams(aRequest);
  anagraph_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'anagraph_id');
  Title := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_title');
  FirstName := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_name');
  SecondName := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_second_name');
  LastName := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_last_name');
  Notes := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_notes');
  an_code := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_code');
  an_vat_numeric := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_vat_numeric');
  EMail := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_email');
  an_web := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_web');
  an_contact_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_contact_id');
  an_bank_account := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_bank_account');
  an_payment_des := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_payment_des');
  an_discount := Janua.Core.functions.HttpGetParamDouble(aRequest, 'an_discount');
  an_distance := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_distance');
  an_distance_mesunit := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_distance_mesunit');
  Gender.GenderCode := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_sex');
  an_cod_comune := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_title');
  an_cod_provincia := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_title');
  an_credit_line := Janua.Core.functions.HttpGetParamDouble(aRequest, 'an_credit_line');
  an_currency_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_currency_id');
  an_cat_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_cat_id');
  an_notes2 := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_notes2');
  an_notes3 := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_notes3');
  an_edi := Janua.Core.functions.HttpgetParamBoolean(aRequest, 'an_edi');
  an_privacy := Janua.Core.functions.HttpgetParamBoolean(aRequest, 'an_privacy');
  an_office_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_office_id');
  an_cod_prov_rif := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_cod_prov_rif');
  an_data_fido := Janua.Core.functions.HttpGetParamDate(aRequest, 'an_data_fido');
  an_area_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_area_id');
  an_agent_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_agent_id');
  an_area_code := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_area_code');
  an_zone_id := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_zone_id');
  an_documents := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_documents');
  an_last_date := Janua.Core.functions.HttpGetParamDate(aRequest, 'an_last_date');
  an_birthdate := Janua.Core.functions.HttpGetParamDate(aRequest, 'an_birthdate');
  an_extra_ue_flag := Janua.Core.functions.HttpgetParamBoolean(aRequest, 'an_edi');
  an_personal_fiscal_code := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_personal_fiscal_code');
  an_privacy_print := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_privacy_print');
  an_sms := Janua.Core.functions.HttpgetParamBoolean(aRequest, 'an_sms');
  an_vat_purcentage := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_vat_purcentage');
  an_status := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_status');
  an_ownsite := Janua.Core.functions.HttpgetParamBoolean(aRequest, 'an_ownsite');
  an_insurance_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_insurance_id');
  an_anagraphs_anagraph_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_anagraphs_anagraph_id');
  an_main_language_code := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_main_language_code');
  an_main_culture_code := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_main_culture_code');
  FiscalCode := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_fiscal_code');
  an_main_group_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_main_group_id');
  an_image_id := Janua.Core.functions.HttpGetParamInteger(aRequest, 'an_image_id');
  Latitude := Janua.Core.functions.HttpGetParamDouble(aRequest, 'latitude');
  longitude := Janua.Core.functions.HttpGetParamDouble(aRequest, 'longitude');
  distance := Janua.Core.functions.HttpGetParamDouble(aRequest, 'distance');
  an_birthplace := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_birthplace');
  an_birthplacecode := Janua.Core.functions.HttpGetParamValue(aRequest, 'an_birthplace_code');
end;
{$ENDIF}

procedure TJanuaAnagraphRecord.LoadFromJson(aJson: string);
begin
  self.LoadFromJsonObject(Janua.Core.JSON.JsonParse(aJson));
end;

procedure TJanuaAnagraphRecord.LoadFromJsonObject(aJson: TJsonObject);
var
  jValue: TJsonValue;
  aPair: TJsonPair;
  tmp: string;
  tmp1: Double;
begin
  // da rivedere completamente ... Errato ...

  // self.Address.LoadFromAnagraphJsonObject(aJson: TJsonObject);
  { TODO : Aggiornare la procedura LoadFromJsonObject dell'Address }
  self.Address.LoadFromJsonObject(Janua.Core.JSON.JsonObject('address', aJson));
  Janua.Core.JSON.JsonValue(aJson, 'anagraph_id', anagraph_id);
  Janua.Core.JSON.JsonValue(aJson, 'an_title', Title);
  Janua.Core.JSON.JsonValue(aJson, 'an_name', FirstName);
  Janua.Core.JSON.JsonValue(aJson, 'an_second_name', SecondName);
  Janua.Core.JSON.JsonValue(aJson, 'an_last_name', LastName);
  Janua.Core.JSON.JsonValue(aJson, 'an_notes', Notes);
  // ***** legacy code for compatiblity need to be replaced ************************************************************
  Janua.Core.JSON.JsonValue(aJson, 'an_address', tmp);
  self.Address.Address := tmp;
  Janua.Core.JSON.JsonValue(aJson, 'an_address_number', tmp);
  self.Address.Number := tmp;
  Janua.Core.JSON.JsonValue(aJson, 'an_town', tmp);
  Address.Town := tmp;
  Janua.Core.JSON.JsonValue(aJson, 'an_postal_code', tmp);
  Address.postalcode := tmp;
  Janua.Core.JSON.JsonValue(aJson, 'an_iso_country_code', tmp);
  Address.ISOCountryCode := tmp;
  Janua.Core.JSON.JsonValue(aJson, 'an_state_province', tmp);
  Address.StateProvince := tmp;
  Janua.Core.JSON.JsonValue(aJson, 'an_fax', tmp);
  Address.FaxNumber := tmp;
  Janua.Core.JSON.JsonValue(aJson, 'an_cellular', tmp);
  Address.CellularPhone := tmp;
  Janua.Core.JSON.JsonValue(aJson, 'an_phone', tmp);
  Address.Phone := tmp;
  Janua.Core.JSON.JsonValue(aJson, 'an_phone2', tmp);
  Address.WorkPhone := tmp;
  Janua.Core.JSON.JsonValue(aJson, 'an_address_email', tmp);
  Address.AddressMail := tmp;
  // *******************************************************************************************************************
  // Janua.Core.Json.JsonValue(aJson, 'address', self.Address.AsJsonObject);

  Janua.Core.JSON.JsonValue(aJson, 'an_email', EMail);
  Janua.Core.JSON.JsonValue(aJson, 'an_code', an_code);
  Janua.Core.JSON.JsonValue(aJson, 'an_vat_numeric', an_vat_numeric);
  Janua.Core.JSON.JsonValue(aJson, 'an_web', an_web);
  Janua.Core.JSON.JsonValue(aJson, 'an_bank_account', an_bank_account);
  Janua.Core.JSON.JsonValue(aJson, 'an_payment_des', an_payment_des);
  Janua.Core.JSON.JsonValue(aJson, 'an_distance', an_distance);
  Janua.Core.JSON.JsonValue(aJson, 'an_sex', tmp);
  Gender.GenderCode := tmp;
  Janua.Core.JSON.JsonValueDouble(aJson, 'latitude', tmp1);
  self.Latitude := tmp1;
  Janua.Core.JSON.JsonValueDouble(aJson, 'longitude', tmp1);
  self.longitude := tmp1;
  Janua.Core.JSON.JsonValue(aJson, 'distance', distance);
  Janua.Core.JSON.JsonValue(aJson, 'an_birthplace', an_birthplace);
  Janua.Core.JSON.JsonValue(aJson, 'an_birthplace_code', an_birthplacecode);
  // test
  // Janua.Core.Json.JsonValue(aJson, 'an_contact_id', an_contact_id);

  // aggiunti
  {
    self.an_contact_id := aJson.GetValue('an_contact_id').Value.ToInteger;
    self.an_distance_mesunit := aJson.GetValue('an_distance_mesunit').Value.ToInteger;
    self.an_cod_comune := aJson.GetValue('an_cod_comune').Value;
    self.an_cod_provincia := aJson.GetValue('an_cod_provincia').Value;
    self.an_cod_prov_rif := aJson.GetValue('an_cod_prov_rif').Value;
    self.an_sms := aJson.GetValue('an_sms').Value.ToBoolean;
    self.an_vat_purcentage := aJson.GetValue('an_vat_purcentage').Value.ToInteger;
    self.an_credit_line := aJson.GetValue('an_credit_line').Value.ToDouble;
  }

end;

procedure TJanuaAnagraphRecord.SetLatitude(const Value: Double);
begin
  self.Address.Latitude := Value;
end;

procedure TJanuaAnagraphRecord.SetLongitude(const Value: Double);
begin
  self.Address.longitude := Value;
end;

{ TJanuaAnagraphs }

function TJanuaAnagraphs.AsHtml(aTemplateHeader, aTemplateRow: string; bJavascript: boolean): string;
var
  sRows: TStrings;
  aAnagraph: TJanuaAnagraphRecord;
  sTemplate: string;
  i: integer;
begin
  Result := '';
  i := 0;
  self.TemplateHeader := aTemplateHeader;
  self.TemplateRow := aTemplateRow;

  sRows := TStringList.Create;
  try
    sRows.Clear;

    for aAnagraph in self.Items do
    begin
      if bJavascript and (i > 0) then
        sTemplate := self.SecondLineChar + aTemplateRow
      else
        sTemplate := aTemplateRow;
      sRows.Add(aAnagraph.AsHtml(sTemplate, bJavascript));
      Inc(i);
    end;

    Result := aTemplateHeader;
    Janua.Core.functions.HtmlReplace(Result, 'rows', sRows.Text);
  finally
    sRows.Free;
  end;

end;

procedure TJanuaAnagraphs.Add(aAnagraph: TJanuaAnagraphRecord);
begin
  SetLength(self.Items, self.count + 1);
  self.Items[self.count - 1] := aAnagraph;
  self.SelectedItem := self.Items[self.count - 1];
end;

procedure TJanuaAnagraphs.Add(aObject: TJsonObject);
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  aAnagraph.LoadFromJsonObject(aObject);
  self.Add(aAnagraph);
  aObject.Free;
end;
{$IF Defined(WEBBROKER)}

procedure TJanuaAnagraphs.Add(aRequest: TWebRequest);
begin
  self.AddFromHttpParams(aRequest);
end;
{$ENDIF Defined(WEBBROKER)}

function TJanuaAnagraphs.AsHtml(bJavascript: boolean): string;
var
  sRows: string;
  sList: TStringList;
  aItem: TJanuaAnagraphRecord;
begin
  sList := TStringList.Create;
  try
    for aItem in self.Items do
      sList.Add(aItem.AsHtml(self.TemplateRow, bJavascript));
    sRows := sList.Text;
  finally
    sList.Clear
  end;

  if self.TemplateHeader <> '' then
  begin
    Result := self.TemplateHeader;
    HtmlReplace(self.TemplateHeader, 'rows', sRows)
  end
  else
    Result := sRows
end;

function TJanuaAnagraphs.AsJson: string;
begin
  Result := AsJsonObject.ToJSON
end;

procedure TJanuaAnagraphs.Clear;
begin
  SetLength(self.Items, 0);
end;

function TJanuaAnagraphs.count: integer;
begin
  Result := Length(self.Items);
end;

function TJanuaAnagraphs.FindItemByFirstName(aName: string): boolean;
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  Result := False;
  if self.count > 0 then
    for aAnagraph in self.Items do
      if aAnagraph.FirstName.ToLower = aName.ToLower then
      begin
        Result := True;
        self.SelectedItem := aAnagraph
      end;
end;

function TJanuaAnagraphs.FindItemByID(aID: integer): boolean;
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  Result := False;
  if self.count > 0 then
    for aAnagraph in self.Items do
      if aAnagraph.anagraph_id = aID then
      begin
        Result := True;
        self.SelectedItem := aAnagraph
      end;
end;

function TJanuaAnagraphs.FindItemByLastName(aName: string): boolean;
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  Result := False;
  if self.count > 0 then
    for aAnagraph in self.Items do
      if aAnagraph.LastName.ToLower = aName.ToLower then
      begin
        Result := True;
        self.SelectedItem := aAnagraph
      end;
end;

function TJanuaAnagraphs.FullAddress: string;
begin

end;

function TJanuaAnagraphs.GetAsJsonObject: TJsonObject;
var
  aItem: TJanuaAnagraphRecord;
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  {
    Janua.Core.Json.JsonPair(Result, 'SecondLineChar', SecondLineChar);
    Janua.Core.Json.JsonPair(Result, 'TemplateHeader', TemplateHeader);
    Janua.Core.Json.JsonPair(Result, 'TemplateRow', TemplateRow);
  }
  Janua.Core.JSON.JsonPair(Result, 'count', self.count);
  aArray := TJsonArray.Create;
  for aItem in self.Items do
    aArray.AddElement(aItem.AsJsonObject);
  Janua.Core.JSON.JsonPair(Result, 'items', aArray);
end;

procedure TJanuaAnagraphs.LoadFromDataset(aDataset: TDataset; aLimit: integer = -1);
begin
  Clear;
  if Assigned(aDataset) and (aDataset.RecordCount > 0) then
  begin
    aDataset.First;
    while ((not aDataset.Eof) and ((aLimit = -1) or (self.count < aLimit))) do
    begin
      SetLength(self.Items, self.count + 1);
      self.Items[self.count - 1].LoadFromDataset(aDataset);
      aDataset.Next;
    end;
  end;
end;

procedure TJanuaAnagraphs.LoadFromJson(aJson: string);
var
  LJSONObject: TJsonObject;
  vParsed: integer;

begin
  LJSONObject := nil;

  try
    LJSONObject := TJsonObject.Create;
    { convert String to JSON }
    vParsed := LJSONObject.Parse(BytesOf(aJson), 0);

    if vParsed > 0 then
    begin
      self.LoadFromJsonObject(LJSONObject);
    end
    else
    begin
      raise Exception.Create('TJanuaAnagraphs Error in Json Parse, not a json text');
    end;

  finally
    LJSONObject.Free;
  end;

end;

procedure TJanuaAnagraphs.LoadFromJsonObject(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
  aTest: integer;
begin
  self.Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    self.SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    self.TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    self.TemplateRow := aJson.GetValue('TemplateRow').Value;
  }
  Janua.Core.JSON.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('items');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end;
  end;

end;

procedure TJanuaAnagraphs.Remove(aAnagraph: TJanuaAnagraphRecord);
var
  t: array of TJanuaAnagraphRecord;
  a: TJanuaAnagraphRecord;
  i: integer;
begin
  SetLength(t, self.count - 1);
  i := 0;
  for a in self.Items do
  begin
    if a.anagraph_id <> aAnagraph.anagraph_id then
    begin
      t[i] := a;
      Inc(i);
    end;
  end;

  SetLength(Items, 0);

  SetLength(Items, Length(t));

  i := 0;
  for a in t do
  begin
    Items[i] := a;
    Inc(i);
  end;
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaAnagraphs.AddFromHttpParams(aRequest: TWebRequest);
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  aAnagraph.LoadFromHttpParams(aRequest);
  self.Add(aAnagraph);
end;
{$ENDIF Defined(WEBBROKER)}
{ TJanuaAnagraphCategory }

procedure TJanuaAnagraphCategory.LoadFromDataset(aDataset: TDataset);
begin
  GetFieldValue(self.ID, aDataset, 'category_id', False);
  GetFieldValue(self.ImageID, aDataset, 'image_id', False);
  GetFieldValue(self.MasterID, aDataset, 'master_category_id', False);
  GetFieldValue(self.MasterImageID, aDataset, 'master_image_id', False);
end;

end.



