unit udmPgForms;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  udmJanuaPostgresModel, Data.DB, Uni, MemDS, DBAccess, Janua.Core.Types,
  Janua.Core.Forms, Janua.Core.Classes, Datasnap.Provider, Datasnap.DBClient, Janua.Core.Exceptions,
  UniProvider, PostgreSQLUniProvider;

type
  TdmPgForms = class(TdmJanuaPostgresModel)
    qryForms: TUniQuery;
    dsForms: TDataSource;
    qryFormsTranslations: TUniQuery;
    qryObjects: TUniQuery;
    dsObjects: TDataSource;
    qryProperties: TUniQuery;
    dsProperties: TDataSource;
    qryPropertiesTranslations: TUniQuery;
    qrySearchForms: TUniQuery;
    qrySearchFormsform_url: TWideStringField;
    qrySearchFormsform_name: TWideStringField;
    qrySearchFormsdb_schema_id: TIntegerField;
    qrySearchFormsform_id: TIntegerField;
    qryFormsTranslationsform_title: TWideStringField;
    qryFormsTranslationsmain_iso_language: TWideStringField;
    qryFormsTranslationstrans_iso_language: TWideStringField;
    qryFormsTranslationsdb_schema_id: TIntegerField;
    qryFormsTranslationslaguage_id: TSmallintField;
    qryFormsTranslationsform_id: TIntegerField;
    qryFormsform_url: TWideStringField;
    qryFormsform_name: TWideStringField;
    qryFormsdb_schema_id: TIntegerField;
    qryFormsform_id: TIntegerField;
    qryObjectsform_id: TIntegerField;
    qryObjectsobject_id: TLargeintField;
    qryObjectsobject_name: TWideStringField;
    qryFormsObjectsTranslations: TUniQuery;
    qryFormsObjectsTranslationsobject_name: TWideStringField;
    qryFormsObjectsTranslationsproperty_name: TWideStringField;
    qryFormsObjectsTranslationsproperty_id: TLargeintField;
    qryFormsObjectsTranslationslanguage_id: TSmallintField;
    qryFormsObjectsTranslationsstringvalue: TWideStringField;
    qryFormsObjectsTranslationstextvalue: TWideMemoField;
    qryLanguages: TUniQuery;
    qryLanguagesiso_language_code: TWideStringField;
    qryLanguagesiso_language_code2: TWideStringField;
    qryLanguageslanguage_name: TWideStringField;
    qryLanguageslanguage_id: TSmallintField;
    qryPropertiesTranslationsproperty_id: TLargeintField;
    qryPropertiesTranslationslanguage_id: TSmallintField;
    qryPropertiesTranslationsstringvalue: TWideStringField;
    qryPropertiesTranslationstextvalue: TWideMemoField;
    qryPropertiesobject_id: TLargeintField;
    qryPropertiesproperty_id: TLargeintField;
    qryPropertiesproperty_name: TWideStringField;
    qryPropertiestextvalue: TWideStringField;
    qryPropertiesintvalue: TIntegerField;
    qryPropertiesdatevalue: TDateField;
    qryPropertiestranslate: TBooleanField;
    qryPropertiesstringvalue: TWideStringField;
    JanuaIsoLanguageCountry1: TJanuaIsoLanguageCountry;
    procedure JanuaIsoLanguageCountry1ChangeCulture(Sender: TObject);
  private
    FFormDefinition: TJanuaFormDefinition;
    FCultureCode: string;
    FCultureID: integer;
    procedure SetFormDefinition(const Value: TJanuaFormDefinition);
    procedure SetCultureCode(const Value: string);
    procedure SetCultureID(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    procedure TranslateForm(aLangCode: string); overload;
    procedure TranslateForm(aLangID: integer); overload;
    procedure TranslateForm(aLanguage: TJanuaLanguage); overload;
    function SearchFormByName(aFormName: string): boolean;
    function GetFormTreeByName(aFormName: string): TJanuaFormDefinition;

  published
    property FormDefinition: TJanuaFormDefinition read FFormDefinition write SetFormDefinition;
    property CultureCode: string read FCultureCode write SetCultureCode;
    property CultureID: integer read FCultureID write SetCultureID;

  end;

var
  dmPgForms: TdmPgForms;

implementation

{$R *.dfm}
{ TdmJanuaPostgresModel3 }

function TdmPgForms.GetFormTreeByName(aFormName: string): TJanuaFormDefinition;
begin
  self.qryForms.ParamByName('form_id').AsInteger := 0;
  self.qryForms.ParamByName('form_name').Value := '';

  if self.qryForms.RecordCount > 0 then
  begin
    ServerFunctions.OpenDataset(qryFormsTranslations);

    Result.id := self.qryFormsform_id.AsInteger;
    Result.title := self.qryFormsTranslationsform_title.AsWideString;

  end;

end;

procedure TdmPgForms.JanuaIsoLanguageCountry1ChangeCulture(Sender: TObject);
begin
  inherited;
  self.qryFormsTranslations.ParamByName('language_id').AsInteger :=
    JanuaIsoLanguageCountry1.Cultures.IsoLanguages.id;

  self.qryPropertiesTranslations.ParamByName('language_id').AsInteger :=
    JanuaIsoLanguageCountry1.Cultures.IsoLanguages.id;

  self.qryFormsObjectsTranslations.ParamByName('language_id').AsInteger :=
    JanuaIsoLanguageCountry1.Cultures.IsoLanguages.id;

end;

function TdmPgForms.SearchFormByName(aFormName: string): boolean;
begin
  { select * from system.app_forms
    where
    (form_name = :form_name) }
  Result := (qrySearchForms.RecordCount = 1) and
    (qrySearchForms.ParamByName('form_name').AsWideString = aFormName.ToLower);

  if not Result then
  begin
    self.qrySearchForms.Close;
    self.qrySearchForms.ParamByName('form_name').AsWideString := aFormName.ToLower;
    qrySearchForms.Open;
    Result := qrySearchForms.RecordCount = 1;
  end;
end;

procedure TdmPgForms.SetCultureCode(const Value: string);
begin
  FCultureCode := Value;
end;

procedure TdmPgForms.SetCultureID(const Value: integer);
begin
  FCultureID := Value;
end;

procedure TdmPgForms.SetFormDefinition(const Value: TJanuaFormDefinition);
begin
  FFormDefinition := Value;
end;

procedure TdmPgForms.TranslateForm(aLangCode: string);
begin

end;

procedure TdmPgForms.TranslateForm(aLangID: integer);
begin

end;

procedure TdmPgForms.TranslateForm(aLanguage: TJanuaLanguage);
begin

end;

end.
