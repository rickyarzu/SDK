unit Janua.Postgres.System;

interface

uses
  System.SysUtils, System.Classes, udmPgSystemCommand, Janua.Core.System, Janua.Core.Types,
  Janua.Core.Forms, Janua.Core.Functions, Janua.Core.Classes;

// legacy Server System
type
  TJanuaPostgresSystem = class(TJanuaCustomServerSystem)
  private
    DM: TdmPgSystemCommand;
    FHasErrors: boolean;
    FNewUserProfile: TJanuaRecordUserProfile;
    procedure SetNewUserProfile(const Value: TJanuaRecordUserProfile);

    procedure UndoSessionLogin;
    { Private declarations }
  protected
    { Protected declarations }
    FAttempts: Word;
    procedure CreateDataModule; override;
    procedure AssignDatasets; override;
    procedure DestroyDataModule(Force: boolean = false); override;
    procedure SetUserSessionProfile; override;
    function InternalLogin: boolean; override;
    function InternalLoginbyKey(const aKey: string): boolean; override;
    function InternalCheckSessionKey: boolean; override;
    function InternalStartPublicWebSession: boolean; override;
    function InternalDoPayment(aUserID: integer; aAmount: Currency; aDate: TDate): boolean; override;

    // override della funzione Virtual Abstract .....
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    function SaveProfile: boolean; override;
    function NewProfile: boolean; override;
    function CheckNewUser(aUser: TJanuaRecordUserProfile): boolean; override;
    function CreateNewUser(aUser: TJanuaRecordUserProfile): boolean; override;
    function SetUserDefaultSchema(aUser: TJanuaRecordUserProfile): boolean; override;
    function SearchUser(fullusername: string): integer; override;
    procedure SetDefaultSchema(aSchemaID: integer); override;
    function SearchUserByID(aid: integer): boolean; override;
    function InternalActivate: boolean; override;
    function AppLogin(vAppID: string; vAppKey: string): boolean; override;
    function AppLogin: boolean; override;
    procedure TestDataModule; override;
    procedure StartPublicWebSession; override;
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

uses Janua.Core.Servers;

{ TJanuaPostgresSystem }

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
  self.LastErrorMessage := 'Errore Creazione dmSystem ' + sLineBreak + e.Message;
  self.WriteLog(LastErrorMessage);
  end;
  end;

  try
  self.Health := udmPgHealth.TdmPgHealth.Create(self);
  Except on e: exception do
  begin
  Result := False;
  self.LastErrorMessage := 'Errore Creazione Health ' + sLineBreak + e.Message;
  self.WriteLog(LastErrorMessage);
  end;
  end;

  try
  self.Cms := udmCms.TdmCms.Create(self);
  Except on e: exception do
  begin
  Result := False;
  self.LastErrorMessage := 'Errore Creazione Health ' + sLineBreak + e.Message;
  self.WriteLog(LastErrorMessage);
  end;
  end;
  end
  else
  begin
  self.LastErrorMessage := self.System.LastErrorMessage;
  end;
  Except on e: exception do
  begin
  Result := False;
  self.LastErrorMessage := 'Errore TIWuserSessionErgoMercator.Login ' + sLineBreak + e.Message;
  self.WriteLog(LastErrorMessage);
  end;
  end;
  end;


}

function TJanuaPostgresSystem.AppLogin(vAppID, vAppKey: string): boolean;
begin
  { TODO : Implementare App Login }

  Result := self.AppLogin;
end;

function TJanuaPostgresSystem.AppLogin: boolean;
begin
  Result := false;
end;

procedure TJanuaPostgresSystem.AssignDatasets;
begin
  self.WriteLog('TJanuaServerHealthBooking.AssignDatasets start');
  if Assigned(DM) then
  begin
    try
      // in pratica per ora non fa pressochè nulla.
    except
      on e: exception do
      begin
        self.WriteError('TJanuaServerHealthBooking.InternalSetServices', e);
      end;
    end;
  end
  else
    raise exception.Create(self.Name + '.AssignDatasets DataModule not assigned');

  self.WriteLog('TJanuaServerHealthBooking.AssignDatasets end');

end;

function TJanuaPostgresSystem.CheckNewUser(aUser: TJanuaRecordUserProfile): boolean;
begin
  self.CreateDataModule;
  try
    Result := DM.CheckUser(aUser);
    self.UserProfile := aUser;
    if not Result then
    begin
      self.HasErrors := True;
      self.LastErrorMessage := DM.LastErrorMessage;
    end;
  finally
    self.DestroyDataModule;
  end;

end;

