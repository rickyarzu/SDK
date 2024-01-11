unit JanuaLogin;

interface

uses
  SysUtils, Classes;

type
  TJanuaLogin = class(TComponent)
  private
    FLoggedIn: boolean;
    FLoginError: string;
    FPassword: string;
    FUserName: string;
    procedure SetLoggedIn(const Value: boolean);
    procedure SetLoginError(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetUserName(const Value: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function LogIn: boolean; Virtual;
    procedure LogOut; Virtual;
  published
    { Published declarations }
    property UserName: string read FUserName write SetUserName;
    // nome dell'utente che si deve connettere
    property Password: string read FPassword write SetPassword;
    // password dell'utente che si connette
    property LoggedIn: boolean read FLoggedIn write SetLoggedIn;
    // avvenuta connessione
    property LoginError: string read FLoginError write SetLoginError;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaLogin]);
end;

{ TJanuaLogin }

function TJanuaLogin.LogIn: boolean;
begin
   if (FUsername = 'januaproject') and (FPassword = 'test') then
   begin
      Result := True;
      FLoggedIn := True;
      FLoginError := ''; 
   end
   else
   begin
      Result := False;
      FLoggedIn := False;
      FLoginError := 'Nome utente o password Errati'; 
   end;
end;

procedure TJanuaLogin.LogOut;
begin
  FLoggedIn := False;
end;

procedure TJanuaLogin.SetLoggedIn(const Value: boolean);
begin
  if (Value = True) and (FLoggedIn = False) then FLoggedIn := LogIn
  else if (Value = False) and (FLoggedIn = True) then LogOut;
end;

procedure TJanuaLogin.SetLoginError(const Value: string);
begin
  FLoginError := Value;
end;

procedure TJanuaLogin.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaLogin.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

end.
