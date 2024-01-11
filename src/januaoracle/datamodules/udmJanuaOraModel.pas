unit udmJanuaOraModel;

interface

uses

   // Embarcadero
   System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Datasnap.DBClient,
   Datasnap.DSServer, Datasnap.DSAuth, Datasnap.Provider,
   // Devart
   PgAccess, OraCall, Ora, OraSmart,

   // JanuaProject
   Janua.Core.Http, Janua.Core.System, Janua.Oracle.Functions,
   Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Jpublic;

   // Library Specific


type
   TdmJanuaOraModel = class(TDataModule)
      PgErgoConnection: TPgConnection;
      qryUserProfile: TPgQuery;
      qryUserProfiledb_user_id: TIntegerField;
      qryUserProfilecountry_id: TSmallintField;
      qryUserProfileregion_id: TSmallintField;
      qryUserProfiledistrict_id: TSmallintField;
      qryUserProfiletown_id: TIntegerField;
      qryUserProfiletitle: TWideStringField;
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
      qryUserProfilebirth_date: TPgDateField;
      qryUserProfilebirth_country_id: TSmallintField;
      qryUserProfilebirth_region_id: TSmallintField;
      qryUserProfilebirth_district_id: TSmallintField;
      qryUserProfilebirth_town_id: TIntegerField;
      qryUserProfilepublic_email: TWideStringField;
      qryUserProfilesearch_name: TWideStringField;
      qryUserProfilereverse_search: TWideStringField;
      tbUserSessionRoles: TPgTable;
      tbUserSessionRolesdb_schema_id: TIntegerField;
      tbUserSessionRolesrole_id: TSmallintField;
      tbUserSessionRolesdb_user_id: TIntegerField;
      dsUserSession: TDataSource;
      qryUserSession: TPgQuery;
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
      qryUserSessiondb_session_id: TLargeintField;
      qryUserSessionsearch_name: TWideStringField;
      qryUserSessiondefault_role_id: TSmallintField;
      OraErgoSession: TOraSession;
      procedure DataModuleCreate(Sender: TObject); virtual;
      procedure qryUserSessionAfterOpen(DataSet: TDataSet);
      procedure qryUserSessionBeforeOpen(DataSet: TDataSet);
      procedure qryUserProfileNewRecord(DataSet: TDataSet);
   private
      FServerSession: TJanuaServerSession;
      FServerFunctions: TJanuaOracleServerFunctions;
      FisServer: boolean;
      FLastErrorSpecs: string;
      procedure SetServerSession(const Value: TJanuaServerSession);
      procedure SetisServer(const Value: boolean);
      procedure SetLog(const Value: TStringList);

      procedure SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
      procedure SetVerbose(const Value: boolean);
      procedure SetHaserrors(const Value: boolean);
      procedure SetLastErrorMessage(const Value: string);
      procedure SetLastErrorSpecs(const Value: string);
      procedure SetServerFunctions(const Value: TJanuaOracleServerFunctions);
      { Private declarations }
   protected
      FLastErrorMessage: string;
      FUserKey: String;
      FHaserrors: boolean;
      FVerbose: boolean;
      FJanuaCoreLogger: TJanuaCoreLogger;
      FLog: TStringList;
      FSessionKey: string;
      procedure WriteLog(aLog: string);
      procedure WriteError(aLog: string; e: Exception);
      procedure OpenDataset(const aDataset: TDataSet);
      procedure SetSessionKey(const Value: string);
      procedure OpenProfile;
      procedure RaiseException(aException: string);
   public
      { Public declarations }
      property ServerSession: TJanuaServerSession read FServerSession
        write SetServerSession;
      property Verbose: boolean read FVerbose write SetVerbose;
      property SessionKey: string read FSessionKey write SetSessionKey;
      property Log: TStringList read FLog write SetLog;
      property isServer: boolean read FisServer write SetisServer;
      property JanuaCoreLogger: TJanuaCoreLogger read FJanuaCoreLogger
        write SetJanuaCoreLogger;
      property Haserrors: boolean read FHaserrors write SetHaserrors;
      property LastErrorMessage: string read FLastErrorMessage
        write SetLastErrorMessage;
      property LastErrorSpecs: string read FLastErrorSpecs
        write SetLastErrorSpecs;
      // core logger può 'arrivare dall'esterno' e non essere interno ...............................
      procedure GetSchemasList(SessionKey: string);
      property ServerFunctions: TJanuaOracleServerFunctions
        read FServerFunctions;

   end;

var
   dmJanuaOraModel: TdmJanuaOraModel;

implementation

{$R *.dfm}

procedure TdmJanuaOraModel.DataModuleCreate(Sender: TObject);
var
   i: integer;
begin
   self.FLog := TStringList.Create;
   for i := 0 to self.ComponentCount - 1 do
   begin
      if (self.Components[i] is TPgQuery) then
         (self.Components[i] as TPgQuery).Connection := self.PgErgoConnection
      else if (self.Components[i] is TPgStoredProc) then
         (self.Components[i] as TPgStoredProc).Connection :=
           self.PgErgoConnection
      else if (self.Components[i] is TPgTable) then
         (self.Components[i] as TPgTable).Connection := self.PgErgoConnection
   end;

   if not Assigned(self.FServerFunctions) then
      self.FServerFunctions := TJanuaOracleServerFunctions.Create(self);

end;

procedure TdmJanuaOraModel.GetSchemasList(SessionKey: string);
begin

end;

procedure TdmJanuaOraModel.OpenDataset(const aDataset: TDataSet);
begin
   self.FServerFunctions.OpenDataset( aDataset);
end;

