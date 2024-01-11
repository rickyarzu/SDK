unit uWebModuleCoreTest;

{$I JANUACORE.INC}

interface

uses
  Spring, ServerMethodsCoreTest, System.SysUtils, System.Classes, Web.HTTPApp,
  Janua.Football.Intf, Janua.Football.Web.Intf,
  Janua.Football.Server.Intf, Janua.Dilettantissimo.Impl,
  Janua.Football.Impl, Janua.Cms.Server.Intf, Janua.System.Server.Intf,
  Janua.Football.Server.Impl, Janua.Cms.Server.Impl,
  // Infrastructure
  Janua.Http.Intf, Janua.Cloud.Http.Intf,
{$IFDEF WEBBROKER}Web.WebFileDispatcher, Web.WebReq, Web.HTTPProd, {$ENDIF WEBBROKER} System.ImageList;

type
  TWebModuleCoreTest = class(TWebModule)
    WebFileDispatcher1: TWebFileDispatcher;
    procedure WebFileDispatcher1BeforeDispatch(Sender: TObject; const AFileName: string; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
    WebModuleCoreClass: TComponentClass = TWebModuleCoreTest;
  FSession: IFootballWebSession;
  FCloudSession: IWebSession;
  FWebManager: IWebManager;

implementation

{$R *.dfm}

// uses  ServerMethodsCoreTest, Web.WebReq;
uses
  // Virtual Database Servers ...........................................................
  Janua.Virtual.Cms, Janua.Virtual.Football, Janua.Virtual.System,
  // Http ...............................................................................
  Janua.Http.Impl, Janua.Cloud.Http.Impl;

procedure TWebModuleCoreTest.WebFileDispatcher1BeforeDispatch(Sender: TObject; const AFileName: string;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Handled := False;
end;

procedure TWebModuleCoreTest.WebModuleCreate(Sender: TObject);
var
  // IFootballWebFactory
  LFactory: IFootballFactory;
  LWebFactory: IFootballWebFactory;
  LFActoryFootball: IJanuaServerFootballFactory;
  LFactoryCms: IJanuaServerCmsFactory;
  LFactorySystem: IJanuaServerSystemFactory;
  LServerFootball: IJanuaServerFootball;
  LServerCms: IJanuaServerCms;
  LServerSystem: IJanuaServerSystem;
begin
  FWebManager := TWebManager.Create;
  Guard.CheckNotNull(FWebManager, 'WebModuleCreate aSession is null');
  LFActoryFootball := TJanuaServerVirtualFootballFactory.Create;
  Guard.CheckNotNull(LFActoryFootball, 'TWebModule1.WebModuleCreate LServerFootball is nil');
  LFactoryCms := TJanuaServerVirtualCmsFactory.Create(nil);
  Guard.CheckNotNull(LFactoryCms, 'TWebModule1.WebModuleCreate LServerCms is nil');
  { TODO : Creare 3 Differenti WebSession ognuna 'specializzata' per la propria 'Factory' associate al WebManager }
  LFactorySystem := Janua.Virtual.System.TJanuaServerVirtualSystemFactory.Create;
  // Creo una Web Session inserendole le 3 Factories ... possibile creare una web session
  // che ammetta un array di Factories?
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
  Guard.CheckNotNull(LFactorySystem, 'LFactorySystem is nil');
  LServerSystem := LFactorySystem.GetServerSystem;
  Guard.CheckNotNull(LServerSystem, 'LServerSystem is nil');
  // Al Server Manager ho aggiunto Il Server System
  FWebManager.AddServer(LServerSystem);
{$IFDEF WEBBROKER}FWebManager.RegisterWebModule(self as TWebModule); {$ENDIF WEBBROKER}
end;

initialization

finalization

{$IFDEF WEBBROKER}Web.WebReq.FreeWebModules; {$ENDIF WEBBROKER}

end.
