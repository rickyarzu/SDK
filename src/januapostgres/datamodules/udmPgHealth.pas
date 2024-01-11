unit udmPgHealth;

interface

uses
  System.SysUtils, System.Classes,
  // Devart
  PgAccess, Data.DB, MemDS, DBAccess,
  // Datasnap
  Datasnap.Provider, Datasnap.DBClient,
  // DataModules
  udmJanuaPostgresModel,
  // Janua
  Janua.Core.Types, Janua.Core.Health, Janua.Postgres.Functions, Janua.Core.System, Janua.Core.Functions,
  Janua.Core.JPublic, Janua.Core.Mail, Janua.Core.Classes;

type
  TdmPgHealth = class(TdmJanuaPostgresModel)
    dsBranches: TDataSource;
    tbBranches: TPgTable;
    tbBranchSpecialities: TPgQuery;
    tbBranchSpecialitiesbranch_id: TSmallintField;
    tbBranchSpecialitiesspeciality_id: TSmallintField;
    tbBranchSpecialitiesspeciality_code: TWideStringField;
    tbBranchSpecialitiesspeciality_name: TWideStringField;
    health_districts: TPgQuery;
    health_districtsdistrict_id: TSmallintField;
    health_districtsregion_id: TSmallintField;
    health_districtsiso_district_code: TWideStringField;
    health_districtsdistrict_name: TWideStringField;
    health_districtslocal_district_code: TWideStringField;
    health_districtsnumberplate_code: TWideStringField;
    dsHealthDistricts: TDataSource;
    prcCreateNewDoctor: TPgStoredProc;
    tbLocalOrganizations: TPgTable;
    tbLocalOrganizationsorganization_id: TSmallintField;
    tbLocalOrganizationsorganization_code: TWideStringField;
    tbLocalOrganizationsmaster_organization_id: TSmallintField;
    tbLocalOrganizationscountry_id: TSmallintField;
    tbLocalOrganizationsregion_id: TSmallintField;
    tbLocalOrganizationsorganization_name: TWideStringField;
    tbLocalOrganizationsdistrict_id: TSmallintField;
    tbLocalOrganizationstown_id: TIntegerField;
    tbRegions: TPgTable;
    tbRegionsregion_id: TSmallintField;
    tbRegionsregion_name: TWideStringField;
    tbRegionsiso_region_code: TWideStringField;
    tbRegionslocal_region_code: TWideStringField;
    tbRegionscountry_id: TSmallintField;
    dsRegions: TDataSource;
    tbHealthProfile: TPgQuery;
    qryAssociations: TPgQuery;
    qryAssociationsassociation_id: TSmallintField;
    qryAssociationsassociation_name: TWideStringField;
    qryAssociationscountry_id: TSmallintField;
    qryAssociationstype_id: TSmallintField;
    cdsBranches: TClientDataSet;
    dspBranches: TDataSetProvider;
    tbBranchesbranch_id: TSmallintField;
    tbBranchesbranch_code: TWideStringField;
    tbBranchesbranch_name: TWideStringField;
    tbBranchesinsert_date: TSQLTimeStampField;
    tbBranchesupdate_date: TSQLTimeStampField;
    tbBranchSpecialitiesinsert_date: TSQLTimeStampField;
    tbBranchSpecialitiesupdate_date: TSQLTimeStampField;
    cdsBranchesbranch_id: TSmallintField;
    cdsBranchesbranch_code: TWideStringField;
    cdsBranchesbranch_name: TWideStringField;
    cdsBranchesinsert_date: TSQLTimeStampField;
    cdsBranchesupdate_date: TSQLTimeStampField;
    cdsBranchestbBranchSpecialities: TDataSetField;
    cdsBranchSpecialities: TClientDataSet;
    qryAssociationsaddress: TWideStringField;
    qryAssociationsurl: TWideStringField;
    qryAssociationsemail: TWideStringField;
    qryAssociationsphone: TWideStringField;
    qryAssociationsfax: TWideStringField;
    qryAssociationstown_id: TIntegerField;
    qryAssociationsdistrict_id: TSmallintField;
    qryAssociationsregion_id: TSmallintField;
    qryAssociationsanagraph_id: TIntegerField;
    qryAssociationsdb_schema_id: TIntegerField;
    qryAssociationspostal_code: TWideStringField;
    qryAssociationscode: TWideStringField;
    dspAssociations: TDataSetProvider;
    cdsAssociations: TClientDataSet;
    cdsAssociationsassociation_id: TSmallintField;
    cdsAssociationsassociation_name: TWideStringField;
    cdsAssociationscountry_id: TSmallintField;
    cdsAssociationstype_id: TSmallintField;
    cdsAssociationsaddress: TWideStringField;
    cdsAssociationsurl: TWideStringField;
    cdsAssociationsemail: TWideStringField;
    cdsAssociationsphone: TWideStringField;
    cdsAssociationsfax: TWideStringField;
    cdsAssociationstown_id: TIntegerField;
    cdsAssociationsdistrict_id: TSmallintField;
    cdsAssociationsregion_id: TSmallintField;
    cdsAssociationsanagraph_id: TIntegerField;
    cdsAssociationsdb_schema_id: TIntegerField;
    cdsAssociationspostal_code: TWideStringField;
    cdsAssociationscode: TWideStringField;
    qrySpecialities: TPgQuery;
    dsSpecialities: TDataSource;
    qrySubSpecialities: TPgQuery;
    cdsSpecialities: TClientDataSet;
    dspSpecialities: TDataSetProvider;
    cdsSpecialitiesspeciality_id: TSmallintField;
    cdsSpecialitiesspeciality_code: TWideStringField;
    cdsSpecialitiesspeciality_name: TWideStringField;
    cdsSpecialitiesqrySubSpecialities: TDataSetField;
    qryCouncils: TPgQuery;
    cdsSubSpecialities: TClientDataSet;
    cdsSubSpecialitiessubspeciality_id: TSmallintField;
    cdsSubSpecialitiesspeciality_id: TSmallintField;
    cdsSubSpecialitiessubspeciality_name: TWideStringField;
    dspHealthRegions: TDataSetProvider;
    cdsHealthRegions: TClientDataSet;
    cdsLocalOrganizations: TClientDataSet;
    cdsHealthRegionsregion_id: TSmallintField;
    cdsHealthRegionsregion_name: TWideStringField;
    cdsHealthRegionsiso_region_code: TWideStringField;
    cdsHealthRegionslocal_region_code: TWideStringField;
    cdsHealthRegionscountry_id: TSmallintField;
    cdsHealthRegionshealth_districts: TDataSetField;
    cdsHealthRegionstbLocalOrganizations: TDataSetField;
    cdsLocalOrganizationsorganization_id: TSmallintField;
    cdsLocalOrganizationsorganization_code: TWideStringField;
    cdsLocalOrganizationsmaster_organization_id: TSmallintField;
    cdsLocalOrganizationscountry_id: TSmallintField;
    cdsLocalOrganizationsregion_id: TSmallintField;
    cdsLocalOrganizationsorganization_name: TWideStringField;
    cdsLocalOrganizationsdistrict_id: TSmallintField;
    cdsLocalOrganizationstown_id: TIntegerField;
    cdsHealthDistricts: TClientDataSet;
    cdsHealthDistrictsdistrict_id: TSmallintField;
    cdsHealthDistrictsregion_id: TSmallintField;
    cdsHealthDistrictsiso_district_code: TWideStringField;
    cdsHealthDistrictsdistrict_name: TWideStringField;
    cdsHealthDistrictslocal_district_code: TWideStringField;
    cdsHealthDistrictsnumberplate_code: TWideStringField;
    qryCouncilscouncil_id: TSmallintField;
    qryCouncilscountry_id: TSmallintField;
    qryCouncilscouncil_name: TWideStringField;
    qryCouncilsregion_id: TSmallintField;
    cdsCouncils: TClientDataSet;
    dspCouncils: TDataSetProvider;
    cdsCouncilscouncil_id: TSmallintField;
    cdsCouncilscountry_id: TSmallintField;
    cdsCouncilscouncil_name: TWideStringField;
    cdsCouncilsregion_id: TSmallintField;
    cdsBranchSpecialitiesbranch_id: TSmallintField;
    cdsBranchSpecialitiesspeciality_id: TSmallintField;
    cdsBranchSpecialitiesspeciality_code: TWideStringField;
    cdsBranchSpecialitiesspeciality_name: TWideStringField;
    cdsBranchSpecialitiesinsert_date: TSQLTimeStampField;
    cdsBranchSpecialitiesupdate_date: TSQLTimeStampField;
    dsCouncils: TDataSource;
    dsHealthRegions: TDataSource;
    dsLocalOranizations: TDataSource;
    qrySearchDoctor: TPgQuery;
    qrySearchUserProfile: TPgQuery;
    qryNotifications: TPgQuery;
    qryNotificationsid: TLargeintField;
    qryNotificationstype_id: TSmallintField;
    qryNotificationstitle: TWideStringField;
    qryNotificationsmessage: TWideMemoField;
    qryNotificationsdb_schema_id: TIntegerField;
    qryNotificationsdb_user_id: TIntegerField;
    qryNotificationsdatetime: TSQLTimeStampField;
    qryNotificationsread: TBooleanField;
    qryNotificationsbooking_id: TLargeintField;
    qryNotificationssolved: TBooleanField;
    qryNotificationsfrom_user_id: TIntegerField;
    qryNotificationsbooking_action: TSmallintField;
    qryNotificationslevel: TSmallintField;
    qryNotificationstype_name: TWideStringField;
    tbHealthProfiledb_schema_id: TIntegerField;
    tbHealthProfiledb_user_id: TIntegerField;
    tbHealthProfileorganization_id: TSmallintField;
    tbHealthProfilecouncil_id: TSmallintField;
    tbHealthProfileassociation_id: TSmallintField;
    tbHealthProfiletown_id: TIntegerField;
    tbHealthProfileassociation_number: TWideStringField;
    tbHealthProfileassociation_date: TDateField;
    tbHealthProfilegroup_id: TSmallintField;
    tbHealthProfilecountry_id: TSmallintField;
    tbHealthProfilespeciality_id: TSmallintField;
    tbHealthProfilesub_speciality_id: TSmallintField;
    tbHealthProfileregion_id: TSmallintField;
    tbHealthProfiledistrict_id: TIntegerField;
    tbHealthProfilecouncil_number: TWideStringField;
    tbHealthProfilecouncil_date: TDateField;
    qrySpecialitiesid: TSmallintField;
    qrySpecialitiescode: TWideStringField;
    qrySpecialitiesname: TWideStringField;
    qrySpecialitiesmain_discipline_id: TSmallintField;
    qrySubSpecialitiesid: TSmallintField;
    qrySubSpecialitiesspeciality_id: TSmallintField;
    qrySubSpecialitiesname: TWideStringField;
    qrySearchDoctordb_schema_id: TIntegerField;
    qrySearchDoctordb_user_id: TIntegerField;
    qrySearchDoctororganization_id: TSmallintField;
    qrySearchDoctorcouncil_id: TSmallintField;
    qrySearchDoctorassociation_id: TSmallintField;
    qrySearchDoctortown_id: TIntegerField;
    qrySearchDoctorassociation_number: TWideStringField;
    qrySearchDoctorassociation_date: TDateField;
    qrySearchDoctorgroup_id: TSmallintField;
    qrySearchDoctorcountry_id: TSmallintField;
    qrySearchDoctorspeciality_id: TSmallintField;
    qrySearchDoctorsub_speciality_id: TSmallintField;
    qrySearchDoctorregion_id: TSmallintField;
    qrySearchDoctordistrict_id: TIntegerField;
    qrySearchDoctorcouncil_number: TWideStringField;
    qrySearchDoctorcouncil_date: TDateField;
    qrySearchDoctorfull_name: TWideMemoField;
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
    procedure tbBranchesAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject); override;
    procedure tbHealthProfileNewRecord(DataSet: TDataSet);
    procedure tbHealthProfileBeforeOpen(DataSet: TDataSet);
  private
    FDoctor: TJanuaRecordDoctor;
    FRegisterError: TJanuaRegisterError;
    // FRegions: array of TRegion;
    FLocalOrganizations: TOrganization;
    // FNumRegioni: integer;
    // FNumAsl: integer;
    FProfile: THealthProfileForms;
    FLocalTest: boolean;
    FSessionKey: string;
    procedure SetDoctor(const Value: TJanuaRecordDoctor);
    procedure ConnectSessionProfile;
    procedure SetSessionKey(const Value: string); override;
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    procedure SetLocalOrganizations(const Value: TOrganization);
    // procedure SetNumAsl(const Value: integer);
    // procedure SetNumRegioni(const Value: integer);
    procedure SetProfile(const Value: THealthProfileForms);
    procedure SetLocalTest(const Value: boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure SetDoctorFromQuery;
    procedure SetHealthConfiguration;
    procedure SetAsl(aAsl: string);
    function findDoctorByKey(Key: string): boolean;
    function SetNewDoctor(aDoctor: TJanuaRecordDoctor): boolean;
    function UpdateDoctor(aDoctor: TJanuaRecordDoctor): boolean;
    // function FindRegionByName(sName: string; bFound: boolean): TRegion;
    function SaveArticle: boolean;
    function ApplyArticle: boolean;
    function FindDistrinctByID(sID: integer; var District: TDistrict): boolean;
    procedure FlterBranche(branca: string);
    procedure PopulateAsl;
    procedure SetDottoreOrdine(rID, oID: integer);
    procedure SetDottoreProvincia(rID, sID: integer);
    function UploadConfig: boolean;
    procedure SetUserProfile(Profile: TJanuaRecordUserProfile);
    function AddDoctorProfile(aDoctor: TJanuaRecordDoctor): boolean;
    function CheckDoctorExists(aDoctor: TJanuaRecordDoctor): boolean;
    function SearchUserProfilebyID(ID: integer): boolean;
    function ReadNotifications(aUser: TJanuaRecordUserProfile): integer; overload;
    function ReadNotifications: integer; overload;
    function AddNotification(const aUser: TJanuaRecordUserProfile; var aNotification: TJanuaHealthNotification): Int64;
  published
    property Doctor: TJanuaRecordDoctor read FDoctor write SetDoctor;
    property SessionKey: string read FSessionKey write SetSessionKey;
    property RegisterError: TJanuaRegisterError read FRegisterError write SetRegisterError;
    property LocalOrganizations: TOrganization read FLocalOrganizations write SetLocalOrganizations;
    // property NumRegioni: integer read FNumRegioni write SetNumRegioni;
    // property NumAsl: integer read FNumAsl write SetNumAsl;
    property Profile: THealthProfileForms read FProfile write SetProfile;
    property LocalTest: boolean read FLocalTest write SetLocalTest;
  end;

var
  dmPgHealth: TdmPgHealth;

implementation

{$R *.dfm}
{ TdmHealth }

procedure TdmPgHealth.SetDottoreOrdine(rID, oID: integer);
begin
  { TODO -oRiccardo -cHealth : Impostare la funzione set Dottore Ordine }
end;

procedure TdmPgHealth.SetDottoreProvincia(rID, sID: integer);
begin
  { TODO -oRiccardo -cHealth : Impostare la funzione set Dottore Provincia }
end;

procedure TdmPgHealth.FlterBranche(branca: string);
begin
  if self.tbBranches.Locate('branch_name', branca, [loCaseInsensitive]) then
  begin
    FDoctor.HealthLocation.Branch.code := self.tbBranchesbranch_code.AsString;
    FDoctor.HealthLocation.Branch.ID := self.tbBranchesbranch_id.AsInteger;
    FDoctor.HealthLocation.Branch.name := self.tbBranchesbranch_name.AsString;

    // una volta filtrata la branca occorre andare a posizionare la 'specialità'

    self.tbBranchSpecialities.Close;
    ServerFunctions.OpenDataset(self.tbBranchSpecialities);

    {
      if tbBranchSpecialities.RecordCount > 0 then
      begin
      tbBranchSpecialities.First;
      FListaSpecialita.Clear;
      while not tbBranchSpecialities.Eof do
      begin
      FListaSpecialita.Add(self.tbBranchSpecialitiesspeciality_name.AsString);
      tbBranchSpecialities.Next;
      end;
      end;
    }
  end;
end;

function TdmPgHealth.FindDistrinctByID(sID: integer; var District: TDistrict): boolean;
var
  lDistrict: TDistrict;
begin
  {
    for lDistrict in self.FConfig.HealthDistricts do
    if lDistrict.ID = sID then begin
    District := lDistrict;
    Exit(True);
    end;
  }
  Result := False;
end;

function TdmPgHealth.AddDoctorProfile(aDoctor: TJanuaRecordDoctor): boolean;
begin
  try
    self.WriteLog('TdmHealth.AddDoctorProfile(aDoctor: TJanuaRecordDoctor)');
    self.SetUserProfile(aDoctor.Profile);
    if not self.SearchUserProfilebyID(aDoctor.Profile.User.ID) then
      self.tbHealthProfile.Append;
    aDoctor.SaveToDataset(self.tbHealthProfile);
    Result := True;
  except
    on e: exception do
    begin
      self.LastErrorMessage := e.Message;
      self.tbHealthProfile.Cancel;
      Result := False;
      ServerFunctions.WriteError('TdmHealth.AddDoctorProfile: errore registrazione profilo medico ', e);
    end;
  end;
end;

function TdmPgHealth.AddNotification(const aUser: TJanuaRecordUserProfile;
  var aNotification: TJanuaHealthNotification): Int64;
begin
  self.UserProfile := aUser;
  self.ReadNotifications;
  self.qryNotifications.Append;
  aNotification.SaveToDataset(self.qryNotifications);
  if self.qryNotifications.State in [dsInsert, dsEdit] then
    self.qryNotifications.Post;
  Result := self.qryNotificationsid.AsLargeInt;
end;

function TdmPgHealth.ApplyArticle: boolean;
begin
  Result := False;
end;

function TdmPgHealth.CheckDoctorExists(aDoctor: TJanuaRecordDoctor): boolean;
begin
  { SELECT p.* FROM health.health_profile p, system.db_user_sessions s WHERE
    s.db_session_key = :db_session_key
    -- and
    -- p.db_schema_id = s.db_schema_id
    and p.db_user_id = :db_user_id and p.regnumber = :p_regnumber and p.council_id = :p_council_id }
  self.qrySearchDoctor.Close;
  self.qrySearchDoctor.ParamByName('db_session_key').AsWideString := self.FSessionKey;
  self.qrySearchDoctor.ParamByName('p_regnumber').AsWideString := aDoctor.regnumber;
  self.qrySearchDoctor.ParamByName('p_council_id').AsInteger := aDoctor.HealthLocation.Council.ID;
  ServerFunctions.OpenDataset(qrySearchDoctor);

  Result := self.qrySearchDoctor.RecordCount > 0;

end;

procedure TdmPgHealth.ConnectSessionProfile;
begin
  self.PgErgoConnection.Connect;
  self.tbHealthProfile.ParamByName('db_session_key').AsString := self.FSessionKey;
  self.tbHealthProfile.ParamByName('db_user_id').AsInteger := self.Doctor.Profile.User.ID;
  self.ServerFunctions.OpenDataset(tbHealthProfile);
  WriteLog('Connesso alla sessione: ' + FSessionKey + 'usr: ' + self.tbHealthProfiledb_user_id.AsString);
end;

procedure TdmPgHealth.DataModuleCreate(Sender: TObject);
begin
  inherited;
  self.WriteLog('creato datamodule TdmHealth');
  FDoctor.isSet := False;
end;

function TdmPgHealth.findDoctorByKey(Key: string): boolean;
begin
  // self.System.FindUserbyKey(Key);
  { TODO : Implementare la funzione server find user by Key }
  Result := False;

  if Result then
    SetDoctorFromQuery;
end;

{
  function TdmPgHealth.FindRegionByName(sName: string; bFound: boolean): TRegion;
  var
  i: integer;
  begin
  bFound := False;
  for i := 0 to Length(FRegions) do
  if FRegions[i].Region.name = sName then
  begin
  Result := FRegions[i];
  bFound := True;
  Exit;
  end;
  end;
}

function TdmPgHealth.SaveArticle: boolean;
begin
  Result := False;
end;

function TdmPgHealth.SearchUserProfilebyID(ID: integer): boolean;
begin
  Result := False;
  try
    self.tbHealthProfile.Close;
    self.tbHealthProfile.ParamByName('db_user_id').AsInteger := ID;
    ServerFunctions.OpenDataset(self.tbHealthProfile);

    if not self.qryUserProfile.Active or (self.qrySearchUserProfiledb_user_id.AsInteger <> ID) then
    begin
      qrySearchUserProfile.Close;
      qrySearchUserProfile.ParamByName('db_user_id').AsInteger := ID;
      self.ServerFunctions.OpenDataset(qrySearchUserProfile);
    end;

    Result := (tbHealthProfile.RecordCount = 1) and (qrySearchUserProfiledb_user_id.AsInteger = ID);
  except
    on e: exception do
    begin
      Result := False;
      self.Haserrors := True;
      self.FLastErrorMessage := 'TdmPgHealth.SearchUserProfilebyID: ' + ID.ToString + sLineBreak + 'Error: ' +
        e.Message;
    end;

  end;
end;

procedure TdmPgHealth.SetAsl(aAsl: string);
begin
  if self.tbLocalOrganizations.Locate('organization_name', aAsl, []) then
  begin
    FDoctor.HealthLocation.Organization.code := tbLocalOrganizationsorganization_code.AsString;
    FDoctor.HealthLocation.Organization.ID := tbLocalOrganizationsorganization_id.AsInteger;
  end;
end;

procedure TdmPgHealth.SetDoctor(const Value: TJanuaRecordDoctor);
begin
  FDoctor := Value;
end;

procedure TdmPgHealth.SetDoctorFromQuery;
begin
  try
    self.WriteLog('SetDoctorFromQuery ConnectSessionProfile');
    self.ConnectSessionProfile;
    self.WriteLog('SetDoctorFromQuery tbHealthProfile');
    self.tbHealthProfile.Close;
    self.tbHealthProfile.ParamByName('db_session_key').AsString := self.FSessionKey;
    self.tbHealthProfile.ParamByName('db_user_id').AsInteger := self.FDoctor.Profile.User.ID;
    ServerFunctions.OpenDataset(self.tbHealthProfile);
    if self.tbHealthProfile.RecordCount = 0 then
    begin
      self.WriteLog('SetDoctorFromQuery  tbHealthProfile trovati 0 records ......');
    end
    else
      self.WriteLog('SetDoctorFromQuery SetFromDataset tbHealthProfile');
    self.FDoctor.SetFromDataset(self.tbHealthProfile);
  except
    on e: exception do
    begin
      self.WriteError('Errore: TdmHealth.SetDoctorFromQuery', e);
    end;

  end;
end;

procedure TdmPgHealth.PopulateAsl;
begin
  { type THealthConfig = record
    Branches: array of TBranch;
    MedAssociations: array of TMedAssociation;
    Councils: array of TCouncil;
    Country: TCountry;
    end; }

  { id : integer;
    index : integer;
    code  :  string;
    name : string;
    specialities : array of TSpeciality;
    speccount : integer;
    Indent: integer; }

  if (not tbBranches.Active) or (tbBranches.RecordCount = 0) then
    with self.FDoctor.HealthLocation.Config do
    begin
      try
        self.WriteLog('TdmPgHealth.PopulateAsl Aggiornamento configurazione');
        self.WriteLog('TdmPgHealth.PopulateAsl Aggiornamento cdsSubSpecialities');
        SetBranchFromDataset(self.cdsSpecialities, self.cdsSubSpecialities);
        self.WriteLog('TdmPgHealth.PopulateAsl Aggiornamento cdsAssociations');
        setMedAssociationFromDataset(self.cdsAssociations);
        self.WriteLog('TdmPgHealth.PopulateAsl Aggiornamento cdsCouncils');
        setCounciFromDataset(self.cdsCouncils);
        self.WriteLog
          ('TdmPgHealth.PopulateAsl Aggiornamento cdsHealthRegions cdsHealthDistricts cdsLocalOrganizations');
        setRegionFromDataset(cdsHealthRegions, cdsHealthDistricts, cdsLocalOrganizations);
        self.WriteLog('TdmPgHealth.PopulateAsl Terminato Aggiornamento configurazione');
      finally
        if not self.FLocalTest then
        begin
          self.tbBranches.Close;
          self.tbBranchSpecialities.Close;
        end;
      end;
    end;
  self.WriteLog('TdmPgHealth.PopulateAsl SetDoctorFromQuery');
  SetDoctorFromQuery;

end;

function TdmPgHealth.ReadNotifications(aUser: TJanuaRecordUserProfile): integer;
begin
  self.FUserProfile := aUser;
  Result := self.ReadNotifications;
end;

function TdmPgHealth.ReadNotifications: integer;
begin
  self.qryNotifications.ParamByName('db_user_id').AsInteger := self.FUserProfile.User.ID;
  self.ServerFunctions.OpenDataset(qryNotifications);
  Result := self.qryNotifications.RecordCount;
end;

procedure TdmPgHealth.SetHealthConfiguration;
begin
  // impostazione delle Regioni bloccata per ora ....................................................
  {
    self.ServerFunctions.OpenDataset(tbRegions);
    tbRegions.Last;
    SetLength(FHealthConfig.Regions, tbRegions.RecordCount);
    tbRegions.First;
    i := 0;

    while not tbRegions.Eof do
    begin
    FHealthConfig.Regions[i].Region.name := self.tbRegionsregion_name.AsString;
    FHealthConfig.Regions[i].Region.code := self.tbRegionslocal_region_code.AsString;

    // FHealthConfig.Regions.Add(FHealthConfig.Regions[i].Name);

    self.ServerFunctions.OpenDataset(tbLocalOrganizations);
    // local Orgnizations sono le Asl dipendenti dalle Regioni da distringuere
    // dai Medical Councils provinciali che fanno poi capo alla Regione .....
    tbLocalOrganizations.Last;
    tbLocalOrganizations.First;
    SetLength(FHealthConfig.Regions[i].Organizations, tbLocalOrganizations.RecordCount);
    j := 0;
    while not tbLocalOrganizations.Eof do
    begin
    FHealthConfig.Regions[i].Organizations[j].name :=
    self.tbLocalOrganizationsorganization_name.AsString;
    FHealthConfig.Regions[i].Organizations[j].code :=
    self.tbLocalOrganizationsorganization_code.AsString;
    FHealthConfig.Regions[i].Organizations[j].ID :=
    self.tbLocalOrganizationsorganization_id.AsInteger;
    tbLocalOrganizations.Next;
    Inc(j);
    end;

    if FDoctor.Region.Region.ID = self.FHealthConfig.Regions[i].Region.ID then
    begin
    FDoctor.Region := self.FHealthConfig.Regions[i];

    if (FDoctor.District.District.ID > 0) then
    begin
    for j := 0 to Length(FHealthConfig.Regions[i].Districts) do
    if FHealthConfig.Regions[i].Districts[j].District.ID = FDoctor.District.District.ID then
    FDoctor.District := FHealthConfig.Regions[i].Districts[j];
    end;

    for j := 0 to Length(FHealthConfig.Regions[i].Organizations) - 1 do
    begin
    if self.FDoctor.Organization.ID = FHealthConfig.Regions[i].Organizations[j].ID then
    begin
    self.FDoctor.Organization := FHealthConfig.Regions[i].Organizations[j];
    end;
    end;
    end;
    self.tbRegions.Next;
    Inc(i);
    end;
    self.tbRegions.Close;
    self.tbLocalOrganizations.Close;
  }

end;


procedure TdmPgHealth.SetLocalOrganizations(const Value: TOrganization);
begin
  FLocalOrganizations := Value;
end;

procedure TdmPgHealth.SetLocalTest(const Value: boolean);
begin
  FLocalTest := Value;
end;

function TdmPgHealth.SetNewDoctor(aDoctor: TJanuaRecordDoctor): boolean;
begin
  Result := False;
  try

  except
    on e: exception do
    begin
      self.WriteLog('Registrazione Medico,TIWuserSessionErgoMercator.setNewDoctor' + sLineBreak +
        Doctor.Profile.User.EMail + ', ' + Doctor.Profile.Firstname + ', ' + Doctor.Profile.LastName + sLineBreak +
        e.Message);
    end;
  end;
end;

{
  procedure TdmPgHealth.SetNumAsl(const Value: integer);
  begin
  FNumAsl := Value;
  end;

  procedure TdmPgHealth.SetNumRegioni(const Value: integer);
  begin
  FNumRegioni := Value;
  end;
}

procedure TdmPgHealth.SetProfile(const Value: THealthProfileForms);
begin
  FProfile := Value;
end;

procedure TdmPgHealth.SetRegisterError(const Value: TJanuaRegisterError);
begin
  FRegisterError := Value;
end;

procedure TdmPgHealth.SetSessionKey(const Value: string);
begin
  FSessionKey := Value;
end;

procedure TdmPgHealth.SetUserProfile(Profile: TJanuaRecordUserProfile);
begin
  self.FDoctor.Profile := Profile;
end;

procedure TdmPgHealth.tbBranchesAfterOpen(DataSet: TDataSet);
begin
  ServerFunctions.OpenDataset(tbBranchSpecialities);
end;

procedure TdmPgHealth.tbHealthProfileBeforeOpen(DataSet: TDataSet);
begin
  self.tbHealthProfile.ParamByName('db_session_key').AsString := self.FSessionKey;
end;

procedure TdmPgHealth.tbHealthProfileNewRecord(DataSet: TDataSet);
begin
  tbHealthProfiledb_schema_id.Value := 24;
  tbHealthProfiledb_user_id.Value := self.FDoctor.Profile.User.ID;
end;

function TdmPgHealth.UpdateDoctor(aDoctor: TJanuaRecordDoctor): boolean;
begin
  Result := False;
  self.FDoctor := aDoctor;
  if self.SearchUserProfilebyID(aDoctor.ID) then
  begin

  end;
end;

function TdmPgHealth.UploadConfig: boolean;
begin
  try
    self.PopulateAsl;
    Result := True;
  Except
    on e: exception do
    begin
      Result := False;
      self.LastErrorMessage := e.Message;
      self.WriteLog('Errore, TdmPgHealth.UploadConfig: ' + sLineBreak + e.Message);
    end;
  end;
end;

end.
