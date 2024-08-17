unit Janua.Uni.Impl;

interface

uses
  System.SysUtils, System.Classes, System.Variants,
  // DB
  MemDS, Uni, Janua.Unidac.Connection,
  // Janua
  Janua.Core.DB.Intf, Janua.Uni.Intf, Janua.Cms.Types, Janua.Orm.Types, Janua.Orm.Intf, Janua.Orm.Impl,
  Janua.Core.Types, Janua.Core.DB, Data.DB, Janua.Core.Entities;

type
  TJanuaUniOrderByFields = class(TJanuaCustomOrderByFields, IJanuaOrderByFields)
  public
    /// <summary> String builder f() that needs to be implemented by descendants according to class and DB
    /// Use ASC, DESC keywords. Use CIS, CS or BIN keywords to specify a sort type.
    /// CIS - compare without case sensitivity;, CS - compare with case sensitivity;
    /// BIN - compare by character ordinal values (case sensitive).  </summary>
    function GetOrderByClause: string; override;
  end;

type
  TUniDatasetFunctions = class(TJanuaCustomDatasetFunctions, IJanuaDatasetFunctions,
    IJanuaUniDatasetFunctions)
  protected
    function InternalActivate: boolean; override;
  public
    procedure StoreRecordToProcedure(const aRecord: IJanuaRecord; const aProcObject: TDataset;
      const aRefreshRecord: boolean); override;
    procedure TestDatasets(aParent: TComponent); overload; override;
    procedure TestDatasets; overload; override;
    function DatasetToXml(const aDataset: TDataset): string; override;
    procedure PostDataset(const aDataset: TDataset); override;
    procedure OpenDataset(const aDataset: TDataset; DoRaise: boolean = true); override;
    procedure ReOpenDataset(const aDataset: TDataset); override;
    procedure PrepareDataset(const aDataset: TDataset); override;
    procedure ExecuteProcedure(aProcedure: TDataset); override;
    procedure SetupConnection(const aConnection: TUniConnection);
    procedure SaveRecordToStoredProcedure(const aRecord: IJanuaRecord; aProcedure: TUniStoredProc);
    procedure SaveRecordToScript(const aRecord: IJanuaRecord; aProcedure: TUniStoredProc);
  end;

type
  TJanuaUniServerFunctions = class(TUniDatasetFunctions, IJanuaServerFunctions, IJanuaUniServerFunctions)
  public
    procedure SetUserProfile(aQuery: TDataset; var aUser: TJanuaRecordUserProfile);
    function CheckUser(var count: integer; p_username, p_email: string; spUserTest: TDataset = nil): boolean;
    function CheckUserSocial(p_social_id, p_social_kind: string; spUserTest: TDataset = nil): boolean;
    function AddUserSocial(spUserAdd: TUniStoredProc; spUserTest: TUniStoredProc;
      p_social_id, p_social_kind, p_email: string; p_sendmail: boolean; var v_error: string;
      p_country_id: integer; var v_user_key: string; var FRegisterError: TJanuaRegisterError): boolean;
    function CheckUserEmail(p_email: string; var v_error: string; spUserTest: TUniStoredProc): boolean;
    function CreatePersonalSchema(p_session_key: string; var v_error, v_key: string;
      spCreatePersonalSchema: TUniStoredProc): boolean;
    function Login(p_username, p_password: string; var v_error, v_key: string;
      spLogin: TUniStoredProc): boolean;
    function GetSession(p_key: string; qryUserSession: TUniQuery; p_log: boolean; var ErrorMessage: string)
      : TJanuaServerSession;
    function NewArticleInternal(var aArticle: TArticleRecord; prcNewArticle: TUniStoredProc;
      var HasError: boolean; var Msg: TJanuaServerLog): boolean;
    function GetCountryByName(cName: string; qryCountries: TDataset): integer; // override;
    function GetCountryByCode(cCode: string; qryCountries: TDataset): integer; // override;
    function GetCountryByID(cID: integer; qryCountries: TDataset): boolean; // override;
    procedure ClearCountriesParams(qryCountries: TDataset); // override;
    // procedure SetUserProfile(aQuery: TDataset; var aUser: TJanuaRecordUserProfile); override;
  end;

  TUniOpenThread = class(TCustomOpenThread)
  protected
    procedure OpenThreaded; override;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework, System.StrUtils, Spring;

{ TDatasetFunctions }

function TUniDatasetFunctions.InternalActivate: boolean;
var
  j: integer;
  aConnection: TJanuaUniConnection;
  aDataModule: TDataModule;