constructor TJanuaPostgresSystem.Create(AOwner: TComponent);
begin
  inherited;
  self.WriteLog('TJanuaPostgresSystem.Create');
  FAttempts := 0;
end;

procedure TJanuaPostgresSystem.CreateDataModule;
begin
  inherited;
  if not Assigned(DM) then
    try
      DM := TdmPgSystemCommand.Create(self);
      self.IDM := self.DM;
      DM.ServerFunctions.Verbose := self.FVerbose;
      DM.ServerFunctions.LogToFile := self.LogToFile;
      DM.ServerFunctions.JanuaLogger := self.JanuaLogger;
      DM.ServerFunctions.ApplicationType := JanuaApplicationGlobalProfile.ApplicationType;
      // per prima cosa imposto la proprietà del Logger per gestire i log ed i messaggi del datamodule
      if (self.JanuaLogger is TJanuaCoreLogger) then
        DM.JanuaCoreLogger := (self.JanuaLogger as TJanuaCoreLogger);
      // importante, la prima variabile che va impostata è la sessione corrente che permette al
      // server di connettersi con le credenziali corrette lette da JanuaOS
      DM.ServerSession := self.FJanuaServerSession;
      self.FConnected := DM.TestConnect;
      self.WriteLog('TJanuaPostgresSystem.Login: eseguo connessione Key: ' + self.SessionKey);
      DM.SessionKey := self.SessionKey;
      if Assigned(self.JanuaLogger) and (self.JanuaLogger is TJanuaCoreLogger) then
        DM.JanuaCoreLogger := TJanuaCoreLogger(self.JanuaLogger);
    Except
      on e: exception do
      begin
        self.WriteError('TJanuaPostgresSystem.CreateDatamodule Error:', e, True);
      end;
    end;
end;

function TJanuaPostgresSystem.CreateNewUser(aUser: TJanuaRecordUserProfile): boolean;
begin
  self.CreateDataModule;
  try
    Result := DM.AddUser(aUser);
    if not Result then
    begin
      self.HasErrors := True;
      self.LastErrorMessage := DM.LastErrorMessage;
    end
    else
    begin
      self.UserProfile := self.DM.UserProfile;
      self.CheckSessionKey(self.DM.SessionKey);
      // self.JanuaServerSession := self.DM.ServerSession;
    end;
  finally
    self.DestroyDataModule;
  end;

end;

destructor TJanuaPostgresSystem.Destroy;
begin
  inherited;
end;

procedure TJanuaPostgresSystem.DestroyDataModule(Force: boolean);
begin
  if not(self.InTransaction) and ((not KeepAlive) or Force) and Assigned(DM) then
  begin
    if Assigned(DM) then
      FreeAndNil(DM);
    DM := nil;
    self.IDM := nil;
    self.WriteLog('TIWuserSessionErgoMercator.SaveProfile: distrutto lSys');
  end;
  inherited;
end;

function TJanuaPostgresSystem.InternalActivate: boolean;
begin
  Result := self.FActive;
  self.ClearErrors;
  if not self.FActive then
    try
      self.WriteLog('TJanuaPostgresSystem.Activate');
      if self.LoadedProfile then
        try
          Result := self.Login;
        except
          on e: exception do
          begin
            self.WriteError('TJanuaCustomServerSystem.Activate self.Login', e);
            Result := false;
          end;
        end;
    except
      on e: exception do
      begin
        self.WriteError('TJanuaCustomServerSystem.Activate', e);
        Result := false;
      end;
    end;
end;

procedure TJanuaPostgresSystem.UndoSessionLogin;
begin
  self.FActive := false;
  self.FHasErrors := True;
  self.LastErrorMessage := DM.LastErrorMessage;
  if self.LastErrorMessage = '' then
    self.LastErrorMessage := 'Nome utente o password errati';

end;

procedure TJanuaPostgresSystem.SetUserSessionProfile;
begin
  if Assigned(DM) then
  begin
    self.SetUserProfile(DM.UserProfile);
    self.WriteLog('UserProfile: ' + sLineBreak + UserProfile.ToString);
    self.WriteLog(self.UserProfile.ToString);
    self.WriteLog(self.UserProfile.User.ToJSON);
    self.WriteLog('TJanuaPostgresSystem.SessionKey: ' + DM.SessionKey);
    self.SessionKey := DM.SessionKey;
    self.FActive := True;
    self.FJanuaServerSession := DM.ServerSession;
    self.FJanuaServerSession.Key := DM.SessionKey;
    self.FJanuaServerSession.Session_id := DM.SessionUID;
    self.FJanuaServerSession.Email := DM.UserProfile.User.Email;
    self.FJanuaServerSession.Schema_id := DM.SelectedSchema;
    self.FJanuaServerSession.User_id := DM.UserProfile.User.id;
    self.FJanuaServerSession.Social_ID := DM.UserProfile.User.SocialID;
    self.FJanuaServerSession.Social_Kind := DM.UserProfile.User.SocialType;
    self.FJanuaServerSession.isPublic := DM.UserProfile.User.isPublic;
  end;

