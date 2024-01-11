program CarServiceUsersUniGUIService;

uses
  SvcMgr,
  Janua.Application.Framework,
  Janua.TMS.SMS,
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.CarService.UniGUI.dlgLoginRegister in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.dlgLoginRegister.pas' {frmCarServiceUniGUILoginRegister: TUniLoginForm},
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
  Janua.Carservice.UniGUIApplication in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.Carservice.UniGUI.UsersMainForm in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUI.UsersMainForm.pas' {frmUNIMainForm: TUniForm},
  Janua.CarService.UniGUI.frameUserMenu in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameUserMenu.pas' {frameCarServiceUniGUIUserMenu: TUniFrame},
  Janua.CarService.UniGUI.dlgTimetableCheck in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.dlgTimetableCheck.pas' {dlgUniGUICarserviceTimetableCheck: TUniForm},
  Janua.Anagraph.UniGUI.frameSimpleAnagraph in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameSimpleAnagraph.pas' {frameUniGUISimpleAnagraph: TUniFrame},
  Janua.Anagraph.UniGUI.dlgSimpleAnagraph in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.dlgSimpleAnagraph.pas' {dlgUniGUISimpleAnagraph: TUniForm},
  Janua.UniGUI.frameSettings in '..\..\..\src\UniGUI\Common\Janua.UniGUI.frameSettings.pas' {frameUniGUIAccountSettings: TUniFrame},
  Janua.UniGUI.frameSettingsPassword in '..\..\..\src\UniGUI\Common\Janua.UniGUI.frameSettingsPassword.pas' {frameUniGUISettingPassword: TUniFrame},
  Janua.Anagraph.UniGUI.frameAccountingInfo in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameAccountingInfo.pas' {frameUniGUIAnagAccountingInfo: TUniFrame},
  Janua.Carservice.BookingController in '..\..\..\src\UniGUI\CarService\Janua.Carservice.BookingController.pas' {dmUniGUICarServiceBookingController: TDataModule},
  Janua.CarService.UniGUI.frameTimeSlot in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeSlot.pas' {frameTimeSelect: TUniFrame},
  Janua.UniGUI.dlgHTMLMessage in '..\..\..\src\UniGUI\Common\Janua.UniGUI.dlgHTMLMessage.pas' {frmUniGUIHtmlMessage: TUniForm},
  Janua.UniGUI.dlgSearchGoogleAddress in '..\..\..\src\UniGUI\Common\Janua.UniGUI.dlgSearchGoogleAddress.pas' {dlgUniGUISearchGoogleAddress: TUniForm},
  Janua.UniGUI.dlgGoogleMap in '..\..\..\src\UniGUI\Common\Janua.UniGUI.dlgGoogleMap.pas' {dlgUniGUIGoogleMap: TUniForm},
  Janua.CarService.UniGUI.frameTimeTable in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeTable.pas' {frameCarServiceUniGUITimeTable: TUniFrame},
  Janua.CarService.UniGUI.frameAddressesSelect in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameAddressesSelect.pas' {frameUniGUICarServiceAddressSelect: TUniFrame},
  Janua.Anagraph.UniGUI.frameAddressList in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameAddressList.pas' {frameUniGUIAddressList: TUniFrame},
  Janua.Anagraph.UniGUI.frameAnagraphHorizontal in '..\..\..\src\UniGUI\Anagraph\Janua.Anagraph.UniGUI.frameAnagraphHorizontal.pas' {frameUniGUIAnagraphHorizontal: TUniFrame},
  Janua.UniGUI.frameDBUser in '..\..\..\src\UniGUI\Common\Janua.UniGUI.frameDBUser.pas' {frameUniGUIDBUser: TUniFrame},
  Janua.UniGUI.ServiceModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServiceModule.pas' {UniServiceModule: TUniGUIService};

{$R *.res}

begin

  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;

  TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection
  TJanuaCarServiceUniGUIApplication.ApplicationSetup('app.carservice.com');
  TJanuacoreOS.WriteParam('UniGUI', 'Port', 8081);
  Application.CreateForm(TUniServiceModule, UniServiceModule);
  UniServiceModule.Name := 'UniPikappUsersService';
  UniServiceModule.DisplayName := 'Unigui Pikapp Service User Booking';
  Application.Run;
end.
