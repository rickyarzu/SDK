unit Janua.Server.Users;

interface

uses
  System.Classes, Janua.Core.System, Janua.Core.Jpublic, Janua.Server.System,
  Janua.Server.Jpublic, udmPgSystemCommand, System.SysUtils, Janua.Core.Users;


type
  TJanuaServerUsers = class(TJanuaCustomServerUsers)
  private
    lSys: TDmPgSystemCommand;
    FUserProfile: Janua.Core.System.TJanuaRecordUserProfile;
    FServerSystem: TJanuaServerSystem;
    procedure SetUserProfile(const Value: Janua.Core.System.TJanuaRecordUserProfile);
    procedure SetServerSystem(const Value: TJanuaServerSystem);
    { Private declarations }
  protected
    { Protected declarations }
    procedure CreateLSys;
    procedure DestroyLsys;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent) ; override;
    Destructor  Destroy; override;
    procedure FindAddressbyID(aID: integer);
    function AddUser(User: TJanuaRecordUserProfile): Boolean;
  published
    { Published declarations }
    property UserProfile : TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
    property ServerSystem: TJanuaServerSystem read FServerSystem write SetServerSystem;
  end;


implementation


{ TJanuaServerUsers }

function TJanuaServerUsers.AddUser(User: TJanuaRecordUserProfile): Boolean;
begin
  if not Assigned(self.FServerSystem) then
     RaiseException('TJanuaServerSystem.login TApplicationProfile not Set');

  if not (self.FUserProfile.User.Email > '')  then
     RaiseException('TJanuaServerSystem.login Username not Set');

  if not (self.FUserProfile.User.Password > '')  then
     RaiseException('TJanuaServerSystem.login Password not Set');

  self.WriteLog('TJanuaServerSystem.Login: eseguo Creazione Nuovo Utente');
  self.WriteLog('TJanuaServerSystem.Login: TdmPgSystemCommand.Create');
  self.CreateLSys;
  try
     self.WriteLog(self.FUserProfile.ToString);
     self.WriteLog('TJanuaServerSystem.Login: TdmPgSystemCommand.AddUser');
     Result := lSys.AddUser(User);
     if Result then self.WriteLog('TJanuaServerSystem.Login: TdmPgSystemCommand.AddUser OK')
        else self.WriteLog('TJanuaServerSystem.Login: TdmPgSystemCommand.AddUser Error'
                            + sLineBreak + lSys.LastErrorMessage);

  finally
    self.DestroyLsys;
  end;
end;

constructor TJanuaServerUsers.Create(AOwner: TComponent);
begin
  inherited;
  self.FUserProfile.User.id := 0;
end;

procedure TJanuaServerUsers.CreateLSys;
begin
  try
    self.CreateLSys;
    try
    // per prima cosa imposto la proprietà del Logger per gestire i log ed i messaggi del datamodule
    if (self.JanuaLogger is TJanuaCoreLogger) then
      lSys.JanuaCoreLogger := (self.JanuaLogger as TJanuaCoreLogger);
    // importante, la prima variabile che va impostata è la sessione corrente che permette al
    // server di connettersi con le credenziali corrette lette da JanuaOS
    lSys.ServerSession := self.FJanuaServerSession;
    self.WriteLog(FJanuaServerSession.CustomServerUrl + ':' + FJanuaServerSession.CustomServerPort +
      ':' + FJanuaServerSession.CustomServerSchema);
    self.WriteLog('TJanuaServerSystem.Login: eseguo connessione Key: ' + self.FSessionKey);
    lSys.SessionKey := self.FSessionKey;
    if Assigned(self.JanuaLogger) and (self.JanuaLogger is TJanuaCoreLogger) then
      lSys.JanuaCoreLogger := TJanuaCoreLogger(self.JanuaLogger);
    finally
      self.DestroyLsys;
    end;
  Except
    on E: Exception do
    begin
      self.WriteError('TJanuaServerSystem.CreateSys Error:', E);
    end;
  end;
end;

destructor TJanuaServerUsers.Destroy;
begin

  inherited;
end;

procedure TJanuaServerUsers.DestroyLsys;
begin
  if Assigned(LSys) then FreeAndNil(LSys);

end;

procedure TJanuaServerUsers.FindAddressbyID(aID: integer);
begin
   { TODO : Implementare come Ricerca su Array locale Addresses o su dmSystem }
end;


procedure TJanuaServerUsers.SetServerSystem(const Value: TJanuaServerSystem);
begin
  FServerSystem := Value;
end;

procedure TJanuaServerUsers.SetUserProfile(
  const Value: Janua.Core.System.TJanuaRecordUserProfile);
begin
   { TODO : Implementare come Ricerca su Array locale Addresses o su dmSystem }
end;

end.
