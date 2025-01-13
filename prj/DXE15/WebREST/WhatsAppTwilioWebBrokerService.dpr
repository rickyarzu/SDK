program WhatsAppTwilioWebBrokerService;

uses
  Vcl.SvcMgr,
  Janua.Core.Types,
  Janua.Application.Framework,
  Janua.WebBroker.UniDACApplication in '..\..\..\src\januacore\Datasnap\Janua.WebBroker.UniDACApplication.pas',
  Janua.WhatsApp.WebBroker.UniDACApplication in '..\..\..\src\januacore\Datasnap\Janua.WhatsApp.WebBroker.UniDACApplication.pas',
  Janua.WhatsApp.TwilioWebBrokerService in '..\..\..\src\januacore\Datasnap\Janua.WhatsApp.TwilioWebBrokerService.pas' {JanuaWhatsAppTwilioWebBrokerService: TService},
  Janua.WhatsApp.WebbrokerModule in '..\..\..\src\januacore\dmvc\Janua.WhatsApp.WebbrokerModule.pas' {JanuaWhatSappWebBrokerModule: TWebModule},
  Janua.Twilio.dmPgWhatsApp in '..\..\..\src\januaunidac\datamodules\Janua.Twilio.dmPgWhatsApp.pas' {dmPgTwilioWhatsApp: TDataModule},
  udmPgStorage in '..\..\..\src\januaunidac\datamodules\udmPgStorage.pas',
  Janua.Core.DataModule in '..\..\..\src\januacore\datamodule\Janua.Core.DataModule.pas' {JanuaCoreDataModule: TDataModule};

{$R *.RES}

begin
  // Windows 2003 Server requires StartServiceCtrlDispatcher to be
  // called before CoRegisterClassObject, which can be called indirectly
  // by Application.Initialize. TServiceApplication.DelayInitialize allows
  // Application.Initialize to be called from TService.Main (after
  // StartServiceCtrlDispatcher has been called).
  //
  // Delayed initialization of the Application object may affect
  // events which then occur prior to initialization, such as
  // TService.OnCreate. It is only recommended if the ServiceApplication
  // registers a class object with OLE and is intended for use with
  // Windows 2003 Server.
  //
  // Application.DelayInitialize := True;
  //
  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;

  // Application Type MUST be declared as WinService at first because it is a Win Service and
  // also because this will Force the App Service to user the standard Win Service 'home' folder.
  TJanuaApplication.ApplicationType := TJanuaApplicationType.jatWinService;
  TJanuaWhatsAppWebBrokerUniDACApplication.ApplicationSetup('whatsapp.januservers.com');

  Application.CreateForm(TJanuaWhatsAppTwilioWebBrokerService, JanuaWhatsAppTwilioWebBrokerService);
  Application.Run;
end.
