unit Janua.REST.Test.LoginClient;

interface

uses System.SysUtils, System.Variants, System.Classes, Janua.REST.Intf;

type
  // <summary> Login Client Model For Testing purposes </summary>
  TTestLoginClient = class
  private
    FClientLogin: IRESTLoginClient;
    FPassword: string;
    FUserName: string;
    FLastMessage: string;
    procedure SetPassword(const Value: string);
    procedure SetUserName(const Value: string);
  public
    constructor Create; overload;
    constructor Create(const aUsername, aPassword: string); overload;
  public
    function Login: boolean; overload;
    function Login(const aUsername, aPassword: string): boolean; overload;
  public
    property UserName: string read FUserName write SetUserName;
    property Password: string read FPassword write SetPassword;
    property LastMessage: string read FLastMessage;
  end;

implementation

uses System.StrUtils, Janua.Core.Functions, Janua.REST.Client, Janua.Application.Framework;

{ TTestLoginClient }

constructor TTestLoginClient.Create;
begin
  FClientLogin := TRESTClientLogin.Create;
  FClientLogin.ServerPort := 443 {TJanuaApplication.RestClientConf.Port};
  FClientLogin.ServerURL := 'https://api.pikapp.it' {TJanuaApplication.RestClientConf.Server};
  FClientLogin.APIUrl := 'login' {TJanuaApplication.RestClientConf.LoginResource};
end;

function TTestLoginClient.Login: boolean;
begin
  Result := False;
  FClientLogin.UserName := IfThen(FUserName = '', TJanuaApplication.RestClientConf.UserName, FUserName);
  FClientLogin.Password := IfThen(FPassword = '', TJanuaApplication.RestClientConf.Password, FPassword);
  Result := FClientLogin.Login;
  FLastMessage := FClientLogin.LoginResult + sl + FClientLogin.LogString;
end;

constructor TTestLoginClient.Create(const aUsername, aPassword: string);
begin
  Create;
  FUserName := aUsername;
  FPassword := aPassword;
end;

function TTestLoginClient.Login(const aUsername, aPassword: string): boolean;
begin
  FUserName := aUsername;
  FPassword := aPassword;
  Result := Login;
end;

procedure TTestLoginClient.SetPassword(const Value: string);
begin
  FPassword := Value
end;

procedure TTestLoginClient.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

end.
