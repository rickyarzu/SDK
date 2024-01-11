unit Janua.Oracle.Functions;

interface

uses System.Classes, System.SysUtils,
  // DB / Oracle
  Data.DB, pgAccess, OraCall, Ora, OraSmart,
  // Janua
  Janua.Cms.Types, Janua.Core.Types, Janua.Core.Classes, Janua.Core.DB, Janua.Core.Functions,
  Janua.Core.System, Janua.Core.Cms;

const
  sec_uid_spec = $01;
  sec_gid_spec = $02;
  sec_server_spec = $04;
  sec_password_spec = $08;
  sec_group_name_spec = $10;
  sec_first_name_spec = $20;
  sec_middle_name_spec = $40;
  sec_last_name_spec = $80;
  sec_dba_user_name_spec = $100;
  sec_dba_password_spec = $200;

  sec_protocol_tcpip = 1;
  sec_protocol_netbeui = 2;
  sec_protocol_spx = 3;
  sec_protocol_local = 4;

type
  ISC_STATUS = Integer;
  P_ISC_STATUS = ^ISC_STATUS;

  USER_SEC_DATA = record
    sec_flags: Smallint;
    uid: Integer;
    gid: Integer;
    protocol: Integer;
    server: PChar;
    user_name: PChar;
    password: PChar;
    group_name: PChar;
    first_name: PChar;
    middle_name: PChar;
    last_name: PChar;
    dba_user_name: PChar;
    dba_password: PChar;
  end;

  P_USER_SEC_DATA = ^USER_SEC_DATA;

  TOpenThread = class(TThread)
  private
    FException: Exception;
    FaDataset: TDataset;
    procedure DoHandleException;
    procedure SetaDataset(const Value: TDataset);
  protected
    procedure Execute; override;
    procedure HandleException; virtual;
  public
    constructor Create(Suspended: Boolean; vDataset: TDataset); overload;
    property aDataset: TDataset read FaDataset write SetaDataset;
  end;

type
  TJanuaOracleServerFunctions = class(TJanuaCustomServerFunctions)
  private
    procedure PosTOraDataset(const aDataset: TOraDataset);
  public
    function CheckUser(var count: Integer; p_username, p_email: string; spUserTest: TDataset = nil)
      : Boolean; override;
    function CheckUserSocial(p_social_id, p_social_kind: string; spUserTest: TDataset = nil)
      : Boolean; override;
    function AddUser(spUserAdd: TOraStoredProc; spUserTest: TOraStoredProc;
      p_username, p_email, p_password: string; p_sendmail: Boolean; var v_error: string;
      p_country_id: Integer; var v_user_key: string; var FRegisterError: TJanuaRegisterError): Boolean;
    function AddUserSocial(spUserAdd: TOraStoredProc; spUserTest: TOraStoredProc;
      p_social_id, p_social_kind, p_email: string; p_sendmail: Boolean; var v_error: string;
      p_country_id: Integer; var v_user_key: string; var FRegisterError: TJanuaRegisterError): Boolean;
    function CheckUserEmail(p_email: string; var v_error: string; spUserTest: TOraStoredProc): Boolean;
    function CreatePersonalSchema(p_session_key: string; var v_error, v_key: string;
      spCreatePersonalSchema: TOraStoredProc): Boolean;
    function Login(p_username, p_password: string; var v_error, v_key: string;
      spLogin: TOraStoredProc): Boolean;
    function GetSession(p_key: string; qryUserSession: TOraQuery; p_log: Boolean; var ErrorMessage: string)
      : TJanuaServerSession;
    function NewArticleInternal(var aArticleRecord: TArticleRecord; prcNewArticle: TOraStoredProc;
      var HasError: Boolean; var Msg: TJanuaServerLog): Boolean;
    function GetCountryByName(cName: string; qryCountries: TDataset): Integer; override;
    function GetCountryByCode(cCode: string; qryCountries: TDataset): Integer; override;
    function GetCountryByID(cID: Integer; qryCountries: TDataset): Boolean; override;
    procedure ClearCountriesParams(qryCountries: TDataset); override;
    function FindUserByKey(const aKey: string; aQuery: TOraQuery; var aUser: TJanuaRecordUserProfile): Boolean;
    procedure SetUserProfile(aQuery: TDataset; var aUser: TJanuaRecordUserProfile); override;
    function DatasetToXml(const aDataset: TDataset): string; override;
    procedure PostDataset(const aDataset: TDataset); override;
    procedure OpenDataset(const aDataset: TDataset; DoRaise: Boolean = true); override;
    procedure ReOpenDataset(const aDataset: TDataset); override;
    procedure PrepareDataset(const aDataset: TDataset); override;
    procedure ExecuteProcedure(aProcedure: TDataset); override;
    procedure WriteError(LogMessage: string; E: Exception; DoRaise: Boolean = true); override;
    procedure TestDatasets; override;
  end;

