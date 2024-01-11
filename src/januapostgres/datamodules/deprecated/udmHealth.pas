unit udmHealth;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Health, PgAccess,
  Data.DB, MemDS, DBAccess, Janua.Postgres.Functions, Janua.Core.System,
  Janua.Core.Functions, Janua.Core.JPublic,
  Janua.Core.Mail, Datasnap.Provider, Datasnap.DBClient, Janua.Core.Classes;

type
  TdmHealth = class(TDataModule)
    dsBranches: TDataSource;
    tbBranches: TPgTable;
    tbBranchSpecialities: TPgQuery;
    tbBranchSpecialitiesbranch_id: TSmallintField;
    tbBranchSpecialitiesspeciality_id: TSmallintField;
    tbBranchSpecialitiesspeciality_code: TWideStringField;
    tbBranchSpecialitiesspeciality_name: TWideStringField;
    PgConnection1: TPgConnection;
    health_districts: TPgQuery;
    health_districtsdistrict_id: TSmallintField;
    health_districtsregion_id: TSmallintField;
    health_districtsiso_district_code: TWideStringField;
    health_districtsdistrict_name: TWideStringField;
    health_districtslocal_district_code: TWideStringField;
    health_districtsnumberplate_code: TWideStringField;
    dsHealthDistricts: TDataSource;
    asl_attivita: TPgQuery;
    asl_attivitaATTIVITA_ID: TIntegerField;
    asl_attivitaATTIVITA_DES: TWideStringField;
    dsAslAttivita: TDataSource;
    qryMenuYumed: TPgQuery;
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
    tbHealthProfiledb_schema_id: TIntegerField;
    tbHealthProfiledb_user_id: TIntegerField;
    tbHealthProfileorganization_id: TSmallintField;
    tbHealthProfilecouncil_id: TSmallintField;
    tbHealthProfileassociation_id: TSmallintField;
    tbHealthProfiletown_id: TIntegerField;
    tbHealthProfileassociation_number: TWideStringField;
    tbHealthProfileassociation_date: TPgDateField;
    tbHealthProfilegroup_id: TSmallintField;
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
    qrySpecialitiesspeciality_id: TSmallintField;
    qrySpecialitiesspeciality_code: TWideStringField;
    qrySpecialitiesspeciality_name: TWideStringField;
    cdsSpecialities: TClientDataSet;
    dspSpecialities: TDataSetProvider;
    cdsSpecialitiesspeciality_id: TSmallintField;
    cdsSpecialitiesspeciality_code: TWideStringField;
    cdsSpecialitiesspeciality_name: TWideStringField;
    cdsSpecialitiesqrySubSpecialities: TDataSetField;
    qrySubSpecialitiessubspeciality_id: TSmallintField;
    qrySubSpecialitiesspeciality_id: TSmallintField;
    qrySubSpecialitiessubspeciality_name: TWideStringField;
    qryCouncils: TPgQuery;
    cdsSubSpecialities: TClientDataSet;
    cdsSubSpecialitiessubspeciality_id: TSmallintField;
    cdsSubSpecialitiesspeciality_id: TSmallintField;
    cdsSubSpecialitiessubspeciality_name: TWideStringField;
    tbHealthProfilecountry_id: TSmallintField;
    tbHealthProfilespeciality_id: TSmallintField;
    tbHealthProfilesub_speciality_id: TSmallintField;
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
    tbHealthProfileregion_id: TSmallintField;
    tbHealthProfiledistrict_id: TIntegerField;
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
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    IntegerField3: TIntegerField;
    WideStringField1: TWideStringField;
    PgDateField1: TPgDateField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    SmallintField7: TSmallintField;
    SmallintField8: TSmallintField;
    IntegerField4: TIntegerField;
    tbHealthProfilecouncil_number: TWideStringField;
    tbHealthProfilecouncil_date: TPgDateField;
    qrySearchDoctorcouncil_number: TWideStringField;
    qrySearchDoctorcouncil_date: TPgDateField;
    qrySearchDoctorfull_name: TWideMemoField;
    procedure tbBranchesAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tbHealthProfileNewRecord(DataSet: TDataSet);
    procedure PgConnection1BeforeConnect(Sender: TObject);
    procedure tbHealthProfileBeforeOpen(DataSet: TDataSet);
  private
    FServerFunctions: Janua.Postgres.Functions.TJanuaPostgresServerFunctions;
    FDoctor: TJanuaRecordDoctor;
    FSessionKey: string;
    FLastErrorMessage: string;
    FRegisterError: TJanuaRegisterError;
    FServerSession: TJanuaServerSession;
    FRegions: array of TRegion;
    FLocalOrganizations: TOrganization;
    FNumRegioni: integer;
    FNumAsl: integer;
    FLog: string;
    FProfile: THealthProfileForms;
    FLocalTest: boolean;
    FJanuaCoreLogger: TJanuaCoreLogger;
    procedure SetDoctor(const Value: TJanuaRecordDoctor);
    procedure ConnectSessionProfile;
    procedure SetSessionKey(const Value: string);
    procedure SetLastErrorMessage(const Value: string);
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    procedure SetServerSession(const Value: TJanuaServerSession);
    procedure SetLocalOrganizations(const Value: TOrganization);
    procedure SetNumAsl(const Value: integer);
    procedure SetNumRegioni(const Value: integer);
    procedure SetLog(const Value: string);
    procedure SetProfile(const Value: THealthProfileForms);
    procedure SetLocalTest(const Value: boolean);
    procedure SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
    { Private declarations }
  public
    { Public declarations }
    procedure SetDoctorFromQuery;
    procedure SetHealthConfiguration;
    procedure SetAsl(aAsl: string);
    procedure WriteLog(log: string);
    function findDoctorByKey(Key: string): boolean;
    function SetNewDoctor(aDoctor: TJanuaRecordDoctor): boolean;
    function UpdateDoctor(aDoctor: TJanuaRecordDoctor): boolean;
    function FindRegionByName(sName: string; bFound: boolean): TRegion;
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
  published
    property Doctor: TJanuaRecordDoctor read FDoctor write SetDoctor;
    property SessionKey: string read FSessionKey write SetSessionKey;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
    property RegisterError: TJanuaRegisterError read FRegisterError write SetRegisterError;
    property ServerSession: TJanuaServerSession read FServerSession write SetServerSession;
    property LocalOrganizations: TOrganization read FLocalOrganizations write SetLocalOrganizations;
    property NumRegioni: integer read FNumRegioni write SetNumRegioni;
    property NumAsl: integer read FNumAsl write SetNumAsl;
    property log: string read FLog write SetLog;
    property Profile: THealthProfileForms read FProfile write SetProfile;
    property LocalTest: boolean read FLocalTest write SetLocalTest;
    property JanuaCoreLogger: TJanuaCoreLogger read FJanuaCoreLogger write SetJanuaCoreLogger;
  end;

