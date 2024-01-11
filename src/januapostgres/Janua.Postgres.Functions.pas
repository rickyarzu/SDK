unit Janua.Postgres.Functions;

interface

uses
  // System
  System.Classes, System.SysUtils,
  // DB Libraries
  Datasnap.DBClient, Data.DB, MemData, MemDS, Uni,
  // Janua
  Janua.Cms.Types, Janua.Core.Types, Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Cms, Janua.Core.DB;

{
  type
  TJanuaPostgresTemplateRepository = class(TJanuaTemplateRepository)

  end;
}

type
  TDBTimeIntervalType = (dbiYear, dbiMonth, dbiDay, dbiMinute, dbiSecond);

const
  pgTimeInterval: array [TDBTimeIntervalType] of string = ('Y', 'M', 'D', 'N', 'S');

type
  TJanuaPostgresServerFunctions = class(TJanuaDBServerFunctions)
  protected // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: boolean; override;
  public
    procedure TestDatasets; override;
    constructor Create(aOwner: TComponent); override;
    function CheckUser(var count: integer; p_username, p_email: string; spUserTest: TDataset = nil)
      : boolean; override;
    function CheckUserSocial(p_social_id, p_social_kind: string; spUserTest: TDataset = nil)
      : boolean; override;
    function AddUserSocial(spUserAdd: TPgStoredProc; spUserTest: TPgStoredProc;
      p_social_id, p_social_kind, p_email: string; p_sendmail: boolean; var v_error: string;
      p_country_id: integer; var v_user_key: string; var FRegisterError: TJanuaRegisterError): boolean;
    function CheckUserEmail(p_email: string; var v_error: string; spUserTest: TPgStoredProc): boolean;
    function CreatePersonalSchema(p_session_key: string; var v_error, v_key: string;
      spCreatePersonalSchema: TPgStoredProc): boolean;
    function Login(p_username, p_password: string; var v_error, v_key: string;
      spLogin: TPgStoredProc): boolean;
    function GetSession(p_key: string; qryUserSession: TPgQuery; p_log: boolean; var ErrorMessage: string)
      : TJanuaServerSession;
    function NewArticleInternal(var aArticle: TArticleRecord; prcNewArticle: TPgStoredProc;
      var HasError: boolean; var Msg: TJanuaServerLog): boolean;
    function GetCountryByName(cName: string; qryCountries: TDataset): integer;override;
    function GetCountryByCode(cCode: string; qryCountries: TDataset): integer; override;
    function GetCountryByID(cID: integer; qryCountries: TDataset): boolean; override;
    procedure ClearCountriesParams(qryCountries: TDataset); override;
    procedure SetUserProfile(aQuery: TDataset; var aUser: TJanuaRecordUserProfile); override;
    function DatasetToXml(aDataset: TDataset): string; override;
    procedure PostDataset(aDataset: TDataset);override;
    procedure OpenDataset(aDataset: TDataset; DoRaise: boolean = true); override;
    procedure ReOpenDataset(aDataset: TDataset); override;
    procedure PrepareDataset(aDataset: TDataset); override;
    procedure ExecuteProcedure(aProcedure: TDataset); override;
    procedure CloseAllDatasets; override;
  end;

  TPgOpenThread = class(Janua.Core.DB.TCustomOpenThread)
  public
    constructor Create(Suspended: boolean; vDataset: TDataset; vDatasource: TDataSource;
      aCallBackProc: TProc); override;
  end;

type
  TJanuaPostgresConnection = class(TJanuaCustomDBConnection)
  public
    procedure CreateDataModule; override;
    procedure DestroyDataModule; override;
  end;

procedure OpenPgThreadedDataset(aDataset: TDataset; aDatasource: TDataSource = nil; aDoRaise: boolean = true;
  aCallBackProc: TProc = nil);

procedure SetUpPostgresFunctions;

var
  PgFunctions: TJanuaPostgresServerFunctions;
  PgDBConnection: TJanuaCustomDBConnection;

implementation

uses System.StrUtils;

procedure SetUpPostgresFunctions;
begin
  Janua.Core.DB.DBFunctions := PgFunctions;
end;

{ ************************** qryCountries Server Functions *********************
  select * from  jpublic.countries
  where
  (country_id = :country_id or :country_id = 0)
  and
  (iso_country_code = :country_code or :country_code = '*')
  and
  (Upper(country_name) = Upper(:country_name) or :country_name = '*')
}