procedure OpenThreadedDataset(const aDataset: TDataset; DoRaise: Boolean = true);

implementation

{ ************************** qryCountries Server Functions *********************
  select * from  jpublic.countries
  where
  (country_id = :country_id or :country_id = 0)
  and
  (iso_country_code = :country_code or :country_code = '*')
  and
  (Upper(country_name) = Upper(:country_name) or :country_name = '*')
}

procedure OpenThreadedDataset(const aDataset: TDataset; DoRaise: Boolean = true);
begin
  // Create an instance of the TMyThread
  with TOpenThread.Create(true, aDataset) do
  begin
    FreeOnTerminate := true;
    Start;
  end;
end;

function TJanuaOracleServerFunctions.NewArticleInternal(var aArticleRecord: TArticleRecord;
  prcNewArticle: TOraStoredProc; var HasError: Boolean; var Msg: TJanuaServerLog): Boolean;
begin
  try
    if Assigned(prcNewArticle) then
      with prcNewArticle do
      begin
        ParamByName('in_article_id').AsLargeInt := aArticleRecord.ID;
        ParamByName('in_title').AsWideString := aArticleRecord.Title;
        ParamByName('in_abstract').AsWideString := aArticleRecord.TextAbstract;
        ParamByName('in_author_id').AsLargeInt := aArticleRecord.OwnerID;
        ParamByName('in_text').AsInteger := aArticleRecord.OwnerID;
        ParamByName('in_datetime').AsDateTime := aArticleRecord.Date;
        ParamByName('in_external_link').AsString := aArticleRecord.Link;
        ParamByName('in_image_url').AsWideString := aArticleRecord.ImageUrl;
        ParamByName('in_main_argument_id').AsSmallInt := aArticleRecord.MainArgument.ID;
        ParamByName('in_argument_id').AsSmallInt := aArticleRecord.Argument.ID;
        ParamByName('in_sub_argument_id').AsSmallInt := aArticleRecord.SubArgument.ID;
        ParamByName('in_specification_id').AsInteger := aArticleRecord.Specification.ID;
        ExecuteProcedure(prcNewArticle);
        Result := prcNewArticle.ParamByName('Result').AsLargeInt > 0;
        aArticleRecord.ID := prcNewArticle.ParamByName('Result').AsLargeInt;
      end
    else
      Result := false;
  except
    on E: Exception do
    begin
      Result := false;
      HasError := true;
      self.WriteError('TJanuaOracleServerFunctions.NewArticleInternal ', E);
    end;
  end;
end;

function TJanuaOracleServerFunctions.GetCountryByName(cName: string; qryCountries: TDataset): Integer;
begin
  try
    TOraQuery(qryCountries).ParamByName('country_name').AsString := cName;
    self.OpenDataset(qryCountries);
    if qryCountries.RecordCount > 0 then
      Result := qryCountries.FieldByName('country_id').AsInteger
    else
      Result := 0;
  except
    on E: Exception do
    begin
      Result := 0;
      HasErrors := true;
      self.WriteError('TJanuaOracleServerFunctions.GetCountryByName: ' + cName, E);
    end;
  end;
end;

