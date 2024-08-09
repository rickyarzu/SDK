unit Janua.DMVC.WebBroker.WebModule;

interface

uses
  System.SysUtils,
  System.Classes,
  Web.HTTPApp,
  MVCFramework;

type
  TJanuaDMVCCustomWebModule = class(TWebModule)
    procedure WebModuleCreate(Sender: TObject);
    procedure WebModuleDestroy(Sender: TObject);
  private
    FSessionTimeOut: Integer;
    function GetSessionTimeOut: integer;
    procedure SetSessionTimeOut(const Value: integer);
  protected
    FMVC: TMVCEngine;
    procedure AddControllers; virtual;
  public
    { Public declarations }
    property SessionTimeOut: Integer read GetSessionTimeOut write SetSessionTimeOut;
  end;

var
  CustomDMVCModuleClass: TComponentClass = TJanuaDMVCCustomWebModule;

implementation

{$R *.dfm}

uses
  Janua.Application.Framework,
  Janua.System.DMVC.AuthCriteria,

  System.IOUtils,
  MVCFramework.Commons,
  MVCFramework.Middleware.ActiveRecord,
  MVCFramework.Middleware.StaticFiles,
  MVCFramework.Middleware.Analytics,
  MVCFramework.Middleware.Trace,
  MVCFramework.Middleware.CORS,
  MVCFramework.Middleware.ETag,
  MVCFramework.Middleware.Compression,
  MVCFramework.Middleware.JWT,
  MVCFramework.JWT;

procedure TJanuaDMVCCustomWebModule.AddControllers;
begin
  if TJanuaCoreOS.ReadParam('DMVC', 'UseJWT', true) then
  begin
    var
  lConfigClaims:
    TJWTClaimsSetup := procedure(const JWT: TJWT)
      begin
        JWT.Claims.Issuer := 'Januaproject JWT Authority';
        JWT.Claims.ExpirationTime := Now + EncodeTime(1, 0, 0, 0); // One hour
        JWT.Claims.NotBefore := Now - EncodeTime(0, 5, 0, 0); // 5 minuti (fa)?
      end;
    // Note one thing: Login that is Autehntication Middleware follows different Rules compared to
    // 'standar' Januaproject Login procedures. That is it does not pass a Json with all session and
    // user configuration but a JWT with User role, schema and id instead.
    // Detailed user infos need to be requested using the token and usually are then stored in the Client
    var
    vLoginURI := TJanuaCoreOS.ReadParam('DMVC', 'LoginURI', '/login');
    FMVC.AddMiddleware(TMVCJWTAuthenticationMiddleware.Create(TAuthCriteria.Create, lConfigClaims,
      'ergomercator_secret', vLoginURI, [TJWTCheckableClaim.ExpirationTime, TJWTCheckableClaim.NotBefore]));
  end;

  // Analytics middleware generates a csv log, useful to do trafic analysis
  if TJanuaCoreOS.ReadParam('DMVC', 'Analytics', false) then
    FMVC.AddMiddleware(TMVCAnalyticsMiddleware.Create(GetAnalyticsDefaultLogger));
end;

function TJanuaDMVCCustomWebModule.GetSessionTimeOut: integer;
begin

end;

procedure TJanuaDMVCCustomWebModule.SetSessionTimeOut(const Value: integer);
begin

end;

