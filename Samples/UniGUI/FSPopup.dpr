{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  FSPopup;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in '..\..\..\Libraries\UniFalcon\Demos\FSPopup\ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in '..\..\..\Libraries\UniFalcon\Demos\FSPopup\MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in '..\..\..\Libraries\UniFalcon\Demos\FSPopup\Main.pas' {MainForm: TUniForm},
  uFrmPopup in '..\..\..\Libraries\UniFalcon\Demos\FSPopup\uFrmPopup.pas' {frmPopup: TUniFrame};

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
