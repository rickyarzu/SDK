unit udmSystem;

interface

uses
  System.SysUtils, System.Classes, Datasnap.Provider, Data.DB,
  Uni, MemDS, DBAccess, Janua.Core.System, Janua.Server.Functions,
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Params;

type
  TdmSystem = class(TDataModule)
    PgConnection1: TJanuaUniConnection;
    spCreatePersonalSchema: TUniStoredProc;
    dspUserSessions: TDataSetProvider;
    spUserTest: TUniStoredProc;
    spUserAdd: TUniStoredProc;
    spLogin: TUniStoredProc;
    qryUserSession: TUniQuery;
    qryUserSessiondb_session_key: TWideStringField;
    qryUserSessiondb_user_id: TIntegerField;
    qryUserSessiondb_schema_id: TIntegerField;
    qryUserSessionactive: TBooleanField;
    qryUserSessionemail: TWideStringField;
    qryUserSessionpassword: TWideStringField;
    qryUserSessionusername: TWideStringField;
    qryUserSessionisactive: TBooleanField;
    qryUserSessionverify_token: TWideStringField;
    qryUserSessionverified: TBooleanField;
    qryUserSessiondefault_schema_id: TIntegerField;
    qryUserSessionispublic: TBooleanField;
    qryUserSessioninternal_key: TWideStringField;
    dsUserSession: TDataSource;
    tbUserSessionRoles: TUniTable;
    tbUserSessionRolesdb_schema_id: TIntegerField;
    tbUserSessionRolesrole_id: TSmallintField;
    tbUserSessionRolesdb_user_id: TIntegerField;
    qryUserProfile: TUniQuery;
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
    qryUserProfilebirth_country_id: TSmallintField;
    qryUserProfilebirth_region_id: TSmallintField;
    qryUserProfilebirth_district_id: TSmallintField;
    qryUserProfilebirth_town_id: TIntegerField;
    qrySearchUserProfile: TUniQuery;
    qrySearchUsers: TUniQuery;
    qryUserSessiondb_session_id: TLargeintField;
    qryUserProfilebirth_date: TDateField;
    qrySearchUserProfileusername: TWideStringField;
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
    qrySearchUsersdb_user_id: TIntegerField;
    qrySearchUserscountry_id: TSmallintField;
    qrySearchUsersregion_id: TSmallintField;
    qrySearchUsersdistrict_id: TSmallintField;
    qrySearchUserstown_id: TIntegerField;
    qrySearchUsersfirst_name: TWideStringField;
    qrySearchUserslast_name: TWideStringField;
    qrySearchUsersaddress_street: TWideStringField;
    qrySearchUsersaddress_number: TWideStringField;
    qrySearchUsersaddress_postal_code: TWideStringField;
    qrySearchUsersphone: TWideStringField;
    qrySearchUserscellular_phone: TWideStringField;
    qrySearchUserswork_phone: TWideStringField;
    qrySearchUsersfax_number: TWideStringField;
    qrySearchUsersgender_code: TWideStringField;
    qrySearchUsersbirth_date: TDateField;
    qrySearchUsersbirth_country_id: TSmallintField;
    qrySearchUsersbirth_region_id: TSmallintField;
    qrySearchUsersbirth_district_id: TSmallintField;
    qrySearchUsersbirth_town_id: TIntegerField;
    qrySearchUserspublic_email: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryUserSessionAfterOpen(DataSet: TDataSet);
  private
    FUserProfile: TJanuaRecordUserProfile;
    FSessionKey: String;
    FUserKey: String;
    FServerSession: TJanuaServerSession;
    FLastErrorMessage: string;
    FRegisterError: TJanuaRegisterError;
    FConfirmMail: boolean;
    FVerbose: boolean;
    FLoggedIn: boolean;
    procedure SetUserProfile(const Value: TJanuaRecordUserProfile);
    procedure OpenProfile;
    procedure CloseProfile;
    procedure WriteLog(log: string);
    procedure SetSessionKey(const Value: String);
    procedure SetUserKey(const Value: String);
    procedure SetServerSession(const Value: TJanuaServerSession);
    procedure SetLastErrorMessage(const Value: string);
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    procedure SetConfirmMail(const Value: boolean);
    procedure SetVerbose(const Value: boolean);
    procedure SetLoggedIn(const Value: boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure SaveProfile(aProfile: TJanuaRecordUserProfile);
    procedure SetProfileFromQuery;
    function FindUserByKey(key: string): boolean;
    function FindUserByID(Id: integer) : boolean;
    function CheckUser(User: TJanuaRecordUserProfile): Boolean;
    function AddUser(User: TJanuaRecordUserProfile): Boolean;
    function login(aUser: TJanuaUser): boolean;
    function findaddress(const aAddress: string): smallint;
    function findaddressbyID(aID: int64): smallint;
  published
     property UserProfile: TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
     property SessionKey: String read FSessionKey write SetSessionKey;
     property UserKey: String read FUserKey write SetUserKey;
     property ServerSession :TJanuaServerSession read FServerSession write SetServerSession;
     property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
     property RegisterError: TJanuaRegisterError read FRegisterError write SetRegisterError;
     property Verbose: boolean read FVerbose write SetVerbose;
     property ConfirmMail: boolean read FConfirmMail write SetConfirmMail;
     property LoggedIn: boolean read FLoggedIn write SetLoggedIn;
  end;

  var
    dmSystem: TdmSystem;


implementation



{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



{ TdmSystem }


function TdmSystem.login(aUser: TJanuaUser): boolean;
begin
try
  try
   Result := True;
   WriteLog('email: ' + aUser.EMail);
   WriteLog('Password: ' + aUser.Password);

   if aUser.EMail = ''  then
   begin
     Result := False;
     FLastErrorMessage := 'Attenzione non avete compilato la mail';
     WriteLog('Attenzione non avete compilato la mail');
   end;

   if (aUser.EMail = '') and Result then
   begin
     Result := False;
     FLastErrorMessage := 'Attenzione non avete compilato la password';
     WriteLog(FLastErrorMessage);
   end;

   if Result  then
   begin
     Result := Janua.Server.Functions.Login(aUser.EMail, aUser.Password,
                          FLastErrorMessage, self.FSessionKey, self.spLogin );
     self.FUserProfile.User := aUser;
     if Result then self.FServerSession :=
          Janua.Server.Functions.GetSession(self.FSessionKey, self.qryUserSession, True, self.FLastErrorMessage);
   end;

   self.FLoggedIn := Result;
  finally
    self.PgConnection1.Close;
  end;

except on e :exception do
  begin
     self.WriteLog('Errore TIWuserSessionErgoMercator.login' + sLineBreak + e.Message);
     raise;
  end;
end
end;


function TdmSystem.AddUser(User: TJanuaRecordUserProfile): Boolean;
begin
    Janua.Server.Functions.AddUser(self.spUserAdd, self.spUserTest,
        User.FirstName + '_' + User.LastName
        + FormatDateTime('yy', User.BirthDate),
        User.User.Email, User.User.Password, True, self.FLastErrorMessage, 1,
        self.FUserKey, self.FRegisterError);
end;

function TdmSystem.CheckUser(User: TJanuaRecordUserProfile): Boolean;
begin
      Janua.Server.Functions.CheckUser(
                User.FirstName + '_' + User.LastName +
                FormatDateTime('yy', User.birthdate),
                User.User.Email, self.spUserTest)
end;

procedure TdmSystem.CloseProfile;
begin

end;

procedure TdmSystem.DataModuleCreate(Sender: TObject);
begin
  {$IFDEF JANUAVERBOSE}
  if self.Verbose then self.WriteLog('TdmSystem.DataModuleCreate' );
  {$ENDIF JANUAVERBOSE}
  FConfirmMail := False;
  FVerbose := True;
 // FSiteTitle := 'Keriks - Medical Social Forum';
 // self.FStylesheet := 'ui-themes/blitzer/jquery-ui.css';
end;

function TdmSystem.findaddress(const aAddress: string): smallint;
begin
   self.qrySearchUserProfile.Close;
   self.qrySearchUserProfile.ParamByName('p_search').AsWideString := aAddress;
   self.qrySearchUserProfile.Open;
   Result := self.qrySearchUserProfile.RecordCount;
end;

function TdmSystem.findaddressbyID(aID: int64): smallint;
begin
  {$IFDEF JANUAVERBOSE}
  if self.Verbose then self.WriteLog('TdmSystem.findaddressbyID' );
  {$ENDIF JANUAVERBOSE}
   self.qrySearchUserProfile.Close;
   self.qrySearchUserProfile.ParamByName('p_id').AsLargeInt := aID;
   self.qrySearchUserProfile.Open;
   Result := self.qrySearchUserProfile.RecordCount;
end;

function TdmSystem.FindUserByKey(key: string): boolean;
begin
  {$IFDEF JANUAVERBOSE}
  if self.Verbose then self.WriteLog('TdmSystem.FindUserByKey' );
  {$ENDIF JANUAVERBOSE}
   qryUserProfile.Close;
   qryUserProfile.ParamByName('db_user_key').AsString  := Key;
   OpenDataset(qryUserProfile);
   Result := qryUserProfile.RecordCount > 0;
   { TODO :
    ricercare un profilo utente completo attraverso una stored procedure che lo elabori
    impiegare ove possibile delle stored procedure basate su text (clob) basato su a
    array json }
end;

function TdmSystem.FindUserByID(id: Integer): boolean;
begin
   qryUserProfile.Close;
   qryUserProfile.ParamByName('db_user_id').AsInteger  := id;
   OpenDataset(qryUserProfile);
   Result := qryUserProfile.RecordCount > 0;
end;

procedure TdmSystem.OpenProfile;
begin
 try
   if not self.PgConnection1.Connected then self.PgConnection1.Connect;
   self.WriteLog('TIWuserSessionErgoMercator.ConnectSessionProfile open qryUserSession: ' +  self.FSessionKey);
   self.qryUserSession.ParamByName('db_session_key').AsString := self.FSessionKey;
   OpenDataset(self.qryUserSession);
   self.FUserKey := self.qryUserSessionverify_token.AsString;
   OpenDataset(self.tbUserSessionRoles);
   OpenDataset(self.qryUserProfile);
 except on e: exception do
    begin
       self.WriteLog('TIWuserSessionErgoMercator.ConnectSessionProfile: ' +
                      sLineBreak + e.Message);
    end;
 end;
end;

procedure TdmSystem.qryUserSessionAfterOpen(DataSet: TDataSet);
begin
  OpenDataset(self.tbUserSessionRoles);
  OpenDataset(self.qryUserProfile);
end;

procedure TdmSystem.SaveProfile(aProfile: TJanuaRecordUserProfile);
begin
{SELECT db_user_id, country_id, region_id, district_id, town_id, first_name,
       last_name, address_street, address_number, address_postal_code,
       phone, cellular_phone, work_phone, fax_number, gender_code
  FROM system.db_users_profiles
  where db_user_id = :db_user_id}

   FUserProfile := aProfile;
   self.PgConnection1.Open;
   if not qryUserProfile.Active then
   begin
      qryUserProfile.ParamByName('db_user_id').Value := self.qryUserSessiondb_user_id.AsInteger;
      OpenDataset(qryUserProfile);
   end;
   qryUserProfile.Edit;
   // CopyRecord(cdsDoctor, qryAnagraph);
   qryUserProfilefirst_name.Value := FUserProfile.FirstName;
   qryUserProfilelast_name.Value := FUserProfile.LastName;
   qryUserProfiledistrict_id.AsInteger := FUserProfile.Address.Location.District.ID;
   qryUserProfileregion_id.AsInteger := FUserProfile.Address.Location.Region.id;
   qryUserProfile.Post;

   //****** profilo speciale per Sanit?.........................................
   if (qryUserSessionpassword.AsString <> FUserProfile.User.Password) or
      (qryUserSessionemail.AsString <> FUserProfile.User.Password) then
   begin
      qryUserSession.Edit;
      qryUserSessionpassword.Value := FUserProfile.User.Password;
      qryUserSessionemail.Value := FUserProfile.User.Email;
      qryUserSession.Post;
   end;

   self.PgConnection1.Close;
end;

procedure TdmSystem.SetConfirmMail(const Value: boolean);
begin
  FConfirmMail := Value;
end;

procedure TdmSystem.SetLastErrorMessage(const Value: string);
begin
  FLastErrorMessage := Value;
end;

procedure TdmSystem.SetLoggedIn(const Value: boolean);
begin
  FLoggedIn := Value;
end;

procedure TdmSystem.SetProfileFromQuery;
begin
  self.OpenProfile;
   FUserProfile.FirstName := self.qryUserProfilefirst_name.AsWideString;
   FUserProfile.LastName := self.qryUserProfilelast_name.AsWideString;
   FUserProfile.User.Email := self.qryUserSessionemail.AsWideString;
   FUserProfile.Address.Location.District.ID := self.qryUserProfiledistrict_id.AsInteger;
   FUserProfile.User.id :=  self.qryUserSessiondb_user_id.AsInteger;
   FUserProfile.BirthDate := self.qryuserprofilebirth_date.AsDateTime;
   FUserProfile.Address.Location.Region.ID := self.qryUserProfileregion_id.AsInteger;
   FUserProfile.User.role_id := tbUserSessionRolesrole_id.AsInteger;
  self.CloseProfile;
end;

procedure TdmSystem.SetRegisterError(const Value: TJanuaRegisterError);
begin
  FRegisterError := Value;
end;

procedure TdmSystem.SetServerSession(const Value: TJanuaServerSession);
begin
  FServerSession := Value;
end;

procedure TdmSystem.SetSessionKey(const Value: String);
begin
  FSessionKey := Value;
end;

procedure TdmSystem.SetUserKey(const Value: String);
begin
  FUserKey := Value;
end;

procedure TdmSystem.SetUserProfile(const Value: TJanuaRecordUserProfile);
begin
  FUserProfile := Value;
end;

procedure TdmSystem.SetVerbose(const Value: boolean);
begin
  FVerbose := Value;
end;

procedure TdmSystem.WriteLog(log: string);
begin
  Janua.Server.Functions.WriteLog(self.SessionKey + ' ' +  DateTimeToStr(Now())
                                  +  sLineBreak +   log);
end;

end.
