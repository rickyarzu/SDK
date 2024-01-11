unit Janua.Postgres.Users;

interface

uses
  System.Classes, Janua.Core.Classes, Janua.Core.Jpublic, Janua.Core.System, Janua.Core.Functions,
  udmPgSystemCommand, System.SysUtils, Janua.Core.Users;

type
  TJanuaServerUsers = class(TJanuaCustomServerUsers)
  private
    lSys: TDmPgSystemCommand;
    FUserProfile: TJanuaRecordUserProfile;
    FServerSystem: TJanuaCustomServerSystem;
    procedure SetUserProfile(const Value: TJanuaRecordUserProfile); override;
    procedure SetServerSystem(const Value: TJanuaCustomServerSystem);
    { Private declarations }
  protected
    { Protected declarations }
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: boolean = false); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure FindAddressbyID(aID: integer);
    function AddUser(User: TJanuaRecordUserProfile): Boolean;
  published
    { Published declarations }
    property UserProfile: TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
    property ServerSystem: TJanuaCustomServerSystem read FServerSystem write SetServerSystem;
  end;

implementation

uses Janua.Core.Servers;

{ TJanuaServerUsers }

function TJanuaServerUsers.AddUser(User: TJanuaRecordUserProfile): Boolean;
begin
  if not Assigned(self.FServerSystem) then
    RaiseException('TJanuaCustomServerSystem.login TApplicationProfile not Set');

  if not(self.FUserProfile.User.Email > '') then
    RaiseException('TJanuaCustomServerSystem.login Username not Set');

  if not(self.FUserProfile.User.Password > '') then
    RaiseException('TJanuaCustomServerSystem.login Password not Set');

  self.WriteLog('TJanuaCustomServerSystem.Login: eseguo Creazione Nuovo Utente');
  self.WriteLog('TJanuaCustomServerSystem.Login: TdmPgSystemCommand.Create');
  self.CreateDataModule;
  try
    self.WriteLog(self.FUserProfile.ToString);
    self.WriteLog('TJanuaCustomServerSystem.Login: TdmPgSystemCommand.AddUser');
    Result := lSys.AddUser(User);
    if Result then
      self.WriteLog('TJanuaCustomServerSystem.Login: TdmPgSystemCommand.AddUser OK')
    else
      self.WriteLog('TJanuaCustomServerSystem.Login: TdmPgSystemCommand.AddUser Error' + sLineBreak +
        lSys.LastErrorMessage);

  finally
    self.DestroyDataModule;
  end;
end;

constructor TJanuaServerUsers.Create(AOwner: TComponent);
begin
  inherited;
  self.FUserProfile.User.id := 0;
end;

procedure TJanuaServerUsers.CreateDataModule;
begin
  try
    if not Assigned(lSys) then
      lSys := TDmPgSystemCommand.Create(self);
    // per prima cosa imposto la proprietà del Logger per gestire i log ed i messaggi del datamodule
    if (self.JanuaLogger is TJanuaCoreLogger) then
      lSys.JanuaCoreLogger := (self.JanuaLogger as TJanuaCoreLogger);
    // importante, la prima variabile che va impostata è la sessione corrente che permette al
    // server di connettersi con le credenziali corrette lette da JanuaOS
    self.IDM := self.lSys;
    self.WriteLog('TJanuaCustomServerSystem.Login: eseguo connessione Key: ' + self.SessionKey);
    lSys.SessionKey := self.SessionKey;
    if Assigned(self.JanuaLogger) and (self.JanuaLogger is TJanuaCoreLogger) then
      lSys.JanuaCoreLogger := TJanuaCoreLogger(self.JanuaLogger);
    lSys.TestConnect
  Except
    on E: Exception do
    begin
      self.WriteError('TJanuaCustomServerSystem.CreateSys Error:', E);
    end;
  end;
end;

destructor TJanuaServerUsers.Destroy;
begin

  inherited;
end;

procedure TJanuaServerUsers.DestroyDataModule(Force: boolean = false);
begin
  if Assigned(lSys) and ((not self.KeepAlive) or Force)  then
  begin
     lSys.DisposeOf;
     lSys := nil;
     self.IDM := nil;
  end;
  inherited;

end;

procedure TJanuaServerUsers.FindAddressbyID(aID: integer);
begin
  { TODO : Implementare come Ricerca su Array locale Addresses o su dmSystem }
end;

procedure TJanuaServerUsers.SetServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FServerSystem := Value;
end;

procedure TJanuaServerUsers.SetUserProfile(const Value: TJanuaRecordUserProfile);
begin
  inherited;
  { TODO : Implementare come Ricerca su Array locale Addresses o su dmSystem }
end;

end.