var
  dmHealth: TdmHealth;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TdmHealth }

procedure TdmHealth.SetDottoreOrdine(rID, oID: integer);
begin
  { TODO -oRiccardo -cHealth : Impostare la funzione set Dottore Ordine }
end;

procedure TdmHealth.SetDottoreProvincia(rID, sID: integer);
begin
  { TODO -oRiccardo -cHealth : Impostare la funzione set Dottore Provincia }
end;

procedure TdmHealth.FlterBranche(branca: string);
begin
  if self.tbBranches.Locate('branch_name', branca, [loCaseInsensitive]) then
  begin
    FDoctor.HealthLocation.Branch.code := self.tbBranchesbranch_code.AsString;
    FDoctor.HealthLocation.Branch.ID := self.tbBranchesbranch_id.AsInteger;
    FDoctor.HealthLocation.Branch.name := self.tbBranchesbranch_name.AsString;

    // una volta filtrata la branca occorre andare a posizionare la 'specialità'

    self.tbBranchSpecialities.Close;
    self.FServerFunctions.OpenDataset(self.tbBranchSpecialities);

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

function TdmHealth.FindDistrinctByID(sID: integer; var District: TDistrict): boolean;
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

function TdmHealth.AddDoctorProfile(aDoctor: TJanuaRecordDoctor): boolean;
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
      FServerFunctions.WriteError
        ('TdmHealth.AddDoctorProfile: errore registrazione profilo medico ', e);
    end;
  end;
end;

function TdmHealth.ApplyArticle: boolean;
begin
  //
end;

function TdmHealth.CheckDoctorExists(aDoctor: TJanuaRecordDoctor): boolean;
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
  self.qrySearchDoctor.Open;

  Result := self.qrySearchDoctor.RecordCount > 0;

end;

procedure TdmHealth.ConnectSessionProfile;
begin
  self.PgConnection1.Connect;
  self.tbHealthProfile.ParamByName('db_session_key').AsString := self.FSessionKey;
  self.tbHealthProfile.ParamByName('db_user_id').AsInteger := self.Doctor.Profile.User.ID;
  self.tbHealthProfile.Open;
  WriteLog('Connesso alla sessione: ' + FSessionKey + 'usr: ' +
    self.tbHealthProfiledb_user_id.AsString);
end;

