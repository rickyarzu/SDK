{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module'

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  FormWithParent3;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  Unit1 in 'Unit1.pas' {UniForm1: TUniForm},
  Unit2 in 'Unit2.pas' {UniForm2: TUniForm},
  Unit3 in 'Unit3.pas' {UniForm3: TUniForm},
  Unit4 in 'Unit4.pas' {UniForm4: TUniForm},
  Unit5 in 'Unit5.pas' {UniForm5: TUniForm};

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