begin
  Result := FActive;
  if not Result then
    try
      inherited;
      aConnection := nil;
      j := 0;
{$IFDEF DEBUG}
      WriteLog('TUniDatasetFunctions.InternalActivate' + 'Inizio procedure aggiornamento dataset');
{$ENDIF}
      if GetOWner is TDataModule then
      begin
        aDataModule := GetOWner as TDataModule;
        if aDataModule.ComponentCount > 0 then
        begin
          for j := 0 to aDataModule.ComponentCount - 1 do
            if (aDataModule.Components[j] is TJanuaUniConnection) then
              aConnection := aDataModule.Components[j] as TJanuaUniConnection;
          j := 0;
          if Assigned(aConnection) then
          begin
{$IFDEF DEBUG}
            WriteLog('TUniDatasetFunctions.InternalActivate' + 'Trovata Connessione: ' + aConnection.Name);
{$ENDIF}
            for j := 0 to aDataModule.ComponentCount - 1 do
            begin
              if (aDataModule.Components[j] is TUniQuery) then
                (aDataModule.Components[j] as TUniQuery).Connection := aConnection
              else if (aDataModule.Components[j] is TUniStoredProc) then
                (aDataModule.Components[j] as TUniStoredProc).Connection := aConnection
              else if (aDataModule.Components[j] is TUniTable) then
                (aDataModule.Components[j] as TUniTable).Connection := aConnection
            end;
          end
          else
            Raise Exception.Create('TUniDatasetFunctions.InternalActivate Connection not found');
        end;
        FActive := true;
      end;
      Result := FActive;
    except
      on E: Exception do
        Raise Exception.Create('TUniDatasetFunctions.InternalActivate ' + E.Message);
    end;

end;

function TUniDatasetFunctions.DatasetToXml(const aDataset: TDataset): string;
var
  aStream: TStringStream;
  aName: String;
begin
  if Assigned(aDataset) then
    try
      aName := aDataset.Name;
      aStream := TStringStream.Create;
      try
        if aDataset is TCustomUniDataset then
          TCustomUniDataset(aDataset).SaveToXML(aStream);
        Result := aStream.DataString;
      finally
        aStream.Free;
      end;
    except
      on E: Exception do
        raise Exception.Create('DatasetToXml: ' + aName + ': ' + E.Message);
    end;
end;

procedure TUniDatasetFunctions.ExecuteProcedure(aProcedure: TDataset);
var
  aName: String;
begin
  if Assigned(aProcedure) and (aProcedure is TUniStoredProc) then
    try
      aName := aProcedure.Name;
      (aProcedure as TUniStoredProc).ExecProc;
    except
      on E: Exception do
        raise Exception.Create('Error Exec ' + aName + ': ' + E.Message + sLineBreak +
          (aProcedure as TUniStoredProc).SQL.Text);
    end;
end;

procedure TUniDatasetFunctions.OpenDataset(const aDataset: TDataset; DoRaise: boolean);
  function ConnectionDescription: string;
  begin
    Result := 'Connessione: ' + TUniQuery(aDataset).Connection.ConnectString + sLineBreak + ' Server:' +
      TUniQuery(aDataset).Connection.Server + // Server
      sLineBreak + 'Config File: ' + TJanuacoreOS.ConfigFileName; // Config File
  end;

begin
{$IFDEF DEBUG}
  Guard.CheckNotNull(aDataset, 'TUniDatasetFunctions.OpenDataset(aDataset)');
{$ENDIF}
  if not aDataset.Active then
    if (aDataset is TUniQuery) then
      try
        TUniQuery(aDataset).Open;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Apertura Dataset: ' + IfThen(Assigned(aDataset.OWner),
            aDataset.OWner.Name, '') + '.' + TUniQuery(aDataset).Name + sLineBreak + // Object
            TUniQuery(aDataset).SQL.Text + sLineBreak + // Uni Query Syntax
            ConnectionDescription + sLineBreak + 'Errore: ' + E.Message + sLineBreak);
        end;
      end
    else if (aDataset is TUniTable) then
      try
        TUniTable(aDataset).Open;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Apertura Dataset: ' + IfThen(Assigned(aDataset.OWner),
            aDataset.OWner.Name, '') + TUniTable(aDataset).Name + sLineBreak + TUniTable(aDataset).SQL.Text +
            sLineBreak + ConnectionDescription + // Config File
            sLineBreak + 'Errore: ' + E.Message + sLineBreak);
        end;
      end
    else if (aDataset is TUniStoredProc) then
      try
        TUniStoredProc(aDataset).Prepare;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Apertura Dataset: ' + TUniStoredProc(aDataset).Name + sLineBreak +
            TUniStoredProc(aDataset).SQL.Text + sLineBreak + ConnectionDescription + // Config File
            sLineBreak + 'Errore: ' + E.Message);
        end;
      end
    else if (aDataset is TDataset) then
      try
        TDataset(aDataset).Open;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Apertura Dataset: ' + TDataset(aDataset).Name + sLineBreak +
            { TDataSet(aDataset).ProviderName + sLineBreak + } 'Errore: ' + E.Message);
        end;
      end
