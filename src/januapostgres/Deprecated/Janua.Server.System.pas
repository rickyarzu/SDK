unit Janua.Server.System;

interface

uses
  System.SysUtils, System.Classes, udmPgSystemCommand, Janua.Core.System, Janua.Core.Forms,
  Janua.Core.Functions, Janua.Server.Functions, Janua.Core.Anagraph, Janua.Core.Classes;

type
  TJanuaServerSystem = class(TJanuaCustomServerSystem)
  private
    lSys: TdmPgSystemCommand;
    FHasErrors: boolean;
    FNewUserProfile: TJanuaRecordUserProfile;
    procedure SetNewUserProfile(const Value: TJanuaRecordUserProfile);
    { Private declarations }
  protected
    { Protected declarations }
    FAttempts: Word;
  public
    { Public declarations }
    function Login: boolean; override; // override della funzione Virtual Abstract .....
    function Activate: boolean; override;
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure CreateSys;
    procedure DestroySys;
    function SaveProfile: boolean; override;
    function NewProfile: boolean; override;
    function CheckNewUser(aUser: TJanuaRecordUserProfile): boolean; override;
    function CreateNewUser(aUser: TJanuaRecordUserProfile): boolean; override;
    function SetUserDefaultSchema(aUser: TJanuaRecordUserProfile): boolean; override;
    function SearchUser(fullusername: string): integer; override;
    procedure SetDefaultSchema(aSchemaID: integer); override;
    function SearchUserByID(aid: integer): boolean; override;
  published
    { Published declarations }
    property NewUserProfile: TJanuaRecordUserProfile read FNewUserProfile write SetNewUserProfile;
  end;

type
  TJanuaServerForms = class(TJanuaCustomServerForms)
  private
  public
  published

  end;

implementation

{ TJanuaServerSystem }

{

  function TIWuserSessionErgoMercator.Login(aUser: TJanuaUser): boolean;

  Result := self.System.Login(aUser);
  if result  then
  begin

  try
  if not assigned(self.System) then begin
  self.WriteLog('Creazione dmSystem');
  udmSystem.TdmSystem.Create(self);
  end
  else
  self.WriteLog('dmSystem Esistente');
  Except on e: exception do
  begin
  Result := False;
  self.FLastErrorMessage := 'Errore Creazione dmSystem ' + sLineBreak + e.Message;
  self.WriteLog(FLastErrorMessage);
  end;
  end;

  try
  self.Health := udmPgHealth.TdmPgHealth.Create(self);
  Except on e: exception do
  begin
  Result := False;
  self.FLastErrorMessage := 'Errore Creazione Health ' + sLineBreak + e.Message;
  self.WriteLog(FLastErrorMessage);
  end;
  end;

  try
  self.Cms := udmCms.TdmCms.Create(self);
  Except on e: exception do
  begin
  Result := False;
  self.FLastErrorMessage := 'Errore Creazione Health ' + sLineBreak + e.Message;
  self.WriteLog(FLastErrorMessage);
  end;
  end;
  end
  else
  begin
  self.FlastErrorMessage := self.System.LastErrorMessage;
  end;
  Except on e: exception do
  begin
  Result := False;
  self.FLastErrorMessage := 'Errore TIWuserSessionErgoMercator.Login ' + sLineBreak + e.Message;
  self.WriteLog(FLastErrorMessage);
  end;
  end;
  end;


}

function TJanuaServerSystem.Activate: boolean;
begin
  self.ClearErrors;
  try
    self.WriteLog('TJanuaServerSystem.Activate');
    Result := inherited;
    if not self.LoadedProfile then
      self.LoadProfile;

    /// Result := self.FActive;
    if not Result then
      try
        Result := self.Login;
      except
        on E: Exception do
        begin
          self.WriteError('TJanuaCustomServerSystem.Activate self.Login', E);
        end;

      end;
  except
    on E: Exception do
    begin
      self.WriteError('TJanuaCustomServerSystem.Activate', E);
    end;
  end;
end;

function TJanuaServerSystem.CheckNewUser(aUser: TJanuaRecordUserProfile): boolean;
begin
  self.CreateSys;
  try
    Result := lSys.CheckUser(aUser);
    if not Result then
    begin
      self.HasErrors := True;
      self.LastErrorMessage := lSys.LastErrorMessage;
    end;
  finally
    self.DestroySys;
  end;

end;

constructor TJanuaServerSystem.Create(AOwner: TComponent);
begin
  inherited;
  self.WriteLog('TJanuaServerSystem.Create');
  FServerUrl := 'ergomercator.com';
  FServerTCPPort := 5432;
  FServerSchema := 'ergomercator';
  FAttempts := 0;
