program TestVCLLibraries;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  ufrmTestProcedures in 'src\ufrmTestProcedures.pas' {frmMDIUnitTestingForm},
  ufrmTestErgoWebBroker in 'src\ufrmTestErgoWebBroker.pas' {Form2},
  ufrmJanuaCoreFunctions in 'src\ufrmJanuaCoreFunctions.pas' {frmJanuaCoreFunctions},
  udlgServerSettings in '..\..\Playground\Prototipi\MailSender\udlgServerSettings.pas' {dlgServerSettings},
  ufrmTestMailSenderMain in '..\..\Playground\Prototipi\MailSender\ufrmTestMailSenderMain.pas' {frmTestMailSenderMain},
  ufrmTestJanuaCoreFTP in 'src\ufrmTestJanuaCoreFTP.pas' {frmTestJanuaCoreFTP},
  udmJanuaCoreTesting in 'src\udmJanuaCoreTesting.pas' {dmJanuaCoreTesting: TDataModule},
  udmJanuaCoreTestingController in 'src\udmJanuaCoreTestingController.pas' {dmJanuaCoreTestingController: TDataModule},
  ufrmTestJanuaCoreClasses in 'src\ufrmTestJanuaCoreClasses.pas' {frmTestJanuaCoreClasses},
  ufrmTestFootball in 'src\ufrmTestFootball.pas' {frmTestFootball},
  Janua.Web.ServerContainer in '..\src\januawebrest\Janua.Web.ServerContainer.pas' {ServerContainer1: TDataModule},
  Janua.Web.ServerMethods in '..\src\januawebrest\Janua.Web.ServerMethods.pas' {ServerMethods1: TDSServerModule},
  Janua.Web.WebModule in '..\src\januawebrest\Janua.Web.WebModule.pas' {WebModule1: TWebModule},
  ufrmTestFootballWebBroker in 'src\ufrmTestFootballWebBroker.pas' {frmTestFootballWebBroker},
  udmTestHealthBooking in 'src\udmTestHealthBooking.pas' {dmTestHealthBooking: TDataModule},
  ufrmTestHealthBooking in 'src\ufrmTestHealthBooking.pas' {Form5},
  ufrmTestMetronics in 'src\ufrmTestMetronics.pas' {frmTestMetronics},
  ufrmTestVCLMaps in 'src\ufrmTestVCLMaps.pas' {frmTestVCLMaps},
  ufrmTestStatistics in 'src\ufrmTestStatistics.pas' {frmTestStatistics},
  udmVCLDBNavigator in '..\..\src\VCL\Commons\udmVCLDBNavigator.pas' {dmVCLDBNavigator: TDataModule},
  uframeVCLDBNavigator in '..\..\src\VCL\Commons\uframeVCLDBNavigator.pas' {framVCLDBNavigator: TFrame},
  uframeVCLDBNavigatorSmall in '..\..\src\VCL\Commons\uframeVCLDBNavigatorSmall.pas' {frameVCLDBNavigatorSmall: TFrame},
  uframeVCLStatisticQuery in '..\..\src\VCL\Analytics\uframeVCLStatisticQuery.pas' {frameVCLStatisticQuery: TFrame},
  ufrmMDCStatisticsQueries in '..\..\src\VCL\Analytics\ufrmMDCStatisticsQueries.pas' {frmMDCStatisticsQueries},
  ufrmMDCTestStatisticsQuery in 'src\ufrmMDCTestStatisticsQuery.pas' {frmMDCTestStatisticsQueries},
  ufrmTestStatisticsPostgres in 'src\ufrmTestStatisticsPostgres.pas' {frmTestStatisticsServer},
  udmTestPgFrameworks in 'src\udmTestPgFrameworks.pas' {dmTestPgFrameworks: TDataModule},
  ufrmMDCTestPostgresFrameworks in 'src\ufrmMDCTestPostgresFrameworks.pas' {frmMDCTestPostgresFrameworks},
  ufrmVCLMDILogger in '..\..\src\VCL\Commons\ufrmVCLMDILogger.pas' {frmVCLMDILogger};

{$R *.res}

var
  dmJanuaCoreTestingController: TdmJanuaCoreTestingController;

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  dmJanuaCoreTestingController := TdmJanuaCoreTestingController.Create(Application);
  // Sposto l'attivazione del sistema ad un controllo posizionato sul frm Testing Principale non qui quindi ...........
  // dmJanuaCoreTestingController.Activate;
  Application.CreateForm(TdmVCLDBNavigator, dmVCLDBNavigator);
  Application.CreateForm(TfrmMDIUnitTestingForm, frmMDIUnitTestingForm);
  //Application.CreateForm(TdmTestPgFrameworks, dmTestPgFrameworks);
  frmMDIUnitTestingForm.dmJanuaCoreTestingController :=  dmJanuaCoreTestingController;
  Application.Run;
end.
