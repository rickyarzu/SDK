program AppCityInvestorUniGUI;

uses
  Forms,
  Spring,
  Janua.Application.Framework,
  Janua.TMS.SMS,
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.AppAndCity.UniGUI.dlgLoginRegister in '..\..\..\src\UniGUI\AppAndCity\Janua.AppAndCity.UniGUI.dlgLoginRegister.pas' {frmAppAndCityUniGUILoginRegister: TUniLoginForm},
  Janua.UniGUI.UniDacApplication in '..\..\..\src\UniGUI\Common\Janua.UniGUI.UniDacApplication.pas',
  Janua.CarService.UniGUI.frameCarBooking in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCarBooking.pas' {frameCarServiceUniGUIBooking: TUniFrame},
  Janua.CarService.UniGUI.dlgBookingWizard in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.dlgBookingWizard.pas' {dlgUniGUIBookingWizard: TUniForm},
  Janua.CarService.UniGUI.frameCarBookingClient in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCarBookingClient.pas' {frameUniGuiCarBookingClient: TUniFrame},
  Janua.CarService.UniGUI.frameCalendarSelect in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCalendarSelect.pas' {frameUNICalendarSelect: TUniFrame},
  Janua.CarService.UniGUI.frameTimeCalendarSelect in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeCalendarSelect.pas' {frameTimeCalendarSelect: TUniFrame},
  Janua.CarService.UniGUI.frameSlotSelection in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameSlotSelection.pas' {frameCarServiceSlotSelection: TUniFrame},
  Janua.CarService.UniGUI.frameTimeSlotPickup in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeSlotPickup.pas' {frameUniGUITimeSlotPickup: TFrame},
  Janua.CarService.UniGUI.frameCustomerSelection in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCustomerSelection.pas' {frameUniGUICarServiceCustomerSelection: TUniFrame},
  Janua.CarService.UniGUI.frameBookingSummary in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameBookingSummary.pas' {frameUniGUIBookingSummary: TUniFrame},
  Janua.Carservice.PgBooking in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgBooking.pas' {dmPgCarServiceBookingList: TDataModule},
  Janua.AppCity.UniGUIApplication in '..\..\..\src\UniGUI\AppAndCity\Janua.AppCity.UniGUIApplication.pas',
  Janua.AppCity.UniGUI.InvestorsMainForm in '..\..\..\src\UniGUI\AppAndCity\Janua.AppCity.UniGUI.InvestorsMainForm.pas' {frmUNIMainForm: TUniForm},
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
  Janua.CarService.UniGUI.SlotSelectionController in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.SlotSelectionController.pas';

{$R *.res}

begin
  TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection
  // le applicazioni locali UniGUI hanno come nome applicativo e come home directory:
  TJanuaAppCityUniGUIApplication.ApplicationSetup('inv.appcity.com');
  // Parametro per la porta di Ascolto del server di UniGUI
  TJanuacoreOS.WriteParam('UniGUI', 'Port', 8093);
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
  Application.CreateForm(TdmPgCarServiceMain, dmPgCarServiceMain);
  Application.Run;

end.
