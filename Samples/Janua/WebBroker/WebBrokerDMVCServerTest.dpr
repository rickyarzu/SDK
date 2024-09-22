program WebBrokerDMVCServerTest;

uses
  Vcl.Forms,
  Janua.Http.WebServer,
  Janua.Application.Framework,
  Janua.WebBroker.UniDACApplication,
  ufrmVCLWebBrokerDMVCTest in 'ufrmVCLWebBrokerDMVCTest.pas' {frmVCLWebBrokerDMVCTest},
  Janua.VCL.frameWebServerManager in '..\..\..\src\VCL\Http\Janua.VCL.frameWebServerManager.pas' {JanuaframeWebServerManager: TFrame},
  Janua.Test.WebBroker.WebModule in '..\..\..\src\januacore\Test\Janua.Test.WebBroker.WebModule.pas' {TestWebModule: TWebModule},
  Janua.DMVC.UniDacApplication in '..\..\..\src\januacore\dmvc\Janua.DMVC.UniDacApplication.pas',
  uBindingEngine in '..\..\Angelo\uBindingEngine.pas',
  Janua.DMVC.WebBroker.Server in '..\..\..\src\januacore\dmvc\Janua.DMVC.WebBroker.Server.pas',
  Janua.DMVC.Controller.Template in '..\..\..\src\januacore\dmvc\Janua.DMVC.Controller.Template.pas',
  Janua.DMVC.WebBroker.WebModule in '..\..\..\src\januacore\dmvc\Janua.DMVC.WebBroker.WebModule.pas' {JanuaDMVCCustomWebModule: TWebModule},
  Janua.DMVC.Test.CoreWebModule in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.CoreWebModule.pas' {JanuaDMVCTestWebModule: TWebModule},
  Janua.System.DMVC.AuthCriteria in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.AuthCriteria.pas',
  Janua.DMVC.Test.PrivateController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PrivateController.pas',
  Janua.DMVC.Test.PublicController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PublicController.pas',
  Janua.CarService.Driver.DMVCController in '..\..\..\src\januacore\dmvc\Janua.CarService.Driver.DMVCController.pas',
  Janua.Test.DMVC.www in '..\..\..\src\januacore\dmvc\Test\Janua.Test.DMVC.www.pas',
  Janua.WebBroker.Server in '..\..\..\src\januacore\Datasnap\Janua.WebBroker.Server.pas',
  uBindVCLInterposers in '..\..\Angelo\uBindVCLInterposers.pas',
  uBindingEngineRTL in '..\..\Angelo\uBindingEngineRTL.pas',
  uVCLBindingInterposers in '..\..\Angelo\uVCLBindingInterposers.pas',
  Janua.System.Session.DMVCController in '..\..\..\src\januacore\dmvc\Janua.System.Session.DMVCController.pas';

{$R *.res}

begin
  (*
    Januaproject Installer (maybe Multihreaded is not so useful but here it is)
    Test Mode is false (service Runs not in Test mode)
    Every Service is linked to its port based on the Catalogue
  *)
  IsMultiThread := True;
  // Januaproject Settings
  TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection
  TJanuaApplication.RestServerConf.Port := 9010; // port of the service listener can be overwrittn by file conf

  // le applicazioni locali Home is (usually januaproject\home\<app name> on Windows):
  TJanuaWebBrokerUniDACApplication.ApplicationSetup('test.januadmvc.com');

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLWebBrokerDMVCTest, frmVCLWebBrokerDMVCTest);
  Application.Run;
end.
