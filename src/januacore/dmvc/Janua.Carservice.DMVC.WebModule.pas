unit Janua.Carservice.DMVC.WebModule;

interface

uses
  System.SysUtils,
  System.Classes,
  Web.HTTPApp,
  MVCFramework;

type
  TCarServiceWebModule = class(TWebModule)
    procedure WebModuleCreate(Sender: TObject);
    procedure WebModuleDestroy(Sender: TObject);
  private
    FMVC: TMVCEngine;
  public
    { Public declarations }
  end;

var
  CarServiceWebModuleClass: TComponentClass = TCarServiceWebModule;

implementation

{$R *.dfm}

uses
  Janua.System.DMVC.AuthCriteria,
  Janua.System.DMVC.Srv,
  Janua.Carservice.DMVC.JsonRPC,
  Janua.Carservice.DMVC.Driver,

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

procedure TCarServiceWebModule.WebModuleCreate(Sender: TObject);
begin
  FMVC := TMVCEngine.Create(Self,
    procedure(Config: TMVCConfig)
    begin
      // session timeout (0 means session cookie)
      Config[TMVCConfigKey.SessionTimeout] := '0';
      // default content-type
      Config[TMVCConfigKey.DefaultContentType] := TMVCConstants.DEFAULT_CONTENT_TYPE;
      // default content charset
      Config[TMVCConfigKey.DefaultContentCharset] := TMVCConstants.DEFAULT_CONTENT_CHARSET;
      // unhandled actions are permitted?
      Config[TMVCConfigKey.AllowUnhandledAction] := 'false';
      // enables or not system controllers loading (available only from localhost requests)
      Config[TMVCConfigKey.LoadSystemControllers] := 'true';
      // default view file extension
      Config[TMVCConfigKey.DefaultViewFileExtension] := 'html';
      // view path
      Config[TMVCConfigKey.ViewPath] := 'templates';
      // Max Record Count for automatic Entities CRUD
      Config[TMVCConfigKey.MaxEntitiesRecordCount] := '20';
      // Enable Server Signature in response
      Config[TMVCConfigKey.ExposeServerSignature] := 'true';
      // Enable X-Powered-By Header in response
      Config[TMVCConfigKey.ExposeXPoweredBy] := 'true';
      // Max request size in bytes
      Config[TMVCConfigKey.MaxRequestSize] := IntToStr(TMVCConstants.DEFAULT_MAX_REQUEST_SIZE);
    end);
  // Firedac Testing - Janua.Test.Firedac.DMVC
  // FMVC.AddController(TFDacTestController);
  // Firedac Testing - Janua.Test.Firedac.DMVC
  // FMVC.AddController(TFDacTestController);
  // [MVCPath('/driver')]  TCSDriverController
  FMVC.AddController(TCSDriverController);
  // [MVCPath('/session')] TSystemSessionMVCController
  FMVC.AddController(TSystemSessionMVCController);

  var
lConfigClaims:
  TJWTClaimsSetup := procedure(const JWT: TJWT)
    begin
      JWT.Claims.Issuer := 'DMVCFramework JWT Authority';
      JWT.Claims.ExpirationTime := Now + EncodeTime(1, 0, 0, 0); // One hour
      JWT.Claims.NotBefore := Now - EncodeTime(0, 5, 0, 0);
    end;

  FMVC.AddMiddleware(TMVCJWTAuthenticationMiddleware.Create(TAuthCriteria.Create, lConfigClaims,
    'ergomercator_secret', '/login', [TJWTCheckableClaim.ExpirationTime, TJWTCheckableClaim.NotBefore]));

  // Analytics middleware generates a csv log, useful to do trafic analysis
  FMVC.AddMiddleware(TMVCAnalyticsMiddleware.Create(GetAnalyticsDefaultLogger));

  if not TDirectory.Exists(TPath.Combine(ExtractFilePath(GetModuleName(HInstance)), 'www')) then
    TDirectory.CreateDirectory(TPath.Combine(ExtractFilePath(GetModuleName(HInstance)), 'www'));

  // The folder mapped as documentroot for TMVCStaticFilesMiddleware must exists!
  FMVC.AddMiddleware(TMVCStaticFilesMiddleware.Create('/static',
    TPath.Combine(ExtractFilePath(GetModuleName(HInstance)), 'www')));

  // Trace middlewares produces a much detailed log for debug purposes
  // FMVC.AddMiddleware(TMVCTraceMiddleware.Create);

  // CORS middleware handles... well, CORS
  // FMVC.AddMiddleware(TMVCCORSMiddleware.Create);

  // Simplifies TMVCActiveRecord connection definition
  // FMVC.AddMiddleware(TMVCActiveRecordMiddleware.Create('MyConnDef','FDConnectionDefs.ini'));

  // Compression middleware must be the last in the chain, just before the ETag, if present.
  FMVC.AddMiddleware(TMVCCompressionMiddleware.Create);

  // ETag middleware must be the latest in the chain
  // FMVC.AddMiddleware(TMVCETagMiddleware.Create);

  FMVC.PublishObject(
    function: TObject
    begin
      Result := TCarServiceRPC.Create;
    end, '/jsonrpc');
end;

procedure TCarServiceWebModule.WebModuleDestroy(Sender: TObject);
begin
  FMVC.Free;
end;

end.