function TJanuaOracleServerFunctions.GetCountryByCode(cCode: string; qryCountries: TDataset): Integer;
begin
  try
    TOraQuery(qryCountries).ParamByName('country_code').AsString := cCode;
    self.OpenDataset(qryCountries);
    if qryCountries.RecordCount > 0 then
      Result := qryCountries.FieldByName('country_id').AsInteger
    else
      Result := 0;
  except
    on E: Exception do
    begin
      Result := 0;
      HasErrors := true;
      self.WriteError('TJanuaOracleServerFunctions.GetCountryByCode: ' + cCode, E);
    end;
  end;
end;

function TJanuaOracleServerFunctions.GetCountryByID(cID: Integer; qryCountries: TDataset): Boolean;
begin
  Result := false;
  try

    if Assigned(qryCountries) then
    begin
      ClearCountriesParams(qryCountries);
      self.WriteLog('GetCountryByID: ' + cID.ToString());
      TOraQuery(qryCountries).ParamByName('country_id').AsInteger := cID;
      self.OpenDataset(qryCountries);
      Result := qryCountries.RecordCount > 0;
    end
    else
      RaiseException('GetCountryByID: Errore non assegnato oggetto qryCountries');

  except
    on E: Exception do
    begin
      Result := false;
      HasErrors := true;
      self.WriteError('TJanuaOracleServerFunctions.GetCountryByID: ' + cID.ToString, E);
    end;
  end;
end;

procedure TJanuaOracleServerFunctions.ClearCountriesParams(qryCountries: TDataset);
begin
  try
    if Assigned(qryCountries) then
    begin
      if not TOraQuery(qryCountries).Prepared then
        TOraQuery(qryCountries).Prepare;
      // compila la query se non è già Compilata
      TOraQuery(qryCountries).ParamByName('country_id').AsInteger := 0;
      TOraQuery(qryCountries).ParamByName('country_code').AsString := '*';
      TOraQuery(qryCountries).ParamByName('country_name').AsString := '*';
      // imposta i parametri di Default della query di ricerca e vediamo che fa ...
    end
    else
      RaiseException('ClearCountriesParams: Errore non assegnato oggetto qryCountries');
  except
    on E: Exception do
    begin
      HasErrors := true;
      self.WriteError('TJanuaOracleServerFunctions.ClearCountriesParams: ', E);
    end;
  end;
end;

// ********************* Session functions **************************************

function TJanuaOracleServerFunctions.GetSession(p_key: string; qryUserSession: TOraQuery; p_log: Boolean;
  var ErrorMessage: string): TJanuaServerSession;
begin
  try
    if not qryUserSession.Connection.Connected then
      qryUserSession.Connection.Connect;
    if not qryUserSession.Prepared then
      qryUserSession.Prepare;
    qryUserSession.ParamByName('db_session_key').AsString := p_key;
    OpenDataset(qryUserSession);
    Result.Key := p_key;
    Result.Email := qryUserSession.FieldByName('email').AsString;
    Result.Schema_id := qryUserSession.FieldByName('db_schema_id').AsLargeInt;
    Result.Session_id := qryUserSession.FieldByName('db_session_id').AsLargeInt;
    Result.User_id := qryUserSession.FieldByName('db_user_id').AsInteger;
    qryUserSession.Close;
    qryUserSession.Connection.Disconnect;
  except
    on E: Exception do
    begin
      qryUserSession.Close;
      qryUserSession.Connection.Disconnect;
      if p_log then
      begin
        ErrorMessage := E.Message;
        WriteLog(E.Message)
      end
      else
        WriteError('TJanuaOracleServerFunctions.GetSession', E);
    end;
  end;
end;

function TJanuaOracleServerFunctions.Login(p_username, p_password: string; var v_error, v_key: string;
  spLogin: TOraStoredProc): Boolean;
