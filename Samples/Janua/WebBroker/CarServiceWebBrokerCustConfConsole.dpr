program CarServiceWebBrokerCustConfConsole;
{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  System.StrUtils,
  System.Types,
  IPPeerServer,
  IPPeerAPI,
  IdHTTPWebBrokerBridge,
  Web.WebReq,
  Web.WebBroker,
  Janua.Application.Framework,
  Janua.WebBroker.ServerConst,
  Janua.Core.Types,
  Janua.Core.WebServer,
  Janua.WebBroker.UniDACApplication
    in '..\..\..\src\januacore\Datasnap\Janua.WebBroker.UniDACApplication.pas',
  Janua.Carservice.WebBroker.UniDACApplication
    in '..\..\..\src\januacore\Datasnap\Janua.Carservice.WebBroker.UniDACApplication.pas',
  Janua.Carservice.dlgWebBrokerCustConfirmation
    in '..\..\..\src\VCL\CarService\Janua.CarService.dlgWebBrokerCustConfirmation.pas' {Form1} ,
  Janua.Carservice.WebModuleCustomerConfirmation
    in '..\..\..\src\januacore\Datasnap\Janua.CarService.WebModuleCustomerConfirmation.pas' {WebModule1: TWebModule};

{$R *.res}

var
  Server: TJanuaWebServer;

procedure WriteCommands;
begin
  Writeln(sCommands);
  Write(cArrow);
end;


procedure RunServer(APort: Integer);
var
  LResponse: string;
begin
  WriteCommands;
  Server := TJanuaWebServerFactory.CreateWebServer;
  try
    Server.Port := APort;
    while True do
    begin
      Readln(LResponse);
      LResponse := LowerCase(LResponse);
      if LResponse.StartsWith(cCommandSetPort) then
        Server.Port := StrToInt(StringReplace(LResponse, cCommandSetPort, '', [rfIgnoreCase]).Trim)
      else if sametext(LResponse, cCommandStart) then
        Server.StartServer
      else if sametext(LResponse, cCommandStatus) then
        Server.WriteStatus
      else if sametext(LResponse, cCommandStop) then
        Server.StopServer
      else if sametext(LResponse, cCommandHelp) then
        WriteCommands
      else if sametext(LResponse, cCommandExit) then
        if Server.IsActive then
        begin
          Server.StopServer;
          break
        end
        else
          break
      else
      begin
        Writeln(sInvalidCommand);
        Write(cArrow);
      end;
    end;

  finally
    Server.Free;
  end;
end;

begin
  TJanuaApplication.ApplicationType := jatConsoleSrv;
  TJanuaCarserviceWebBrokerUniDACApplication.ApplicationSetup('customerconf.pikapp.it');
  var
  lPort := TJanuaWebServer.GetPort(8084);
  try
    if WebRequestHandler <> nil then
      WebRequestHandler.WebModuleClass := WebModuleClass;
    RunServer(lPort);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end

end.
