unit uWebModulePgTest;

interface

uses

  Janua.Football.Intf, Janua.Football.Web.Intf,
  Janua.Football.Server.Intf, Janua.Dilettantissimo.Impl,
  Janua.Football.Impl, Janua.Cms.Server.Intf, Janua.System.Server.Intf,
  Janua.Football.Server.Impl, Janua.Cms.Server.Impl,
  System.SysUtils, System.Classes, Web.HTTPApp, Datasnap.DSHTTPCommon,
  Datasnap.DSHTTPWebBroker, Datasnap.DSServer,
  Web.WebFileDispatcher, Web.HTTPProd,
  Datasnap.DSAuth,
  Datasnap.DSProxyJavaScript, IPPeerServer, Datasnap.DSMetadata, Datasnap.DSServerMetadata, Datasnap.DSClientMetadata,
  Datasnap.DSCommonServer, Datasnap.DSHTTP, System.ImageList;

type
  TWebModulePgTest = class(TWebModule)
    DSHTTPWebDispatcher1: TDSHTTPWebDispatcher;
    DSServer1: TDSServer;
    DSServerClass1: TDSServerClass;
    ServerFunctionInvoker: TPageProducer;
    ReverseString: TPageProducer;
    WebFileDispatcher1: TWebFileDispatcher;
    DSProxyGenerator1: TDSProxyGenerator;
    DSServerMetaDataProvider1: TDSServerMetaDataProvider;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure ServerFunctionInvokerHTMLTag(Sender: TObject; Tag: TTag; const TagString: string; TagParams: TStrings;
      var ReplaceText: string);
    procedure WebModuleBeforeDispatch(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
    procedure WebFileDispatcher1BeforeDispatch(Sender: TObject; const AFileName: string; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModuleCreate(Sender: TObject);
    procedure WebModule1DatasnapActionAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
  private
    { Private declarations }
    FServerFunctionInvokerAction: TWebActionItem;
    function AllowServerFunctionInvoker: Boolean;
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModulePgTest;
  FSession: IFootballWebSession;

implementation

{$R *.dfm}

uses Spring, ServerMethodsPgTest, Web.WebReq, Janua.Postgres.Football.Impl, Janua.Postgres.Cms.Impl;

procedure TWebModulePgTest.DSServerClass1GetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := ServerMethodsPgTest.TServerMethodsPg;
end;

procedure TWebModulePgTest.ServerFunctionInvokerHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
  TagParams: TStrings; var ReplaceText: string);
begin
  if SameText(TagString, 'urlpath') then
    ReplaceText := string(Request.InternalScriptName)
  else if SameText(TagString, 'port') then
    ReplaceText := IntToStr(Request.ServerPort)
  else if SameText(TagString, 'host') then
    ReplaceText := string(Request.Host)
  else if SameText(TagString, 'classname') then
    ReplaceText := ServerMethodsPgTest.TServerMethodsPg.ClassName
  else if SameText(TagString, 'loginrequired') then
    if DSHTTPWebDispatcher1.AuthenticationManager <> nil then
      ReplaceText := 'true'
    else
      ReplaceText := 'false'
  else if SameText(TagString, 'serverfunctionsjs') then
    ReplaceText := string(Request.InternalScriptName) + '/js/serverfunctions.js'
  else if SameText(TagString, 'servertime') then
    ReplaceText := DateTimeToStr(Now)
  else if SameText(TagString, 'serverfunctioninvoker') then
    if AllowServerFunctionInvoker then
      ReplaceText := '<div><a href="' + string(Request.InternalScriptName) +
        '/ServerFunctionInvoker" target="_blank">Server Functions</a></div>'
    else
      ReplaceText := '';
end;

procedure TWebModulePgTest.WebModule1DatasnapActionAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
begin
  if (Request.InternalPathInfo = 'datasnap') or (Request.InternalPathInfo = '/datasnap') then
    Response.Content := ReverseString.Content
  else
    Response.SendRedirect(Request.InternalScriptName + '/');
end;

procedure TWebModulePgTest.WebModuleBeforeDispatch(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
begin
  if FServerFunctionInvokerAction <> nil then
    FServerFunctionInvokerAction.Enabled := AllowServerFunctionInvoker;
end;

function TWebModulePgTest.AllowServerFunctionInvoker: Boolean;
begin
  Result := (Request.RemoteAddr = '127.0.0.1') or (Request.RemoteAddr = '0:0:0:0:0:0:0:1') or
    (Request.RemoteAddr = '::1');
end;

procedure TWebModulePgTest.WebFileDispatcher1BeforeDispatch(Sender: TObject; const AFileName: string;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  D1, D2: TDateTime;
begin
  Handled := False;
  if SameFileName(ExtractFileName(AFileName), 'serverfunctions.js') then
    if not FileExists(AFileName) or (FileAge(AFileName, D1) and FileAge(WebApplicationFileName, D2) and (D1 < D2)) then
    begin
      DSProxyGenerator1.TargetDirectory := ExtractFilePath(AFileName);
      DSProxyGenerator1.TargetUnitName := ExtractFileName(AFileName);
      DSProxyGenerator1.Write;
    end;
end;

procedure TWebModulePgTest.WebModuleCreate(Sender: TObject);
var
  aServerFootball: IJanuaServerFootballFactory;
  aServerCms: IJanuaServerCmsFactory;
  aServerSystem: IJanuaServerSystemFactory;
begin
  aServerFootball := TJanuaServerPgFootballFactory.Create;
  aServerCms:= TJanuaServerPgCmsFactory.Create(nil);
  aServerSystem := nil;
  FSession := TDilettantissimoFactory.GetWebSession(aServerFootball, aServerCms, aServerSystem);
  Guard.CheckNotNull(FSession, 'TWebModule1.WebModuleCreate aSession is nil');

  Guard.CheckNotNull(FSession, 'WebModuleCreate aSession is null');
  FSession.RegisterWebModule(self as TWebModule);
  FServerFunctionInvokerAction := ActionByName('ServerFunctionInvokerAction');

end;

initialization

finalization

Web.WebReq.FreeWebModules;

end.
