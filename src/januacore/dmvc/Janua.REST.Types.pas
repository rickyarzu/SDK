unit Janua.REST.Types;

interface

uses Janua.Core.DB.Types, System.Json;

type
  TRESTClientEvent = procedure(const aOutput: string) of object;

  TAuthenticationType = (jatNone, jatBasic, jatJWT, jatToken, jatGetParams, jatPostParams);
  TJanuaOAuthApp = (joaCustom, joaGMail, joaGDrive);

  TJanuaOAuthServerSettings = record
    AppType: TJanuaOAuthApp;
    AuthUrl: string;
    TokenUrl: string;
    RedirectUrl: string;
    // AIzaSyCYdn4EfpRAHpuD61eUrkr3jL9a_FAvQt0
    // You need to specify both Client ID and Client Secret of your Google API Project.
    Scope: string;
  end;

  TJanuaOAuthAppSettings = record
    Settings: TJanuaOAuthServerSettings;
    ClientID: string;
    ClientSecret: string;
  end;

  TJanuaHttpAuthentication = record
    UserName: string;
    Password: string;
    Token: string;
    LoginAPIUrl: string;
    AuthenticationType: TAuthenticationType;
  end;

  TRestClientConf = class
  public
    constructor Create; overload;
  private
    FLoginResource: string;
    FPort: Word;
    FJWT: string;
    FUserName: string;
    FServer: string;
    FPassword: string;
    FDataFormat: TRestFormat;
    FAuthenticationType: TAuthenticationType;
    procedure SetJWT(const Value: string);
    procedure SetLoginResource(const Value: string);
    procedure SetPort(const Value: Word);
    procedure SetServer(const Value: string);
    procedure SetUserName(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetDataFormat(const Value: TRestFormat);
    procedure SetAuthenticationType(const Value: TAuthenticationType);
  public
    property JWT: string read FJWT write SetJWT;
    property Server: string read FServer write SetServer;
    property UserName: string read FUserName write SetUserName;
    property LoginResource: string read FLoginResource write SetLoginResource;
    property Port: Word read FPort write SetPort;
    property Password: string read FPassword write SetPassword;
    property DataFormat: TRestFormat read FDataFormat write SetDataFormat;
    property AuthenticationType: TAuthenticationType read FAuthenticationType write SetAuthenticationType;
  end;

  TRestServerConf = class
  public
    constructor Create; overload;
  private
    FPort: Word;
    FDataFormat: TRestFormat;
    procedure SetPort(const Value: Word);
    procedure SetDataFormat(const Value: TRestFormat);
  public
    property Port: Word read FPort write SetPort;
    property DataFormat: TRestFormat read FDataFormat write SetDataFormat;
  end;

const
  CJanuaOAuthApp: array [joaCustom .. joaGDrive] of string = ('Custom', 'GMail', 'GDrive');

implementation

{ TRestClientConf }

constructor TRestClientConf.Create;
begin
  FPort := 0;
  FLoginResource := '/login';
  FServer := 'http://localhost';
  FDataFormat := TRestFormat.rfXml;
  FAuthenticationType := jatNone;
end;

procedure TRestClientConf.SetAuthenticationType(const Value: TAuthenticationType);
begin
  FAuthenticationType := Value;
end;

procedure TRestClientConf.SetDataFormat(const Value: TRestFormat);
begin
  FDataFormat := Value;
end;

procedure TRestClientConf.SetJWT(const Value: string);
begin
  FJWT := Value;
  if FJWT <> '' then
    AuthenticationType := jatJWT;
end;

procedure TRestClientConf.SetLoginResource(const Value: string);
begin
  FLoginResource := Value;
end;

procedure TRestClientConf.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TRestClientConf.SetPort(const Value: Word);
begin
  FPort := Value;
end;

procedure TRestClientConf.SetServer(const Value: string);
begin
  FServer := Value;
end;

procedure TRestClientConf.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

{ TRestServerConf }

constructor TRestServerConf.Create;
begin
  FPort := 8080;
end;

procedure TRestServerConf.SetDataFormat(const Value: TRestFormat);
begin
  FDataFormat := Value;
  FDataFormat := TRestFormat.rfXml;
end;

procedure TRestServerConf.SetPort(const Value: Word);
begin
  FPort := Value;
end;

end.
