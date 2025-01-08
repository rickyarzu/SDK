unit Janua.WhatsApp.TwilioWebBrokerService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.SvcMgr,
  System.Types,
  IdHTTPWebBrokerBridge,
  Web.WebReq,
  Web.WebBroker,
  Janua.Application.Framework,
  Janua.Core.Types,
  Janua.WebBroker.ServerConst,
  Janua.Http.WebServer, Janua.WhatsApp.WebbrokerModule;

type
  TJanuaWhatsAppTwilioWebBrokerService = class(TService)
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
  JanuaWhatsAppTwilioWebBrokerService: TJanuaWhatsAppTwilioWebBrokerService;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  JanuaWhatsAppTwilioWebBrokerService.Controller(CtrlCode);
end;

function TJanuaWhatsAppTwilioWebBrokerService.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TJanuaWhatsAppTwilioWebBrokerService.ServiceCreate(Sender: TObject);
begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WhatsAppWebModuleClass;
  FServer := TJanuaWebServerFactory.CreateWebServer;
end;

procedure TJanuaWhatsAppTwilioWebBrokerService.ServiceDestroy(Sender: TObject);
begin
  FServer.Free;
end;

procedure TJanuaWhatsAppTwilioWebBrokerService.ServiceStart(Sender: TService; var Started: Boolean);
begin
  FServer.StartServer;
end;

procedure TJanuaWhatsAppTwilioWebBrokerService.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  FServer.StopServer
end;

end.
