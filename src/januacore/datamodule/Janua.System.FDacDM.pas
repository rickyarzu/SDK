unit Janua.System.FDacDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  // Janua
  Janua.Core.Classes, Janua.Core.Classes.Intf, Janua.Controls.Intf, Janua.Orm.Types,
  // Search Engines
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl, Janua.Search.ViewModels.Engines.Intf,
  // View Models
  Janua.System.ViewModel.Intf, Janua.System.Model.Impl, Janua.Orm.Intf,
  // FDac
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // Inherited DataModule (and its Interfaces)
  Janua.Controls.Forms.Intf, Janua.Bindings.Intf, Janua.Core.DataModule;

type
  TdmFDacMemSystemServer = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
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
    vtSessions: TFDMemTable;
    vtSessionsdb_user_id: TIntegerField;
    vtSessionsdb_schema_id: TIntegerField;
    vtSessionsdb_session_key: TWideStringField;
    vtSessionsdb_session_id: TLargeintField;
    vtSessionslanguage_id: TSmallintField;
    vtSessionsstart_time: TSQLTimeStampField;
    vtSessionsinsert_date: TSQLTimeStampField;
    vtSessionsispublic: TBooleanField;
    vtSessionssurs_jguid: TWideStringField;
    vtSessionssurs_deleted: TBooleanField;
    vtUserSession: TFDMemTable;
    vtUserSessiondb_user_id: TIntegerField;
    vtUserSessiondb_schema_id: TIntegerField;
    vtUserSessiondb_session_key: TWideStringField;
    vtUserSessiondb_session_id: TLargeintField;
    vtUserSessionlanguage_id: TSmallintField;
    vtUserSessionstart_time: TSQLTimeStampField;
    vtUserSessioninsert_date: TSQLTimeStampField;
    vtUserSessionispublic: TBooleanField;
    vtUserSessionsurs_jguid: TWideStringField;
    vtUserSessionsurs_deleted: TBooleanField;
    vtUserSessionactive: TBooleanField;
    vtUserSessionemail: TWideStringField;
    vtUserSessiondb_user_id_1: TIntegerField;
    vtUserSessionpassword: TWideStringField;
    vtUserSessionusername: TWideStringField;
    vtUserSessionisactive: TBooleanField;
    vtUserSessionverify_token: TWideStringField;
    vtUserSessionverified: TBooleanField;
    vtUserSessiondefault_schema_id: TIntegerField;
    vtUserSessionispublic_1: TBooleanField;
    vtUserSessioninternal_key: TWideStringField;
    vtUserSessiondefault_role_id: TSmallintField;
    vtUserSessionsearch_name: TWideStringField;
    vtUserSessionreverse_search: TWideStringField;
    vtUserSessioninsert_date_1: TSQLTimeStampField;
    vtUserSessioncountry_id: TSmallintField;
    vtUserSessionmain_profile_type_id: TSmallintField;
    vtUserSessionmain_profile_id: TWideStringField;
    vtUserSessionimage_id: TLargeintField;
    vtUserSessionimage_url: TWideStringField;
    vtUserSessioniso_language_code: TWideStringField;
    vtUserSessioniso_culture_code: TWideStringField;
    vtUserSessionuser_first_name: TWideStringField;
    vtUserSessionuser_family_name: TWideStringField;
    vtUserSessionemailsent: TBooleanField;
    vtUserSessionemailconfirmed: TBooleanField;
    vtUserSessionemaildate: TSQLTimeStampField;
    vtUserSessionpayment: TBooleanField;
    vtUserSessionpayment_expiration_date: TDateField;
    vtUserSessiondb_schema_id_1: TIntegerField;
    vtUserSessionsuse_jguid: TWideStringField;
    vtUserSessionsuse_deleted: TBooleanField;
    vtUserSessionusse_jguid: TWideStringField;
    vtUserSessionuser_deleted: TBooleanField;
    vtLogin: TFDMemTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

type
  TJanuaFDacMemSystemDM = class(TJanuaCustomSystemDataModule, IJanuaSystemDataModule)
    // set of IJanuaDBDataset and IJanuaDBStoredProcedure
  private
    { Private declarations }
    FDM: TdmFDacMemSystemServer;
  protected
    procedure GetInternalCreate; override;
    { Private declarations }
  public
    { Public declarations }
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

var
  dmFDacMemSystemServer: TdmFDacMemSystemServer;

implementation

uses Janua.Application.Framework, Janua.Orm.Impl, Janua.Orm.Firedac, Janua.Core.Types;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TdmFDacMemSystemServer.DataModuleCreate(Sender: TObject);
begin
  self.vtUsers.Open;
  self.vtUserSession.Open;
end;

{ TJanuaMemSystemDataModule }

constructor TJanuaFDacMemSystemDM.Create;
begin
  inherited;

end;

destructor TJanuaFDacMemSystemDM.Destroy;
begin

  inherited;
end;

procedure TJanuaFDacMemSystemDM.GetInternalCreate;
var
  lSP: IJanuaDBStoredProcedure;
