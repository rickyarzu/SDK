program CarServiceUsersService;

uses
  SvcMgr,
  Janua.Application.Framework,
  Janua.TMS.SMS,
  Janua.Carservice.UsersServiceModule
    in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UsersServiceModule.pas' {UniGuiCarServiceUsersServiceModule: TUniGUIService} ,
  Janua.UniGUI.ServerModule
    in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule} ,
  Janua.UniGUI.MainModule
    in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule} ,
  Janua.Carservice.UniGUI.LoginRegisterForm
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.LoginRegisterForm.pas' {frmCarServiceUniGUILoginRegister: TUniLoginForm} ,
  Janua.UniGUI.UniDacApplication in '..\..\..\src\UniGUI\Common\Janua.UniGUI.UniDacApplication.pas',
  Janua.Carservice.UniGUI.frameCarBooking
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCarBooking.pas' {frameCarServiceUniGUIBooking: TUniFrame} ,
  Janua.Carservice.UniGUI.dlgBookingWizard
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.dlgBookingWizard.pas' {dlgUniGUIBookingWizard: TUniForm} ,
  Janua.Carservice.UniGUI.frameCarBookingClient
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCarBookingClient.pas' {frameUniGuiCarBookingClient: TUniFrame} ,
  Janua.Carservice.UniGUI.frameCarBookingPickup
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCarBookingPickup.pas' {frameUNICalendarSelect: TUniFrame} ,
  Janua.Carservice.UniGUI.frameTimeSlot
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeSlot.pas' {frameTimeSelect: TUniFrame} ,
  Janua.Carservice.UniGUI.frameSlotSelection
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameSlotSelection.pas' {frameCarServiceSlotSelection: TUniFrame} ,
  Janua.Carservice.UniGUI.frameTimeSlotPickup
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeSlotPickup.pas' {frameUniGUITimeSlotPickup: TFrame} ,
  Janua.Carservice.UniGUI.frameCustomerSelection
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCustomerSelection.pas' {frameUniGUICarServiceCustomerSelection: TUniFrame} ,
  Janua.Carservice.UniGUI.frameBookingSummary
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameBookingSummary.pas' {frameUniGUIBookingSummary: TUniFrame} ,
  Janua.Carservice.PgBooking
    in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgBooking.pas' {dmPgCarServiceBookingStorage: TDataModule} ,
  Janua.Carservice.UniGUIApplication
    in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.Carservice.UniGUI.MainForm
    in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUI.MainForm.pas' {frmUNIMainForm: TUniForm};

{$R *.res}

begin

  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;
  TJanuaCarServiceUniGUIApplication.ApplicationSetup('app.carservice.com');
  Application.CreateForm(TUniGuiCarServiceUsersServiceModule, UniGuiCarServiceUsersServiceModule);
  Application.Run;

end.