end;

function TJanuaServerSystem.CreateNewUser(aUser: TJanuaRecordUserProfile): boolean;
begin
  self.CreateSys;
  try
    Result := lSys.AddUser(aUser);
    if not Result then
    begin
      self.HasErrors := True;
      self.LastErrorMessage := lSys.LastErrorMessage;
    end;
  finally
    self.DestroySys;
  end;

end;

procedure TJanuaServerSystem.CreateSys;
begin
  if not Assigned(lSys) then
    try
      lSys := TdmPgSystemCommand.Create(nil);
      lSys.ServerFunctions.Verbose := self.FVerbose;
      lSys.ServerFunctions.LogToFile := self.LogToFile;
      lSys.ServerFunctions.JanuaLogger := self.JanuaLogger;
      lSys.ServerFunctions.ApplicationType := self.ApplicationType;
      // per prima cosa imposto la proprietà del Logger per gestire i log ed i messaggi del datamodule
      if (self.JanuaLogger is TJanuaCoreLogger) then
        lSys.JanuaCoreLogger := (self.JanuaLogger as TJanuaCoreLogger);
      // importante, la prima variabile che va impostata è la sessione corrente che permette al
      // server di connettersi con le credenziali corrette lette da JanuaOS
      lSys.ServerSession := self.FJanuaServerSession;
      self.WriteLog(FJanuaServerSession.CustomServerUrl + ':' + FJanuaServerSession.CustomServerPort
        + ':' + FJanuaServerSession.CustomServerSchema);
      self.WriteLog('TJanuaServerSystem.Login: eseguo connessione Key: ' + self.FSessionKey);
      lSys.SessionKey := self.FSessionKey;
      if Assigned(self.JanuaLogger) and (self.JanuaLogger is TJanuaCoreLogger) then
        lSys.JanuaCoreLogger := TJanuaCoreLogger(self.JanuaLogger);
    Except
      on E: Exception do
      begin
        self.WriteError('TJanuaServerSystem.CreateSys Error:', E, True);
      end;
    end;
end;

destructor TJanuaServerSystem.Destroy;
begin
  // if Assigned(lSys) then
  // lSys.Free;
  inherited;
end;

procedure TJanuaServerSystem.DestroySys;
begin
  self.log.Add(lSys.log.Text);
  if not self.KeepAlive then
  begin
    FreeAndNil(lSys);
    self.WriteLog('TIWuserSessionErgoMercator.SaveProfile: distrutto lSys');
  end;
end;

function TJanuaServerSystem.Login: boolean;
begin
  inherited;
  Result := self.CheckUp;
  if Result then
    try
      Inc(FAttempts);
      self.WriteLog('TJanuaServerSystem.Login: eseguo login');
      self.WriteLog('TJanuaServerSystem.Login: TdmPgSystemCommand.Create');
      self.CreateSys;
      try
        self.WriteLog(self.UserProfile.ToString);
        self.WriteLog('TJanuaServerSystem.Login: TdmPgSystemCommand.Login');
        Result := lSys.Login(self.UserProfile.User);

        if Result then
        begin
          self.SetUserProfile(lSys.UserProfile);
          self.WriteLog('UserProfile: ' + sLineBreak + UserProfile.ToString);
          self.WriteLog(self.UserProfile.ToString);
          self.WriteLog(self.UserProfile.User.ToJSON);
          self.WriteLog('TJanuaServerSystem.SessionKey: ' + lSys.SessionKey);
          self.FSessionKey := lSys.SessionKey;
          self.FActive := True;

          self.FJanuaServerSession.Key := lSys.SessionKey;
          self.FJanuaServerSession.Email := lSys.UserProfile.User.Email;
          self.FJanuaServerSession.Schema_id := lSys.SelectedSchema;
          self.FJanuaServerSession.User_id := lSys.UserProfile.User.id;
        end
        else
        begin
          self.FActive := False;
          self.WriteLog(lSys.log.Text);
          self.FHasErrors := True;
          self.LastErrorMessage := lSys.LastErrorMessage;
        end;
      finally
        if Assigned(lSys) then
          self.WriteLog(lSys.log.Text);
        self.DestroySys;
        self.WriteLog('TIWuserSessionErgoMercator.Login: distrutto lSys');
        if not Result and (FAttempts < 3) then
          self.Login;
      end;
    Except
      on E: Exception do
      begin
        if Assigned(lSys) then
          self.WriteLog(lSys.log.Text);
        self.WriteError('Errore TJanuaServerSystem.Login', E);
      end;
    end
end;

