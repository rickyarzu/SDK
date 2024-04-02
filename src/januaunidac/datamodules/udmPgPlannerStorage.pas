unit udmPgPlannerStorage;


interface

uses
  System.SysUtils, System.Classes, udmPgStorage, UniProvider, PostgreSQLUniProvider, DBAccess, Uni,
  MemDS, Data.DB, Janua.Unidac.Connection;

type
  TdmPgPlannerStorage = class(TdmPgStorage)
    qryAnagraphs: TUniQuery;
    qryActivitiesGroups: TUniQuery;
    dsAnagraph: TUniDataSource;
    dsActivitiesGroups: TUniDataSource;
    qryActivities: TUniQuery;
    qryActivitiesGroupsname: TWideStringField;
    qryActivitiesGroupsjguid: TGuidField;
    qryActivitiesGroupsdb_schema_id: TIntegerField;
    dsActivities: TUniDataSource;
    qryActivitiesname: TWideStringField;
    qryActivitiesjguid: TGuidField;
    qryActivitiesmaster_jguid: TGuidField;
    qryActivitiesdb_schema_id: TIntegerField;
    qryTimeTable: TUniQuery;
    dsTimeTable: TUniDataSource;
    qryTimeTablejguid: TGuidField;
    qryTimeTableanagraph_id: TIntegerField;
    qryTimeTablestarttime: TDateTimeField;
    qryTimeTableendtime: TDateTimeField;
    qryTimeTablenotes: TWideMemoField;
    qryTimeTablesubject: TWideStringField;
    qryTimeTableimage: TIntegerField;
    qryTimeTablecolor: TLargeintField;
    qryTimeTableactivity_group_jguid: TGuidField;
    qryTimeTableactivity_jguid: TGuidField;
    qryTimeTabledb_schema_id: TIntegerField;
    qryTimeTabletmt_jguid: TWideStringField;
    qryAnagraphsdb_schema_id: TIntegerField;
    qryAnagraphsanagraph_id: TIntegerField;
    qryAnagraphsan_title: TWideStringField;
    qryAnagraphsan_name: TWideStringField;
    qryAnagraphsan_second_name: TWideStringField;
    qryAnagraphsan_last_name: TWideStringField;
    qryAnagraphsan_notes: TWideStringField;
    qryAnagraphsan_address: TWideStringField;
    qryAnagraphsan_town: TWideStringField;
    qryAnagraphsan_postal_code: TWideStringField;
    qryAnagraphsan_iso_country_code: TWideStringField;
    qryAnagraphsan_state_province: TWideStringField;
    qryAnagraphsan_phone: TWideStringField;
    qryAnagraphsan_phone2: TWideStringField;
    qryAnagraphsan_fax: TWideStringField;
    qryAnagraphsan_cellular: TWideStringField;
    qryAnagraphsan_code: TWideStringField;
    qryAnagraphsan_vat_numeric: TWideStringField;
    qryAnagraphsan_email: TWideStringField;
    qryAnagraphsan_web: TWideStringField;
    qryAnagraphsan_contact_id: TIntegerField;
    qryAnagraphsan_bank_account: TWideStringField;
    qryAnagraphsan_payment_des: TWideStringField;
    qryAnagraphsan_discount: TFloatField;
    qryAnagraphsan_distance: TIntegerField;
    qryAnagraphsan_distance_mesunit: TSmallintField;
    qryAnagraphsan_sex: TWideStringField;
    qryAnagraphsan_cod_comune: TWideStringField;
    qryAnagraphsan_cod_provincia: TWideStringField;
    qryAnagraphsan_credit_line: TFloatField;
    qryAnagraphsan_currency_id: TSmallintField;
    qryAnagraphsan_cat_id: TSmallintField;
    qryAnagraphsan_notes2: TWideStringField;
    qryAnagraphsan_notes3: TWideMemoField;
    qryAnagraphsan_edi: TBooleanField;
    qryAnagraphsan_privacy: TBooleanField;
    qryAnagraphsan_office_id: TSmallintField;
    qryAnagraphsan_cod_prov_rif: TWideStringField;
    qryAnagraphsan_data_fido: TDateField;
    qryAnagraphsan_user_insert: TWideStringField;
    qryAnagraphsan_user_update: TWideStringField;
    qryAnagraphsan_area_id: TSmallintField;
    qryAnagraphsan_agent_id: TSmallintField;
    qryAnagraphsan_area_code: TWideStringField;
    qryAnagraphsan_zone_id: TWideStringField;
    qryAnagraphsan_ins_id: TLargeintField;
    qryAnagraphsan_upd_id: TLargeintField;
    qryAnagraphsan_documents: TSmallintField;
    qryAnagraphsan_last_date: TDateField;
    qryAnagraphsan_birthdate: TDateField;
    qryAnagraphsan_office_type_id: TSmallintField;
    qryAnagraphsan_searchname: TWideStringField;
    qryAnagraphsan_extra_ue_flag: TBooleanField;
    qryAnagraphsan_external_code: TWideStringField;
    qryAnagraphsan_vat_id: TSmallintField;
    qryAnagraphsan_personal_fiscal_code: TWideStringField;
    qryAnagraphsan_privacy_print: TSmallintField;
    qryAnagraphsan_sms: TBooleanField;
    qryAnagraphsan_encrypted_fiscal_code: TWideStringField;
    qryAnagraphsan_vat_purcentage: TSmallintField;
    qryAnagraphsan_status: TSmallintField;
    qryAnagraphsan_ownsite: TBooleanField;
    qryAnagraphsan_insurance_id: TLargeintField;
    qryAnagraphsan_anagraphs_anagraph_id: TIntegerField;
    qryAnagraphsan_main_language_code: TWideStringField;
    qryAnagraphsan_main_culture_code: TWideStringField;
    qryAnagraphsan_fiscal_code: TWideStringField;
    qryAnagraphsan_main_group_id: TIntegerField;
    qryAnagraphsan_image_id: TLargeintField;
    qryAnagraphslatitude: TFloatField;
    qryAnagraphslongitude: TFloatField;
    qryAnagraphstest: TFloatField;
    qryAnagraphssearch_index: TWideStringField;
    qryAnagraphsan_birthplace: TWideStringField;
    qryAnagraphsan_birthplace_code: TWideStringField;
    qryAnagraphsanagraph64: TWideStringField;
    qryAnagraphsmain_category_id: TSmallintField;
    qryAnagraphsosm_id: TLargeintField;
    qryAnagraphsan_description: TWideStringField;
    qryAnagraphsan_address_number: TWideStringField;
    qryAnagraphsanag_jguid: TWideStringField;
    qryAnagraphsanag_deleted: TBooleanField;
    qryAnagraphsinsert_date: TDateTimeField;
    qryAnagraphsupdate_date: TDateTimeField;
    qryAnagraphsuser_insert: TIntegerField;
    qryAnagraphsjguid: TGuidField;
    qryAnagraphscustom_field_1: TWideStringField;
    qryAnagraphscustom_field_2: TWideStringField;
    qryAnagraphscustom_field_3: TWideStringField;
    qryAnagraphscustom_float_1: TFloatField;
    qryAnagraphscustom_float_2: TFloatField;
    qryAnagraphscustom_int_1: TIntegerField;
    qryAnagraphscustom_int_2: TIntegerField;
    qryAnagraphssupplier_id: TIntegerField;
    qryAnagraphsvessel_id: TSmallintField;
    qryAnagraphsan_country_id: TIntegerField;
    qryAnagraphsan_iso_country_code2: TWideStringField;
    qryAnagraphsdb_schema_id_1: TIntegerField;
    qryAnagraphsanagraph_id_1: TIntegerField;
    qryAnagraphsan_group_id: TSmallintField;
    qryAnagraphsan_agent_id_1: TIntegerField;
    qryAnagraphsan_agent_group_id: TIntegerField;
    qryAnagraphsan_credit_limit: TFloatField;
    qryAnagraphsan_credit_days: TSmallintField;
    qryAnagraphsan_credit: TBooleanField;
    qryAnagraphsan_credit_notes: TWideStringField;
    qryAnagraphsan_credit_used: TFloatField;
    qryAnagraphsan_overdue_credit: TFloatField;
    qryAnagraphsadnt_jguid: TWideStringField;
    qryAnagraphsadnt_deleted: TBooleanField;
    qryAnagraphsjguid_1: TGuidField;
    qryTimeTablecaption: TBooleanField;
    qryActivitiesGroupstjguid: TStringField;
    qryActivitiestjguid: TStringField;
    qryAnagraphsan_full_name: TWideStringField;
    procedure qryActivitiesBeforePost(DataSet: TDataSet);
    procedure qryActivitiesGroupsAfterOpen(DataSet: TDataSet);
    procedure qryActivitiesGroupsBeforePost(DataSet: TDataSet);
    procedure qryActivitiesGroupsNewRecord(DataSet: TDataSet);
    procedure qryActivitiesNewRecord(DataSet: TDataSet);
    procedure qryAnagraphsBeforeOpen(DataSet: TDataSet);
    procedure qryAnagraphsBeforePost(DataSet: TDataSet);
    procedure qryTimeTableBeforePost(DataSet: TDataSet);
    procedure qryAnagraphsNewRecord(DataSet: TDataSet);
    procedure qryTimeTableNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenAll; overload;
    procedure OpenAll(aGroup: Integer); overload;
    procedure PostAnagraph;
    procedure PostActivities;
  end;