procedure TJanuaDMVCCustomWebModule.WebModuleCreate(Sender: TObject);
begin
  FMVC := TMVCEngine.Create(Self,
    procedure(Config: TMVCConfig)
    begin
      // session timeout (0 means session cookie)
      var
      vKey := TMVCConfigKey.SessionTimeout;
      Config[vKey] := TJanuaCoreOS.ReadParam('DMVC', vKey, '0');

      // default content-type
      vKey := TMVCConfigKey.DefaultContentType;
      Config[vKey] := TJanuaCoreOS.ReadParam('DMVC', vKey, TMVCConstants.DEFAULT_CONTENT_TYPE);

      // default content charset
      vKey := TMVCConfigKey.DefaultContentCharset;
      Config[vKey] := TJanuaCoreOS.ReadParam('DMVC', vKey, TMVCConstants.DEFAULT_CONTENT_CHARSET);

      // unhandled actions are permitted?
      vKey := TMVCConfigKey.AllowUnhandledAction;
      Config[vKey] := TJanuaCoreOS.ReadParam('DMVC', vKey, 'false');

      // enables or not system controllers loading (available only from localhost requests)
      vKey := TMVCConfigKey.LoadSystemControllers;
      Config[vKey] := TJanuaCoreOS.ReadParam('DMVC', vKey, 'true');

      // default view file extension
      vKey := TMVCConfigKey.DefaultViewFileExtension;
      Config[vKey] := TJanuaCoreOS.ReadParam('DMVC', vKey, 'html');

      // view path
      vKey := TMVCConfigKey.DefaultViewFileExtension;
      Config[TMVCConfigKey.ViewPath] := 'templates';

      // Max Record Count for automatic Entities CRUD
      vKey := TMVCConfigKey.MaxEntitiesRecordCount;
      Config[vKey] := TJanuaCoreOS.ReadParam('DMVC', vKey, '20');

      // Enable Server Signature in response
      vKey := TMVCConfigKey.ExposeServerSignature;
      Config[vKey] := TJanuaCoreOS.ReadParam('DMVC', vKey, 'true');

      // Enable X-Powered-By Header in response
      vKey := TMVCConfigKey.ExposeXPoweredBy;
      Config[vKey] := TJanuaCoreOS.ReadParam('DMVC', vKey, 'true');

      // Max request size in bytes
      vKey := TMVCConfigKey.MaxRequestSize;
      var
      vValue := IntToStr(TJanuaCoreOS.ReadParam('DMVC', vKey, TMVCConstants.DEFAULT_MAX_REQUEST_SIZE));
      Config[vKey] := vValue;
    end);

  AddControllers;

  var
  lStaticFilePath := '';

  if TJanuaCoreOS.ReadParam('DMVC', 'UseJanuaPath', true) then
    lStaticFilePath := TJanuaCoreOS.GetAppWebFilesPath
  else if not TDirectory.Exists(TPath.Combine(ExtractFilePath(GetModuleName(HInstance)), 'www')) then
    TDirectory.CreateDirectory(TPath.Combine(ExtractFilePath(GetModuleName(HInstance)), 'www'));

  // The folder mapped as documentroot for TMVCStaticFilesMiddleware is the CoreOsWebFiles Path
  FMVC.AddMiddleware(TMVCStaticFilesMiddleware.Create('/static', lStaticFilePath));

  // Trace middlewares produces a much detailed log for debug purposes
  if TJanuaCoreOS.ReadParam('DMVC', 'Trace', false) then
    FMVC.AddMiddleware(TMVCTraceMiddleware.Create);

  // CORS middleware handles... well, CORS
  if TJanuaCoreOS.ReadParam('DMVC', 'CORS', false) then
    FMVC.AddMiddleware(TMVCCORSMiddleware.Create);

  // Simplifies TMVCActiveRecord connection definition
  if TJanuaCoreOS.ReadParam('DMVC', 'ActiveRecordDef', false) then
    FMVC.AddMiddleware(TMVCActiveRecordMiddleware.Create('MyConnDef', 'FDConnectionDefs.ini'));

  // Compression middleware must be the last in the chain, just before the ETag, if present.
  FMVC.AddMiddleware(TMVCCompressionMiddleware.Create);

  // ETag middleware must be the latest in the chain
  if TJanuaCoreOS.ReadParam('DMVC', 'ETag', false) then
    FMVC.AddMiddleware(TMVCETagMiddleware.Create);

end;

procedure TJanuaDMVCCustomWebModule.WebModuleDestroy(Sender: TObject);
begin
  FMVC.Free;
end;

end.
