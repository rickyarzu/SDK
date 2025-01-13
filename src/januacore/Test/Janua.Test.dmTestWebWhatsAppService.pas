unit Janua.Test.dmTestWebWhatsAppService;

interface

uses
  System.SysUtils, System.Classes, Janua.Test.dmTestWebBrokerService, Janua.Core.Commons, Janua.Core.Classes,
  Janua.WebBroker.ServerController;

type
  TdmTestWhatsAppWebBrokerService = class(TdmTestWebBrokerService)
    procedure JanuaWebBrokerServerManager1BeforeStartServer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTestWhatsAppWebBrokerService: TdmTestWhatsAppWebBrokerService;

implementation

uses Janua.WhatsApp.WebbrokerModule;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TdmTestWhatsAppWebBrokerService.JanuaWebBrokerServerManager1BeforeStartServer(Sender: TObject);
begin
  inherited;
  // nota JanuaWebBrokerServerClass è una Variabile di tipo TJanuaWebBrokerServerClass
  JanuaWebBrokerServerManager1.WebModuleClass := WhatsAppWebModuleClass;
end;

end.
