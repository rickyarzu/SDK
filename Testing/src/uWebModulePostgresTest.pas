unit uWebModulePostgresTest;

interface

uses
  Spring, ServerMethodsCoreTest, Web.WebReq, System.SysUtils, System.Classes, Web.HTTPApp,
  Janua.Football.Intf, Janua.Football.Web.Intf,
  Janua.Football.Server.Intf,
  Janua.Dilettantissimo.Impl,
  Janua.Cms.Server.Intf, Janua.Postgres.Cms, Janua.System.Server.Intf,
  // Janua.Football.Server.Impl,  Janua.Football.Impl,
  // Janua.Cms.Server.Impl,  // Fa Capo a Postgres Server Impl.......
  // Infrastructure
  Janua.Http.Intf, Janua.Cloud.Http.Intf,
  Web.WebFileDispatcher, Web.HTTPProd, System.ImageList;

type
  TWebModule1 = class(TWebModule)
    WebFileDispatcher1: TWebFileDispatcher;
    procedure WebFileDispatcher1BeforeDispatch(Sender: TObject; const AFileName: string;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure WebModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;
  FSession: IFootballWebSession;
  FCloudSession: IWebSession;
  FWebManager: IWebManager;

implementation

{$R *.dfm}

// uses  ServerMethodsCoreTest, Web.WebReq;
uses
  // Janua Postgres Football ...................................................................
  Janua.Postgres.Football.Impl, Janua.Http.Impl, Janua.Cloud.Http.Impl, Janua.Postgres.Cms.Impl,
  Janua.Postgres.System.Impl;

procedure TWebModule1.WebFileDispatcher1BeforeDispatch(Sender: TObject; const AFileName: string;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Handled := False;

end;

procedure TWebModule1.WebModuleCreate(Sender: TObject);
var
  LWebFactory: IFootballWebFactory;
  LFActoryFootball: IJanuaServerFootballFactory;
  LFactoryCms: IJanuaServerCmsFactory;
  LFactorySystem: IJanuaServerSystemFactory;
  LServerFootball: IJanuaServerFootball;
  LServerCms: IJanuaServerCms;
  // LServerSystem: IJanuaServerSystem;
  // TJanuaServerCmsCache = class(TInterfacedObject, IJanuaServerCmsCache)
begin
  FWebManager := TWebManager.Create;
  Guard.CheckNotNull(FWebManager, 'WebModuleCreate aSession is null');
  // Creo le Factories da Postgres Server
  LFActoryFootball := Janua.Postgres.Football.Impl.TJanuaServerPgFootballFactory.Create;
  Guard.CheckNotNull(LFActoryFootball, 'TWebModule1.WebModuleCreate LServerFootball is nil');
  // Creo la Factory CMS Non serve piu includere la Cache in quanto viene creta 'on demand' dalla Factory
  LFactoryCms := Janua.Postgres.Cms.Impl.TJanuaServerPgCmsFactory.Create(nil);
  // Attivo e registro i Web Server Responder essendo server REST i loro Storage hanno KeepAlive = False
  LServerCms := LFactoryCms.GetServerCms;
  FWebManager.AddServer(LServerCms);
  Guard.CheckNotNull(LFactoryCms, 'TWebModule1.WebModuleCreate LServerCms is nil');
  { TODO : Creare 3 Differenti WebSession ognuna 'specializzata' per la propria 'Factory' associate al WebManager }
  LFactorySystem := Janua.Postgres.System.Impl.TJanuaServerPgSystemFactory.Create;
  // Web Factory is the Session Builder. It uses all Elements from Web and REST servers injected
  { TODO -cHttp : Just Create a web session using a dynamic Array of Factories. Define at Parent Level Class }
  LWebFactory := TDilettantissimoFactory.Create;
  FSession := LWebFactory.GetWebSession(LFActoryFootball, LFactoryCms, LFactorySystem, FWebManager);
  Guard.CheckNotNull(FSession, 'TWebModule1.WebModuleCreate aSession is nil');

  FCloudSession := TJanuaCloudWebSession.Create(FWebManager);
  // Attivo e registro i Web Server Responder essendo server REST i loro Storage hanno KeepAlive = False
  Guard.CheckNotNull(LFactoryCms, 'LFactoryCms is nil');
  LServerCms := LFactoryCms.GetServerCms;
  Guard.CheckNotNull(LServerCms, 'LServerCms is nil');
  // Al Server manager aggiungo il Server Cms
  FWebManager.AddServer(LServerCms);
  Guard.CheckNotNull(LFActoryFootball, 'LFActoryFootball is nil');
  LServerFootball := LFActoryFootball.GetServerFootball;
  Guard.CheckNotNull(LServerFootball, 'LServerFootball is nil');
  // Al Server Manager ho aggiunto il Server Football
  FWebManager.AddServer(LServerFootball);
  // Aggiungere il system
  {
    Guard.CheckNotNull(LFactorySystem, 'LFactorySystem is nil');
    LServerSystem := LFactorySystem.GetServerSystem;
    Guard.CheckNotNull(LServerSystem, 'LServerSystem is nil');
    // Al Server Manager ho aggiunto Il Server System
    FWebManager.AddServer(LServerSystem);
  }
  FWebManager.RegisterWebModule(self as TWebModule);

end;

initialization

finalization

Web.WebReq.FreeWebModules;

end.