procedure OpenPgThreadedDataset(aDataset: TDataset; aDatasource: TDataSource; aDoRaise: boolean;
  aCallBackProc: TProc);
begin
  // Create an instance of the TMyThread
  with TPgOpenThread.Create(true, aDataset, aDatasource, aCallBackProc) do
  begin
    DoRaise := aDoRaise;
    FreeOnTerminate := true;
    Start;
  end;
end;

function TJanuaPostgresServerFunctions.NewArticleInternal(var aArticle: TArticleRecord;
  prcNewArticle: TPgStoredProc; var HasError: boolean; var Msg: TJanuaServerLog): boolean;
begin
  try
    if Assigned(prcNewArticle) then
      with prcNewArticle do
      begin
        ParamByName('in_article_id').AsLargeInt := aArticle.ID;
        ParamByName('in_title').AsWideString := aArticle.Title;
        ParamByName('in_abstract').AsWideString := aArticle.TextAbstract;
        ParamByName('in_author_id').AsLargeInt := aArticle.OwnerID;
        ParamByName('in_text').AsInteger := aArticle.OwnerID;
        ParamByName('in_datetime').AsDateTime := aArticle.Date;
        ParamByName('in_external_link').AsString := aArticle.Link;
        ParamByName('in_image_url').AsWideString := aArticle.ImageUrl;
        ParamByName('in_main_argument_id').AsSmallInt := aArticle.MainArgument.ID;
        ParamByName('in_argument_id').AsSmallInt := aArticle.Argument.ID;
        ParamByName('in_sub_argument_id').AsSmallInt := aArticle.SubArgument.ID;
        ParamByName('in_specification_id').AsInteger := aArticle.Specification.ID;
        ExecuteProcedure(prcNewArticle);
        Result := prcNewArticle.ParamByName('Result').AsLargeInt > 0;
        aArticle.ID := prcNewArticle.ParamByName('Result').AsLargeInt;
      end
    else
      Result := false;
  except
    on E: Exception do
    begin
      Result := false;
      HasError := true;
      self.WriteError('TJanuaPostgresServerFunctions.NewArticleInternal ', E);
    end;
  end;
end;

function TJanuaPostgresServerFunctions.GetCountryByName(cName: string; qryCountries:TDataset ): integer;
begin
  try
    TPgQuery(qryCountries).ParamByName('country_name').AsString := cName;
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
      self.WriteError('TJanuaPostgresServerFunctions.GetCountryByName: ' + cName, E);
    end;
  end;
end;

function TJanuaPostgresServerFunctions.GetCountryByCode(cCode: string; qryCountries: TDataset): integer;
begin
  try
    TPgQuery(qryCountries).ParamByName('country_code').AsString := cCode;
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
      self.WriteError('TJanuaPostgresServerFunctions.GetCountryByCode: ' + cCode, E);
    end;
  end;
end;

function TJanuaPostgresServerFunctions.GetCountryByID(cID: integer; qryCountries: TDataset): boolean;
begin
  Result := false;
  try

    if Assigned(qryCountries) then
    begin
      ClearCountriesParams(qryCountries);
      self.WriteLog('GetCountryByID: ' + cID.ToString());
      TPgQuery(qryCountries).ParamByName('country_id').AsInteger := cID;
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
      self.WriteError('TJanuaPostgresServerFunctions.GetCountryByID: ' + cID.ToString, E);
    end;
  end;
end;

procedure TJanuaPostgresServerFunctions.ClearCountriesParams(qryCountries: TDataset);
begin
  try
    if Assigned(qryCountries) and (qryCountries is TPgQuery) then
    begin
      if not TPgQuery(qryCountries).Prepared then
        TPgQuery(qryCountries).Prepare;
      // compila la query se non è già Compilata
      TPgQuery(qryCountries).ParamByName('country_id').AsInteger := 0;
      TPgQuery(qryCountries).ParamByName('country_code').AsString := '*';
      TPgQuery(qryCountries).ParamByName('country_name').AsString := '*';
      // imposta i parametri di Default della query di ricerca e vediamo che fa ...
    end
    else
      RaiseException('ClearCountriesParams: Errore non assegnato oggetto qryCountries');
  except
    on E: Exception do
    begin
      HasErrors := true;
      self.WriteError('TJanuaPostgresServerFunctions.ClearCountriesParams: ', E);
    end;
  end;
end;

procedure TJanuaPostgresServerFunctions.CloseAllDatasets;
var
  i: integer;
