program CarServiceUsersUniGUI;

uses
  Forms,
  Spring,
  Janua.Application.Framework,
  Janua.TMS.SMS,
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.CarService.UniGUI.dlgLoginRegister in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.dlgLoginRegister.pas' {frmCarServiceUniGUILoginRegister: TUniLoginForm},
  Janua.UniGUI.UniDacApplication in '..\..\..\src\UniGUI\Common\Janua.UniGUI.UniDacApplication.pas',
  Janua.CarService.UniGUI.frameCarBooking in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCarBooking.pas' {frameCarServiceUniGUIBooking: TUniFrame},
  Janua.CarService.UniGUI.frameCarBookingClient in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCarBookingClient.pas' {frameUniGuiCarBookingClient: TUniFrame},
  Janua.CarService.UniGUI.frameCalendarSelect in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCalendarSelect.pas' {frameUNICalendarSelect: TUniFrame},
  Janua.CarService.UniGUI.frameTimeCalendarSelect in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeCalendarSelect.pas' {frameTimeCalendarSelect: TUniFrame},
  Janua.CarService.UniGUI.frameSlotSelection in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameSlotSelection.pas' {frameCarServiceSlotSelection: TUniFrame},
  Janua.CarService.UniGUI.frameTimeSlotPickup in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeSlotPickup.pas' {frameUniGUITimeSlotPickup: TFrame},
  Janua.CarService.UniGUI.frameCustomerSelection in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCustomerSelection.pas' {frameUniGUICarServiceCustomerSelection: TUniFrame},
  Janua.CarService.UniGUI.frameBookingSummary in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameBookingSummary.pas' {frameUniGUIBookingSummary: TUniFrame},
  Janua.Carservice.PgBooking in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgBooking.pas' {dmPgCarServiceBookingList: TDataModule},
  Janua.Carservice.UniGUIApplication in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.Carservice.UniGUI.UsersMainForm in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUI.UsersMainForm.pas' {frmUNIMainForm: TUniForm},
  Janua.CarService.UniGUI.frameUserMenu in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameUserMenu.pas' {frameCarServiceUniGUIUserMenu: TUniFrame},
  Janua.CarService.UniGUI.dlgTimetableCheck in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.dlgTimetableCheck.pas' {dlgUniGUICarserviceTimetableCheck: TUniForm},
  Janua.Anagraph.UniGUI.frameSimpleAnagraph in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameSimpleAnagraph.pas' {frameUniGUISimpleAnagraph: TUniFrame},
  Janua.Anagraph.UniGUI.dlgSimpleAnagraph in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.dlgSimpleAnagraph.pas' {dlgUniGUISimpleAnagraph: TUniForm},
  Janua.UniGUI.frameSettings in '..\..\..\src\UniGUI\Common\Janua.UniGUI.frameSettings.pas' {frameUniGUIAccountSettings: TUniFrame},
  Janua.UniGUI.frameSettingsPassword in '..\..\..\src\UniGUI\Common\Janua.UniGUI.frameSettingsPassword.pas' {frameUniGUISettingPassword: TUniFrame},
  Janua.Anagraph.UniGUI.frameAccountingInfo in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameAccountingInfo.pas' {frameUniGUIAnagAccountingInfo: TUniFrame},
  Janua.Carservice.BookingController in '..\..\..\src\UniGUI\CarService\Janua.Carservice.BookingController.pas' {n: TDataModule},
  Janua.CarService.UniGUI.frameTimeSlot in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeSlot.pas' {frameTimeSelect: TUniFrame},
  Janua.UniGUI.dlgHTMLMessage in '..\..\..\src\UniGUI\Common\Janua.UniGUI.dlgHTMLMessage.pas' {frmUniGUIHtmlMessage: TUniForm},
  Janua.UniGUI.dlgSearchGoogleAddress in '..\..\..\src\UniGUI\Common\Janua.UniGUI.dlgSearchGoogleAddress.pas' {dlgUniGUISearchGoogleAddress: TUniForm},
  Janua.UniGUI.dlgGoogleMap in '..\..\..\src\UniGUI\Common\Janua.UniGUI.dlgGoogleMap.pas' {dlgUniGUIGoogleMap: TUniForm},
  Janua.CarService.UniGUI.frameTimeTable in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeTable.pas' {frameCarServiceUniGUITimeTable: TUniFrame},
  Janua.CarService.UniGUI.frameAddressesSelect in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameAddressesSelect.pas' {frameUniGUICarServiceAddressSelect: TUniFrame},
  Janua.Anagraph.UniGUI.frameAddressList in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameAddressList.pas' {frameUniGUIAddressList: TUniFrame},
  Janua.Anagraph.UniGUI.frameAnagraphHorizontal in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameAnagraphHorizontal.pas' {frameUniGUIAnagraphHorizontal: TUniFrame},
  Janua.UniGUI.frameDBUser in '..\..\..\src\UniGUI\Common\Janua.UniGUI.frameDBUser.pas' {frameUniGUIDBUser: TUniFrame},
  Janua.CarService.UniGUI.CalendarSelectController in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.CalendarSelectController.pas',
  Janua.UniGUI.Controller in '..\..\..\src\UniGUI\Common\Janua.UniGUI.Controller.pas',
  Janua.CarService.UniGUI.dlgCustomerVehicles in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.dlgCustomerVehicles.pas' {dlgUniGUICarServiceCustomerVehicles: TUniForm},
  Janua.Carservice.dmPgService in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.dmPgService.pas' {dmPgCarServiceMain: TDataModule},
  Janua.UniGUI.AccountSettings in '..\..\..\src\UniGUI\CarService\Janua.UniGUI.AccountSettings.pas' {UniForm4: TUniForm},
  Janua.CarService.UniGUI.SlotSelectionController in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.SlotSelectionController.pas',
  Janua.Postgres.Anagraph in '..\..\..\src\januaunidac\Janua.Postgres.Anagraph.pas',
  Janua.Anagraph.Postgres.Storage in '..\..\..\src\januaunidac\datamodules\Janua.Anagraph.Postgres.Storage.pas' {dmJanuaPgAnagraphStorage: TDataModule},
  Janua.CarService.UniGUI.dlgBookingFrameWizard in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.dlgBookingFrameWizard.pas' {dlgUniGUIBookingFrameWizard: TUniForm};

{$R *.res}

begin
  TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection
  // le applicazioni locali UniGUI hanno come nome applicativo e come home directory:
  TJanuaCarServiceUniGUIApplication.ApplicationSetup('app.carservice.com');
  // Parametro per la porta di Ascolto del server di UniGUI
  TJanuacoreOS.WriteParam('UniGUI', 'Port', 8081);
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  // Verifico quale sia la location del Config File per aggiustarlo eventualmente
  var
  sConfFile := TJanuacoreOS.ConfigFileName;
  // Verifico quale sia la location del Config File per aggiustarlo eventualmente
  var
  sServer := TJanuaApplication.ServerAddress;
  // se il server non è configurato va messo a posto il file

  Guard.CheckFalse(sConfFile = '', 'sConfFile not set');
  Guard.CheckFalse(sServer = '', 'sServer not set');
{$ENDIF}

  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;

end.
