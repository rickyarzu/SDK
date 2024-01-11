library getMailModule;

uses
  System.Threading,
  Winapi.ActiveX,
  System.Win.ComObj,
  Web.WebBroker,
  Web.ApacheApp,
  Web.HTTPD24Impl,
  MVCFramework.Logger,
  Winapi.Windows,
  System.Classes,
  UGetMailWebModule in 'UGetMailWebModule.pas' {WebModuleGetMail: TWebModule},
  UGetMailController in 'UGetMailController.pas',
  UGetMail in 'UGetMail.pas';

{$R *.res}
// httpd.conf entries:
//
(*
  LoadModule dmvc_module modules/mod_dmvc.dll

  <Location /xyz>
  SetHandler mod_dmvc-handler
  </Location>
*)
//
// These entries assume that the output directory for this project is the apache/modules directory.
//
// httpd.conf entries should be different if the project is changed in these ways:
// 1. The TApacheModuleData variable name is changed
// 2. The project is renamed.
// 3. The output directory is not the apache/modules directory
//

// Declare exported variable so that Apache can access this module.
var
  GModuleData: TApacheModuleData;

exports
  GModuleData name 'getMailModule';

{
  Navigate to http://localhost/winecellar/
}

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Web.ApacheApp.InitApplication(@GModuleData);
  Application.Initialize;
  Application.WebModuleClass := WebModuleClass;
  Application.Run;

end.