begin
  inherited;
  if Assigned(self.Owner) and (self.Owner is TComponent) then
  begin
    for i := 0 to self.Owner.ComponentCount - 1 do
      if self.Owner.Components[i] is TMemDataset then
        (self.Owner.Components[i] as TMemDataset).Close;
  end;
end;

// ********************* Session functions **************************************

function TJanuaPostgresServerFunctions.GetSession(p_key: string; qryUserSession: TPgQuery; p_log: boolean;
  var ErrorMessage: string): TJanuaServerSession;
begin
  try
    if not qryUserSession.Connection.Connected then
      qryUserSession.Connection.Connect;
    if not qryUserSession.Prepared then
      qryUserSession.Prepare;
    qryUserSession.ParamByName('db_session_key').AsString := p_key;
    OpenDataset(qryUserSession);
    Result.LoadFromDataset(qryUserSession);
    Result.Key := p_key;
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
        WriteError('TJanuaPostgresServerFunctions.GetSession', E);
    end;
  end;
end;

function TJanuaPostgresServerFunctions.InternalActivate: boolean;
var
  j: integer;
  aConnection: TPgConnection;
  aDataModule: TDataModule;
begin
  inherited;
  Result := self.FActive;
  if Result then
    try
      aConnection := nil;
      j := 0;
      self.WriteLog('InternalActivate', 'Inizio procedure aggiornamento dataset');
      if self.Owner is TDataModule then
      begin
        aDataModule := self.Owner as TDataModule;
        if aDataModule.ComponentCount > 0 then
        begin
          for j := 0 to aDataModule.ComponentCount - 1 do
            if (aDataModule.Components[j] is TPgConnection) then
              aConnection := aDataModule.Components[j] as TPgConnection;

          if Assigned(aConnection) then
            self.WriteLog('InternalActivate', 'Trovata Connessione: ' + aConnection.Name)
          else
            self.WriteLog('InternalActivate', 'Connessione non trovata', true);

          j := 0;
          if Assigned(aConnection) then
            for j := 0 to aDataModule.ComponentCount - 1 do
            begin
              if (aDataModule.Components[j] is TPgQuery) then
                (aDataModule.Components[j] as TPgQuery).Connection := aConnection
              else if (aDataModule.Components[j] is TPgStoredProc) then
                (aDataModule.Components[j] as TPgStoredProc).Connection := aConnection
              else if (aDataModule.Components[j] is TPgTable) then
                (aDataModule.Components[j] as TPgTable).Connection := aConnection
            end;
        end;
        self.FActive := true;
      end;
      Result := FActive;
    except
      on E: Exception do
        self.WriteError('InternalActivate', E.Message, E);
    end;
end;

function TJanuaPostgresServerFunctions.Login(p_username, p_password: string; var v_error, v_key: string;
  spLogin: TPgStoredProc): boolean;
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
    WriteLog('Sessione Connessa a PostGres');
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

function TJanuaPostgresServerFunctions.CheckUserSocial(p_social_id, p_social_kind: string;
  spUserTest: TDataset = nil): boolean;
  function CheckProcedure: boolean;
  begin
    (spUserTest as TPgStoredProc).ParamByName('p_socialid').AsWideString := p_social_id;
    (spUserTest as TPgStoredProc).ParamByName('p_social_kind').AsWideString := p_social_kind;
    (spUserTest as TPgStoredProc).Execute;
    CheckProcedure := (spUserTest as TPgStoredProc).ParamByName('Result').AsInteger = 0;
  end;

begin
  Result := (spUserTest is TPgStoredProc) and CheckProcedure;
end;

function TJanuaPostgresServerFunctions.CheckUser(var count: integer; p_username, p_email: string;
  spUserTest: TDataset = nil): boolean;
  function prCheckUser: boolean;
  begin
    (spUserTest as TPgStoredProc).ParamByName('p_username').AsWideString := p_username;
    (spUserTest as TPgStoredProc).ParamByName('p_email').AsWideString := p_email;
    (spUserTest as TPgStoredProc).Execute;
    prCheckUser := (spUserTest as TPgStoredProc).ParamByName('Result').AsInteger = 0;
  end;

begin
  Result := (spUserTest is TPgStoredProc) and prCheckUser
end;

constructor TJanuaPostgresServerFunctions.Create(aOwner: TComponent);
begin
  inherited;
end;

function TJanuaPostgresServerFunctions.CreatePersonalSchema(p_session_key: string; var v_error, v_key: string;
  spCreatePersonalSchema: TPgStoredProc): boolean;
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

