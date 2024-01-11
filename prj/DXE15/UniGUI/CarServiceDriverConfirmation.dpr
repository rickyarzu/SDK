program CarServiceDriverConfirmation;

uses
  Forms,
  Janua.Application.Framework,
  Janua.UniGUI.Interposers,
  Janua.Carservice.UniGUIApplication in '..\..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.UniGUI.DriverConfirmationMainForm in '..\..\..\src\UniGUI\CarService\Janua.UniGUI.DriverConfirmationMainForm.pas' {MainForm: TUniForm},
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.Carservice.dmPgDrivers in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.dmPgDrivers.pas' {dmPgCarServiceBookingDrivers: TDataModule},
  Janua.CarService.UniGUI.frameTimeCalendarSelect in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeCalendarSelect.pas' {frameTimeCalendarSelect: TUniFrame},
  Janua.CarService.UniGUI.frameCalendarList in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCalendarList.pas' {frameCSUniGuiCalendarList: TUniFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  // Important: Application Setup must be set BEFORE the Creation of Server Module
  TJanuaCarServiceUniGUIApplication.ApplicationSetup('driverconf.carservice.com');
  TJanuacoreOS.WriteParam('UniGUI', 'Port', 8085);
  TUniServerModule.Create(Application);
  Application.Run;

end.
