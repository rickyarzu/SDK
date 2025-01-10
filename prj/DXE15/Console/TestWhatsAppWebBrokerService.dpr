program TestWhatsAppWebBrokerService;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  // WebBroker
  Janua.WebBroker.Server,
  Janua.Application.Framework;

var
  FWebModuleClass: TComponentClass;
  FWebServer: TJanuaWebBrokerServer;
  FWebBrokerClass: TJanuaWebBrokerServerClass;

begin
  try
    TJanuaWebServerFactory.WebServerClass := FWebBrokerClass;
    FWebServer := TJanuaWebServerFactory.CreateWebServer(8081) as TJanuaWebBrokerServer;
    WriteLn('Created server with default port: ' +  FWebServer.Port.ToString);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
