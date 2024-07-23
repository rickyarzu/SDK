{$DEFINE WEB_UNIGUI} // Diretiva Interna

{$define UNIGUI_VCL} // Diretiva Gera EXE
//{$define UNIGUI_DLL} // Diretiva Gera DLL

{$IFDEF UNIGUI_VCL}
  program {$E exe}
{$ENDIF}
{$IFDEF UNIGUI_DLL}
  library {$E dll}
{$ENDIF}

  FSQrCodeScanner;

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
  ufrmResult in 'ufrmResult.pas' {frmResult: TUnimForm},
  ufrmSettings in 'ufrmSettings.pas' {frmSettings: TUnimForm},
  ufrmQrCode in 'ufrmQrCode.pas' {frmQrCode: TUnimForm};

{$R *.res}

{$IFDEF UNIGUI_DLL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$ENDIF}

begin
  {$IFDEF DEBUG}
    ReportMemoryLeaksOnShutdown  := True;
  {$ENDIF}

  {$IFDEF UNIGUI_VCL}
    Application.Initialize;
    TUniServerModule.Create(Application);
    Application.Title := 'FSQrCodeScanner - Falcon Sistemas';
    Application.Run;
  {$ENDIF}
end.
