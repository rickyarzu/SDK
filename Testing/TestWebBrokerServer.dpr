program TestWebBrokerServer;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  ufrmTestJanuaWebBroker in 'src\ufrmTestJanuaWebBroker.pas' {Form1},
  Janua.Web.ServerMethods in '..\src\januawebrest\Janua.Web.ServerMethods.pas' {ServerMethods1: TDSServerModule},
  Janua.Web.ServerContainer in '..\src\januawebrest\Janua.Web.ServerContainer.pas' {ServerContainer1: TDataModule},
  Janua.Web.WebModule in '..\src\januawebrest\Janua.Web.WebModule.pas' {WebModule1: TWebModule},
  uTestHtml in 'src\uTestHtml.pas',
  uTestMetro5 in 'src\uTestMetro5.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
