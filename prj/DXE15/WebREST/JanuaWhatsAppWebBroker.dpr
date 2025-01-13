program JanuaWhatsAppWebBroker;
{$APPTYPE GUI}

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  Web.WebReq,
  Janua.Core.Types,
  IdHTTPWebBrokerBridge,
  Janua.Application.Framework,
  Janua.WhatsApp.WebBroker.UniDACApplication in '..\..\..\src\januacore\Datasnap\Janua.WhatsApp.WebBroker.UniDACApplication.pas',
  Janua.VCL.Http.frmWebBrokerServer in '..\..\..\src\VCL\Http\Janua.VCL.Http.frmWebBrokerServer.pas' {frmVCLWebBrokerServer},
  Janua.WhatsApp.WebbrokerModule in '..\..\..\src\januacore\dmvc\Janua.WhatsApp.WebbrokerModule.pas' {JanuaWhatSappWebBrokerModule: TWebModule},
  Janua.VCL.frameWebServerManager in '..\..\..\src\VCL\Http\Janua.VCL.frameWebServerManager.pas' {JanuaframeWebServerManager: TFrame},
  Janua.WebBroker.UniDACApplication in '..\..\..\src\januacore\Datasnap\Janua.WebBroker.UniDACApplication.pas',
  Janua.VCL.Cloud.frmWhatsAppWebForm in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frmWhatsAppWebForm.pas' {frmVCLWebBrokerWhatsApp};

{$R *.res}

begin
  Application.Initialize;
  // Application Type MUST be declared as WinService at first because it is a Win Service and
  // also because this will Force the App Service to user the standard Win Service 'home' folder.
  TJanuaApplication.ApplicationType := TJanuaApplicationType.jatWinService;
  TJanuaWhatsAppWebBrokerUniDACApplication.ApplicationSetup('whatsapp.januservers.com');
  Application.CreateForm(TfrmVCLWebBrokerWhatsApp, frmVCLWebBrokerWhatsApp);
  Application.Run;

end.