begin
  FInternalCreate := procedure
    begin
      FDM := TdmFDacMemSystemServer.Create(nil);
      SetMainDataModule(FDM);
      // jdsDocRows := TJanuaVtDataset.Create(FDM.vtDocRows, [TJanuaEntity.DocRows]);
      SetjdsLogin(TJanuaVtDataset.Create(FDM.vtLogin, [TJanuaEntity.SysDbUserSessions])); // FjdsLogin
      jdsLogin.Params.AddParam('p_username', TJanuaFieldType.jptString, '');
      jdsLogin.Params.AddParam('p_password', TJanuaFieldType.jptString, '');
      jdsLogin.Params.AddParam('p_email', TJanuaFieldType.jptString, '');

      SetjdsUser(TJanuaVtDataset.Create(FDM.vtUsers, [TJanuaEntity.SysDbUsers])); // FjdsUser
      SetjdsUserSession(TJanuaVtDataset.Create(FDM.vtUserSession, [TJanuaEntity.SysDbUserSessions]));
      SetjdsUserProfile(TJanuaVtDataset.Create(FDM.vtUserProfiles, [TJanuaEntity.SysDbUsersProfiles]));
      SetjdsGetUserByKey(TJanuaVtDataset.Create(FDM.vtUsers, [TJanuaEntity.SysDbUsers])); // FjdsUser
      SetjdsGetUserByKey(TJanuaVtDataset.Create(FDM.vtUsers, [TJanuaEntity.SysDbUsers])); // FjdsUser
      SetjdsSearchUserProfile(TJanuaVtDataset.Create(FDM.vtUserProfiles, [TJanuaEntity.SysDbUsersProfiles]));

      lSP := TJanuaVtStoredProcedure.Create(FDM.vtLogin, TJanuaFieldType.jptString, 'XRRYYYXXXHHH',
        [TJanuaEntity.SysDbUsers]);
      { lDataModule.jspLogin.ParamByName('p_username').AsString := '';
        lDataModule.jspLogin.ParamByName('p_password').AsString := aPassword;
        lDataModule.jspLogin.ParamByName('p_email').AsString := aUsername;
      }
      lSP.Params.AddParam('p_username', TJanuaFieldType.jptString, '');
      lSP.Params.AddParam('p_password', TJanuaFieldType.jptString, '');
      lSP.Params.AddParam('p_email', TJanuaFieldType.jptString, '');
      SetjspLogin(lSP);
      SetjspLoginSocial(lSP);
      SetjspUserAdd(lSP);
      lSP := TJanuaVtStoredProcedure.Create(FDM.vtLogin, TJanuaFieldType.jptInteger, 1,
        [TJanuaEntity.SysDbUsers]);
      SetjspUserTest(lSP);
      // SELECT system.assign_anagraphid_to_user(:p_anagraph_id, :p_db_user_id)
      lSP := TJanuaVtStoredProcedure.Create(FDM.vtLogin, TJanuaFieldType.jptBoolean, True,
        [TJanuaEntity.SysDbUsers]);
      lSP.Params.AddParam('p_anagraph_id', TJanuaFieldType.jptInteger, 0);
      lSP.Params.AddParam('p_db_user_id', TJanuaFieldType.jptInteger, 0);
      SetjspAddAnagraphProfile(lSP);
      SetjspUpdateUserAnID(lSP);


      { Guard.CheckNotNull(FDM.jdsNewAnagraphProfile, 'FDM.jdsNewAnagraphProfile');
        Guard.CheckNotNull(FDM.jspUpdateUserAnID, 'FDM.jspUpdateUserAnID'); }

      // fdmAnagraphProfile
      // SELECT system.userdel(:p_user_id)
      lSP := TJanuaVtStoredProcedure.Create(FDM.vtLogin, TJanuaFieldType.jptBoolean, True,
        [TJanuaEntity.SysDbUsers]);
      lSP.Params.AddParam('p_user_id', TJanuaFieldType.jptInteger, 0);
      SetjspUserDel(lSP);
      jdsUserSession.Params.AddParam('db_session_key', TJanuaFieldType.jptString, '');
      jdsUser.Params.AddParam('db_user_id', TJanuaFieldType.jptString, '');
      jdsUserProfile.Params.AddParam('db_user_id', TJanuaFieldType.jptString, '');

      { jspUserTest.ParamByName('p_username').AsString := aUser.User.Username.AsString;
        jspUserTest.ParamByName('p_email').AsString := aUser.User.Email.AsString;
        jspUserTest.ExecSQL;
        Result := jspUserTest.ParamByName('Result').AsInteger = 0;
      }

      lSP.Params.AddParam('p_username', TJanuaFieldType.jptString, '');
      lSP.Params.AddParam('p_password', TJanuaFieldType.jptString, '');
      lSP.Params.AddParam('p_email', TJanuaFieldType.jptString, '');
      lSP.Params.AddParam('Result', TJanuaFieldType.jptInteger, 0);

      SetjspUserTest(lSP);

      {
        SetjspCreatePersonalSchema(TJanuaPgStoredProcedure.Create(FDM.spCreatePersonalSchema, []));
        SetjspSetUserDefaultSchema(TJanuaPgStoredProcedure.Create(FDM.spSetUserDefaultSchema, [])); }
    end;

end;

procedure TdmFDacMemSystemServer.RefreshDetails;
begin
  inherited;
  // This unit is a 'Mock' unit so does nothing :)
end;

end.
