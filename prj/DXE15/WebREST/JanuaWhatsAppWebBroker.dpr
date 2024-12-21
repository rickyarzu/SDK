program JanuaWhatsAppWebBroker;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Janua.VCL.Cloud.frmWhatsAppWebForm in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frmWhatsAppWebForm.pas' {Form1},
  Janua.WhatsApp.WebbrokerModule in '..\..\..\src\januacore\dmvc\Janua.WhatsApp.WebbrokerModule.pas' {WebModule1: TWebModule},
  Janua.Phoenix.VCL.LabBackgroundService in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.LabBackgroundService.pas' {srvPhoenixVCLLabBackgroundService: TService};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TsrvPhoenixVCLLabBackgroundService, srvPhoenixVCLLabBackgroundService);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
