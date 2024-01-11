unit Janua.Web.dmWebBrokerSession;

interface

uses
  System.Classes,
  Janua.Football.Intf, Janua.Football.Web.Intf,
  Janua.http.Intf,
  Janua.Core.Classes,
  Janua.Core.Types,
  // Cloud
  Janua.Cloud.Files.Intf,
  // Database e Model
  Janua.Football.Server.Intf, Janua.Cms.Server.Intf, Janua.System.Server.Intf;

type
  TdmJanuaWebBrokerSession = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  /// <summary> Is responsible to istantiate Sessions and initialize caches </summary>
  TJanuaWebBrokerFactory = class
  private
    class var FFileStorage: IJanuaCloudFileStorage;
    class var FImageStorage: IJanuaCloudFileStorage;
    /// <summary>This is the Web Factory injected at Creation</summary>
    class var FFootballWebFactory: IFootballWebFactory;
  public
    /// <summary>InitializeCloud initializes both Image and File Storage</summary>
    class procedure InitializeCloud;
    /// <summary> Check requirements thene returns a IWebManager Session for Web Broker </summary>
    class function GetWebSession: IWebManager;
  public
    /// <summary>This is the FileStorage Storage and is a singleton</summary>
    class property FileStorage: IJanuaCloudFileStorage read FFileStorage write FFileStorage;
    /// <summary>This is the Image Storage and is a singleton</summary>
    class property ImageStorage: IJanuaCloudFileStorage read FImageStorage write FImageStorage;
    /// <summary>This is the Web Factory injected at Creation</summary>
    class property FootballWebFactory: IFootballWebFactory read FFootballWebFactory
      write FFootballWebFactory;
  end;

var
  dmJanuaWebBrokerSession: TdmJanuaWebBrokerSession;
  // DilettantissimoSession: IFootballWebSession;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

uses System.SysUtils, Spring, Janua.LND.Impl, Janua.Football.Impl,
  // Server
  // Janua.Football.Server.Impl, Janua.Cms.Server.Impl,
  // http
  Janua.http.Impl, Janua.Cloud.http.Impl,
  // Database
  Janua.Postgres.Football.Impl, Janua.Postgres.Cms.Impl, Janua.Postgres.System.Impl,
  // Cloud
  Janua.Postgres.Cloud, Janua.Cloud.Files.Cache, Janua.Cloud.Images.Cache;

class function TJanuaWebBrokerFactory.GetWebSession: IWebManager;
var
  LFootballFactory: IJanuaServerFootballFactory;
  LFactoryCms: IJanuaServerCmsFactory;
  LFactorySystem: IJanuaServerSystemFactory;
  LServerFootball: IJanuaServerFootball;
  LServerCms: IJanuaServerCms;
  LServerSystem: IJanuaServerSystem;
  LSession: IWebSession;
  LCloudSession: IWebSession;
begin
  Result := TWebManager.Create;
  Guard.CheckNotNull(Result, 'WebModuleCreate aSession is null');
  LFootballFactory := TJanuaServerPgFootballFactory.Create;
  Guard.CheckNotNull(LFootballFactory, 'TWebModule1.WebModuleCreate LServerFootball is nil');
  LFactoryCms := TJanuaServerPgCmsFactory.Create(nil);
  Guard.CheckNotNull(LFactoryCms, 'TWebModule1.WebModuleCreate LServerCms is nil');
  { TODO : Creare 3 Differenti WebSession ognuna 'specializzata' per la propria 'Factory' associate al WebManager
           Oppure Fare implementare la medesima interface a tutte le Factories e caricarne un 'array'
           nella session di competenza in base alle necessità }
  LFactorySystem := TJanuaServerPgSystemFactory.Create;
  LSession := FFootballWebFactory.GetWebSession(LFootballFactory, LFactoryCms, LFactorySystem, Result);
  Guard.CheckNotNull(LSession, 'TWebModule1.WebModuleCreate aSession is nil');
  LCloudSession := TJanuaCloudWebSession.Create(Result);
  // Attivo e registro i Web Server Responder essendo server REST i loro Storage hanno KeepAlive = False
  LServerCms := LFactoryCms.GetServerCms;
  Result.AddServer(LServerCms);
  LServerFootball := LFootballFactory.GetServerFootball;
  Result.AddServer(LServerFootball);
  LServerSystem := LFactorySystem.GetServerSystem;
  Result.AddServer(LServerFootball);

  (*
    LServerFootballFactory := TJanuaServerPgFootballFactory.Create;
    LServerCmsFactory := TJanuaServerPgCmsFactory.Create(nil);
    LServerSystemFactory := nil;
    Result := TLNDFactory.GetWebSession(LServerFootballFactory, LServerCmsFactory, LServerSystemFactory);
    Guard.CheckNotNull(Result, 'GetWebSession aSession is nil');
  *)
end;

class procedure TJanuaWebBrokerFactory.InitializeCloud;
begin
  if not TJanuaCloudFileCache.Initialized then
  begin
    try
      try
        if not Assigned(FFileStorage) then
          FFileStorage := TJanuaPgCloudStorage.Create;
      except
        on e: exception do
          raise exception.Create('InitializeCloud.TJanuaPgCloudStorage.Create Error: ' + e.Message);
      end;
      // Cloud Files Cache Initialization ..................................................
      TJanuaCloudFileCache.Initialize(FFileStorage);
      TJanuaCloudFileCache.SetupResources;
    except
      on e: exception do
        raise exception.Create('InitializeCloud.TJanuaCloudFileCache Error: ' + e.Message);
    end;
  end;
  if not TJanuaCloudImagesCache.Initialized then
  begin
    { TODO : This can be changed with injected }
    if not Assigned(FImageStorage) then
      FImageStorage := TJanuaPgCloudStorage.Create;
    // Cloud Images Cache Initialization ..................................................
    Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.Initialize(FImageStorage);
    Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.SetupResources;
    // ..............................................................................
  end
end;

end.