function TJanuaPostgresServerFunctions.CheckUserEmail(p_email: string; var v_error: string;
  spUserTest: TPgStoredProc): boolean;
var
  vcount: integer;
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

procedure TJanuaPostgresServerFunctions.SetUserProfile(aQuery: TDataset; var aUser: TJanuaRecordUserProfile);
begin
  try
    inherited;
  except
    on E: Exception do
    begin
      self.WriteError('TJanuaPostgresServerFunctions.SetUserProfile', E);
    end;
  end;
end;

procedure TJanuaPostgresServerFunctions.TestDatasets;
var
  i: integer;
  aDataModule: TDataModule;
begin
  if Assigned(Owner) and (Owner is TDataModule) then
  begin
    aDataModule := Owner as TDataModule;
    begin
      for i := 0 to aDataModule.ComponentCount - 1 do
      begin
        try
          if (aDataModule.Components[i] is TPgQuery) then
            OpenDataset(aDataModule.Components[i] as TPgQuery, false)
          else if (aDataModule.Components[i] is TPgStoredProc) then
            OpenDataset(aDataModule.Components[i] as TPgStoredProc, false)
          else if (aDataModule.Components[i] is TPgTable) then
            OpenDataset(aDataModule.Components[i] as TPgTable, false)
          else if (aDataModule.Components[i] is TClientDataSet) and
            ((aDataModule.Components[i] as TClientDataSet).ProviderName <> '') then
            OpenDataset(aDataModule.Components[i] as TClientDataSet, false)
        except
          on E: Exception do
            self.WriteError('TestDatasets Error: ' + aDataModule.Components[i].Name, E, false);
        end;
      end;
    end;
  end;
end;

function TJanuaPostgresServerFunctions.AddUserSocial(spUserAdd: TPgStoredProc; spUserTest: TPgStoredProc;
  p_social_id, p_social_kind, p_email: string; p_sendmail: boolean; var v_error: string;
  p_country_id: integer; var v_user_key: string; var FRegisterError: TJanuaRegisterError): boolean;
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
      self.WriteError('TJanuaPostgresServerFunctions.AddUser', E);
    end;
  end;

end;

// ********************* Core Functions for System ******************************

procedure TJanuaPostgresServerFunctions.OpenDataset(aDataset: TDataset; DoRaise: boolean = true);
var
  aItem: TJanuaDBDatasetError;
begin
  try
    if (aDataset is TPgQuery) then
      try
        TPgQuery(aDataset).Open;
      Except
        on E: Exception do
        begin
          RaiseException('Errore di Apertura Dataset: ' + IfThen(Assigned(aDataset.Owner),
            aDataset.Owner.Name, '') + '.' + TPgQuery(aDataset).Name + sLineBreak + TPgQuery(aDataset)
            .SQL.Text + sLineBreak + 'Connessione: ' + TPgQuery(aDataset).Connection.ConnectString +
            sLineBreak + 'Errore: ' + E.Message + sLineBreak);
        end;
      end
    else if (aDataset is TPgTable) then
      try
        TPgTable(aDataset).Open;
      Except
        on E: Exception do
        begin
          RaiseException('Errore di Apertura Dataset: ' + IfThen(Assigned(aDataset.Owner),
            aDataset.Owner.Name, '') + TPgTable(aDataset).Name + sLineBreak + TPgTable(aDataset).SQL.Text +
            sLineBreak + 'Errore: ' + E.Message);
        end;
      end
    else if (aDataset is TPgStoredProc) then
      try
        TPgStoredProc(aDataset).Prepare;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Apertura Dataset: ' + TPgStoredProc(aDataset).Name + sLineBreak +
            TPgStoredProc(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
        end;
      end
    else if (aDataset is TClientDataSet) then
      try
        TClientDataSet(aDataset).Open;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Apertura Dataset: ' + TClientDataSet(aDataset).Name + sLineBreak +
            TClientDataSet(aDataset).ProviderName + sLineBreak + 'Errore: ' + E.Message);
        end;
      end

  except
    on E: Exception do
    begin
      aItem.Clear;
      aItem.Name := aDataset.Name;
      aItem.Parent := aDataset.Owner.Name;
      aItem.DateTime := Now();
      aItem.Error := E.Message;
      if (aDataset is TPgQuery) then
        aItem.DatasetType := TJanuaDatasetType.jdtQuery
      else if (aDataset is TClientDataSet) then
        aItem.DatasetType := TJanuaDatasetType.jdtClientDataset
      else if (aDataset is TPgStoredProc) then
        aItem.DatasetType := TJanuaDatasetType.jdtProcedure
      else if (aDataset is TPgTable) then
        aItem.DatasetType := TJanuaDatasetType.jdtTable
      else
        aItem.DatasetType := TJanuaDatasetType.jdtDataset;
      if Assigned(self.FJanuaLogger) and (self.FJanuaLogger is TJanuaDBLogger) then
        (self.FJanuaLogger as TJanuaDBLogger).LogDatabaseError(aItem);
      self.WriteError(E.Message, E, DoRaise);
    end;
  end;
