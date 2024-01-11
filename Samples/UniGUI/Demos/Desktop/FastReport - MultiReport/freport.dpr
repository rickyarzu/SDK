{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module'

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  freport;

uses
  uniGUIISAPI,
  Forms,
  Main in 'Main.pas' {MainForm: TUniForm},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Unit1 in 'Unit1.pas' {UniForm1: TUniForm},
  frDataModule in 'frDataModule.pas' {frDM: TDataModule};

{$R *.res}

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
