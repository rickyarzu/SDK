program CarServiceCustConfService;

uses
  SvcMgr,
  Janua.Application.Framework,
  Janua.UniGUI.Interposers,
  Janua.UniGUI.MainModule
    in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule} ,
  Janua.UniGUI.ServerModule
    in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule} ,
  Janua.CarService.UniGUI.frameTimeSlot
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeSlot.pas' {frameTimeSelect: TUniFrame} ,
  Janua.CarService.UniGUIApplication in '..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.UniGUI.mainFormCustConfirmation
    in '..\..\..\src\UniGUI\CarService\Janua.UniGUI.mainFormCustConfirmation.pas' {MainCustConfForm: TUniForm} ,
  Janua.CarService.PgCustomers
    in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgCustomers.pas' {dmPgCarServiceCustomers: TDataModule} ,
  Janua.UniGUI.TextConfirmation
    in '..\..\..\src\UniGUI\Common\Janua.UniGUI.TextConfirmation.pas' {frameUniGUITextConfirmation: TUniFrame} ,
  Janua.UniGUI.ServiceModule
    in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServiceModule.pas' {UniServiceModule: TUniGUIService};

{$R *.res}

begin
  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;

  TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection

  TJanuaCarServiceUniGUIApplication.ApplicationSetup('customerconf.pikapp.it');
  TJanuacoreOS.ReadParam('UniGUI', 'Port', 8084);
  Application.CreateForm(TUniServiceModule, UniServiceModule);
  UniServiceModule.Name := 'UniPikappUserConfService';
  UniServiceModule.DisplayName := 'Unigui Pikapp User Confirmation';
  Application.Run;
end.