begin
  WriteLog('Janua.Server.Functions.Login');

  if not Assigned(spLogin) then
  begin
    WriteLog('Janua.Server.Functions.Login spLogin non assegnata');
    Exit(false);
  end;

  WriteLog('Login:  spLogin.Prepare');
  if not spLogin.Connection.Connected then
    spLogin.Connection.Connected := true;
  if not spLogin.Prepared then
    spLogin.Prepare;

  try
    WriteLog('Sessione Connessa a Oracle');
    WriteLog('Tentativo Login: ' + p_username + '/' + p_password);

    if IsMail(p_username) then
    begin
      if not IsValidEmail(p_username) then
      begin
        WriteLog('Tentativo Login con Mail Errata: ' + p_username);
        v_error := 'Tentativo Login con Mail Errata: ';
        spLogin.ParamByName('p_email').AsString := '';
        spLogin.ParamByName('p_username').AsString := p_username;
      end
      else
      begin
        spLogin.ParamByName('p_email').AsString := p_username;
        WriteLog('Tentativo connessione udando indrizzo Mail:' + p_username);
        spLogin.ParamByName('p_username').AsString := '';
      end;
    end
    else
    begin
      spLogin.ParamByName('p_username').AsString := p_username;
      spLogin.ParamByName('p_email').AsString := '';
      WriteLog('Tentativo connessione usando username:' + p_username);
    end;

    spLogin.ParamByName('p_password').AsString := p_password;
    ExecuteProcedure(spLogin);
    // FUserID := spLogin.ParamByName('Result').AsLargeInt;
    WriteLog('Tentativo Login risultato: ' + spLogin.ParamByName('Result').AsWideString);

    v_key := spLogin.ParamByName('Result').AsString;
    Result := v_key <> 'Error';
    spLogin.Connection.Close;

  except
    on E: Exception do
    begin
      Result := false;
      WriteLog('Errore funzione di TServerMethodsCore.Login: ' + sLineBreak + E.Message);
      v_error := ('Errore funzione di TServerMethodsCore.Login: ' + sLineBreak + E.Message);
    end;
  end;
end;


// ********************* User Functions ****************************************

function TJanuaOracleServerFunctions.CheckUserSocial(p_social_id, p_social_kind: string;
  spUserTest: TDataset = nil): Boolean;
begin
  Result := false;

  if (spUserTest is TOraStoredProc) then
  begin
    // SELECT system.usertestsocial(:p_socialid, :p_social_kind)
    (spUserTest as TOraStoredProc).ParamByName('p_socialid').AsWideString := p_social_id;
    (spUserTest as TOraStoredProc).ParamByName('p_social_kind').AsWideString := p_social_kind;
    (spUserTest as TOraStoredProc).Execute;
    // Risultato True se non trovo l'utenteche cercavo quindi si può registrare
    Result := (spUserTest as TOraStoredProc).ParamByName('Result').AsInteger = 0;
  end;
end;

function TJanuaOracleServerFunctions.CheckUser(var count: Integer; p_username, p_email: string;
  spUserTest: TDataset = nil): Boolean;
begin
  Result := false;
  if (spUserTest is TOraStoredProc) then
  begin
    (spUserTest as TOraStoredProc).ParamByName('p_username').AsWideString := p_username;
    (spUserTest as TOraStoredProc).ParamByName('p_email').AsWideString := p_email;
    (spUserTest as TOraStoredProc).Execute;
    count := (spUserTest as TOraStoredProc).ParamByName('Result').AsInteger;
    Result := count = 0;
  end;
end;

function TJanuaOracleServerFunctions.CreatePersonalSchema(p_session_key: string; var v_error, v_key: string;
  spCreatePersonalSchema: TOraStoredProc): Boolean;
begin
  try
    spCreatePersonalSchema.ParamByName('p_session_key').AsString := p_session_key;
    spCreatePersonalSchema.Execute;
    v_key := spCreatePersonalSchema.ParamByName('Result').AsString;
    Result := v_key <> 'Error';
  except
    on E: Exception do
    begin
      Result := false;
      WriteLog('Errore funzione di TServerMethodsCore.CreatePersonalSchema: ' + sLineBreak + E.Message);
      v_error := ('Errore funzione di TServerMethodsCore.CreatePersonalSchema: ' + sLineBreak + E.Message);
    end;
  end;
end;

function TJanuaOracleServerFunctions.CheckUserEmail(p_email: string; var v_error: string;
  spUserTest: TOraStoredProc): Boolean;
var
  vcount: Integer;
