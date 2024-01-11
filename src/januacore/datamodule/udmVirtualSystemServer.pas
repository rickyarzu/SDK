unit udmVirtualSystemServer;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmVirtualSystemServer = class(TDataModule)
    vtUsers: TFDMemTable;
    vtUserProfiles: TFDMemTable;
    vtUsersactive: TBooleanField;
    vtUsersemail: TStringField;
    vtUsersdb_user_id: TIntegerField;
    vtUserspassword: TStringField;
    vtUsersusername: TStringField;
    vtUsersisactive: TBooleanField;
    vtUsersverify_token: TStringField;
    vtUsersverified: TBooleanField;
    vtUsersdefault_schema_id: TIntegerField;
    vtUsersispublic: TBooleanField;
    vtUsersinternal_key: TStringField;
    vtUsersdefault_role_id: TSmallintField;
    vtUserssearch_name: TStringField;
    vtUsersreverse_search: TStringField;
    vtUsersinsert_date: TDateTimeField;
    vtUserscountry_id: TSmallintField;
    vtUsersmain_profile_type_id: TSmallintField;
    vtUsersmain_profile_id: TStringField;
    vtUsersimage_id: TLargeintField;
    vtUsersimage_url: TStringField;
    vtUsersiso_language_code: TStringField;
    vtUsersiso_culture_code: TStringField;
    vtUsersuser_first_name: TStringField;
    vtUsersuser_family_name: TStringField;
    vtUsersemailsent: TBooleanField;
    vtUsersemailconfirmed: TBooleanField;
    vtUsersemaildate: TDateTimeField;
    vtUserspayment: TBooleanField;
    vtUserspayment_expiration_date: TDateField;
    vtUsersjguid: TStringField;
    vtUsersdeleted: TBooleanField;
    vtUsersssrs_jguid: TStringField;
    vtUsersssrs_deleted: TBooleanField;
    vtUserProfilesdb_user_id: TIntegerField;
    vtUserProfilescountry_id: TSmallintField;
    vtUserProfilesregion_id: TSmallintField;
    vtUserProfilesdistrict_id: TSmallintField;
    vtUserProfilestown_id: TIntegerField;
    vtUserProfilesfirst_name: TStringField;
    vtUserProfileslast_name: TStringField;
    vtUserProfilesaddress_street: TStringField;
    vtUserProfilesaddress_number: TStringField;
    vtUserProfilesaddress_postal_code: TStringField;
    vtUserProfilesphone: TStringField;
    vtUserProfilescellular_phone: TStringField;
    vtUserProfileswork_phone: TStringField;
    vtUserProfilesfax_number: TStringField;
    vtUserProfilesgender_code: TStringField;
    vtUserProfilesbirth_date: TDateField;
    vtUserProfilesbirth_country_id: TSmallintField;
    vtUserProfilesbirth_region_id: TSmallintField;
    vtUserProfilesbirth_district_id: TSmallintField;
    vtUserProfilesbirth_town_id: TIntegerField;
    vtUserProfilespublic_email: TStringField;
    vtUserProfilestitle: TStringField;
    vtUserProfilessearch_name: TStringField;
    vtUserProfilesreverse_search: TStringField;
    vtUserProfilesaddress_full: TStringField;
    vtUserProfileslatitude: TFloatField;
    vtUserProfileslongitude: TFloatField;
    vtUserProfilesfiscal_code: TStringField;
    vtUserProfilessmssent: TBooleanField;
    vtUserProfilessmsconfirmed: TBooleanField;
    vtUserProfilessmsdate: TDateTimeField;
    vtUserProfilessmschecknumber: TStringField;
    vtUserProfilesaddress_town: TStringField;
    vtUserProfilesp_facebook_json: TMemoField;
    vtUserProfilesfacebook_json: TMemoField;
    vtSession: TFDMemTable;
    vtSessiondb_user_id: TIntegerField;
    vtSessiondb_schema_id: TIntegerField;
    vtSessiondb_session_key: TWideStringField;
    vtSessiondb_session_id: TLargeintField;
    vtSessionlanguage_id: TSmallintField;
    vtSessionstart_time: TSQLTimeStampField;
    vtSessioninsert_date: TSQLTimeStampField;
    vtSessionispublic: TBooleanField;
    vtSessionsurs_jguid: TWideStringField;
    vtSessionsurs_deleted: TBooleanField;
    vtUserSessions: TFDMemTable;
    vtUserSessionsdb_user_id: TIntegerField;
    vtUserSessionsdb_schema_id: TIntegerField;
    vtUserSessionsdb_session_key: TWideStringField;
    vtUserSessionsdb_session_id: TLargeintField;
    vtUserSessionslanguage_id: TSmallintField;
    vtUserSessionsstart_time: TSQLTimeStampField;
    vtUserSessionsinsert_date: TSQLTimeStampField;
    vtUserSessionsispublic: TBooleanField;
    vtUserSessionssurs_jguid: TWideStringField;
    vtUserSessionssurs_deleted: TBooleanField;
    vtUserSessionsactive: TBooleanField;
    vtUserSessionsemail: TWideStringField;
    vtUserSessionsdb_user_id_1: TIntegerField;
    vtUserSessionspassword: TWideStringField;
    vtUserSessionsusername: TWideStringField;
    vtUserSessionsisactive: TBooleanField;
    vtUserSessionsverify_token: TWideStringField;
    vtUserSessionsverified: TBooleanField;
    vtUserSessionsdefault_schema_id: TIntegerField;
    vtUserSessionsispublic_1: TBooleanField;
    vtUserSessionsinternal_key: TWideStringField;
    vtUserSessionsdefault_role_id: TSmallintField;
    vtUserSessionssearch_name: TWideStringField;
    vtUserSessionsreverse_search: TWideStringField;
    vtUserSessionsinsert_date_1: TSQLTimeStampField;
    vtUserSessionscountry_id: TSmallintField;
    vtUserSessionsmain_profile_type_id: TSmallintField;
    vtUserSessionsmain_profile_id: TWideStringField;
    vtUserSessionsimage_id: TLargeintField;
    vtUserSessionsimage_url: TWideStringField;
    vtUserSessionsiso_language_code: TWideStringField;
    vtUserSessionsiso_culture_code: TWideStringField;
    vtUserSessionsuser_first_name: TWideStringField;
    vtUserSessionsuser_family_name: TWideStringField;
    vtUserSessionsemailsent: TBooleanField;
    vtUserSessionsemailconfirmed: TBooleanField;
    vtUserSessionsemaildate: TSQLTimeStampField;
    vtUserSessionspayment: TBooleanField;
    vtUserSessionspayment_expiration_date: TDateField;
    vtUserSessionsdb_schema_id_1: TIntegerField;
    vtUserSessionssuse_jguid: TWideStringField;
    vtUserSessionssuse_deleted: TBooleanField;
    vtUserSessionsusse_jguid: TWideStringField;
    vtUserSessionsuser_deleted: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVirtualSystemServer: TdmVirtualSystemServer;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TdmVirtualSystemServer.DataModuleCreate(Sender: TObject);
begin
  self.vtUsers.Open;
  Self.vtUserSessions.Open;
end;

end.