function TJanuaServerSystem.NewProfile: boolean;
begin
  Result := False;
  if not Assigned(self.FApplicationProfile) then
    RaiseException('TJanuaServerSystem.NewProfile TApplicationProfile not Set');

  if not(self.UserProfile.User.Email > '') then
    RaiseException('TJanuaServerSystem.NewProfile Username not Set');

  if not(self.UserProfile.User.Password > '') then
    RaiseException('TJanuaServerSystem.NewProfile Password not Set');

  try
    self.CreateSys;
    try
      self.WriteLog('TJanuaServerSystem: TdmPgSystemCommand.NewProfile');
      if lSys.CheckUser(self.FNewUserProfile) then
        Result := lSys.AddUser(self.FNewUserProfile);
      if Result then
        Result := lSys.Login(FNewUserProfile.User);
      if not Result then
      begin
        self.FHasErrors := True;
        self.LastErrorMessage := lSys.LastErrorMessage;
        self.WriteLog(lSys.log.Text);
      end;

    finally
      self.DestroySys;
    end;

  Except
    on E: Exception do
    begin
      Result := False;
      self.LastErrorMessage := 'Errore TJanuaServerSystem.NewProfile ' + sLineBreak + E.Message;
    end;
  end

end;

function TJanuaServerSystem.SaveProfile: boolean;
begin
  if not Assigned(self.FApplicationProfile) then
    if not(csDesigning in ComponentState) then
      RaiseException('TJanuaServerSystem.SaveProfile TApplicationProfile not Set')
    else
      Exit;

  if not(self.UserProfile.User.Email > '') and not(csDesigning in ComponentState) then
    RaiseException('TJanuaServerSystem.SaveProfile Username not Set');

  if not(self.UserProfile.User.Password > '') and not(csDesigning in ComponentState) then
    RaiseException('TJanuaServerSystem.SaveProfile Password not Set');
  try
    self.WriteLog('TJanuaServerSystem.SaveProfile: eseguo connessione Key: ' + self.FSessionKey);
    self.CreateSys;
    try
      lSys.SaveProfile(self.UserProfile);
      Result := True;
    finally
      self.DestroySys;
    end;

  Except
    on E: Exception do
    begin
      Result := False;
      self.LastErrorMessage := 'Errore TJanuaServerSystem.SaveProfile ' + sLineBreak + E.Message;
    end;
  end

end;

function TJanuaServerSystem.SearchUser(fullusername: string): integer;
begin
  self.CreateSys;
  try
    try
      Result := self.lSys.SearchUsers(fullusername);
      FcdsUsersList.Data := self.lSys.dspSearchUsers.Data;
      if FcdsUsersList.RecordCount <> lSys.qrySearchUsers.RecordCount then
        RaiseException('Error SearchUser Record');
    finally
      self.DestroySys;
    end;
  except
    on E: Exception do
      self.WriteError('TJanuaServerSystem.SearchUser:', E);
  end;
end;

function TJanuaServerSystem.SearchUserByID(aid: integer): boolean;
begin
  try
    self.CreateSys;
    try
      // imposto nel database e nella sessione corrente lo schema di lavoro. Importante che siano
      // impostate da CreateSys sia la 'chiave' di db che la sessione utente
      Result := self.lSys.SearchUserByID(aid) > 0;
      self.UserProfile := self.lSys.UserProfile;
      // se è andata a buon fine la funzione posso impostare lo schema di default in FJanuaServerSession
      self.cdsUsersList.Assign(self.lSys.dspSearchUsers);
    finally
      self.DestroySys;
    end;
  except
    on E: Exception do
      self.WriteError('TJanuaServerSystem.SetDefaultSchema', E);

  end;
end;

procedure TJanuaServerSystem.SetDefaultSchema(aSchemaID: integer);
begin
  inherited;
  try
    self.CreateSys;
    try
      // imposto nel database e nella sessione corrente lo schema di lavoro. Importante che siano
      // impostate da CreateSys sia la 'chiave' di db che la sessione utente
      self.lSys.SetSelectedSchema(aSchemaID);
      // se è andata a buon fine la funzione posso impostare lo schema di default in FJanuaServerSession
      self.FJanuaServerSession.Schema_id := aSchemaID;
    finally
      self.DestroySys;
    end;
  except
    on E: Exception do
      self.WriteError('TJanuaServerSystem.SetDefaultSchema', E);

  end;
end;

procedure TJanuaServerSystem.SetNewUserProfile(const Value: TJanuaRecordUserProfile);
begin
  FNewUserProfile := Value;
end;

function TJanuaServerSystem.SetUserDefaultSchema(aUser: TJanuaRecordUserProfile): boolean;
begin
  // connessione diretta con la Sessione di lavoro

end;

end.