procedure TdmHealth.DataModuleCreate(Sender: TObject);
begin
  FServerFunctions := Janua.Postgres.Functions.TJanuaPostgresServerFunctions.Create(self);
  self.WriteLog('creato datamodule TdmHealth');
  FDoctor.isSet := False;
end;

function TdmHealth.findDoctorByKey(Key: string): boolean;
begin
  // self.System.FindUserbyKey(Key);
  { TODO : Implementare la funzione server find user by Key }
  Result := False;

  if Result then
    SetDoctorFromQuery;
end;

function TdmHealth.FindRegionByName(sName: string; bFound: boolean): TRegion;
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

function TdmHealth.SaveArticle: boolean;
begin

end;

function TdmHealth.SearchUserProfilebyID(ID: integer): boolean;
begin
  try
    self.tbHealthProfile.Close;
    self.tbHealthProfile.ParamByName('db_user_id').AsInteger := ID;
    FServerFunctions.OpenDataset(self.tbHealthProfile);
    Result := self.tbHealthProfile.RecordCount = 1;
  except
    on e: exception do
    begin

    end;

  end;
end;

procedure TdmHealth.SetAsl(aAsl: string);
begin
  if self.tbLocalOrganizations.Locate('organization_name', aAsl, []) then
  begin
    FDoctor.HealthLocation.Organization.code := tbLocalOrganizationsorganization_code.AsString;
    FDoctor.HealthLocation.Organization.ID := tbLocalOrganizationsorganization_id.AsInteger;
  end;
end;

procedure TdmHealth.SetDoctor(const Value: TJanuaRecordDoctor);
begin
  FDoctor := Value;
end;

procedure TdmHealth.SetDoctorFromQuery;
begin
  try
    self.WriteLog('SetDoctorFromQuery ConnectSessionProfile');
    self.ConnectSessionProfile;
    self.WriteLog('SetDoctorFromQuery tbHealthProfile');
    self.tbHealthProfile.Close;
    self.tbHealthProfile.ParamByName('db_session_key').AsString := self.FSessionKey;
    self.tbHealthProfile.ParamByName('db_user_id').AsInteger := self.FDoctor.Profile.User.ID;
    FServerFunctions.OpenDataset(self.tbHealthProfile);
    self.WriteLog('SetDoctorFromQuery SetFromDataset tbHealthProfile');
    self.FDoctor.SetFromDataset(self.tbHealthProfile);
  except
    on e: exception do
    begin
      self.WriteLog('Errore: TdmHealth.SetDoctorFromQuery');
      self.WriteLog(e.Message);
      raise;
    end;

  end;
end;

procedure TdmHealth.PgConnection1BeforeConnect(Sender: TObject);
begin
  if FServerSession.CustomServer then
  begin
    self.WriteLog('TdmPgSystemCommand.PgConnection1BeforeConnect CustomServer: ' +
      FServerSession.CustomServerUrl + ':' + FServerSession.CustomServerPort + ':' +
      FServerSession.CustomServerSchema);
    self.PgConnection1.Server := FServerSession.CustomServerUrl;
    self.PgConnection1.Port := FServerSession.CustomServerPort.ToInteger;
    self.PgConnection1.Database := FServerSession.CustomServerSchema;
  end;
end;

procedure TdmHealth.PopulateAsl;
var
  i, j: integer;
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
        self.WriteLog('TdmHealth.PopulateAsl Aggiornamento configurazione');
        self.WriteLog('TdmHealth.PopulateAsl Aggiornamento cdsSubSpecialities');
        SetBranchFromDataset(self.cdsSpecialities, self.cdsSubSpecialities);
        self.WriteLog('TdmHealth.PopulateAsl Aggiornamento cdsAssociations');
        setMedAssociationFromDataset(self.cdsAssociations);
        self.WriteLog('TdmHealth.PopulateAsl Aggiornamento cdsCouncils');
        setCounciFromDataset(self.cdsCouncils);
        self.WriteLog
          ('TdmHealth.PopulateAsl Aggiornamento cdsHealthRegions cdsHealthDistricts cdsLocalOrganizations');
        setRegionFromDataset(cdsHealthRegions, cdsHealthDistricts, cdsLocalOrganizations);
        self.WriteLog('TdmHealth.PopulateAsl Terminato Aggiornamento configurazione');
      finally
        if not self.FLocalTest then
        begin
          self.tbBranches.Close;
          self.tbBranchSpecialities.Close;
        end;
      end;
    end;
  self.WriteLog('TdmHealth.PopulateAsl SetDoctorFromQuery');
  SetDoctorFromQuery;

end;

procedure TdmHealth.SetHealthConfiguration;
var
  i, j: integer;
