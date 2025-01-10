program JanuaWhatsAppWebBroker;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Janua.VCL.Cloud.frmWhatsAppWebForm in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frmWhatsAppWebForm.pas' {frmVCLWebBrokerWhatsApp},
  Janua.WhatsApp.WebbrokerModule in '..\..\..\src\januacore\dmvc\Janua.WhatsApp.WebbrokerModule.pas' {JanuaWhatSappWebBrokerModule: TWebModule},
  Janua.VCL.frameWebServerManager in '..\..\..\src\VCL\Http\Janua.VCL.frameWebServerManager.pas' {JanuaframeWebServerManager: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmVCLWebBrokerWhatsApp, frmVCLWebBrokerWhatsApp);
  Application.Run;
end.
