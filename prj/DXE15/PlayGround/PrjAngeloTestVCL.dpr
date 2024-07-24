program PrjAngeloTestVCL;

uses
  System.SysUtils,
  Vcl.Forms,
  Vcl.Graphics,
  Janua.TMS.Error,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Janua.Vcl.MVVM.Framework,
  Vcl.Themes,
  Vcl.Styles,
  ufrmMDIRibbonToolbar in '..\..\..\src\TMS\ufrmMDIRibbonToolbar.pas' {frmMDIRibbonToolbar},
  udmVCLMainApplication in '..\..\..\src\VCL\Commons\udmVCLMainApplication.pas' {dmVCLMainApplication: TDataModule},
  udmTmsMainApplication in '..\..\..\src\TMS\udmTmsMainApplication.pas' {dmTmsMainApplication: TDataModule},
  uJanuaVCLForm in '..\..\..\src\VCL\Forms\uJanuaVCLForm.pas' {JanuaVCLFormModel},
  uJanuaVCLFrame in '..\..\..\src\VCL\Forms\uJanuaVCLFrame.pas' {JanuaVCLFrameModel: TFrame},
  uJanuaVCLMainForm in '..\..\..\src\VCL\Commons\uJanuaVCLMainForm.pas' {JanuaVCLMainForm},
  UFormMainVCLAngelo in '..\..\..\Samples\Angelo\UFormMainVCLAngelo.pas' {frmMainAngeloTestVCL},
  UAngeloTestVCLConf in 'UAngeloTestVCLConf.pas',
  uFormHelloWorld in '..\..\..\Samples\Angelo\uFormHelloWorld.pas' {frmHelloWorld},
  Janua.VCL.dlgCustomLogin in '..\..\..\src\VCL\Commons\Janua.VCL.dlgCustomLogin.pas' {dlgVCLCustomLogin},
  udlgVCLAngeloLogin in '..\..\..\Samples\Angelo\udlgVCLAngeloLogin.pas' {dlgVCLAngeloLogin};

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;

begin
  TJanuaApplication.AppName := ('vcldesktop.angelotest.it');
  Application.Initialize;
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  // Inizializzazione Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TAngelotestVCLApplication.ApplicationSetup('vcldesktop.angelotest.it');
  TJanuaApplication.Title := 'Angelo test VCL';
  Application.Title := TJanuaApplication.Title;
  Application.MainFormOnTaskbar := True;
{$IFDEF DEBUG}
  System.ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 Polar Light');
  // ****** Codice di Login *********************************************************
  if TJanuaApplication.UserSessionVM.LoginWithDialog then
  begin
    TAngelotestVCLApplication.LoadMenu;
    Application.CreateForm(TfrmMainAngeloTestVCL, frmMainAngeloTestVCL);
    Application.Run;
  end
  else
    Application.Terminate;

end.
