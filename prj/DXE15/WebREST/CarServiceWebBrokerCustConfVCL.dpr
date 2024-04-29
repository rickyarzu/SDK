program CarServiceWebBrokerCustConfVCL;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Janua.CarService.dlgWebBrokerCustConfirmation in '..\..\..\src\VCL\CarService\Janua.CarService.dlgWebBrokerCustConfirmation.pas' {Form1},
  Janua.CarService.WebModuleCustomerConfirmation in '..\..\..\src\januacore\Datasnap\Janua.CarService.WebModuleCustomerConfirmation.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
