{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  JanuaUniFalconFontAwesome5;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in '..\UniGUI\UniFalcon\FontAwesome5\ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in '..\UniGUI\UniFalcon\FontAwesome5\MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in '..\UniGUI\UniFalcon\FontAwesome5\Main.pas' {MainForm: TUniForm};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
