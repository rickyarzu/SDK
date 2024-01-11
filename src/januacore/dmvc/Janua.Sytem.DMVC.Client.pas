unit Janua.Sytem.DMVC.Client;

interface

uses System.SysUtils, Janua.Core.Types, Janua.Http.Types, Janua.DMVC.Client;

type

  TJanuaDMVCSystemClient = class(TDMVCClient)
  public
   constructor Create; override;
  private
    FLoginResult: string;
  protected
    procedure SetPassword(const Value: string);
    procedure SetUsername(const Value: string);
  protected const
    FServerAPILogin = '/login';
  private
    FPassword: string;
    FUsername: string;
  public
    property Username: string read FUsername write SetUsername;
    property Password: string read FPassword write SetPassword;
    function Login(aUsername, aPassword: string): Boolean; overload;
    function Login: Boolean; overload;
  end;

implementation

uses RESTRequest4D, Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaDMVCSystemClient }

function TJanuaDMVCSystemClient.Login(aUsername, aPassword: string): Boolean;
begin
  Username := aUsername;
  Password := aPassword;
  Result := Login;
end;

constructor TJanuaDMVCSystemClient.Create;
begin
  inherited;
  ServerURL := TJanuaApplication.RestSystemUrl;
  ServerPort := TJanuaApplication.RestSystemPort;
end;

function TJanuaDMVCSystemClient.Login: Boolean;
var
  LResponse: IResponse;
begin
  // Login at /api/login
  LResponse := TRequest.New.BaseURL(GetBaseUrl + FServerAPILogin)
  // Test Basic Authentication
    .BasicAuthentication(Username, Password)
  // Test Params
    .AddParam('ParameterName', 'ParameterValue')
  // Test Accept
    .Accept('application/json')
  // Long TimeOut
    .Timeout(120 * 1000)
  // Test Header
    .AddHeader('default_schema', '0')
  // Login Gets the Token
    .Get;

  Result := LResponse.StatusCode = 200;

  if Result then
  begin
    FLoginResult := LResponse.StatusCode.ToString + ' ' + LResponse.StatusText + sl + LResponse.Content;
    TJanuaApplication.JWT := LResponse.Content;
  end
  else
  begin
    FLoginResult := LResponse.StatusCode.ToString + ' ' + LResponse.StatusText + sl + LResponse.Content;
  end;

end;

procedure TJanuaDMVCSystemClient.SetPassword(const Value: string);
begin
  if FPassword <> Value then
  begin
    FPassword := Value;
    Notify('assword');
  end;
end;

procedure TJanuaDMVCSystemClient.SetUsername(const Value: string);
begin
  if FUsername <> Value then
  begin
    FUsername := Value;
    Notify('Username');
  end;
end;

end.
