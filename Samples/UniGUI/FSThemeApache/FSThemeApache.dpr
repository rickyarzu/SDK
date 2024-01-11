library FSThemeApache;

uses
  {$IFDEF MSWINDOWS}
  Winapi.ActiveX,
  System.Win.ComObj,
  {$ENDIF }
  Web.WebBroker,
  Web.ApacheApp,
  Web.HTTPD24Impl,
  uniGUIApache,
  Main in '..\..\..\..\Libraries\UniFalcon\Demos\FSTheme\Main.pas' {MainForm: TUniForm},
  MainModule in '..\..\..\..\Libraries\UniFalcon\Demos\FSTheme\MainModule.pas' {UniMainModule: TUniGUIMainModule},
  ServerModule in '..\..\..\..\Libraries\UniFalcon\Demos\FSTheme\ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  uFrmCommon in '..\..\..\..\Libraries\UniFalcon\Demos\FSTheme\uFrmCommon.pas' {frmCommon: TUniForm},
  uFrmLogin in '..\..\..\..\Libraries\UniFalcon\Demos\FSTheme\uFrmLogin.pas' {UniLoginForm1: TUniLoginForm},
  uFrmOther in '..\..\..\..\Libraries\UniFalcon\Demos\FSTheme\uFrmOther.pas' {frmOther: TUniForm};

{$R *.res}

// httpd.conf entries:
//
(*
 LoadModule fsthemeapache_module/FSThemeApache.dll

 <Location /xyz>
    SetHandler FSThemeApache-handler
 </Location>
*)
//
// These entries assume that the output directory for this project is the apache/modules directory.
//
// httpd.conf entries should be different if the project is changed in these ways:
//   1. The TApacheModuleData variable name is changed.
//   2. The project is renamed.
//   3. The output directory is not the apache/modules directory.
//   4. The dynamic library extension depends on a platform. Use .dll on Windows and .so on Linux.
//

// Declare exported variable so that Apache can access this module.
var
  GModuleData: TApacheModuleData;
exports
  GModuleData name 'fsthemeapache_module';

begin
{$IFDEF MSWINDOWS}
  CoInitFlags := COINIT_MULTITHREADED;
{$ENDIF}
  Web.ApacheApp.InitApplication(@GModuleData);
  Application.Initialize;
  Application.WebModuleClass := WebModuleClass;
  Application.Run;

end.