procedure TdmJanuaOraModel.OpenProfile;
begin
   if (self.FSessionKey > '') and (self.FSessionKey <> 'Error') then
      try
         if not self.PgErgoConnection.Connected then
            self.PgErgoConnection.Connect;
         self.WriteLog('TdmPgSystemCommand.OpenProfile open qryUserSession: ' +
           self.FSessionKey);
         self.qryUserSession.ParamByName('db_session_key').AsString :=
           self.FSessionKey;
         FServerFunctions.OpenDataset(self.qryUserSession);
         self.FUserKey := self.qryUserSessionverify_token.AsString;
         FServerFunctions.OpenDataset(self.tbUserSessionRoles);
         FServerFunctions.OpenDataset(self.qryUserProfile);
         self.WriteLog
           ('TdmPgSystemCommand.OpenProfile open qryUserProfile record: ' +
           qryUserProfile.RecordCount.ToString());
      except
         on e: Exception do
         begin
            self.WriteLog('TdmPgSystemCommand.OpenProfile errore: ' + sLineBreak
              + e.Message);
            raise;
         end;
      end;
end;

procedure TdmJanuaOraModel.qryUserProfileNewRecord(DataSet: TDataSet);
begin
   qryUserProfiledb_user_id.Value := qryUserSessiondb_user_id.Value;
   qryUserProfilecountry_id.Value := 1;
   qryUserProfilepublic_email.Value := qryUserSessionemail.AsString;
end;

procedure TdmJanuaOraModel.qryUserSessionAfterOpen(DataSet: TDataSet);
begin
   FServerFunctions.OpenDataset(self.tbUserSessionRoles);
   FServerFunctions.OpenDataset(self.qryUserProfile);
end;

procedure TdmJanuaOraModel.qryUserSessionBeforeOpen(DataSet: TDataSet);
begin
   qryUserSession.ParamByName('db_session_key').AsString := self.FSessionKey;
end;

procedure TdmJanuaOraModel.RaiseException(aException: string);
begin
   if not(csDesigning in ComponentState) then
   begin
      raise Exception.Create(aException)
   end
   else
   begin
      self.WriteLog(aException);
      self.Haserrors := true;
      self.LastErrorMessage := aException;
   end;
end;

procedure TdmJanuaOraModel.SetHaserrors(const Value: boolean);
begin
   FHaserrors := Value;
end;

procedure TdmJanuaOraModel.SetisServer(const Value: boolean);
begin
   FisServer := Value;
end;

procedure TdmJanuaOraModel.SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
begin
   FJanuaCoreLogger := Value;
   if Assigned(FJanuaCoreLogger) then
      FServerFunctions.JanuaLogger := FJanuaCoreLogger;
end;

procedure TdmJanuaOraModel.SetLastErrorMessage(const Value: string);
begin
   FLastErrorMessage := Value;
end;

procedure TdmJanuaOraModel.SetLastErrorSpecs(const Value: string);
begin
   FLastErrorSpecs := Value;
end;

procedure TdmJanuaOraModel.SetLog(const Value: TStringList);
begin
   FLog.Assign(Value);
end;

procedure TdmJanuaOraModel.SetServerFunctions(const Value
  : Janua.Oracle.Functions.TJanuaOracleServerFunctions);
begin
   FServerFunctions := Value;
end;

procedure TdmJanuaOraModel.SetServerSession(const Value: TJanuaServerSession);
begin
   FServerSession := Value;
   self.FSessionKey := self.FServerSession.Key;
end;

procedure TdmJanuaOraModel.SetSessionKey(const Value: string);
begin
   FSessionKey := Value;
   if Value <> '' then
      if self.FSessionKey <> Value then
      begin
         self.qryUserSession.Close;
         self.FSessionKey := Value;
         self.OpenProfile;
      end;
end;

procedure TdmJanuaOraModel.SetVerbose(const Value: boolean);
begin
   FVerbose := Value;
end;

procedure TdmJanuaOraModel.WriteError(aLog: string; e: Exception);
begin
   if not Assigned(self.FLog) then
      self.FLog := TStringList.Create;
   try
      if Assigned(FServerFunctions) then
      begin
         FServerFunctions.WriteLog(self.FSessionKey + ' ' + DateTimeToStr(Now())
           + sLineBreak + aLog);
         self.FLog.Add(DateTimeToStr(Now()) + sLineBreak + aLog);
         self.FLastErrorMessage := aLog;
         self.FLastErrorSpecs := e.Message;
      end;
   except
      on e: Exception do
      begin
         self.FLog.Add(DateTimeToStr(Now()) + sLineBreak + 'WriteError: ' +
           e.Message + sLineBreak);
         self.FHaserrors := true;
         self.FLastErrorMessage := DateTimeToStr(Now()) + 'WriteError: ';
         self.FLastErrorSpecs := e.Message;
      end;
   end;
end;

procedure TdmJanuaOraModel.WriteLog(aLog: string);
begin
   if not Assigned(self.FLog) then
      self.FLog := TStringList.Create;
   try
      if Assigned(FServerFunctions) then
      begin
         FServerFunctions.WriteLog(self.FSessionKey + ' ' + DateTimeToStr(Now())
           + sLineBreak + aLog);
         self.FLog.Add(DateTimeToStr(Now()) + sLineBreak + aLog);
      end;
   except
      on e: Exception do
      begin
         self.FLog.Add(DateTimeToStr(Now()) + sLineBreak + 'WriteLog: ' +
           e.Message + sLineBreak);
         self.FHaserrors := true;
         self.FLastErrorMessage := DateTimeToStr(Now()) + 'WriteLog: ' +
           e.Message;
      end;
   end;
end;

end.