begin
  try
    // *************************************************************************
    // *** Verifica se l'email è scritta correttamente e se non è in uso *******
    // *************************************************************************
    if not IsMail(p_email) then
    begin
      v_error := 'Inserita mail non corretta';
      Exit(false);
    end;
    if not IsValidEmail(p_email) then
    begin
      v_error := 'Inserita mail non corretta';
      Exit(false);
    end;
    Result := CheckUser(vcount, '', p_email, spUserTest);
  except
    on E: Exception do
    begin
      Result := false;
      self.WriteError('Errore funzione di TServerMethodsCore.CheckUserEmail: ', E);
    end;
  end;
end;

// ************** User Profile Functions ****************************************

procedure TJanuaOracleServerFunctions.SetUserProfile(aQuery: TDataset; var aUser: TJanuaRecordUserProfile);
begin
  try
    inherited;
  except
    on E: Exception do
    begin
      self.WriteError('TJanuaOracleServerFunctions.SetUserProfile', E);
    end;
  end;
end;

procedure TJanuaOracleServerFunctions.TestDatasets;
begin
  inherited;

end;

procedure TJanuaOracleServerFunctions.WriteError(LogMessage: string; E: Exception; DoRaise: Boolean);
begin
  inherited;

end;

function TJanuaOracleServerFunctions.FindUserByKey(const aKey: string; aQuery: TOraQuery;
  var aUser: TJanuaRecordUserProfile): Boolean;
begin
  { SELECT u.username, s.*
    FROM system.db_users_profiles s, system.db_users u
    where
    (u.verify_token = :db_user_key
    or
    s.db_user_id = :db_user_id)

    and s.db_user_id = u.db_user_id }
  Result := aQuery.Active and (aQuery.RecordCount > 0) and (aQuery.ParamByName('db_user_id').AsInteger = 0);
  if not Result then
    try
      aQuery.ParamByName('db_user_id').AsInteger := 0;
      aQuery.ParamByName('db_user_key').AsString := aKey;
      aQuery.Open;
      Result := aQuery.RecordCount > 0;
      // questa funzione però NON si occupa di 'sistemare' il discorso di assegnare
      // i dati di nazione regione provincia e città .....
      if Result then
        SetUserProfile(aQuery, aUser);
    except
      on E: Exception do
      begin
        self.WriteError('TJanuaOracleServerFunctions.FindUserByKey', E);
      end;
    end;

end;

function TJanuaOracleServerFunctions.AddUserSocial(spUserAdd: TOraStoredProc; spUserTest: TOraStoredProc;
  p_social_id, p_social_kind, p_email: string; p_sendmail: Boolean; var v_error: string;
  p_country_id: Integer; var v_user_key: string; var FRegisterError: TJanuaRegisterError): Boolean;
begin
  try

    if not Janua.Core.Functions.IsValidEmail(p_email) then
      p_email := lowerCase(p_social_kind) + '-' + lowerCase(p_social_id);

    if (p_social_id = '') or (p_social_kind = '') then
    begin
      Result := false;
      v_error := 'Social ID or Social Kind not set';
      FRegisterError := JreWrongEmail;
      Exit;
    end;

    FRegisterError := jreNone;

    if CheckUserSocial(p_social_id, p_social_kind, spUserTest) then
      Result := true
    else
    begin
      FRegisterError := jreUserAlreadyRegistered;
      Result := false;
      v_error := 'User already Registered';
    end;

    // system.useraddsocial(:p_email, :p_socialid, :p_social_kind, :p_country_code, :p_ispublic)
    if Result then
    begin
      spUserAdd.ParamByName('p_email').AsWideString := p_email;
      spUserAdd.ParamByName('p_socialid').AsWideString := p_social_id;
      spUserAdd.ParamByName('p_social_kind').AsWideString := p_social_kind;
      // spUserAdd.ParamByName('p_country_id').AsInteger := 1;
      spUserAdd.ParamByName('p_country_code').Value := 'IT';
      spUserAdd.ParamByName('p_ispublic').AsBoolean := false;
      ExecuteProcedure(spUserAdd);
      v_user_key := spUserAdd.ParamByName('Result').AsString;
      Result := v_user_key <> 'Error';
      if not Result then
        v_error := 'Utente non registrato da procedura di database';
    end;

  except
    on E: Exception do
    begin
      Result := false;
      v_error := E.Message;
      FRegisterError := jreSystemError;
      self.WriteError('TJanuaOracleServerFunctions.AddUser', E);
    end;
  end;

