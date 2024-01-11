unit uDMLndSession;

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
  TdmLndSession = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure InitializeCloud;
function GetWebSession: IWebManager;

var
  dmLndSession: TdmLndSession;
  // DilettantissimoSession: IFootballWebSession;
  FileStorage: IJanuaCloudFileStorage;
  ImageStorage: IJanuaCloudFileStorage;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

uses System.SysUtils, Spring, Janua.LND.Impl, Janua.Football.Impl,
  // Server
  // Janua.Football.Server.Impl, Janua.Cms.Server.Impl,
  // http
  Janua.http.Impl, Janua.Cloud.http.Impl,
  // Database
  Janua.Postgres.Football.Impl, Janua.Postgres.Cms.Impl,  Janua.Postgres.System.Impl,
  // Cloud
  Janua.Postgres.Cloud, Janua.Cloud.Files.Cache, Janua.Cloud.Images.Cache;

function GetWebSession: IWebManager;
var
  LFootballFactory: IJanuaServerFootballFactory;
  // LServerFootballFactory: IJanuaServerFootballFactory;
  // LServerCmsFactory: IJanuaServerCmsFactory;
  // LServerSystemFactory: IJanuaServerSystemFactory;
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
  { TODO : Creare 3 Differenti WebSession ognuna 'specializzata' per la propria 'Factory' associate al WebManager }
  LFactorySystem := nil;
  LSession := LNDFactory.GetWebSession(LFootballFactory, LFactoryCms, LFactorySystem, Result);
  Guard.CheckNotNull(LSession, 'TWebModule1.WebModuleCreate aSession is nil');
  LCloudSession := TJanuaCloudWebSession.Create(Result);
  // Attivo e registro i Web Server Responder essendo server REST i loro Storage hanno KeepAlive = False
  LServerCms := LFactoryCms.GetServerCms;
  Result.AddServer(LServerCms);
  LServerFootball := LFootballFactory.GetServerFootball;
  Result.AddServer(LServerFootball);

end;

procedure InitializeCloud;
begin
  if not TJanuaCloudFileCache.Initialized then
  begin
    try
      try
        if not Assigned(FileStorage) then
          FileStorage := TJanuaPgCloudStorage.Create;
      except
        on e: exception do
          raise exception.Create('InitializeCloud.TJanuaPgCloudStorage.Create Error: ' + e.Message);
      end;
      // Cloud Files Cache Initialization ..................................................
      TJanuaCloudFileCache.Initialize(FileStorage);
      TJanuaCloudFileCache.SetupResources;
    except
      on e: exception do
        raise exception.Create('InitializeCloud.TJanuaCloudFileCache Error: ' + e.Message);
    end;
  end;
  if not TJanuaCloudImagesCache.Initialized then
  begin
    if not Assigned(ImageStorage) then
      ImageStorage := TJanuaPgCloudStorage.Create;
    // Cloud Images Cache Initialization ..................................................
    Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.Initialize(ImageStorage);
    Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.SetupResources;
    // ..............................................................................
  end
end;

end.