var
  dmPgPlannerStorage: TdmPgPlannerStorage;

implementation

uses Janua.Orm.UniDac, Janua.Core.Types, Janua.Orm.Types, Janua.Application.Framework, Janua.Uni.Virtual;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TdmPgPlannerStorage.OpenAll(aGroup: Integer);
begin
  qryAnagraphs.Open;
  qryActivitiesGroups.Open;
  qryActivities.Open;
  qryTimeTable.Open;
end;

procedure TdmPgPlannerStorage.PostActivities;
begin
  if qryActivitiesGroups.State in [dsInsert, dsEdit] then
    qryActivitiesGroups.Post;

  if qryActivities.State in [dsInsert, dsEdit] then
    qryActivities.Post;
end;

procedure TdmPgPlannerStorage.PostAnagraph;
begin
  if qryAnagraphs.State in [dsInsert, dsEdit] then
    qryAnagraphs.Post;
end;

procedure TdmPgPlannerStorage.OpenAll;
begin
  qryAnagraphs.Open;
  qryActivitiesGroups.Open;
  qryActivities.Open;
  qryTimeTable.Open;
end;

procedure TdmPgPlannerStorage.qryActivitiesBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryActivitiestjguid.AsString := qryActivitiesjguid.AsString
end;

procedure TdmPgPlannerStorage.qryActivitiesGroupsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryActivities.Open;
end;

