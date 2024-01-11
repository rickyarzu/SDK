unit Janua.Postgres.Users;

interface

uses
  System.Classes, Janua.Core.Classes, Janua.Core.Jpublic, Janua.Core.System, Janua.Core.Functions,
  Janua.Core.DB.Intf, Janua.Core.Entities, udmPgSystemCommand, System.SysUtils, Janua.Core.Users;

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
    function AddUser(User: TJanuaRecordUserProfile): boolean;
  published
    { Published declarations }
    property UserProfile: TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
    property ServerSystem: TJanuaCustomServerSystem read FServerSystem write SetServerSystem;
  end;

implementation

uses Janua.Core.Servers, Janua.Application.Framework;

{ TJanuaServerUsers }

function TJanuaServerUsers.AddUser(User: TJanuaRecordUserProfile): boolean;
begin
  if not Assigned(self.FServerSystem) then
    LocalRaiseException('TJanuaCustomServerSystem.login TApplicationProfile not Set');

  if not(self.FUserProfile.User.Email > '') then
    LocalRaiseException('TJanuaCustomServerSystem.login Username not Set');

  if not(self.FUserProfile.User.Password > '') then
    LocalRaiseException('TJanuaCustomServerSystem.login Password not Set');

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

    if not supports(lSys, IJanuaServerDataModule, FIDM) then
      raise exception.Create('lCms do not supports IJanuaServerDataModule');

    // importante, la prima variabile che va impostata è la sessione corrente che permette al
    // server di connettersi con le credenziali corrette lette da JanuaOS
    self.WriteLog('TJanuaCustomServerSystem.Login: eseguo connessione Key: ' + self.SessionKey);
    IDM.SessionKey := self.SessionKey;
    IDM.TestConnect
  Except
    on E: exception do
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
  if Assigned(lSys) and ((not self.KeepAlive) or Force) then
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
