program JanuaRestDMVCTestIDEXE15;

uses
  Vcl.Forms,
  Janua.TMS.Error,
  Janua.Application.Framework,
  Janua.Uni.Framework,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Janua.Vcl.MVVM.Framework,
  ufrmJanuaAllDemosContainer in '..\..\..\Samples\Janua\VCL\ufrmJanuaAllDemosContainer.pas' {frmAllDemosContainer},
  uJanuaRestDMVCApplication in 'uJanuaRestDMVCApplication.pas',
  Janua.DMVC.Test.CoreWebModule in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.CoreWebModule.pas' {JanuaDMVCTestWebModule: TWebModule},
  Janua.Test.DMVC.www in '..\..\..\src\januacore\dmvc\Test\Janua.Test.DMVC.www.pas';

{$R *.res}

var
  errorManager: TJanuaTmsExceptionHandler;

begin
  TJanuaApplication.AppName := ('desktop.januaproject.it');
  Application.Initialize;
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  // **** Here goes the custom configuration for the Application **********************
  TJanuaRestDMVCApplication.ApplicationSetup('desktop.januaproject.it');
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAllDemosContainer, frmAllDemosContainer);
  Application.Run;
end.
