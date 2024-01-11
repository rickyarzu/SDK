unit JanuaPgSession;

interface

uses
  System.SysUtils, System.Classes, januacustomsession,  Data.DB, DBAccess,
   Uni, Datasnap.DBClient, MemDS;

type
  TJanuaPgSession = class(TJanuaCustomSession)
  private
    FspLogin: TUniStoredProc;
    FPgConnection: TJanuaUniConnection;
    procedure SeTJanuaUniConnection(const Value: TJanuaUniConnection);
    procedure SetspLogin(const Value: TUniStoredProc);
  protected
    { Protected declarations }
    procedure SetConnected(const Value: boolean);  override;
    procedure SetPassword(const Value: string); override;
    procedure SetUserEmail(const Value: string);  override;
    procedure SetUsername(const Value: string);   override;
    procedure SetUserSchema(const Value: TUserSchema);  override;
    procedure SetUserSession(const Value: TUsersession);  override;
  public
    { Public declarations }
    function Login : boolean; override;
    function LogintWithSession(Value : int64) : boolean;
    constructor Create(AOwner: TComponent); override;
  published
    property PgConnection: TJanuaUniConnection read FPgConnection write SeTJanuaUniConnection;
    property spLogin: TUniStoredProc read FspLogin write SetspLogin;

  end;

procedure Register;

//   if assigned(FspLogin) then spLogin.ParamByName('p_username').Value := Value;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaPgSession]);
end;

{ TJanuaPgSession }



constructor TJanuaPgSession.Create(AOwner: TComponent);
begin
  inherited;

end;

function TJanuaPgSession.Login: boolean;
begin
   if self.FUserSession.UUID = -1 then
   begin
     self.FPgConnection.Open;
     self.FspLogin.Execute;
     self.FUserSession.UUID := self.FspLogin.ParamByName('Result').AsLargeInt;
     Result := self.FUserSession.UUID > 0;
   end
   else
   begin
     Result := True;
   end;

   if Result then
   begin
       self.FUserSession.UUID := self.FUserSession.UUID;
       self.FUserSession.Started := now();
   end;
end;

function TJanuaPgSession.LogintWithSession(Value: int64): boolean;
begin

end;


procedure TJanuaPgSession.SetConnected(const Value: boolean);
begin
  if Value then self.FConnected := self.Login;


end;

procedure TJanuaPgSession.Setpassword(const Value: string);
begin
  self.Fpassword := Value;
  if assigned(self.FspLogin) then self.spLogin.ParamByName('p_password').Value := Value;
end;

procedure TJanuaPgSession.SeTJanuaUniConnection(const Value: TJanuaUniConnection);
begin
  FPgConnection := Value;
end;

procedure TJanuaPgSession.SetspLogin(const Value: TUniStoredProc);
begin
  FspLogin := Value;
  if assigned(FspLogin) then spLogin.ParamByName('p_username').Value := Fusername;
end;

procedure TJanuaPgSession.SetUserEmail(const Value: string);
begin
  inherited;
   if assigned(FspLogin) then spLogin.ParamByName('p_email').Value := Value;
end;
procedure TJanuaPgSession.SetUsername(const Value: string);
begin
  inherited;
  if assigned(FspLogin) then spLogin.ParamByName('p_username').Value := Value;
end;

procedure TJanuaPgSession.SetUserSchema(const Value: TUserSchema);
begin
  inherited;

end;

procedure TJanuaPgSession.SetUserSession(const Value: TUsersession);
begin
  inherited;

end;

end.
