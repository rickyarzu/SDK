program JanuaMainDemoVCL;

uses
  Vcl.Forms,
  Janua.TMS.Error,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Janua.Vcl.MVVM.Framework,
  ufrmMainDemo in '..\src\ufrmMainDemo.pas' {frmMainDemo} ,
  Vcl.Themes,
  Vcl.Styles,
  ufrmMDIRibbonToolbar in '..\..\..\..\src\TMS\ufrmMDIRibbonToolbar.pas' {frmMDIRibbonToolbar} ,
  Janua.Demos.VCLApplication in '..\src\Janua.Demos.VCLApplication.pas',
  Janua.Demos.VCLLogin in '..\src\Janua.Demos.VCLLogin.pas' {dlgJanuaDemosVCLLogin} ,
  ufrmGridsTestings in '..\..\GridsTesting\ufrmGridsTestings.pas' {frmVCLTestGrids};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Janua Demo Project';
  TStyleManager.TrySetStyle('Win10IDE_Light');
  // Inizializzazione TAilor Made Logistic Application
  TJanuaDemosVCLApplication.ApplicationSetup;

  if TJanuaApplication.UserSessionVM.LoginWithDialog then
  begin
    // Viene impostato l'albero delle finestre ed il menu principale (dopo la Login)
    TJanuaDemosVCLApplication.LoadMenu;
    Application.CreateForm(TfrmMainDemo, frmMainDemo);
    Application.Run;
  end
  else
    Application.Terminate;

end.
