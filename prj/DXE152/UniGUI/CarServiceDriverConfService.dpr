program CarServiceDriverConfService;

uses
  SvcMgr,
  Janua.Application.Framework,
  Janua.UniGUI.Interposers,
  Janua.Carservice.UniGUIApplication in '..\..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.UniGUI.DriverConfirmationMainForm in '..\..\..\src\UniGUI\CarService\Janua.UniGUI.DriverConfirmationMainForm.pas' {MainForm: TUniForm},
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.Carservice.dmPgDrivers in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.dmPgDrivers.pas' {dmPgCarServiceBookingDrivers: TDataModule},
  Janua.CarService.UniGUI.frameTimeCalendarSelect in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeCalendarSelect.pas' {frameTimeCalendarSelect: TUniFrame},
  Janua.CarService.UniGUI.frameCalendarList in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCalendarList.pas' {frameCSUniGuiCalendarList: TUniFrame},
  Janua.UniGUI.ServiceModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServiceModule.pas' {UniServiceModule: TUniGUIService};

{$R *.res}

begin
  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;
  TJanuacoreOS.ReadParam('UniGUI', 'Port', 8085);
  TJanuaCarServiceUniGUIApplication.ApplicationSetup('driverconf.pikapp.it');
  Application.CreateForm(TUniServiceModule, UniServiceModule);
  UniServiceModule.Name := 'UniPikappDriverConfService';
  UniServiceModule.DisplayName := 'Unigui Pikapp Driver Confirmation';
  Application.Run;
end.