end;

procedure TJanuaPostgresSystem.StartPublicWebSession;
begin
  inherited;
  self.StartSystemPublicWebSession('');
end;

procedure TJanuaPostgresSystem.TestDataModule;
begin
  inherited;
  self.DatasetErrors.Clear;
  self.CreateDataModule;
  self.DM.TestDataModule;
  self.DatasetErrors := self.DM.DatasetErrors;
  self.DestroyDataModule(false);
end;

function TJanuaPostgresSystem.InternalCheckSessionKey: boolean;
begin
  // Result := lSys.CheckSessionKey(self.SessionKey);
  // if Result then
  Result := InternalLoginbyKey(SessionKey);
end;

function TJanuaPostgresSystem.InternalDoPayment(aUserID: integer; aAmount: Currency; aDate: TDate): boolean;
begin
  if not Assigned(self.DM) then
    self.CreateDataModule;

  self.DM.UserProfile := self.UserProfile;

  Result := DM.DoPayment(aUserID, aAmount, aDate);

  self.FUserProfile.User.Payment := Result;
  self.FUserProfile.User.PaymentExpiration := DM.User.PaymentExpiration;

end;

function TJanuaPostgresSystem.InternalLogin: boolean;
begin
  Result := self.CheckUp;
  if Result then
    try
      Inc(FAttempts);
      self.WriteLog('TJanuaPostgresSystem.Login: eseguo login');
      self.WriteLog('TJanuaPostgresSystem.Login: TdmPgSystemCommand.Create');
      Result := false;
      self.CreateDataModule;
      try
        self.WriteLog(self.UserProfile.ToString);
        self.WriteLog('TJanuaPostgresSystem.Login: TdmPgSystemCommand.Login');

        if self.SessionKey = '' then
          Result := DM.Login(self.UserProfile.User)
        else
          Result := DM.CheckSessionKey(self.SessionKey) or DM.Login(self.UserProfile.User);

        if Result then
        begin
          SetUserSessionProfile;
        end
        else
        begin
          UndoSessionLogin;
        end;
      finally
        self.DestroyDataModule;
        self.WriteLog('TIWuserSessionErgoMercator.Login: distrutto lSys');
        if not Result and (FAttempts < 3) and not JanuaApplicationGlobalProfile.IsServer then
          self.Login;
      end;
    Except
      on e: exception do
      begin
        if Assigned(DM) then
          self.WriteLog('TJanuaPostgresSystem.InternalLogin', DM.log);
        Result := false;
        self.WriteError('Errore TJanuaPostgresSystem.Login', e, True);
      end;
    end
end;

function TJanuaPostgresSystem.InternalLoginbyKey(const aKey: string): boolean;
begin
  Result := False;
  self.SessionKey := aKey;
  if (self.SessionKey <> '') and Assigned(DM) then
    Result := self.DM.CheckSessionKey(aKey);
  if not Result then
    UndoSessionLogin;
end;

function TJanuaPostgresSystem.InternalStartPublicWebSession: boolean;
begin
  if Assigned(self.DM) and (self.Url <> '') then
  begin
    Result := DM.StartSessionByUrl(self.Url);
    if Result then
    begin
      self.SetUserSessionProfile;
      self.FActive := True;
      // se login è ok imposto lo Session User Profile
    end
    else
    begin
      self.UndoSessionLogin;
      self.FActive := false;
    end;
    // se non è riuscita la login non setto alcun dato e resetto lo status
    // Result := InternalLogin;
    // Internal Login By Key verrrà gestita dalla procedura esterna chiamante
  end
  else
  begin
    Result := false;
  end;
end;