end;

procedure TJanuaPostgresServerFunctions.PostDataset(aDataset: TDataset);
begin
  if aDataset.State in [dsEdit, dsInsert] then
    try
      try
        aDataset.Post;
      Except
        on E: Exception do
        begin
          if (aDataset is TPgQuery) then
            raise Exception.Create('Errore di Apertura TPgQuery: ' + TPgQuery(aDataset).Name + sLineBreak +
              TPgQuery(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak)
          else if (aDataset is TPgTable) then
            raise Exception.Create('Errore di Apertura TPgTable: ' + TPgTable(aDataset).Name + sLineBreak +
              TPgTable(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
        end;
      end
    except
      on E: Exception do
        self.WriteError('TJanuaPostgresServerFunctions.OpenDataset: ' + aDataset.Name, E);
    end;
end;

procedure TJanuaPostgresServerFunctions.PrepareDataset(aDataset: TDataset);
begin
  try
    if (aDataset is TPgQuery) then
      try
        TPgQuery(aDataset).Prepare;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Prepare TPgQuery: ' + TPgQuery(aDataset).Name + sLineBreak +
            TPgQuery(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak);
        end;
      end
    else if (aDataset is TPgTable) then
      try
        TPgTable(aDataset).Prepare;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Prepare TPgTable: ' + TPgTable(aDataset).Name + sLineBreak +
            TPgTable(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
          raise;
        end;
      end;

  except
    on E: Exception do
      self.WriteError('TJanuaPostgresServerFunctions.PrepareDataset: ' + aDataset.Name, E);
  end;
end;

procedure TJanuaPostgresServerFunctions.ReOpenDataset(aDataset: TDataset);
begin
  aDataset.Close;
  self.OpenDataset(aDataset);
end;

function TJanuaPostgresServerFunctions.DatasetToXml(aDataset: TDataset): string;
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
        JanuaFree(Lines);
        Lines := nil;
      end;
    finally
      JanuaFree(aStream);
      aStream := nil;
    end;
  except
    on E: Exception do
      self.WriteError('TJanuaPostgresServerFunctions.DatasetToXml: ' + aDataset.Name, E);
  end;
end;

procedure TJanuaPostgresServerFunctions.ExecuteProcedure(aProcedure: TDataset);
begin

  if aProcedure is TPgStoredProc then
    try
      TPgStoredProc(aProcedure).ExecProc;
    except
      on E: Exception do
      begin
        self.WriteError('Errore Exec procedura ' + aProcedure.Name + sLineBreak + TPgStoredProc(aProcedure)
          .SQL.Text, E);
      end;
    end;
end;

{ TOpenThread }

constructor TPgOpenThread.Create(Suspended: boolean; vDataset: TDataset; vDatasource: TDataSource;
  aCallBackProc: TProc);
begin
  inherited;
  self.FOpenProcedure := procedure
    begin
      if (FaDataset is TPgQuery) then
        try
          TPgQuery(FaDataset).Open;
        Except
          on E: Exception do
          begin
            raise Exception.Create('Errore di Apertura Dataset: ' + TPgQuery(FaDataset).Name + sLineBreak +
              TPgQuery(FaDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak);
          end;
        end
      else if (FaDataset is TPgTable) then
        try
          TPgTable(FaDataset).Open;
        Except
          on E: Exception do
          begin
            raise Exception.Create('Errore di Apertura Dataset: ' + TPgTable(FaDataset).Name + sLineBreak +
              TPgTable(FaDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
          end;
        end
      else
        FaDataset.Open;
    end;
end;

{ TJanuaPostgresConnection }

procedure TJanuaPostgresConnection.CreateDataModule;
begin
  inherited;

end;

procedure TJanuaPostgresConnection.DestroyDataModule;
begin
  inherited;

end;

initialization

PgFunctions := TJanuaPostgresServerFunctions.Create(nil);

finalization

if Assigned(PgFunctions) then
  FreeAndNil(PgFunctions);

end.
