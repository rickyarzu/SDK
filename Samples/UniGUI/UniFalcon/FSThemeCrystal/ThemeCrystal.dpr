//{$define UNIGUI_VCL} // Diretiva Gera EXE
{$define UNIGUI_DLL} // Diretiva Gera DLL

{$IFDEF UNIGUI_VCL}
  program {$E exe}
{$ENDIF}
{$IFDEF UNIGUI_DLL}
  library {$E dll}
{$ENDIF}

  ThemeCrystal;

uses
  {$IFDEF UNIGUI_VCL}
  Forms,
  {$ENDIF }
  {$IFDEF UNIGUI_DLL}
  uniGUIISAPI,
  {$ENDIF }
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  uDmAcessos in 'dm\uDmAcessos.pas' {dmAcessos: TDataModule},
  uDmImagens in 'dm\uDmImagens.pas' {dmImagens: TDataModule},
  FS.Abas in 'classes\FS.Abas.pas',
  uDmToast in 'dm\uDmToast.pas' {dmToast: TDataModule},
  uFrmFinCapPainelPagamento in 'frm\uFrmFinCapPainelPagamento.pas' {frmFinCapPainelPagamento: TUniFrame},
  uFrmFinCrePainelRecebimento in 'frm\uFrmFinCrePainelRecebimento.pas' {frmFinCrePainelRecebimento: TUniFrame},
  uFrmCapLancamento in 'frm\uFrmCapLancamento.pas' {frmCapLancamento: TUniForm},
  uFrmDashboard in 'frm\uFrmDashboard.pas' {frmDashboard: TUniFrame},
  FS.Exception in 'classes\FS.Exception.pas',
  FS.Cookies in 'classes\FS.Cookies.pas',
  FS.SistemaLogado in 'classes\FS.SistemaLogado.pas',
  uFrmModFinanceiro in 'frm\uFrmModFinanceiro.pas' {frmModFinanceiro: TUniFrame},
  uFrmLoginNew in 'uFrmLoginNew.pas' {frmLoginNew: TUniFrame};

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
    Application.Title := 'Theme Crystal - Falcon Sistemas';
    Application.Run;
  {$ENDIF}

end.