end;

function TJanuaOracleServerFunctions.AddUser(spUserAdd: TOraStoredProc; spUserTest: TOraStoredProc;
  p_username, p_email, p_password: string; p_sendmail: Boolean; var v_error: string; p_country_id: Integer;
  var v_user_key: string; var FRegisterError: TJanuaRegisterError): Boolean;
var
  vcount: Integer;
begin
  try

    if not Janua.Core.Functions.IsValidEmail(p_email) and Janua.Core.Functions.IsValidEmail(p_username) then
      p_email := p_username;

    if not Janua.Core.Functions.IsValidEmail(p_email) then
    begin
      Result := false;
      v_error := 'Mail non Valida';
      FRegisterError := JreWrongEmail;
      Exit;
    end;

    FRegisterError := jreNone;

    if CheckUser(vcount, p_username, p_email, spUserTest) then
      Result := true
    else
    begin
      FRegisterError := jreUserAlreadyRegistered;
      Result := false;
      v_error := 'Utente già registrato';
    end;

    if Result then
    begin
      spUserAdd.ParamByName('p_email').AsWideString := p_email;
      spUserAdd.ParamByName('p_username').AsWideString := p_username;
      spUserAdd.ParamByName('p_password').AsWideString := p_password;
      spUserAdd.ParamByName('p_country_id').AsInteger := 1;
      spUserAdd.ParamByName('p_ispublic').AsBoolean := false;
      ExecuteProcedure(spUserAdd);
      v_user_key := spUserAdd.ParamByName('Result').AsString;
      Result := v_user_key <> 'Error';
      if not Result then
        v_error := 'Utente non registrato da procedura di database';
    end;

  except
    on E: Exception do
    begin
      Result := false;
      v_error := E.Message;
      FRegisterError := jreSystemError;
      self.WriteError('TJanuaOracleServerFunctions.AddUser', E);
    end;
  end;

end;


// ********************* Core Functions for System ******************************

