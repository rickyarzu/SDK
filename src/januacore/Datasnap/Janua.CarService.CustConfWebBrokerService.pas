unit Janua.CarService.CustConfWebBrokerService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.SvcMgr,
  System.Types,
  IdHTTPWebBrokerBridge,
  Web.WebReq,
  Web.WebBroker,
  Janua.Application.Framework,
  Janua.WebBroker.ServerConst,
  Janua.Core.Types,
  Janua.Core.WebServer,
  Janua.CarService.WebModuleCustomerConfirmation;

type
  TJanuaCarServiceCustConfWebBrokerService = class(TService)
    procedure ServiceCreate(Sender: TObject);
    procedure ServiceDestroy(Sender: TObject);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
  private
    FServer: TJanuaWebServer;
  protected
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  JanuaCarServiceCustConfWebBrokerService: TJanuaCarServiceCustConfWebBrokerService;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  JanuaCarServiceCustConfWebBrokerService.Controller(CtrlCode);
end;

function TJanuaCarServiceCustConfWebBrokerService.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TJanuaCarServiceCustConfWebBrokerService.ServiceCreate(Sender: TObject);
begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  FServer := TJanuaWebServerFactory.CreateWebServer;
end;

procedure TJanuaCarServiceCustConfWebBrokerService.ServiceDestroy(Sender: TObject);
begin
  FServer.Free;
end;

procedure TJanuaCarServiceCustConfWebBrokerService.ServiceStart(Sender: TService; var Started: Boolean);
begin
  FServer.Port := TJanuaWebServer.GetPort(8084);
  FServer.StartServer;
end;

procedure TJanuaCarServiceCustConfWebBrokerService.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  FServer.StopServer
end;

end.
