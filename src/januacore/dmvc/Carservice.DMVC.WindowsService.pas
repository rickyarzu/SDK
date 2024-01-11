unit Carservice.DMVC.WindowsService;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.SvcMgr,
  Vcl.Dialogs,
  {MVCFramework.REPLCommandsHandlerU,}
  IdHTTPWebBrokerBridge;

type
  TPickappAPIService = class(TService)
    procedure ServiceCreate(Sender: TObject);
    procedure ServiceExecute(Sender: TService);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
  private
    FServer: TIdHTTPWebBrokerBridge;
    (* FCustomHandler: TMVCCustomREPLCommandsHandler; *)
  public
    function GetServiceController: TServiceController; override;
  end;

var
  PickappAPIService: TPickappAPIService;

implementation

uses
  Janua.Carservice.DMVC.WebModule,
  Janua.Application.Framework,

  Web.WebReq,
  MVCFramework.Logger,
  MVCFramework.Commons;

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  PickappAPIService.Controller(CtrlCode);
end;

function TPickappAPIService.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TPickappAPIService.ServiceCreate(Sender: TObject);
begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := CarServiceWebModuleClass;
end;

procedure TPickappAPIService.ServiceExecute(Sender: TService);
begin
  while not Terminated do
  begin
    ServiceThread.ProcessRequests(True);
    Sleep(1000);
  end;
end;

procedure TPickappAPIService.ServiceStart(Sender: TService; var Started: Boolean);
begin
  {
    FServer := TIdHTTPWebBrokerBridge.Create(nil);
    FServer.OnParseAuthentication := TMVCParseAuthentication.OnParseAuthentication;
    FServer.DefaultPort := 8101;
    FServer.Active := True;
  }

  (*
    FCustomHandler :=
    function(const Value: String; const Server: TIdHTTPWebBrokerBridge; out Handled: Boolean): THandleCommandResult
    begin
    Handled := False;
    Result := THandleCommandResult.Unknown;
    // Write here your custom command for the REPL using the following form...
    // ***
    // Handled := False;
    // if (Value = 'apiversion') then
    // begin
    // REPLEmit('Print my API version number');
    // Result := THandleCommandResult.Continue;
    // Handled := True;
    // end
    // else if (Value = 'datetime') then
    // begin
    // REPLEmit(DateTimeToStr(Now));
    // Result := THandleCommandResult.Continue;
    // Handled := True;
    // end;
    end;
  *)

  FServer := TIdHTTPWebBrokerBridge.Create(nil);
  FServer.OnParseAuthentication := TMVCParseAuthentication.OnParseAuthentication;
  FServer.DefaultPort := TJanuaApplication.RESTServerConf.Port;
  { more info about MaxConnections
    http://www.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=TIdCustomTCPServer_MaxConnections.html }
  FServer.MaxConnections := 0;
  { more info about ListenQueue
    http://www.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=TIdCustomTCPServer_ListenQueue.html }
  FServer.ListenQueue := 200;
  { required if you use JWT middleware }
  FServer.OnParseAuthentication := TMVCParseAuthentication.OnParseAuthentication;
  FServer.Active := True;
end;

procedure TPickappAPIService.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  if Assigned(FServer) then
  begin
    FServer.Active := False;
    FServer.Free;
  end;
end;

end.
