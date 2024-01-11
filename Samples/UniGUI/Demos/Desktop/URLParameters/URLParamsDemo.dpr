{$define UNIGUI_VCL} // Comment out this line to turn the project into ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  DBDemo;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniUserSession: TUniGUIUserSession},
  Main in 'Main.pas' {MainForm: TUniForm};


{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