procedure TJanuaOracleServerFunctions.OpenDataset(const aDataset: TDataset; DoRaise: Boolean = true);
begin
  try
    if (aDataset is TOraQuery) then
      try
        TOraQuery( aDataset).Open;
      Except
        on E: Exception do
        begin
          RaiseException('Errore di Apertura Dataset: ' + TOraQuery(aDataset).Name + sLineBreak +
            TOraQuery(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.ClassName + E.Message + sLineBreak);
        end;
      end
    else if (aDataset is TOraTable) then
      try
        TOraTable( aDataset).Open;
      Except
        on E: Exception do
        begin
          E.RaiseOuterException(Exception.Create('Errore di Apertura Dataset: ' + TOraTable( aDataset).Name +
            sLineBreak + TOraTable( aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.ClassName + ':' +
            E.Message));
          raise;
        end;
      end;
  except
    on E: Exception do
      self.WriteError('TJanuaOracleServerFunctions.OpenDataset: ' + aDataset.Name, E);
  end;
end;

procedure TJanuaOracleServerFunctions.PostDataset(const aDataset: TDataset);
begin
  inherited;

end;

procedure TJanuaOracleServerFunctions.PosTOraDataset(const aDataset: TOraDataset);
begin
  if aDataset.State in [dsEdit, dsInsert] then
    try
      try
        aDataset.Post;
      Except
        on E: Exception do
        begin
          if (aDataset is TOraQuery) then
            raise Exception.Create('Errore di Apertura TOraQuery: ' + TOraQuery(aDataset).Name + sLineBreak +
              TOraQuery(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak)
          else if (aDataset is TOraTable) then
            raise Exception.Create('Errore di Apertura TOraTable: ' + TOraTable(aDataset).Name + sLineBreak +
              TOraTable(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
        end;
      end
    except
      on E: Exception do
        self.WriteError('TJanuaOracleServerFunctions.OpenDataset: ' + aDataset.Name, E);

    end;
end;

procedure TJanuaOracleServerFunctions.PrepareDataset(const aDataset: TDataset);
begin
  try
    if (aDataset is TOraQuery) then
      try
        TOraQuery(aDataset).Prepare;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Prepare TOraQuery: ' + TOraQuery(aDataset).Name + sLineBreak +
            TOraQuery(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak);
        end;
      end
    else if (aDataset is TOraTable) then
      try
        TOraTable(aDataset).Prepare;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Prepare TOraTable: ' + TOraTable(aDataset).Name + sLineBreak +
            TOraTable(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
          raise;
        end;
      end;

  except
    on E: Exception do
      self.WriteError('TJanuaOracleServerFunctions.PrepareDataset: ' + aDataset.Name, E);
  end;
end;

procedure TJanuaOracleServerFunctions.ReOpenDataset(const aDataset: TDataset);
begin
  aDataset.Close;
  self.OpenDataset( aDataset);
end;

function TJanuaOracleServerFunctions.DatasetToXml(const aDataset: TDataset): string;
var
  aStream: TMemoryStream;
  Lines: TStringList;
begin
  try
    aStream := TMemoryStream.Create;
    try
      TCustomPgDataset(aDataset).SaveToXML(aStream);
      aStream.Position := 0;
      Lines := TStringList.Create;
      try
        Lines.LoadFromStream(aStream);
        Result := Lines.Text;
      finally
        FreeAndNil(Lines);
      end;
    finally
      FreeAndNil(aStream);
    end;
  except
    on E: Exception do
      self.WriteError('TJanuaOracleServerFunctions.DatasetToXml: ' + aDataset.Name, E);

  end;
end;

procedure TJanuaOracleServerFunctions.ExecuteProcedure(aProcedure: TDataset);
begin
  try
    TOraStoredProc(aProcedure).ExecProc;
  except
    on E: Exception do
    begin
      WriteError('Errore Exec prcedura ' + aProcedure.Name + sLineBreak + TOraStoredProc(aProcedure)
        .SQL.Text, E);
    end;

  end;
end;

{ TOpenThread }

constructor TOpenThread.Create(Suspended: Boolean; vDataset: TDataset);
begin
  inherited Create(Suspended);
  self.FaDataset := vDataset;
end;

procedure TOpenThread.DoHandleException;
begin
  // Cancel the mouse capture    // VCL method .......................
  // if GetCapture <> 0 then SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
  // Now actually show the exception
  // if FException is Exception then
  // Application.ShowException(FException)
  // else
  System.SysUtils.ShowException(FException, nil);
end;

procedure TOpenThread.Execute;
begin
  inherited;
  FException := nil;
  if FaDataset <> nil then
    try
      // self.Synchronize(
      // procedure
      // begin
      if (FaDataset is TOraQuery) then
        try
          TOraQuery(FaDataset).Open;
        Except
          on E: Exception do
          begin
            raise Exception.Create('Errore di Apertura Dataset: ' + TOraQuery(FaDataset).Name + sLineBreak +
              TOraQuery(FaDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak);
          end;
        end
      else if (FaDataset is TOraTable) then
        try
          TOraTable(FaDataset).Open;
        Except
          on E: Exception do
          begin
            raise Exception.Create('Errore di Apertura Dataset: ' + TOraTable(FaDataset).Name + sLineBreak +
              TOraTable(FaDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
          end;
        end
      else
        FaDataset.Open;
      // end);
    except
      HandleException;
    end;
end;

procedure TOpenThread.HandleException;
begin
  // This function is virtual so you can override it
  // and add your own functionality.
  FException := Exception(ExceptObject);
  try
    // Don't show EAbort messages
    if not(FException is EAbort) then
      Synchronize(DoHandleException);
  finally
    FException := nil;
  end;
end;

procedure TOpenThread.SetaDataset(const Value: TDataset);
begin
  FaDataset := Value;
end;

end.