end;

procedure TUniDatasetFunctions.PostDataset(const aDataset: TDataset);
var
  aState: TDataSetState;
begin
  aState := aDataset.State;
  if aDataset.State in [dsEdit, dsInsert] then
    try
      try
        aDataset.Post;
      Except
        on E: Exception do
        begin
          if (aDataset is TUniQuery) then
          begin
            if aState = dsInsert then
              raise Exception.Create('Errore di Insert TUniQuery: ' + TUniQuery(aDataset).Name + sLineBreak +
                TUniQuery(aDataset).SQLInsert.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak)
            else
              raise Exception.Create('Errore di Update TUniQuery: ' + TUniQuery(aDataset).Name + sLineBreak +
                TUniQuery(aDataset).SQLUpdate.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak)
          end
          else if (aDataset is TUniTable) then
            raise Exception.Create('Errore di Update TUniTable: ' + TUniTable(aDataset).Name + sLineBreak +
              TUniTable(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
        end;
      end
    except
      on E: Exception do
        raise Exception.Create(IfThen(aDataset.OWner <> nil, aDataset.OWner.Name + '.', '') + aDataset.Name +
          ': ' + E.Message);
      // self.WriteError('TJanuaUniServerFunctions.OpenDataset: ' + aDataset.Name, E);
    end;
end;

procedure TUniDatasetFunctions.PrepareDataset(const aDataset: TDataset);
begin
  try
    if (aDataset is TUniQuery) then
      try
        TUniQuery(aDataset).Prepare;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Prepare TUniQuery: ' + TUniQuery(aDataset).Name + sLineBreak +
            TUniQuery(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak);
        end;
      end
    else if (aDataset is TUniTable) then
      try
        TUniTable(aDataset).Prepare;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Prepare TUniTable: ' + TUniTable(aDataset).Name + sLineBreak +
            TUniTable(aDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
          raise;
        end;
      end;

  except
    on E: Exception do
      WriteError(ClassName + '.PrepareDataset: ' + aDataset.Name, E);
  end;
end;

procedure TUniDatasetFunctions.ReOpenDataset(const aDataset: TDataset);
begin
  aDataset.Close;
  OpenDataset(aDataset);
end;

procedure TUniDatasetFunctions.SaveRecordToScript(const aRecord: IJanuaRecord; aProcedure: TUniStoredProc);
begin

end;

procedure TUniDatasetFunctions.SaveRecordToStoredProcedure(const aRecord: IJanuaRecord;
  aProcedure: TUniStoredProc);
begin

end;

procedure TUniDatasetFunctions.SetupConnection(const aConnection: TUniConnection);
var
  I: integer;
  s: string;
begin
  aConnection.Server := TJanuaApplication.ServerAddress;
  aConnection.Port := TJanuaApplication.ServerPort;
  aConnection.Database := TJanuaApplication.ServerDatabaseName;
  // non aggiorno lo schema in quanto ogni server ha il suo schema .........................................
  s := 'PostgreSQL.Schema' + aConnection.SpecificOptions.NameValueSeparator +
    TJanuaApplication.JanuaServerConf.Schema;
  I := aConnection.SpecificOptions.IndexOfName('PostgreSQL.Schema');
  if (I > -1) and (aConnection.SpecificOptions[I] <> s) then
    aConnection.SpecificOptions[I] := s;
  aConnection.Username := TJanuaApplication.ServerUserName;
  aConnection.Password := TJanuaApplication.ServerPassword;
  s := 'PostgreSQL.UseUnicode' + aConnection.SpecificOptions.NameValueSeparator + 'True';
  I := aConnection.SpecificOptions.IndexOfName('PostgreSQL.UseUnicode');
  if (I > -1) and (aConnection.SpecificOptions[I] <> s) then
    aConnection.SpecificOptions[I] := s;
end;

procedure TUniDatasetFunctions.StoreRecordToProcedure(const aRecord: IJanuaRecord;
  const aProcObject: TDataset; const aRefreshRecord: boolean);
var
  aProc: TUniStoredProc;
  aField: IJanuaField;
  aParam: TUniParam;
begin
  inherited;
{$IFDEF DEBUG}
  Guard.CheckNotNull(aRecord, 'StoreRecordToProcedure.aRecord');
  Guard.CheckNotNull(aProcObject, 'StoreRecordToProcedure.aProcObject');
{$ENDIF}
  if (aProcObject is TUniStoredProc) then
  begin
    aProc := (aProcObject as TUniStoredProc);
    for aField in aRecord.Fields do
    begin
      aParam := aProc.FindParam(aField.DBField.ToLower);
      if not Assigned(aParam) then
        aParam := aProc.FindParam('p_' + aField.DBField.ToLower);
      if Assigned(aParam) then
        aParam.Value := aField.AsVariant;
    end;

    aParam := aProc.FindParam('jguid');
    if not Assigned(aParam) then
      aParam := aProc.FindParam('p_jguid');
    if Assigned(aParam) then
      aParam.AsString := aRecord.GUIDString;

    aProc.ExecProc;

    if aRefreshRecord then
      for aField in aRecord.Fields do
      begin
        aParam := aProc.FindParam(aField.DBField.ToLower);
        if not Assigned(aParam) then
          aParam := aProc.FindParam('p_' + aField.DBField.ToLower);
        if Assigned(aParam) then
          aParam.Value := aField.AsVariant;
      end;
  end;
end;

procedure TUniDatasetFunctions.TestDatasets;
var
  I: integer;
  aDataModule: TDataModule;
  aTest: TComponent;
begin
  aTest := GetOWner;
  if Assigned(aTest) and (aTest is TDataModule) then
  begin
    aDataModule := aTest as TDataModule;

    begin
      for I := 0 to aDataModule.ComponentCount - 1 do
      begin
        try
          if (aDataModule.Components[I] is TUniQuery) then
            OpenDataset(aDataModule.Components[I] as TUniQuery, false)
          else if (aDataModule.Components[I] is TUniStoredProc) then
            OpenDataset(aDataModule.Components[I] as TUniStoredProc, false)
          else if (aDataModule.Components[I] is TUniTable) then
            OpenDataset(aDataModule.Components[I] as TUniTable, false)
            {
              else if (aDataModule.Components[i] is TClientDataSet) and
              ((aDataModule.Components[i] as TClientDataSet).ProviderName <> '') then
              OpenDataset(aDataModule.Components[i] as TClientDataSet, false)
            }
        except
          on E: Exception do
            Raise Exception.Create('TestDatasets Error: ' + aDataModule.Components[I].Name + E.Message);
        end;
      end;
    end;
  end;
end;

procedure TUniDatasetFunctions.TestDatasets(aParent: TComponent);
begin

end;

// -----------------------------------------------------------------------

function TJanuaUniServerFunctions.AddUserSocial(spUserAdd: TUniStoredProc; spUserTest: TUniStoredProc;
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
      WriteError(ClassName + '.AddUser', E);
    end;
  end;

end;

// ********************* Core Functions for System ******************************

function TJanuaUniServerFunctions.NewArticleInternal(var aArticle: TArticleRecord;
  prcNewArticle: TUniStoredProc; var HasError: boolean; var Msg: TJanuaServerLog): boolean;
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
      self.WriteError('TJanuaUniServerFunctions.NewArticleInternal ', E);
    end;
  end;
end;

function TJanuaUniServerFunctions.GetCountryByName(cName: string; qryCountries: TDataset): integer;
begin
  try
    TUniQuery(qryCountries).ParamByName('country_name').AsString := cName;
    OpenDataset(qryCountries);
    if qryCountries.RecordCount > 0 then
      Result := qryCountries.FieldByName('country_id').AsInteger
    else
      Result := 0;
  except
    on E: Exception do
    begin
      Result := 0;
      HasErrors := true;
      self.WriteError('TJanuaUniServerFunctions.GetCountryByName: ' + cName, E);
    end;
  end;
end;

function TJanuaUniServerFunctions.GetCountryByCode(cCode: string; qryCountries: TDataset): integer;
begin
  try
    TUniQuery(qryCountries).ParamByName('country_code').AsString := cCode;
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
      self.WriteError('TJanuaUniServerFunctions.GetCountryByCode: ' + cCode, E);
    end;
  end;
end;

function TJanuaUniServerFunctions.GetCountryByID(cID: integer; qryCountries: TDataset): boolean;
begin
  Result := false;
  try

    if Assigned(qryCountries) then
    begin
      ClearCountriesParams(qryCountries);
      self.WriteLog('GetCountryByID: ' + cID.ToString());
      TUniQuery(qryCountries).ParamByName('country_id').AsInteger := cID;
      OpenDataset(qryCountries);
      Result := qryCountries.RecordCount > 0;
    end
    else
      Raise Exception.Create('GetCountryByID: Errore non assegnato oggetto qryCountries');

  except
    on E: Exception do
    begin
      Result := false;
      HasErrors := true;
      self.WriteError('TJanuaUniServerFunctions.GetCountryByID: ' + cID.ToString, E);
    end;
  end;
end;

procedure TJanuaUniServerFunctions.ClearCountriesParams(qryCountries: TDataset);
begin
  try
    if Assigned(qryCountries) and (qryCountries is TUniQuery) then
    begin
      if not TUniQuery(qryCountries).Prepared then
        TUniQuery(qryCountries).Prepare;
      // compila la query se non ? gi? Compilata
      TUniQuery(qryCountries).ParamByName('country_id').AsInteger := 0;
      TUniQuery(qryCountries).ParamByName('country_code').AsString := '*';
      TUniQuery(qryCountries).ParamByName('country_name').AsString := '*';
      // imposta i parametri di Default della query di ricerca e vediamo che fa ...
    end
    else
      Raise Exception.Create('ClearCountriesParams: Errore non assegnato oggetto qryCountries');
  except
    on E: Exception do
    begin
      HasErrors := true;
      self.WriteError('TJanuaUniServerFunctions.ClearCountriesParams: ', E);
    end;
  end;
end;


// ********************* Session functions **************************************

function TJanuaUniServerFunctions.GetSession(p_key: string; qryUserSession: TUniQuery; p_log: boolean;
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
        WriteError('TJanuaUniServerFunctions.GetSession', E);
    end;
  end;
end;

function TJanuaUniServerFunctions.Login(p_username, p_password: string; var v_error, v_key: string;
  spLogin: TUniStoredProc): boolean;
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

function TJanuaUniServerFunctions.CheckUserSocial(p_social_id, p_social_kind: string;
  spUserTest: TDataset = nil): boolean;
  function CheckProcedure: boolean;
  begin
    (spUserTest as TUniStoredProc).ParamByName('p_socialid').AsWideString := p_social_id;
    (spUserTest as TUniStoredProc).ParamByName('p_social_kind').AsWideString := p_social_kind;
    (spUserTest as TUniStoredProc).Execute;
    CheckProcedure := (spUserTest as TUniStoredProc).ParamByName('Result').AsInteger = 0;
  end;

begin
  Result := (spUserTest is TUniStoredProc) and CheckProcedure;
end;

function TJanuaUniServerFunctions.CheckUser(var count: integer; p_username, p_email: string;
  spUserTest: TDataset = nil): boolean;
  function prCheckUser: boolean;
  begin
    (spUserTest as TUniStoredProc).ParamByName('p_username').AsWideString := p_username;
    (spUserTest as TUniStoredProc).ParamByName('p_email').AsWideString := p_email;
    (spUserTest as TUniStoredProc).Execute;
    prCheckUser := (spUserTest as TUniStoredProc).ParamByName('Result').AsInteger = 0;
  end;

begin
  Result := (spUserTest is TUniStoredProc) and prCheckUser
end;

function TJanuaUniServerFunctions.CreatePersonalSchema(p_session_key: string; var v_error, v_key: string;
  spCreatePersonalSchema: TUniStoredProc): boolean;
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

function TJanuaUniServerFunctions.CheckUserEmail(p_email: string; var v_error: string;
  spUserTest: TUniStoredProc): boolean;
var
  vcount: integer;
begin
  try
    // *************************************************************************
    // *** Verifica se l'email ? scritta correttamente e se non ? in uso *******
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

procedure TJanuaUniServerFunctions.SetUserProfile(aQuery: TDataset; var aUser: TJanuaRecordUserProfile);
begin
  try
    aQuery.Edit;
    aUser.User.ID := aQuery.FieldByName('db_user_id').AsInteger;
    aUser.Address.Location.Country.ID := aQuery.FieldByName('country_id').AsInteger;
    aUser.Address.Location.Region.ID := aQuery.FieldByName('region_id').AsInteger;
    aUser.Address.Location.District.ID := aQuery.FieldByName('district_id').AsInteger;
    aUser.Address.Location.Town.ID := aQuery.FieldByName('town_id').AsInteger;
    aUser.FirstName := aQuery.FieldByName('first_name').AsString;
    aUser.LastName := aQuery.FieldByName('last_name').AsString;
    aUser.BirthDate := aQuery.FieldByName('birth_date').AsDateTime;
    aUser.PublicEmail := aQuery.FieldByName('public_email').AsString;
    aUser.Address.Address := aQuery.FieldByName('address_street').AsString;
    aUser.Address.Number := aQuery.FieldByName('address_number').AsString;
    aUser.Address.PostalCode := aQuery.FieldByName('address_postal_code').AsString;
    aUser.Address.Phone := aQuery.FieldByName('phone').AsString;
    aUser.Address.WorkPhone := aQuery.FieldByName('work_phone').AsString;
    aUser.Address.CellularPhone := aQuery.FieldByName('cellular_phone').AsString;
    aUser.Gender.GenderCode := aQuery.FieldByName('gender_code').AsString;

    aUser.BirthLocation.Country.ID := aQuery.FieldByName('country_id').AsInteger;
    aUser.BirthLocation.Region.ID := aQuery.FieldByName('region_id').AsInteger;
    aUser.BirthLocation.District.ID := aQuery.FieldByName('district_id').AsInteger;
    aUser.BirthLocation.Town.ID := aQuery.FieldByName('town_id').AsInteger;
  except
    on E: Exception do
      RaiseException('SetUserProfile', E, self);
  end;
end;

{ TOpenThread }

{ TJanuaUniOrderByFields }

function TJanuaUniOrderByFields.GetOrderByClause: string;
var
  lField: TJanuaOrderByField;
  lFirst: boolean;
  { TOrderByEnum = (jobASC, jobDESC);
    TOrderByCompare = (jocDefault, jocCaseSensitive, jocCaseInsensitive, jocBinaryChar); }
  function GetOrderByCondition: string;
  begin
    Result := Result + IfThen(not lFirst, '; ', ' ');
    Case lField.Orderby of
      jobASC:
        Result := Result + 'ASC';
      jobDESC:
        Result := Result + 'DESC';
    End;

    Case lField.Compare of
      { Use CIS, CS or BIN keywords to specify a sort type for string fields: }
      jocCaseSensitive:
        Result := Result + ' CS';
      jocCaseInsensitive:
        Result := Result + ' CIS';
      jocOrdinal:
        Result := Result + ' BIN';
    End;

    lFirst := false;
  end;

begin
  lFirst := true;
  Result := '';
  if FieldCount > 0 then
    for lField in GetFields do
      Result := Result + lField.FieldName + GetOrderByCondition;
end;

{ TUniOpenThread }

procedure TUniOpenThread.OpenThreaded;
begin
  MonitorEnter(FaDataset);
  try
    if (FaDataset is TUniQuery) then
      try
        TUniQuery(FaDataset).Open;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Apertura Dataset: ' + TUniQuery(FaDataset).Name + sLineBreak +
            TUniQuery(FaDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message + sLineBreak);
        end;
      end
    else if (FaDataset is TUniTable) then
      try
        TUniTable(FaDataset).Open;
      Except
        on E: Exception do
        begin
          raise Exception.Create('Errore di Apertura Dataset: ' + TUniTable(FaDataset).Name + sLineBreak +
            TUniTable(FaDataset).SQL.Text + sLineBreak + 'Errore: ' + E.Message);
        end;
      end
    else
      FaDataset.Open;
  finally
    MonitorExit(FaDataset);
  end;

end;

initialization

try
  TJanuaApplicationFactory.RegisterClass(IJanuaUniDatasetFunctions, TUniDatasetFunctions);
  // TJanuaUniServerFunctions = IJanuaServerFunctions, IJanuaUniServerFunctions
  TJanuaApplicationFactory.RegisterClass(IJanuaUniServerFunctions, TJanuaUniServerFunctions);
  // IJanuaDatasetFunctions
  TJanuaApplicationFactory.RegisterClass(IJanuaDatasetFunctions, TUniDatasetFunctions);
except
  on E: Exception do
    raise Exception.Create('Janua.Uni.Impl.initialization ' + E.Message);
end;

end.
