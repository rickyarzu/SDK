unit udmPgSystemStorage;

interface

uses
  System.SysUtils, System.Classes, udmPgStorage, Data.DB, MemDS, DBAccess, PgAccess,
  Janua.Postgres.Functions;

type
  TdmPgSystemStorage = class(TdmPgStorage)
    tbUserSessionRoles: TPgTable;
    dsUserSession: TDataSource;
    qryUserSession: TPgQuery;
    qryUserProfile: TPgQuery;
    qryUser: TPgQuery;
    qryUseruser_jguid: TWideStringField;
    qryUseruser_deleted: TBooleanField;
    spCreatePersonalSchema: TPgStoredProc;
    spUserTest: TPgStoredProc;
    spUserAdd: TPgStoredProc;
    spLogin: TPgStoredProc;
    qrySearchUserProfile: TPgQuery;
    qrySearchUserProfiledb_user_id: TIntegerField;
    qrySearchUserProfilecountry_id: TSmallintField;
    qrySearchUserProfileregion_id: TSmallintField;
    qrySearchUserProfiledistrict_id: TSmallintField;
    qrySearchUserProfiletown_id: TIntegerField;
    qrySearchUserProfilefirst_name: TWideStringField;
    qrySearchUserProfilelast_name: TWideStringField;
    qrySearchUserProfileaddress_street: TWideStringField;
    qrySearchUserProfileaddress_number: TWideStringField;
    qrySearchUserProfileaddress_postal_code: TWideStringField;
    qrySearchUserProfilephone: TWideStringField;
    qrySearchUserProfilecellular_phone: TWideStringField;
    qrySearchUserProfilework_phone: TWideStringField;
    qrySearchUserProfilefax_number: TWideStringField;
    qrySearchUserProfilegender_code: TWideStringField;
    qrySearchUserProfilebirth_date: TDateField;
    qrySearchUserProfilebirth_country_id: TSmallintField;
    qrySearchUserProfilebirth_region_id: TSmallintField;
    qrySearchUserProfilebirth_district_id: TSmallintField;
    qrySearchUserProfilebirth_town_id: TIntegerField;
    qrySearchUserProfilepublic_email: TWideStringField;
    qrySearchUserProfiletitle: TWideStringField;
    qrySearchUserProfilesearch_name: TWideStringField;
    qrySearchUserProfilereverse_search: TWideStringField;
    qrySearchUserProfileaddress_full: TWideStringField;
    qrySearchUserProfilelatitude: TFloatField;
    qrySearchUserProfilelongitude: TFloatField;
    qrySearchUserProfilefiscal_code: TWideStringField;
    qrySearchUserProfilesmssent: TBooleanField;
    qrySearchUserProfilesmsconfirmed: TBooleanField;
    qrySearchUserProfilesmsdate: TSQLTimeStampField;
    qrySearchUserProfilesmschecknumber: TWideStringField;
    qrySearchUserProfileaddress_town: TWideStringField;
    qrySearchUsers: TPgQuery;
    qryGetUserByKey: TPgQuery;
    qryGetUserByKeyactive: TBooleanField;
    qryGetUserByKeyemail: TWideStringField;
    qryGetUserByKeydb_user_id: TIntegerField;
    qryGetUserByKeypassword: TWideStringField;
    qryGetUserByKeyusername: TWideStringField;
    qryGetUserByKeyisactive: TBooleanField;
    qryGetUserByKeyverify_token: TWideStringField;
    qryGetUserByKeyverified: TBooleanField;
    qryGetUserByKeydefault_schema_id: TIntegerField;
    qryGetUserByKeyispublic: TBooleanField;
    qryGetUserByKeyinternal_key: TWideStringField;
    qryGetUserByKeydefault_role_id: TSmallintField;
    qryGetUserByKeysearch_name: TWideStringField;
    qryGetUserByKeyreverse_search: TWideStringField;
    qryGetUserByKeyinsert_date: TSQLTimeStampField;
    qryGetUserByKeycountry_id: TSmallintField;
    qryGetUserByKeymain_profile_type_id: TSmallintField;
    qryGetUserByKeymain_profile_id: TWideStringField;
    qryGetUserByKeyimage_id: TLargeintField;
    qryGetUserByKeyimage_url: TWideStringField;
    qryGetUserByKeyiso_language_code: TWideStringField;
    qryGetUserByKeyiso_culture_code: TWideStringField;
    qryGetUserByKeyuser_first_name: TWideStringField;
    qryGetUserByKeyuser_family_name: TWideStringField;
    qryGetUserByKeyemailsent: TBooleanField;
    qryGetUserByKeyemailconfirmed: TBooleanField;
    qryGetUserByKeyemaildate: TSQLTimeStampField;
    qrydbUserSchemas: TPgQuery;
    qrydbUserSchemasdb_schema_id: TIntegerField;
    qrydbUserSchemasdb_schema_name: TWideStringField;
    qrydbUserSchemasschema_des: TWideStringField;
    qrydbUserSchemaspersonal: TBooleanField;
    qrydbUserSchemasdb_schema_key: TWideStringField;
    qrydbUserSchemascountry_id: TSmallintField;
    qrydbUserSchemaslanguage_id: TSmallintField;
    qrydbUserSchemasdefault_user_id: TIntegerField;
    prcSetUserDefaultSchema: TPgStoredProc;
    spUserTestSocial: TPgStoredProc;
    spUserAddSocial: TPgStoredProc;
    spLoginSocial: TPgStoredProc;
    spStartSessionByUrl: TPgStoredProc;
    qrySessionByUrl: TPgQuery;
    qrySessionByUrlstartsessionbyurl: TWideStringField;
    spUserPayment: TPgStoredProc;
    qrySession: TPgQuery;
    qrySessiondb_user_id: TIntegerField;
    qrySessiondb_schema_id: TIntegerField;
    qrySessiondb_session_key: TWideStringField;
    qrySessiondb_session_id: TLargeintField;
    qrySessionlanguage_id: TSmallintField;
    qrySessionstart_time: TSQLTimeStampField;
    qrySessioninsert_date: TSQLTimeStampField;
    qrySessionispublic: TBooleanField;
    qrySearchDBUsersProfiles: TPgQuery;
    qrySearchDBUsersProfilesdb_user_id: TIntegerField;
    qrySearchDBUsersProfilesemail: TWideStringField;
    qrySearchDBUsersProfilespublic_email: TWideStringField;
    qrySearchDBUsersProfilestitle: TWideStringField;
    qrySearchDBUsersProfilesfirst_name: TWideStringField;
    qrySearchDBUsersProfileslast_name: TWideStringField;
    qrySearchDBUsersProfilesfull_name: TWideStringField;
    qrySearchDBUsersProfilescountry_id: TSmallintField;
    qrySearchDBUsersProfilesregion_id: TSmallintField;
    qrySearchDBUsersProfilesdistrict_id: TSmallintField;
    qrySearchDBUsersProfilestown_id: TIntegerField;
    qrySearchDBUsersProfilesaddress_street: TWideStringField;
    qrySearchDBUsersProfilesaddress_number: TWideStringField;
    qrySearchDBUsersProfilesaddress_postal_code: TWideStringField;
    qrySearchDBUsersProfilesphone: TWideStringField;
    qrySearchDBUsersProfilescellular_phone: TWideStringField;
    qrySearchDBUsersProfileswork_phone: TWideStringField;
    qrySearchDBUsersProfilesfax_number: TWideStringField;
    qrySearchDBUsersProfilesgender_code: TWideStringField;
    qrySearchDBUsersProfilesbirth_date: TDateField;
    qrySearchDBUsersProfilesbirth_country_id: TSmallintField;
    qrySearchDBUsersProfilesbirth_region_id: TSmallintField;
    qrySearchDBUsersProfilesbirth_district_id: TSmallintField;
    qrySearchDBUsersProfilesbirth_town_id: TIntegerField;
    qrySearchDBUsersProfilesaddress_full: TWideStringField;
    qrySearchDBUsersProfileslatitude: TFloatField;
    qrySearchDBUsersProfileslongitude: TFloatField;
    qrySearchDBUsersProfilesfiscal_code: TWideStringField;
    qrySearchDBUsersProfilessmssent: TBooleanField;
    qrySearchDBUsersProfilessmsconfirmed: TBooleanField;
    qrySearchDBUsersProfilessmsdate: TSQLTimeStampField;
    qrySearchDBUsersProfilessmschecknumber: TWideStringField;
    qrySearchDBUsersProfilesaddress_town: TWideStringField;
    spRevokePayment: TPgStoredProc;
    spUserPaymentEmail: TPgStoredProc;
    qrySearchDBUsersProfilesactive: TBooleanField;
    qrySearchDBUsersProfilespassword: TWideStringField;
    qrySearchDBUsersProfilesusername: TWideStringField;
    qrySearchDBUsersProfilesisactive: TBooleanField;
    qrySearchDBUsersProfilesverify_token: TWideStringField;
    qrySearchDBUsersProfilesverified: TBooleanField;
    qrySearchDBUsersProfilesdefault_schema_id: TIntegerField;
    qrySearchDBUsersProfilesispublic: TBooleanField;
    qrySearchDBUsersProfilesinternal_key: TWideStringField;
    qrySearchDBUsersProfilesdefault_role_id: TSmallintField;
    qrySearchDBUsersProfilessearch_name: TWideStringField;
    qrySearchDBUsersProfilesreverse_search: TWideStringField;
    qrySearchDBUsersProfilesinsert_date: TSQLTimeStampField;
    qrySearchDBUsersProfilesmain_profile_type_id: TSmallintField;
    qrySearchDBUsersProfilesmain_profile_id: TWideStringField;
    qrySearchDBUsersProfilesimage_id: TLargeintField;
    qrySearchDBUsersProfilesimage_url: TWideStringField;
    qrySearchDBUsersProfilesiso_language_code: TWideStringField;
    qrySearchDBUsersProfilesiso_culture_code: TWideStringField;
    qrySearchDBUsersProfilesuser_first_name: TWideStringField;
    qrySearchDBUsersProfilesuser_family_name: TWideStringField;
    qrySearchDBUsersProfilesemailsent: TBooleanField;
    qrySearchDBUsersProfilesemailconfirmed: TBooleanField;
    qrySearchDBUsersProfilesemaildate: TSQLTimeStampField;
    qrySearchDBUsersProfilespayment: TBooleanField;
    qrySearchDBUsersProfilespayment_expiration_date: TDateField;
    qrySearchDBUsersProfilesdb_schema_id: TIntegerField;
    qrySearchDBUsersProfilessuse_jguid: TWideStringField;
    qrySearchDBUsersProfilessuse_deleted: TBooleanField;
    qryUserSessiondb_user_id: TIntegerField;
    qryUserSessiondb_schema_id: TIntegerField;
    qryUserSessiondb_session_key: TWideStringField;
    qryUserSessiondb_session_id: TLargeintField;
    qryUserSessionlanguage_id: TSmallintField;
    qryUserSessionstart_time: TSQLTimeStampField;
    qryUserSessioninsert_date: TSQLTimeStampField;
    qryUserSessionispublic: TBooleanField;
    qryUserSessionsurs_jguid: TWideStringField;
    qryUserSessionsurs_deleted: TBooleanField;
    qryUserSessionactive: TBooleanField;
    qryUserSessionemail: TWideStringField;
    qryUserSessiondb_user_id_1: TIntegerField;
    qryUserSessionpassword: TWideStringField;
    qryUserSessionusername: TWideStringField;
    qryUserSessionisactive: TBooleanField;
    qryUserSessionverify_token: TWideStringField;
    qryUserSessionverified: TBooleanField;
    qryUserSessiondefault_schema_id: TIntegerField;
    qryUserSessionispublic_1: TBooleanField;
    qryUserSessioninternal_key: TWideStringField;
    qryUserSessiondefault_role_id: TSmallintField;
    qryUserSessionsearch_name: TWideStringField;
    qryUserSessionreverse_search: TWideStringField;
    qryUserSessioninsert_date_1: TSQLTimeStampField;
    qryUserSessioncountry_id: TSmallintField;
    qryUserSessionmain_profile_type_id: TSmallintField;
    qryUserSessionmain_profile_id: TWideStringField;
    qryUserSessionimage_id: TLargeintField;
    qryUserSessionimage_url: TWideStringField;
    qryUserSessioniso_language_code: TWideStringField;
    qryUserSessioniso_culture_code: TWideStringField;
    qryUserSessionuser_first_name: TWideStringField;
    qryUserSessionuser_family_name: TWideStringField;
    qryUserSessionemailsent: TBooleanField;
    qryUserSessionemailconfirmed: TBooleanField;
    qryUserSessionemaildate: TSQLTimeStampField;
    qryUserSessionpayment: TBooleanField;
    qryUserSessionpayment_expiration_date: TDateField;
    qryUserSessiondb_schema_id_1: TIntegerField;
    qryUserSessionsuse_jguid: TWideStringField;
    qryUserSessionsuse_deleted: TBooleanField;
    spUserDel: TPgStoredProc;
    qrySearchDBUserSessions: TPgQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    qrySearchUsersactive: TBooleanField;
    qrySearchUsersemail: TWideStringField;
    qrySearchUsersdb_user_id: TIntegerField;
    qrySearchUserspassword: TWideStringField;
    qrySearchUsersusername: TWideStringField;
    qrySearchUsersisactive: TBooleanField;
    qrySearchUsersverify_token: TWideStringField;
    qrySearchUsersverified: TBooleanField;
    qrySearchUsersdefault_schema_id: TIntegerField;
    qrySearchUsersispublic: TBooleanField;
    qrySearchUsersinternal_key: TWideStringField;
    qrySearchUsersdefault_role_id: TSmallintField;
    qrySearchUserssearch_name: TWideStringField;
    qrySearchUsersreverse_search: TWideStringField;
    qrySearchUsersinsert_date: TSQLTimeStampField;
    qrySearchUserscountry_id: TSmallintField;
    qrySearchUsersmain_profile_type_id: TSmallintField;
    qrySearchUsersmain_profile_id: TWideStringField;
    qrySearchUsersimage_id: TLargeintField;
    qrySearchUsersimage_url: TWideStringField;
    qrySearchUsersiso_language_code: TWideStringField;
    qrySearchUsersiso_culture_code: TWideStringField;
    qrySearchUsersuser_first_name: TWideStringField;
    qrySearchUsersuser_family_name: TWideStringField;
    qrySearchUsersemailsent: TBooleanField;
    qrySearchUsersemailconfirmed: TBooleanField;
    qrySearchUsersemaildate: TSQLTimeStampField;
    qrySearchUserspayment: TBooleanField;
    qrySearchUserspayment_expiration_date: TDateField;
    qrySearchUsersuser_deleted: TBooleanField;
    qrySearchUsersdb_schema_id: TIntegerField;
    qrySearchUserssuse_jguid: TWideStringField;
    qrySearchUserssuse_deleted: TBooleanField;
    procedure qrySearchDBUsersProfilesAfterOpen(DataSet: TDataSet);
    procedure qrySearchDBUsersProfilesAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function UserPayment(const aUserID: Integer; const aPayment: Currency; const aDate: TDateTime;
      const aIntervalType: TDBTimeIntervalType = TDBTimeIntervalType.dbiYear;
      const aDuration: Int16 = 1): boolean;
  end;

