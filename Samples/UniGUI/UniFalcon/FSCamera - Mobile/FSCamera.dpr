{$define UNIGUI_VCL} // Diretiva Gera EXE
//{$define UNIGUI_DLL} // Diretiva Gera DLL

  {$IFDEF UNIGUI_VCL}
    program {$E exe}
  {$ENDIF}
  {$IFDEF UNIGUI_DLL}
    library {$E dll}
  {$ENDIF}

  FSCamera;

uses
  {$IFDEF UNIGUI_VCL}
  Forms,
  {$ENDIF }
  {$IFDEF UNIGUI_DLL}
  uniGUIISAPI,
  {$ENDIF }
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  uFrmCapture in 'frm\uFrmCapture.pas' {frmCapture: TUnimForm};

{$R *.res}

{$IFDEF UNIGUI_DLL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$ENDIF}

begin
  {$IFDEF UNIGUI_VCL}
    ReportMemoryLeaksOnShutdown := True;
    Application.Initialize;
    TUniServerModule.Create(Application);
    Application.Title := 'Camera - Falcon Sistemas';
    Application.Run;
  {$ENDIF}
end.