procedure TdmPgPlannerStorage.qryActivitiesGroupsBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryActivitiesGroupstjguid.AsString := qryActivitiesGroupsjguid.AsString
end;

procedure TdmPgPlannerStorage.qryActivitiesGroupsNewRecord(DataSet: TDataSet);
var
  MyGuid0: TGUID;
begin
  inherited;
  qryActivitiesGroupsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  CreateGUID(MyGuid0);
  qryActivitiesGroupsjguid.AsGuid := MyGuid0;
end;

procedure TdmPgPlannerStorage.qryActivitiesNewRecord(DataSet: TDataSet);
var
  MyGuid0: TGUID;
begin
  inherited;
  qryActivitiesdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  CreateGUID(MyGuid0);
  qryActivitiesjguid.AsGuid := MyGuid0;
  qryActivitiesmaster_jguid.AsGuid := qryActivitiesGroupsjguid.AsGuid;
end;

procedure TdmPgPlannerStorage.qryAnagraphsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryAnagraphs.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;

end;

procedure TdmPgPlannerStorage.qryAnagraphsBeforePost(DataSet: TDataSet);
var
  MyGuid0: TGUID;
begin
  qryAnagraphsdb_schema_id.AsInteger := 34;
  { Generating second random GUID. }
  CreateGUID(MyGuid0);
  qryAnagraphsjguid.AsGuid := MyGuid0;
  qryAnagraphsan_iso_country_code.AsWideString := 'ITA';
  qryAnagraphsan_sex.AsWideString := 'M';
  qryAnagraphsan_currency_id.AsInteger := 1;
  qryAnagraphsan_main_language_code.AsWideString := 'it';
  qryAnagraphsan_main_culture_code.AsWideString := 'it_IT';
  qryAnagraphsdb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  inherited;
end;

procedure TdmPgPlannerStorage.qryAnagraphsNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryAnagraphsan_main_group_id.AsInteger := 21;
  qryAnagraphsdb_schema_id.AsInteger :=  TJanuaApplication.DBSchemaID;
end;

procedure TdmPgPlannerStorage.qryTimeTableBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryTimeTabletmt_jguid.AsAnsiString = '' then
    qryTimeTabletmt_jguid.AsAnsiString := qryTimeTablejguid.AsAnsiString
  else
    qryTimeTablejguid.AsAnsiString := qryTimeTabletmt_jguid.AsAnsiString;

  qryTimeTabledb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
  qryTimeTableanagraph_id.AsInteger := qryAnagraphsanagraph_id.AsInteger;

end;

procedure TdmPgPlannerStorage.qryTimeTableNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryTimeTabledb_schema_id.AsInteger := TJanuaApplication.DBSchemaID;
end;

end.

