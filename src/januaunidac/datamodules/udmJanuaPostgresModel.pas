unit udmJanuaPostgresModel;

interface

{$I JANUACORE.INC}

uses

  // System Units
  System.SysUtils, System.Classes,
  // Database Access Units
  Data.DB, Uni, MemDS, DBAccess,
  // Janua Project DB Classes
  Janua.Core.DB.Types, Janua.Core.DB.Intf, Janua.Uni.Intf,
  // Janua Project Core Classes
  Janua.Core.Types, Janua.Core.Entities, Janua.Core.DataModule,
  Janua.Core.System, Janua.Core.Exceptions, UniProvider, Janua.Unidac.Connection,
  PostgreSQLUniProvider;

type
  TdmJanuaPostgresModel = class(TDataModule, IJanuaServerDataModule)
    PgErgoConnection: TJanuaUniConnection;
    tbUserSessionRoles: TUniTable;
    tbUserSessionRolesdb_schema_id: TIntegerField;
    tbUserSessionRolesrole_id: TSmallintField;
    tbUserSessionRolesdb_user_id: TIntegerField;
    dsUserSession: TDataSource;
    qryUserSession: TUniQuery;
    qryUserProfile: TUniQuery;
    qryUser: TUniQuery;
    qryTowns: TUniQuery;
    testTable: TUniTable;
    qryUserProfiledb_user_id: TIntegerField;
    qryUserProfilecountry_id: TSmallintField;
    qryUserProfileregion_id: TSmallintField;
    qryUserProfiledistrict_id: TSmallintField;
    qryUserProfiletown_id: TIntegerField;
    qryUserProfilefirst_name: TWideStringField;
    qryUserProfilelast_name: TWideStringField;
    qryUserProfileaddress_street: TWideStringField;
    qryUserProfileaddress_number: TWideStringField;
    qryUserProfileaddress_postal_code: TWideStringField;
    qryUserProfilephone: TWideStringField;
    qryUserProfilecellular_phone: TWideStringField;
    qryUserProfilework_phone: TWideStringField;
    qryUserProfilefax_number: TWideStringField;
    qryUserProfilegender_code: TWideStringField;
    qryUserProfilebirth_date: TDateField;
    qryUserProfilebirth_country_id: TSmallintField;
    qryUserProfilebirth_region_id: TSmallintField;
    qryUserProfilebirth_district_id: TSmallintField;
    qryUserProfilebirth_town_id: TIntegerField;
    qryUserProfilepublic_email: TWideStringField;
    qryUserProfiletitle: TWideStringField;
    qryUserProfilesearch_name: TWideStringField;
    qryUserProfilereverse_search: TWideStringField;
    qryUserProfileaddress_full: TWideStringField;
    qryUserProfilelatitude: TFloatField;
    qryUserProfilelongitude: TFloatField;
    qryUserProfilefiscal_code: TWideStringField;
    qryUserProfilesmssent: TBooleanField;
    qryUserProfilesmsconfirmed: TBooleanField;
    qryUserProfilesmsdate: TDateTimeField;
    qryUserProfilesmschecknumber: TWideStringField;
    qryUserProfileaddress_town: TWideStringField;
    qryUseractive: TBooleanField;
    qryUseremail: TWideStringField;
    qryUserdb_user_id: TIntegerField;
    qryUserpassword: TWideStringField;
    qryUserusername: TWideStringField;
    qryUserisactive: TBooleanField;
    qryUserverify_token: TWideStringField;
    qryUserverified: TBooleanField;
    qryUserdefault_schema_id: TIntegerField;
    qryUserispublic: TBooleanField;
    qryUserinternal_key: TWideStringField;
    qryUserdefault_role_id: TSmallintField;
    qryUsersearch_name: TWideStringField;
    qryUserreverse_search: TWideStringField;
    qryUserinsert_date: TDateTimeField;
    qryUsercountry_id: TSmallintField;
    qryUsermain_profile_type_id: TSmallintField;
    qryUsermain_profile_id: TWideStringField;
    qryUserimage_id: TLargeintField;
    qryUserimage_url: TWideStringField;
    qryUseriso_language_code: TWideStringField;
    qryUseriso_culture_code: TWideStringField;
    qryUseruser_first_name: TWideStringField;
    qryUseruser_family_name: TWideStringField;
    qryUseremailsent: TBooleanField;
    qryUseremailconfirmed: TBooleanField;
    qryUseremaildate: TDateTimeField;
    qryTownstown_id: TIntegerField;
    qryTownstown_name: TWideStringField;
    qryTownstown_iso_code: TWideStringField;
    qryTownstown_local_code: TWideStringField;
    qryTownstown_postal_code: TWideStringField;
    qryTownsdistrict_id: TSmallintField;
    qryUserSessiondb_user_id: TIntegerField;
    qryUserSessiondb_schema_id: TIntegerField;
    qryUserSessiondb_session_key: TWideStringField;
    qryUserSessiondb_session_id: TLargeintField;
    qryUserSessionlanguage_id: TSmallintField;
    qryUserSessionstart_time: TDateTimeField;
    qryUserSessioninsert_date: TDateTimeField;
    qryUserSessionispublic: TBooleanField;
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
    qryUserSessioninsert_date_1: TDateTimeField;
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
    qryUserSessionemaildate: TDateTimeField;
    qryUserpayment: TBooleanField;
    qryUserpayment_expiration_date: TDateField;
    qryUserSessionpayment: TBooleanField;
    qryUserSessionpayment_expiration_date: TDateField;
    qryUserProfilefacebook_json: TWideMemoField;
    qryUserProfileaddress_state_province: TWideStringField;
    PgUni: TPostgreSQLUniProvider;
    spSetSchemaID: TUniStoredProc;
    procedure DataModuleCreate(Sender: TObject); virtual;
    procedure qryUserSessionBeforeOpen(DataSet: TDataSet);
    procedure qryUserProfileNewRecord(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure PgErgoConnectionAfterDisconnect(Sender: TObject);
  strict private
    FUserProfile: TJanuaRecordUserProfile;
    FIsSetSchema: Boolean;
  private
    FisServer: Boolean;
    FUserID: integer;
    FLimit: integer;
    FOffset: integer;
    FLastCount: integer;
    FKeepAlive: Boolean;
    FSessionUID: Int64;
    FLastErrorMessage: string;
    FSessionKey: string;
    procedure SetisServer(const Value: Boolean);
    procedure SetLastErrorMessage(const Value: string);
    procedure SetLimit(const Value: integer);
    procedure SetOffset(const Value: integer);
    procedure SetLastCount(const Value: integer);
    procedure SetKeepAlive(const Value: Boolean);
    procedure SetSessionUID(const Value: Int64);
    function getUser: TJanuaUser;
    procedure SetUser(const Value: TJanuaUser);
    function GetLastErrorMessage: string;
    function GetSessionKey: string;
    { Private declarations }
  protected
    procedure SetSessionKey(const Value: string);
    procedure OpenSession;
    procedure RaiseException(aException: string);
    function GetUserProfile: TJanuaRecordUserProfile;
    procedure SetUserProfile(const Value: TJanuaRecordUserProfile);
    function GetParamByName(const aName: string; aDataset: TCustomUniDataSet): TParam;
    function SetupLogin: Boolean;
    function GetCustomServerFunctions: IJanuaServerFunctions;
    procedure SetCustomServerFunctions(const Value: IJanuaServerFunctions);
    // procedure SetCustomServerFunctions(const Value: IJanuaServerFunctions);
    { Private declarations }
  protected
    procedure SetSchemaID(const Value: integer);
    procedure SetUserID(const Value: integer); virtual;
  private
    FDatasetFunctions: IJanuaUniDatasetFunctions;
    FLastErrorSpecs: string;
    FSessionChecked: Boolean;
    FDatasetErrors: TJanuaDBDatasetErrors;
    FServerSession: TJanuaServerSession;
    FCustomServerFunctions: IJanuaUniServerFunctions;
    FUserKey: String;
    FLog: string;
    function GetLog: string;
    procedure SetLog(const Value: string);
    function GetDatasetFunctions: IJanuaUniDatasetFunctions;
  strict protected
    FSchemaID: integer;
    FHaserrors: Boolean;
    FVerbose: Boolean;
    procedure CreateTestLog;
    procedure DestroyTestLog;
    function GetDatasetErrors: TJanuaDBDatasetErrors;
    procedure SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
    function GetHasErrors: Boolean;
    procedure SetHaserrors(const Value: Boolean);
    procedure WriteLog(aLog: string; aProcedureName: string = ''); virtual;
    procedure WriteError(aLog: string; e: Exception; aProcedureName: string = ''); virtual;
    procedure SetServerSession(const Value: TJanuaServerSession); virtual;
  public
    { Public declarations }
    procedure TestDataModule;
    function TestConnect: Boolean;
    // This procedure Tests the Datamodule and ouputs a detailed Test Report.
    function SearchPostalCode(aCode: string): string;
    function CheckSessionKey(aSessionKey: string): Boolean; virtual;
    function OpenProfile(aUserID: integer): Boolean; virtual;
    // this procedure opens an user profile to read it or to store it ...........................
    function SaveUserProfile(const aProfile: TJanuaRecordUserProfile): Boolean;
    // This procedures saves a user profile, it can save and store only the session user profile.
    function TestConnection: Boolean; virtual;
    procedure OpenDataset(aDataset: TDataSet);
    procedure PostDataset(aDataset: TDataSet);
  public
    property Log: string read GetLog write SetLog;
    property isServer: Boolean read FisServer write SetisServer;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
    property HasErrors: Boolean read GetHasErrors write SetHaserrors;
    procedure GetSchemasList(SessionKey: string);
    property UserID: integer read FUserID write SetUserID;
    property UserProfile: TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
    // Limit and offset parameters to be used by queries if needed
    property Limit: integer read FLimit write SetLimit;
    property Offset: integer read FOffset write SetOffset;
    property LastCount: integer read FLastCount write SetLastCount;
    property KeepAlive: Boolean read FKeepAlive write SetKeepAlive;
    property SessionUID: Int64 read FSessionUID write SetSessionUID;
    property SchemaID: integer read FSchemaID write SetSchemaID;
    property SessionKey: string read FSessionKey write SetSessionKey;
    property User: TJanuaUser read getUser write SetUser;
    property ServerSession: TJanuaServerSession read FServerSession write SetServerSession;
    property ServerFunctions: IJanuaServerFunctions read GetCustomServerFunctions;
    property DatasetFunctions: IJanuaUniDatasetFunctions read GetDatasetFunctions;
  end;

var
  dmJanuaPostgresModel: TdmJanuaPostgresModel;
  // Server Functions ? una Variabile Globale che viene inizializzata dalla unit e finalizzata dalla Unit Stessa

implementation

uses Janua.Postgres.Impl, Janua.Core.Functions, Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

function TdmJanuaPostgresModel.CheckSessionKey(aSessionKey: string): Boolean;
begin
  if not(self.FSessionChecked and (self.FSessionKey = aSessionKey)) then
    SetSessionKey(aSessionKey);
  Result := self.UserID > 0;
  if not Result then
    self.FLastErrorMessage := 'Session Expired or not Valid Session';
end;

procedure TdmJanuaPostgresModel.CreateTestLog;
begin

end;

procedure TdmJanuaPostgresModel.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  FIsSetSchema := False;
  FDatasetFunctions := TPgDatasetFunctions.Create;
  FDatasetFunctions.Activate(self);
  FDatasetFunctions.SetupConnection(PgErgoConnection as TUniConnection);
  FCustomServerFunctions := TJanuaPostgresServerFunctions.Create;
  Offset := 0;
  Limit := 1000;
  ServerFunctions.Activate(self);
end;

procedure TdmJanuaPostgresModel.DataModuleDestroy(Sender: TObject);
begin
  // 2017-10-23 2017-0024 DestroyDataModule
  if Assigned(ServerFunctions) then
    ServerFunctions.CloseAllDatasets;
  // 2017-10-23  2017-0024 DestroyDataModule
  PgErgoConnection.Disconnect;
  FCustomServerFunctions := nil;
  FDatasetFunctions := nil;
end;

procedure TdmJanuaPostgresModel.DestroyTestLog;
begin

end;

function TdmJanuaPostgresModel.GetCustomServerFunctions: IJanuaServerFunctions;
begin
  { if not Assigned(FCustomServerFunctions) then
    TJanuaApplicationFactory.TryGetInterface(IJanuaUniServerFunctions, FCustomServerFunctions);
    if not Supports(FCustomServerFunctions, IJanuaServerFunctions, Result) then
    CreateException('GetServerFunctions', 'IJanuaUniServerFunctions not set', self); }
  Result := FCustomServerFunctions;
end;

function TdmJanuaPostgresModel.GetDatasetErrors: TJanuaDBDatasetErrors;
begin
  Result := self.FDatasetErrors
end;

function TdmJanuaPostgresModel.GetDatasetFunctions: IJanuaUniDatasetFunctions;
begin
  Result := FDatasetFunctions;
end;

function TdmJanuaPostgresModel.GetHasErrors: Boolean;
begin
  Result := self.FHaserrors
end;

function TdmJanuaPostgresModel.GetLastErrorMessage: string;
begin
  Result := self.FLastErrorMessage
end;

function TdmJanuaPostgresModel.GetLog: string;
begin
  Result := self.FLog
end;

function TdmJanuaPostgresModel.GetParamByName(const aName: string; aDataset: TCustomUniDataSet): TParam;
var
  i: integer;
begin
  Result := nil;
  if aDataset.Params.Count > 0 then
  begin
    for i := 0 to Pred(aDataset.Params.Count) do
      if LowerCase(aDataset.Params[i].Name) = LowerCase(aName) then
        Result := aDataset.Params[i];
  end;
end;

procedure TdmJanuaPostgresModel.GetSchemasList(SessionKey: string);
begin

end;

function TdmJanuaPostgresModel.GetSessionKey: string;
begin
  Result := self.FSessionKey
end;

function TdmJanuaPostgresModel.getUser: TJanuaUser;
begin
  Result := self.FUserProfile.User;
end;

function TdmJanuaPostgresModel.GetUserProfile: TJanuaRecordUserProfile;
begin
  Result := self.FUserProfile
end;

procedure TdmJanuaPostgresModel.OpenDataset(aDataset: TDataSet);
begin
  ServerFunctions.ReOpenDataset(aDataset);
end;

function TdmJanuaPostgresModel.OpenProfile(aUserID: integer): Boolean;
begin
  Result := False;
  if (FSessionKey > '') and (FSessionKey <> 'Error') then
    try
      OpenSession;
      tbUserSessionRoles.Close;
      ServerFunctions.ReOpenDataset(tbUserSessionRoles);

      qryUserProfile.Close;

      if aUserID <> 0 then
        qryUserProfile.ParamByName('db_user_id').AsInteger := aUserID
      else
        qryUserProfile.ParamByName('db_user_id').AsInteger := UserID;

      ServerFunctions.ReOpenDataset(self.qryUserProfile);

      if aUserID <> 0 then
      begin
        qryUser.Close;
        qryUser.ParamByName('db_user_id').AsInteger := aUserID;
        ServerFunctions.OpenDataset(qryUser);
      end;

      Result := self.qryUserProfile.RecordCount > 0;
      self.WriteLog('TdmPgSystemCommand.OpenProfile open qryUserProfile db_user_id = ' +
        self.qryUser.ParamByName('db_user_id').AsWideString + ' record: ' +
        qryUserProfile.RecordCount.ToString());
      if Result then
      begin
        if aUserID = 0 then
          FUserProfile.LoadFromDataset(qryUserSession, qryUserProfile)
        else
          FUserProfile.LoadFromDataset(qryUser, qryUserProfile)
      end
      else
      begin
        self.LastErrorMessage := 'User Profile ' + qryUser.ParamByName('db_user_id').AsWideString +
          ' not Found in this session';
      end;
    except
      on e: Exception do
      begin
        self.WriteLog('TdmPgSystemCommand.OpenProfile errore: ' + sLineBreak + e.Message);
        raise;
      end;
    end;
end;

procedure TdmJanuaPostgresModel.OpenSession;
begin
  if (self.FSessionKey > '') and (self.FSessionKey <> 'Error') then
    try
      if not self.PgErgoConnection.Connected then
        self.PgErgoConnection.Connect;
      self.WriteLog('TdmPgSystemCommand.OpenProfile open qryUserSession: ' + self.FSessionKey);
      if not qryUserSession.Active or (self.qryUserSessiondb_session_key.AsWideString <> FSessionKey) then
      begin
        qryUserSession.ParamByName('db_session_key').AsString := FSessionKey;
        ServerFunctions.ReOpenDataset(self.qryUserSession);
        FSessionChecked := qryUserSession.RecordCount = 1;
        FUserKey := self.qryUserSessionverify_token.AsString;
        FUserID := self.qryUserSessiondb_user_id.AsInteger;
        FSessionUID := self.qryUserSessiondb_session_id.AsLargeInt;
        qryUserProfile.ParamByName('db_user_id').AsInteger := FUserID;
        ServerFunctions.ReOpenDataset(self.qryUserProfile);
        FUserProfile.LoadFromDataset(self.qryUserSession, self.qryUserProfile);
      end;
      self.WriteLog('TdmPgSystemCommand.OpenSession open qryUserSession record: ' +
        qryUserProfile.RecordCount.ToString());
    except
      on e: Exception do
      begin
        self.WriteLog('TdmPgSystemCommand.OpenSession errore: ' + sLineBreak + e.Message);
        raise;
      end;
    end;
end;

procedure TdmJanuaPostgresModel.PgErgoConnectionAfterDisconnect(Sender: TObject);
begin
  if not FIsSetSchema then
  begin
    // SELECT system.set_schema_id(:p_schema_id)
    spSetSchemaID.ParamByName('p_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
  end;
end;

procedure TdmJanuaPostgresModel.PostDataset(aDataset: TDataSet);
begin
  DatasetFunctions.PostDataset(aDataset)
end;

procedure TdmJanuaPostgresModel.qryUserProfileNewRecord(DataSet: TDataSet);
begin
  qryUserProfiledb_user_id.Value := qryUserSessiondb_user_id.Value;
  qryUserProfilecountry_id.Value := 1;
  qryUserProfilepublic_email.Value := qryUserSessionemail.AsString;
end;

procedure TdmJanuaPostgresModel.qryUserSessionBeforeOpen(DataSet: TDataSet);
begin
  qryUserSession.ParamByName('db_session_key').AsString := self.FSessionKey;
end;

procedure TdmJanuaPostgresModel.RaiseException(aException: string);
begin
  if not(csDesigning in ComponentState) then
  begin
    raise Exception.Create(aException)
  end
  else
  begin
    self.WriteLog(aException);
    SetHaserrors(True);
    self.LastErrorMessage := aException;
  end;
end;

function TdmJanuaPostgresModel.SaveUserProfile(const aProfile: TJanuaRecordUserProfile): Boolean;
begin
  Result := False;
  try
    // first checks if the profile is the user's profile.
    if aProfile.User.id = self.UserID then
    begin
      if self.OpenProfile(self.UserID) then
      begin
        aProfile.SaveToDataset(self.qryUserSession, self.qryUserProfile);
        self.UserProfile := aProfile;
        Result := True;
      end;
    end
    else
    begin
      SetHaserrors(True);
      self.LastErrorMessage := 'Error user profile is not the Session Profile';
    end;
  except
    on e: Exception do
    begin
      SetHaserrors(True);
      self.LastErrorMessage := 'TdmJanuaPostgresModel.SaveUserProfile = ' + sLineBreak + e.ToString;
    end;

  end;
end;

function TdmJanuaPostgresModel.SearchPostalCode(aCode: string): string;
var
  sCode, sTest: string;
begin
  Result := aCode;

  if ((aCode.Trim.Length) = 5) and Janua.Core.Functions.IsNumeric(aCode) then
  begin
    sTest := Copy(aCode, aCode.Length - 1, 2);

    qryTowns.Close;
    qryTowns.Params[0].AsString := aCode;
    ServerFunctions.OpenDataset(qryTowns);

    if self.qryTowns.RecordCount = 0 then
    begin
      // if sTest = '00' then
      sCode := Copy(aCode, 0, 3) + '00'
      // else
      // sCode := aCode;
    end;

    qryTowns.Close;
    qryTowns.Params[0].AsString := sCode;
    ServerFunctions.OpenDataset(qryTowns);

    if self.qryTowns.RecordCount > 0 then
      Result := aCode + ' ' + self.qryTownstown_name.AsString
    else
      Result := aCode;

    qryTowns.Close;
  end
  else
    Result := aCode;

end;

procedure TdmJanuaPostgresModel.SetCustomServerFunctions(const Value: IJanuaServerFunctions);
begin

end;

procedure TdmJanuaPostgresModel.SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
begin
  self.FDatasetErrors := Value
end;

procedure TdmJanuaPostgresModel.SetHaserrors(const Value: Boolean);
begin
  FHaserrors := Value;
end;

procedure TdmJanuaPostgresModel.SetisServer(const Value: Boolean);
begin
  FisServer := Value;
end;

procedure TdmJanuaPostgresModel.SetKeepAlive(const Value: Boolean);
begin
  FKeepAlive := Value;
end;

procedure TdmJanuaPostgresModel.SetLastCount(const Value: integer);
begin
  FLastCount := Value;
end;

procedure TdmJanuaPostgresModel.SetLastErrorMessage(const Value: string);
begin
  FLastErrorMessage := Value;
end;

procedure TdmJanuaPostgresModel.SetLimit(const Value: integer);
begin
  FLimit := Value;
end;

procedure TdmJanuaPostgresModel.SetLog(const Value: string);
begin

end;

procedure TdmJanuaPostgresModel.SetOffset(const Value: integer);
begin
  FOffset := Value;
end;

procedure TdmJanuaPostgresModel.SetSchemaID(const Value: integer);
begin
  FSchemaID := Value;
end;

procedure TdmJanuaPostgresModel.SetServerSession(const Value: TJanuaServerSession);
begin

end;

procedure TdmJanuaPostgresModel.SetSessionKey(const Value: string);
begin
  if (Value <> '') and (Value <> 'Error') then
  begin
    if (self.FSessionKey <> Value) or (FUserID = 0) or not FSessionChecked then
    begin
      self.qryUserSession.Close;
      self.FSessionKey := Value;
      self.OpenSession;
    end;
  end;
  // inherited is explicitly called after
  inherited;
end;

procedure TdmJanuaPostgresModel.SetSessionUID(const Value: Int64);
begin
  FSessionUID := Value;
end;

function TdmJanuaPostgresModel.SetupLogin: Boolean;
begin
  WriteLog('TdmPgSystemCommand.InternalLogin');
  Result := False;
  if (self.UserProfile.User.Username = '') and (self.UserProfile.User.Email = '') then
  begin
    self.WriteLog('dmSystemCommand.InternalLogin Error self.UserProfile.User.Username is null ');
    Result := False;
    Exit(False);
  end
  else
    self.WriteLog('dmSystemCommand.InternalLogin Username inserito correttamente');
  if IsMail(self.User.Username) and (self.User.Email = '') then
    self.FUserProfile.User.Email := self.FUserProfile.User.Username;
  if (self.UserProfile.User.Password = '') then
  begin
    self.WriteLog('dmSystemCommand.InternalLogin Error self.UserProfile.User.Password is null ');
    Result := False;
    Exit(False);
  end
  else
    self.WriteLog('dmSystemCommand.InternalLogin Password inserito correttamente');
  Result := PgErgoConnection.Connected;
  if not Result then
  begin
    PgErgoConnection.Connected := True;
    Result := PgErgoConnection.Connected;
  end;
  WriteLog('dmSystemCommand.InternalLogin Sessione Connessa a PostGres');
end;

procedure TdmJanuaPostgresModel.SetUser(const Value: TJanuaUser);
begin
  self.FUserProfile.User := Value;
end;

procedure TdmJanuaPostgresModel.SetUserID(const Value: integer);
begin
  FUserID := Value;
end;

procedure TdmJanuaPostgresModel.SetUserProfile(const Value: TJanuaRecordUserProfile);
begin
  self.FUserProfile := Value;
end;

function TdmJanuaPostgresModel.TestConnect: Boolean;
begin
  inherited;
  self.PgErgoConnection.Connect;
  Result := self.PgErgoConnection.Connected;
end;

function TdmJanuaPostgresModel.TestConnection: Boolean;
begin
  Result := PgErgoConnection.Connected;
  if not Result then
    try
      PgErgoConnection.Connect;
      Result := self.PgErgoConnection.Connected;
    except
      on e: Exception do
      begin
        self.FHaserrors := True;
        Result := False;
      end;
    end;
end;

procedure TdmJanuaPostgresModel.TestDataModule;
begin
  ServerFunctions.TestDatasets;
end;

procedure TdmJanuaPostgresModel.WriteError(aLog: string; e: Exception; aProcedureName: string);
begin
  if not TJanuaCoreOS.PublicRaised then
    TJanuaCoreOS.PublicWriteError(self, aProcedureName, aLog, e, True);
  FHaserrors := True;
  FLastErrorMessage := DateTimeToStr(Now()) + 'WriteLog: ' + e.Message;
end;

procedure TdmJanuaPostgresModel.WriteLog(aLog, aProcedureName: string);
begin
  TJanuaCoreOS.PublicWriteLog(self, aProcedureName, aLog)
end;

end.