begin
  // impostazione delle Regioni bloccata per ora ....................................................
  {
    self.tbRegions.Open;
    tbRegions.Last;
    SetLength(FHealthConfig.Regions, tbRegions.RecordCount);
    tbRegions.First;
    i := 0;

    while not tbRegions.Eof do
    begin
    FHealthConfig.Regions[i].Region.name := self.tbRegionsregion_name.AsString;
    FHealthConfig.Regions[i].Region.code := self.tbRegionslocal_region_code.AsString;

    // FHealthConfig.Regions.Add(FHealthConfig.Regions[i].Name);

    self.tbLocalOrganizations.Open;
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

procedure TdmHealth.SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
begin
  FJanuaCoreLogger := Value;
  if assigned(FJanuaCoreLogger) then
    FServerFunctions.JanuaLogger := FJanuaCoreLogger;
end;

procedure TdmHealth.SetLastErrorMessage(const Value: string);
begin
  FLastErrorMessage := Value;
end;

procedure TdmHealth.SetLocalOrganizations(const Value: TOrganization);
begin
  FLocalOrganizations := Value;
end;

procedure TdmHealth.SetLocalTest(const Value: boolean);
begin
  FLocalTest := Value;
end;

procedure TdmHealth.SetLog(const Value: string);
begin
  FLog := Value;
end;

function TdmHealth.SetNewDoctor(aDoctor: TJanuaRecordDoctor): boolean;
begin
  try
    Result := False;

  except
    on e: exception do
    begin
      self.WriteLog('Registrazione Medico,TIWuserSessionErgoMercator.setNewDoctor' + sLineBreak +
        Doctor.Profile.User.EMail + ', ' + Doctor.Profile.Firstname + ', ' + Doctor.Profile.LastName
        + sLineBreak + e.Message);
    end;
  end;
end;

procedure TdmHealth.SetNumAsl(const Value: integer);
begin
  FNumAsl := Value;
end;

procedure TdmHealth.SetNumRegioni(const Value: integer);
begin
  FNumRegioni := Value;
end;

procedure TdmHealth.SetProfile(const Value: THealthProfileForms);
begin
  FProfile := Value;
end;

procedure TdmHealth.SetRegisterError(const Value: TJanuaRegisterError);
begin
  FRegisterError := Value;
end;

procedure TdmHealth.SetServerSession(const Value: TJanuaServerSession);
begin
  FServerSession := Value;
  if FServerSession.CustomServer then
  begin
    self.PgConnection1.Server := FServerSession.CustomServerUrl;
    self.PgConnection1.Port := FServerSession.CustomServerPort.ToInteger;
    self.PgConnection1.Database := FServerSession.CustomServerSchema;
  end;
end;

procedure TdmHealth.SetSessionKey(const Value: string);
begin
  FSessionKey := Value;
end;

procedure TdmHealth.SetUserProfile(Profile: TJanuaRecordUserProfile);
begin
  self.FDoctor.Profile := Profile;
end;

procedure TdmHealth.tbBranchesAfterOpen(DataSet: TDataSet);
begin
  FServerFunctions.OpenDataset(tbBranchSpecialities);
end;

procedure TdmHealth.tbHealthProfileBeforeOpen(DataSet: TDataSet);
begin
  self.tbHealthProfile.ParamByName('db_session_key').AsString := self.FSessionKey;
end;

procedure TdmHealth.tbHealthProfileNewRecord(DataSet: TDataSet);
begin
  tbHealthProfiledb_schema_id.Value := 24;
  tbHealthProfiledb_user_id.Value := self.FDoctor.Profile.User.ID;
end;

function TdmHealth.UpdateDoctor(aDoctor: TJanuaRecordDoctor): boolean;
begin
  self.FDoctor := aDoctor;

end;

function TdmHealth.UploadConfig: boolean;
var
  i, j: integer;
begin
  try
    self.PopulateAsl;
    Result := True;
  Except
    on e: exception do
    begin
      Result := False;
      self.LastErrorMessage := e.Message;
      self.WriteLog('Errore, TdmHealth.UploadConfig: ' + sLineBreak + e.Message);
    end;
  end;
end;

procedure TdmHealth.WriteLog(log: string);
begin
  self.log := self.log + sLineBreak + DateTimeToStr(Now()) + sLineBreak + log + sLineBreak;
  try
    FServerFunctions.WriteLog(DateTimeToStr(Now()) + sLineBreak + log);
  except
    on e: exception do
      self.log := DateTimeToStr(Now()) + sLineBreak + 'WriteLog: ' + e.Message + sLineBreak;
  end;

end;

end.
