unit Janua.Core.WebServer;
...

TJanuaWebBrokerServer = class(TJanuaWebServer)
private
  FServer: TIdHTTPWebBrokerBridge;
...
end;

TJanuaWebServerClass = class of TJanuaWebServer;

class property WebModuleClass: TComponentClass read FWebModuleClass write FWebModuleClass;