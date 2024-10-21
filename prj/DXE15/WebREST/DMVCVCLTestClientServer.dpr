program DMVCVCLTestClientServer;
uses
  Vcl.Forms,
  Janua.Application.Framework,
  Janua.Uni.Application,
  Janua.Uni.Framework,
  Janua.Test.Framework,
  Janua.TMS.Error,
  Janua.Vcl.Framework,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Janua.Vcl.MVVM.Framework,
  Vcl.Themes,
  Vcl.Styles,
  Janua.Test.VCL.frmDMVCRestClientServer in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmDMVCRestClientServer.pas' {frmTestRestClientServer},
  Janua.DMVC.Test.PublicController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PublicController.pas',
  Janua.DMVC.Test.PrivateController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PrivateController.pas',
  Janua.Test.FDac.dmRemoteDMCustomers in '..\..\..\src\januacore\Test\Janua.Test.FDac.dmRemoteDMCustomers.pas' {dmTestFDacRemoteCustomers: TDataModule},
  Janua.Test.FireDac.dmExportImport in '..\..\..\src\januacore\Test\Janua.Test.FireDac.dmExportImport.pas' {dmTestFireDACImportExport: TDataModule},
  Janua.DMVC.Test.Firedac in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.Firedac.pas',
  Janua.Uni.Test.PgExportImport in '..\..\..\src\januaunidac\Test\Janua.Uni.Test.PgExportImport.pas' {dmPgTestExportImport: TDataModule},
  Janua.DMVC.Test.WebModule in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.WebModule.pas' {MyWebModule: TWebModule},
  Janua.Test.VCL.frmRESTAuthorization in '..\..\..\src\VCL\Test\Janua.Test.VCL.frmRESTAuthorization.pas' {frmVCLTestRESTAuthorization},
  uDMVCVCLTestClientServerConf in 'uDMVCVCLTestClientServerConf.pas',
  Janua.Test.DMVC.ClientTests in '..\..\..\src\januacore\Test\Janua.Test.DMVC.ClientTests.pas',
  Janua.REST.Client in '..\..\..\src\januacore\dmvc\Janua.REST.Client.pas',
  Janua.System.DMVC.AuthCriteria in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.AuthCriteria.pas',
  Janua.DMVC.Srv.Framework in '..\..\..\src\januacore\dmvc\Janua.DMVC.Srv.Framework.pas',
  Janua.DMVC.Controller.Template in '..\..\..\src\januacore\dmvc\Janua.DMVC.Controller.Template.pas',
  Janua.System.Session.DMVC.Controller in '..\..\..\src\januacore\dmvc\Janua.System.Session.DMVC.Controller.pas',
  Janua.UniDAC.Test.dmPgParams in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.dmPgParams.pas' {dmPgTestParams: TDataModule},
  Janua.Rest.Fdac.dmMemUrlSettings in '..\..\..\src\januacore\datamodule\Janua.Rest.Fdac.dmMemUrlSettings.pas' {dmRestUrlSettings: TDataModule},
  Janua.VCL.Rest.dlgConnections in '..\..\..\src\VCL\Cloud\Janua.VCL.Rest.dlgConnections.pas' {dlgVCLRestConnections},
  Janua.DMVC.Test.DMVCServer in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.DMVCServer.pas' {dmDMVCTestServer: TDataModule};

{$R *.res}
var
  errorManager: TJanuaTmsExceptionHandler;
begin
  TJanuaApplication.AppName := ('testrest.dmvcframework.com');
  errorManager := TJanuaTmsExceptionHandler.Create(Application);
  errorManager.Activate;
  // TStyleManager.TrySetStyle('Win10IDE_Light');
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TDMVCVCLTestClientServerApplication.ApplicationSetup('testrest.dmvcframework.com');
  TJanuaApplication.Title := 'DMVC Test Client Server';
  Application.Title := 'DMVC Test Client Server';
  Application.MainFormOnTaskbar := True;
{$IFDEF DEBUG}
  System.ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTestRestClientServer, frmTestRestClientServer);
  Application.Run;
  errorManager.Free;
end.