function TJanuaPostgresSystem.NewProfile: boolean;
begin
  Result := false;

  if not(self.UserProfile.User.Email > '') then
    RaiseException('TJanuaPostgresSystem.NewProfile Username not Set');

  if not(self.UserProfile.User.Password > '') then
    RaiseException('TJanuaPostgresSystem.NewProfile Password not Set');

  try
    self.CreateDataModule;
    try
      self.WriteLog('TJanuaPostgresSystem: TdmPgSystemCommand.NewProfile');
      if DM.CheckUser(self.FNewUserProfile) then
        Result := DM.AddUser(self.FNewUserProfile);
      if Result then
        Result := DM.Login(FNewUserProfile.User);
      if not Result then
      begin
        self.FHasErrors := True;
        self.LastErrorMessage := DM.LastErrorMessage;
        self.WriteLog('TJanuaPostgresSystem.NewProfile', DM.log);
      end;

    finally
      self.DestroyDataModule;
    end;

  Except
    on e: exception do
    begin
      Result := false;
      self.LastErrorMessage := 'Errore TJanuaPostgresSystem.NewProfile ' + sLineBreak + e.Message;
      self.WriteError('TJanuaPostgresSystem.NewProfile', '', e, false);
    end;
  end

end;

function TJanuaPostgresSystem.SaveProfile: boolean;
begin
  if not(self.UserProfile.User.Email > '') and not(csDesigning in ComponentState) then
    RaiseException('TJanuaPostgresSystem.SaveProfile Username not Set');
  // La Password andrebbe verificata solo per Utenti che hanno un id = 0 cioè sono nuovi
  if not(self.UserProfile.User.Password > '') and (UserProfile.User.id = 0) and
    not(csDesigning in ComponentState) then
    RaiseException('TJanuaPostgresSystem.SaveProfile Password not Set');

  try
    self.WriteLog('TJanuaPostgresSystem.SaveProfile: eseguo connessione Key: ' + self.SessionKey);
    self.CreateDataModule;
    try
      DM.SaveProfile(self.UserProfile);
      Result := True;
    finally
      self.DestroyDataModule;
    end;
  Except
    on e: exception do
    begin
      Result := false;
      raise exception.Create('Errore TJanuaPostgresSystem.SaveProfile: ' + sLineBreak + e.Message);
    end;
  end

end;

function TJanuaPostgresSystem.SearchUser(fullusername: string): integer;
begin
  Result := -1;
  self.CreateDataModule;
  try
    try
      Result := self.DM.SearchUsers(fullusername);
      Janua.Core.Functions.CloneDataset(self.DM.qrySearchUsers, FcdsUsersList);
      // 2016-09-17 sostituita procedura dataclone con nuova procedura usando VirtualTable.
      // FcdsUsersList.Data := self.lSys.dspSearchUsers.Data;
      if FcdsUsersList.RecordCount <> DM.qrySearchUsers.RecordCount then
        RaiseException('Error SearchUser Record');
    finally
      self.DestroyDataModule;
    end;
  except
    on e: exception do
      self.WriteError('TJanuaPostgresSystem.SearchUser:', e);
  end;
end;

function TJanuaPostgresSystem.SearchUserByID(aid: integer): boolean;
begin
  Result := False;
  try
    self.CreateDataModule;
    try
      // imposto nel database e nella sessione corrente lo schema di lavoro. Importante che siano
      // impostate da CreateDatamodule sia la 'chiave' di db che la sessione utente
      Result := self.DM.SearchUserByID(aid) > 0;
      self.UserProfile := self.DM.UserProfile;
      // se è andata a buon fine la funzione posso impostare lo schema di default in FJanuaServerSession
      self.cdsUsersList.Assign(self.DM.dspSearchUsers);
    finally
      self.DestroyDataModule;
    end;
  except
    on e: exception do
      self.WriteError('TJanuaPostgresSystem.SetDefaultSchema', e);

  end;
end;

procedure TJanuaPostgresSystem.SetDefaultSchema(aSchemaID: integer);
begin
  inherited;
  try
    self.CreateDataModule;
    try
      // imposto nel database e nella sessione corrente lo schema di lavoro. Importante che siano
      // impostate da CreateDatamodule sia la 'chiave' di db che la sessione utente
      self.DM.SetSelectedSchema(aSchemaID);
      // se è andata a buon fine la funzione posso impostare lo schema di default in FJanuaServerSession
      self.FJanuaServerSession.Schema_id := aSchemaID;
    finally
      self.DestroyDataModule;
    end;
  except
    on e: exception do
      self.WriteError('TJanuaPostgresSystem.SetDefaultSchema', e);

  end;
end;

procedure TJanuaPostgresSystem.SetNewUserProfile(const Value: TJanuaRecordUserProfile);
begin
  FNewUserProfile := Value;
end;

function TJanuaPostgresSystem.SetUserDefaultSchema(aUser: TJanuaRecordUserProfile): boolean;
begin
  // connessione diretta con la Sessione di lavoro
  Result := False
end;

end.
