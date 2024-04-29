program CarServiceWebBrokerCustConfVCL;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  Janua.Application.Framework,
  IdHTTPWebBrokerBridge,
  Janua.CarService.dlgWebBrokerCustConfirmation in '..\..\..\src\VCL\CarService\Janua.CarService.dlgWebBrokerCustConfirmation.pas' {Form1},
  Janua.CarService.WebModuleCustomerConfirmation in '..\..\..\src\januacore\Datasnap\Janua.CarService.WebModuleCustomerConfirmation.pas' {WebModule1: TWebModule},
  Janua.WebBroker.UniDACApplication in '..\..\..\src\januacore\Datasnap\Janua.WebBroker.UniDACApplication.pas',
  Janua.Carservice.WebBroker.UniDACApplication in '..\..\..\src\januacore\Datasnap\Janua.Carservice.WebBroker.UniDACApplication.pas';

{$R *.res}

begin
  TJanuaCarserviceWebBrokerUniDACApplication.ApplicationSetup('customerconf.pikapp.it');
  TJanuacoreOS.WriteParam('UniGUI', 'Port', 8084);

  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
