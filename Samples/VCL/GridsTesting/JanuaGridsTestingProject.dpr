program JanuaGridsTestingProject;

uses
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
  ufrmGridsTestings in 'ufrmGridsTestings.pas' {frmVCLTestGrids} ,
  udmVirtualAnagraph in '..\..\..\src\januacore\datamodule\udmVirtualAnagraph.pas' {dmVirtualAnagraph: TDataModule} ,
  ufrmMDIRibbonToolbar in '..\..\..\src\TMS\ufrmMDIRibbonToolbar.pas' {frmMDIRibbonToolbar} ,
  ufrmGridTestingsContainer in 'ufrmGridTestingsContainer.pas' {frmGridTestingContainer} ,
  uGridTestingApplication in 'uGridTestingApplication.pas';

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;

begin
  Application.Initialize;
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  // Inizializzazione Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  TJanuaGridsVCLApplication.ApplicationSetup;
  TJanuaApplication.Title := 'TM Logistic Main Application';
  Application.Title := 'TM Logistic Main Application';
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(TfrmVCLTestGrids, frmVCLTestGrids);
  Application.Run;

end.
