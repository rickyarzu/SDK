{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  FSConfirm;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in '..\..\..\Libraries\UniFalcon\Demos\FSConfirm\ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in '..\..\..\Libraries\UniFalcon\Demos\FSConfirm\MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in '..\..\..\Libraries\UniFalcon\Demos\FSConfirm\Main.pas' {MainForm: TUniForm},
  uFrmConfirm in '..\..\..\Libraries\UniFalcon\Demos\FSConfirm\frm\uFrmConfirm.pas' {frmConfirm: TUniFrame},
  uConfirmExternal in '..\..\..\Libraries\UniFalcon\Demos\FSConfirm\uConfirmExternal.pas';

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