var
  dmPgSystemStorage: TdmPgSystemStorage;

implementation

uses System.Bindings.Helper;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmPgSystemStorage }

procedure TdmPgSystemStorage.qrySearchDBUsersProfilesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TBindings.Notify(self.qrySearchDBUsersProfilesdb_user_id, 'AsInteger');
end;

procedure TdmPgSystemStorage.qrySearchDBUsersProfilesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  TBindings.Notify(self.qrySearchDBUsersProfilesdb_user_id, 'AsInteger');
end;

function TdmPgSystemStorage.UserPayment(const aUserID: Integer; const aPayment: Currency;
  const aDate: TDateTime; const aIntervalType: TDBTimeIntervalType; const aDuration: Int16): boolean;
begin
  Result := False;

  // (:p_user_id, :p_schema_id, :p_amount, :p_interval_type, :p_interval_duration, :p_payment_date)
  self.spUserPayment.ParamByName('p_user_id').AsInteger := aUserID;
  self.spUserPayment.ParamByName('p_amounth').AsCurrency := aPayment;
  self.spUserPayment.ParamByName('p_interval_type').AsString := pgTimeInterval[aIntervalType];
  self.spUserPayment.ParamByName('p_interval_duration').AsInteger := aDuration;
  self.spUserPayment.ParamByName('p_payment_date').AsDateTime := Date();
  spUserPayment.ExecProc;

  Result := spUserPayment.ParamByName('Result').AsInteger > 0;

end;

end.
