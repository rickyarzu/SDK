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
  Janua.WhatsApp.WebbrokerModule, Janua.Core.Commons, Janua.Core.Classes, Janua.WebBroker.Server,
  Janua.WebBroker.ServerController;

type
  TJanuaWhatsAppTwilioWebBrokerService = class(TService)
    JanuaWebBrokerServerManager1: TJanuaWebBrokerServerManager;
    procedure ServiceDestroy(Sender: TObject);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure JanuaWebBrokerServerManager1BeforeStartServer(Sender: TObject);
  private
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

procedure TJanuaWhatsAppTwilioWebBrokerService.JanuaWebBrokerServerManager1BeforeStartServer(Sender: TObject);
begin
  // nota JanuaWebBrokerServerClass è una Variabile di tipo TJanuaWebBrokerServerClass
  JanuaWebBrokerServerManager1.WebModuleClass := WhatsAppWebModuleClass;
end;

procedure TJanuaWhatsAppTwilioWebBrokerService.ServiceDestroy(Sender: TObject);
begin
  JanuaWebBrokerServerManager1.Deactivate;
end;

procedure TJanuaWhatsAppTwilioWebBrokerService.ServiceStart(Sender: TService; var Started: Boolean);
begin
  JanuaWebBrokerServerManager1.WebBrokerClass := JanuaWebBrokerServerClass;
  JanuaWebBrokerServerManager1.Activate;
  JanuaWebBrokerServerManager1.StartServer;
  Started := True;
end;

procedure TJanuaWhatsAppTwilioWebBrokerService.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  JanuaWebBrokerServerManager1.StopServer
end;

end.
