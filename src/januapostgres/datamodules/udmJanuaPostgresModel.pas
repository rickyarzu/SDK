unit udmJanuaPostgresModel;

interface

{$I JANUACORE.INC}

uses

  // System Units
  System.SysUtils, System.Classes,
  // Database Access Units
  Data.DB, PgAccess, MemDS, DBAccess, Datasnap.DBClient, Datasnap.Provider,
  // Inherited DataModule
  udmJanuaCoreServer,
  // Janua Project Classes
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Servers, Janua.Core.DB, Janua.Core.Functions,
  Janua.Core.Jpublic,
  Janua.Postgres.Functions, Janua.Core.System, Janua.Core.Exceptions;

type
  TdmJanuaPostgresModel = class(TdmJanuaCoreServer)
    PgErgoConnection: TPgConnection;
    tbUserSessionRoles: TPgTable;
    tbUserSessionRolesdb_schema_id: TIntegerField;
    tbUserSessionRolesrole_id: TSmallintField;
    tbUserSessionRolesdb_user_id: TIntegerField;
    dsUserSession: TDataSource;
    qryUserSession: TPgQuery;
    qryUserProfile: TPgQuery;
    qryUser: TPgQuery;
    qryTowns: TPgQuery;
    testTable: TPgTable;
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
    qryUserProfilesmsdate: TSQLTimeStampField;
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
    qryUserinsert_date: TSQLTimeStampField;
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
    qryUseremaildate: TSQLTimeStampField;
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
    qryUserSessionstart_time: TSQLTimeStampField;
    qryUserSessioninsert_date: TSQLTimeStampField;
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
    qryUserpayment: TBooleanField;
    qryUserpayment_expiration_date: TDateField;
    qryUserSessionpayment: TBooleanField;
    qryUserSessionpayment_expiration_date: TDateField;
    qryUserProfilefacebook_json: TWideMemoField;
    qryUserProfileaddress_state_province: TWideStringField;
    procedure DataModuleCreate(Sender: TObject); virtual;
    procedure qryUserSessionBeforeOpen(DataSet: TDataSet);
    procedure qryUserProfileNewRecord(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
  strict private
    FUserProfile: TJanuaRecordUserProfile;
  private
    FisServer: boolean;
    FUserID: integer;
    FLimit: integer;
    FOffset: integer;
    FLastCount: integer;
    FKeepAlive: boolean;
    FSessionUID: Int64;
    FLastErrorMessage: string;
    FSchemaID: integer;
    FSessionKey: string;
    FJanuaLogger: TJanuaCoreLogger;
    procedure SetisServer(const Value: boolean);
    procedure SetHaserrors(const Value: boolean);
    procedure SetLastErrorMessage(const Value: string);
    procedure SetLimit(const Value: integer);
    procedure SetOffset(const Value: integer);
    procedure SetLastCount(const Value: integer);
    procedure SetKeepAlive(const Value: boolean);
    procedure SetSessionUID(const Value: Int64);
    function getUser: TJanuaUser;
    procedure SetUser(const Value: TJanuaUser);
    procedure SetJanuaLogger(const Value: TJanuaCoreLogger);
    { Private declarations }
  protected
    procedure OpenDataset(aDataset: TDataSet);
    procedure SetSessionKey(const Value: string); override;
    procedure OpenSession;
    procedure RaiseException(aException: string);
    procedure SetUserProfile(const Value: TJanuaRecordUserProfile);
    function GetParamByName(const aName: string; aDataset: TCustomPgDataSet): TParam;
    function SetupLogin: boolean;

    { Private declarations }
  protected
    procedure SetSchemaID(const Value: integer);
    procedure SetUserID(const Value: integer); virtual;
  public
    { Public declarations }
  public
    { Public declarations }
    procedure TestDataModule; override;
    function TestConnect: boolean; override;
    // This procedure Tests the Datamodule and ouputs a detailed Test Report.
    function SearchPostalCode(aCode: string): string;
    function CheckSessionKey(aSessionKey: string): boolean; virtual;
    function OpenProfile(aUserID: integer): boolean; virtual;
    // this procedure opens an user profile to read it or to store it ...........................
    function SaveUserProfile(const aProfile: TJanuaRecordUserProfile): boolean;
    // This procedures saves a user profile, it can save and store only the session user profile.
  public
    property isServer: boolean read FisServer write SetisServer;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
    // core logger può 'arrivare dall'esterno' e non essere interno ...............................
    procedure GetSchemasList(SessionKey: string);
    property UserID: integer read FUserID write SetUserID;
    property UserProfile: TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
    // Limit and offset parameters to be used by queries if needed
    property Limit: integer read FLimit write SetLimit;
    property Offset: integer read FOffset write SetOffset;
    property LastCount: integer read FLastCount write SetLastCount;
    property KeepAlive: boolean read FKeepAlive write SetKeepAlive;
    property SessionUID: Int64 read FSessionUID write SetSessionUID;
    property SchemaID: integer read FSchemaID write SetSchemaID;
    property SessionKey: string read FSessionKey write SetSessionKey;
    property User: TJanuaUser read getUser write SetUser;
    property JanuaLogger: TJanuaCoreLogger read FJanuaLogger write SetJanuaLogger;
  end;

var
  dmJanuaPostgresModel: TdmJanuaPostgresModel;

implementation

{$R *.dfm}

function TdmJanuaPostgresModel.CheckSessionKey(aSessionKey: string): boolean;
begin
  if not(self.FSessionChecked and (self.FSessionKey = aSessionKey)) then
    SetSessionKey(aSessionKey);
  Result := self.UserID > 0;
  if not Result then
    self.FLastErrorMessage := 'Session Expired or not Valid Session';
end;

procedure TdmJanuaPostgresModel.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  if not Assigned(ServerFunctions) then
    ServerFunctions := TJanuaPostgresServerFunctions.Create(self);
  self.dsUserSession.DataSet := self.qryUserSession;
  self.PgErgoConnection.Server := JanuaApplicationGlobalProfile.JanuaServerConf.Address;
  self.PgErgoConnection.Port := JanuaApplicationGlobalProfile.JanuaServerConf.Port;
  self.PgErgoConnection.Database := JanuaApplicationGlobalProfile.JanuaServerConf.DatabaseName;
  // non aggiorno lo schema in quanto ogni server ha il suo schema ....................................................
  if self.PgErgoConnection.Schema = '' then
    self.PgErgoConnection.Schema := JanuaApplicationGlobalProfile.JanuaServerConf.Schema;
  self.PgErgoConnection.Username := JanuaApplicationGlobalProfile.JanuaServerConf.Username;
  self.PgErgoConnection.Password := JanuaApplicationGlobalProfile.JanuaServerConf.Password;
  self.Offset := 0;
  self.Limit := 1000;
end;

procedure TdmJanuaPostgresModel.DataModuleDestroy(Sender: TObject);
begin
  // 2017-10-23 2017-0024 DestroyDataModule
  if Assigned(ServerFunctions) then
    ServerFunctions.CloseAllDatasets;
  // 2017-10-23  2017-0024 DestroyDataModule
  self.PgErgoConnection.Disconnect;
  // self.FServerFunctions.Free;
end;

function TdmJanuaPostgresModel.GetParamByName(const aName: string; aDataset: TCustomPgDataSet): TParam;
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

function TdmJanuaPostgresModel.getUser: TJanuaUser;
begin
  Result := self.FUserProfile.User;
end;

procedure TdmJanuaPostgresModel.OpenDataset(aDataset: TDataSet);
begin
  ServerFunctions.ReOpenDataset(aDataset);
end;

function TdmJanuaPostgresModel.OpenProfile(aUserID: integer): boolean;
begin
  Result := False;

  if (self.FSessionKey > '') and (self.FSessionKey <> 'Error') then
    try
      self.OpenSession;
      tbUserSessionRoles.Close;
      ServerFunctions.ReOpenDataset(self.tbUserSessionRoles);

      qryUserProfile.Close;

      if aUserID <> 0 then
        qryUserProfile.ParamByName('db_user_id').AsInteger := aUserID
      else
        qryUserProfile.ParamByName('db_user_id').AsInteger := self.UserID;

      ServerFunctions.ReOpenDataset(self.qryUserProfile);

      if aUserID <> 0 then
      begin
        self.qryUser.Close;
        self.qryUser.ParamByName('db_user_id').AsInteger := aUserID;
        ServerFunctions.OpenDataset(qryUser);
      end;

      Result := self.qryUserProfile.RecordCount > 0;
      self.WriteLog('TdmPgSystemCommand.OpenProfile open qryUserProfile db_user_id = ' +
        self.qryUser.ParamByName('db_user_id').AsWideString + ' record: ' +
        qryUserProfile.RecordCount.ToString());
      if Result then
      begin
        if aUserID = 0 then
          FUserProfile.LoadFromDataset(self.qryUserSession, self.qryUserProfile)
        else
          FUserProfile.LoadFromDataset(self.qryUser, self.qryUserProfile)
      end
      else
      begin
        self.LastErrorMessage := 'User Profile ' + self.qryUser.ParamByName('db_user_id').AsWideString +
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
        self.FSessionChecked := qryUserSession.RecordCount = 1;
        self.FUserKey := self.qryUserSessionverify_token.AsString;
        self.FUserID := self.qryUserSessiondb_user_id.AsInteger;
        self.FSessionUID := self.qryUserSessiondb_session_id.AsLargeInt;
        self.qryUserProfile.ParamByName('db_user_id').AsInteger := FUserID;
        ServerFunctions.ReOpenDataset(self.qryUserProfile);
        self.FUserProfile.LoadFromDataset(self.qryUserSession, self.qryUserProfile);
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

procedure TdmJanuaPostgresModel.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  inherited;
  self.PgErgoConnection.Server := JanuaApplicationGlobalProfile.JanuaServerConf.Address;
  self.PgErgoConnection.Port := JanuaApplicationGlobalProfile.JanuaServerConf.Port;
  self.PgErgoConnection.Database := JanuaApplicationGlobalProfile.JanuaServerConf.DatabaseName;
  // non aggiorno lo schema in quanto ogni server ha il suo schema ....................................................
  if self.PgErgoConnection.Schema = '' then
    self.PgErgoConnection.Schema := JanuaApplicationGlobalProfile.JanuaServerConf.Schema;
  self.PgErgoConnection.Username := JanuaApplicationGlobalProfile.JanuaServerConf.Username;
  self.PgErgoConnection.Password := JanuaApplicationGlobalProfile.JanuaServerConf.Password;
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
    self.Haserrors := True;
    self.LastErrorMessage := aException;
  end;
end;

function TdmJanuaPostgresModel.SaveUserProfile(const aProfile: TJanuaRecordUserProfile): boolean;
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
      self.Haserrors := True;
      self.LastErrorMessage := 'Error user profile is not the Session Profile';
    end;
  except
    on e: Exception do
    begin
      self.Haserrors := True;
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

procedure TdmJanuaPostgresModel.SetHaserrors(const Value: boolean);
begin
  FHaserrors := Value;
end;

procedure TdmJanuaPostgresModel.SetisServer(const Value: boolean);
begin
  FisServer := Value;
end;

procedure TdmJanuaPostgresModel.SetJanuaLogger(const Value: TJanuaCoreLogger);
begin
  FJanuaLogger := Value;
  // JanuaCoreExceptionHandler1.JanuaLogger := Value;
end;

procedure TdmJanuaPostgresModel.SetKeepAlive(const Value: boolean);
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

procedure TdmJanuaPostgresModel.SetOffset(const Value: integer);
begin
  FOffset := Value;
end;

procedure TdmJanuaPostgresModel.SetSchemaID(const Value: integer);
begin
  FSchemaID := Value;
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

function TdmJanuaPostgresModel.SetupLogin: boolean;
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

function TdmJanuaPostgresModel.TestConnect: boolean;
begin
  inherited;
  self.PgErgoConnection.Connect;
  Result := self.PgErgoConnection.Connected;
end;

procedure TdmJanuaPostgresModel.TestDataModule;
begin
  ServerFunctions.TestDatasets;
end;

end.
