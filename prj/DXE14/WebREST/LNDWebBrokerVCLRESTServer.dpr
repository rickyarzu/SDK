program LNDWebBrokerVCLRESTServer;
{$APPTYPE GUI}


uses
  System.Classes,
  Janua.Core.Classes,
  Janua.Core.Types,
  Janua.Cloud.Files.Intf,
  Janua.Postgres.Cloud,
  Janua.Cloud.Files.Cache,
  Janua.Cloud.Images.Cache,
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  LndVCLForm in '..\..\..\..\Projects\WebBroker\prj\LND\LndVCLForm.pas' {Form1},
  uDMLndSession in '..\..\..\..\Projects\WebBroker\prj\LND\uDMLndSession.pas' {dmLndSession: TDataModule},
  LNDWebModule in '..\..\..\..\Projects\WebBroker\prj\LND\LNDWebModule.pas' {WebModule1: TWebModule};

{$R *.res}

var
  FServerConf: TJanuaServerRecordConf;
  FStorage: IJanuaCloudFileStorage;
  FImageStorage: IJanuaCloudFileStorage;

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  //Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;

end.
