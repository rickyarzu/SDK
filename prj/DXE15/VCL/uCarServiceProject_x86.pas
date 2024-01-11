unit uCarServiceProject_x86;

interface

uses Janua.VCL.Application, System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl;

type
  TCarServiceProjectApplication = class(TJanuaVCLCustomApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
  end;

implementation

uses System.Types,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.Legacy.Application,
  // Janua TMS
  Janua.TMS.NavBar, Janua.TMS.SMS,
  // Janua VCL
  /// Settings
  Janua.TMS.frmPgJormGenerator, Janua.CarService.VCL.frmSettings,
  // Login
  Janua.System.ViewModel.intf, Janua.CarService.dlgVCLLogin,
  // Planner
  ufrmVCLAnagraphPlanner,
  /// Directory
  ufrmVCLVMAnagraphNavigator,
  // ufrmVCLLogisticReceipt,
  // Documents
  uqrpTMLabels,
  // Car Service
  Janua.CarService.VCL.frmCustomerLandingMessage, Janua.CarService.VCL.frmDriverLandingMsgBuilderpas,
  Janua.CarService.VCL.frmCustomerLandingMessageNR, Janua.CarService.VCL.frmBookingLandingMessage,
  Janua.CarService.Impl, Janua.CarService.VCL.frmCarBooking,
  Janua.CarService.VCL.frmBookingNRLandingMsgBuilder,
  // Contracts
  Janua.CarService.VCL.frmCustomerContract, Janua.CarService.VCL.frmDriverContract,
  Janua.CarService.VCL.frmServiceContract,
  // Car Service Confirmation
  Janua.CarService.VCL.frmCustConfirmationMsgBuilder,
  Janua.CarService.VCL.frmCustConfirmationNRMsgBuilderlder,
  // Car Service Maiil
  Janua.CarService.VCL.frmCustomerMailBuilder, Janua.CarService.VCL.frmCustomerMailBuilderNR,
  Janua.CarService.VCL.frmDriverMailBuilder1, Janua.CarService.VCL.frmDriverMailBuilder2,
  // SMS
  Janua.CarService.VCL.frmCustomerNRSMSBuilder, Janua.CarService.VCL.frmCustomerSMSBuilder,
  Janua.CarService.VCL.frmDriver1SMSBuilder, Janua.CarService.VCL.frmDriver2SMSBuilder,
  // NotFound
  Janua.CarService.VCL.frmPageNotFound,
  // Test
  Janua.Test.VCL.frmTestFilters, ufrmGridsTestings, ufrmVCLOutlookOLEAutomation, ufrmTMMigrationMain;

{ TCarServiceProjectApplication }

class procedure TCarServiceProjectApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

end;

class procedure TCarServiceProjectApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TCarServiceProjectApplication.ConnectionSetup;
begin
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.DBSchemaID := 36;
  inherited;
end;

class procedure TCarServiceProjectApplication.LoadMenu;
var
  // Tests 104 // Extras 102 // Demos 103
  lAppExtras, lAppTest, lAppDemos: TJanuaApplicationRecord;
  lAppSettings: TJanuaApplicationRecord; // Settings Applications
  lAppSettingsDB: TJanuaApplicationRecord; // Settings DB Migration Application
  lAppSettingsSMS: TJanuaApplicationRecord; // Settings Messages
  lAppSettingsContract: TJanuaApplicationRecord; // Settings Messages
  lAppSettingsConditions: TJanuaApplicationRecord; // Settings Messages
  lAppSettingsMail: TJanuaApplicationRecord; // Settings Messages
  lAppSettingsConf: TJanuaApplicationRecord; // Settings Confirmation
  lAppSettingsLanding: TJanuaApplicationRecord; // Settings Messages
  lAppCarService: TJanuaApplicationRecord; // Warehouse Application Container
  lAppMessages: TJanuaApplicationRecord; // Messages Management
  lAppPlanner: TJanuaApplicationRecord; // Planner SubApplication of Warehouse Application
  lAppShipping: TJanuaApplicationRecord; // Shipping SubApplication of Warehouse Application
  // ------ Directory -----------------------------------------------------------------------------------
  lAppDirectory: TJanuaApplicationRecord;
  // Anagraph Directory Application
  // lAppTest: Settings DB Migration Application
  lIconID: Integer;
  lTitle: string;
  lGroupID: Integer;
begin
  inherited;
  (*
    lAppExtras := TJanuaApplicationRecord.Create('Extras', 'Extra Applications', 102, nil);
    // -------------- Demos --------------------------------------------------------------------------
    lAppDemos := TJanuaApplicationRecord.Create('Demos', 'Demos Applications', 103, nil);
    lAppExtras.AddForm(TJanuaFormRecord.Create('Test MVVM', lAppDemos.Name, 33, TfrmTMMigrationMain,
    GUID_NULL));
    // -------------- Test ---------------------------------------------------------------------------
    lAppTest := TJanuaApplicationRecord.Create('Test', 'Test Applications', 104, nil);
    // ufrmVCLVMTestNavigator.pas
    lAppTest.AddForm(TJanuaFormRecord.Create('Test Outlook', lAppTest.Name, 75, TfrmVCLOutlookOLEAutomation,
    GUID_NULL));
    lAppTest.AddForm(TJanuaFormRecord.Create('Test Filters', lAppTest.Name, 95, TfrmVCLTestFilters, GUID_NULL));
    // TfrmVCLTestGrids
    lAppTest.AddForm(TJanuaFormRecord.Create('Test Grids', lAppTest.Name, 98, TfrmVCLTestGrids, GUID_NULL));
    lAppExtras.AddApplication(lAppTest);
    lAppExtras.AddApplication(lAppDemos);
    TJanuaFormsApplication.RegisterApplication(lAppExtras);
  *)
  // -------------- Car Service ------------------------------------------------------------------------------------------
  lAppCarService := TJanuaApplicationRecord.Create('Car Service', 'Car Service', 266, nil);

  // --------------------------------------------------------------------------------------------------------------------

  lAppPlanner := TJanuaApplicationRecord.Create('Planner', 'Calendar Planner', 61, nil);
  // TJanuaVCLFormAnagraph
  lAppPlanner.AddForm(TJanuaFormRecord.Create('Planner', lAppCarService.Name, 61, TfrmVCLAnagraphPlanner,
    GUID_NULL, [20]));
  lAppCarService.AddApplication(lAppPlanner);
  // TfrmVCLCarServiceBooking
  lAppPlanner.AddForm(TJanuaFormRecord.Create('Prenotazioni', lAppCarService.Name, 61,
    TfrmVCLCarServiceBooking, GUID_NULL, [20]));

  lAppCarService.AddApplication(lAppPlanner);

  TJanuaFormsApplication.RegisterApplication(lAppCarService);

  // -------------- Contracts ------------------------------------------------------------------------------------------

  lAppSettingsContract := TJanuaApplicationRecord.Create('Contratti', 'Contratti', 310, nil);

  lAppSettingsConditions := TJanuaApplicationRecord.Create('Condizioni Contrattuali', 'Condizioni', 1, nil);
  lAppSettingsConditions.AddForm(TJanuaFormRecord.Create('Condizioni Cliente', lAppCarService.Name, 379,
    TfrmVCLCCustomerContract, GUID_NULL, []));
  lAppSettingsConditions.AddForm(TJanuaFormRecord.Create('Condizioni Service', lAppCarService.Name, 378,
    TfrmVCLCSServiceContract, GUID_NULL, []));
  lAppSettingsConditions.AddForm(TJanuaFormRecord.Create('Condizioni Driver', lAppCarService.Name, 329,
    TfrmVCLCSDriverContract, GUID_NULL, []));
  lAppSettingsContract.AddApplication(lAppSettingsConditions);

  TJanuaFormsApplication.RegisterApplication(lAppSettingsContract);

  // ********** Messages ********************************************************************************
  lAppMessages := TJanuaApplicationRecord.Create('Messaggi', 'Messaggi', 272, nil);

  // ---- Landings --------------------------------------------------------------------------------------
  lAppSettingsLanding := TJanuaApplicationRecord.Create('Pagine', 'Pagine', 1, nil);

  lAppSettingsLanding.AddForm(TJanuaFormRecord.Create('Pag. Cliente A/R', lAppCarService.Name, 299,
    TfrmVCLCSCustomerLandingMessage, GUID_NULL));
  lAppSettingsLanding.AddForm(TJanuaFormRecord.Create('Pag. Cliente A', lAppCarService.Name, 300,
    TfrmVCLCSCustomerLandingMessageNR, GUID_NULL));
  lAppSettingsLanding.AddForm(TJanuaFormRecord.Create('Pagina Driver', lAppCarService.Name, 297,
    TfrmVCLCSDriverLandingMsgBuilder, GUID_NULL));
  lAppSettingsLanding.AddForm(TJanuaFormRecord.Create('Pag.Booking A/R', lAppCarService.Name, 302,
    TfrmVCLCSBookingLandingMessage, GUID_NULL));
  lAppSettingsLanding.AddForm(TJanuaFormRecord.Create('Pag.Booking A', lAppCarService.Name, 302,
    TfrmVCLCSBookingNRLandingMsgBuilder, GUID_NULL));
  lAppMessages.AddApplication(lAppSettingsLanding);

  // ---- Mail --------------------------------------------------------------------------------------
  lAppSettingsMail := TJanuaApplicationRecord.Create('E-Mail', 'E-Mail', 1, nil);
  lAppSettingsMail.AddForm(TJanuaFormRecord.Create('Mail Cliente A/R ', lAppCarService.Name, 357,
    TfrmVCLFCSCustomerMailBuilder, GUID_NULL));
  lAppSettingsMail.AddForm(TJanuaFormRecord.Create('Mail Cliente Pk ', lAppCarService.Name, 354,
    TfrmVCLFCSCustomerMailBuilderNR, GUID_NULL));
  lAppSettingsMail.AddForm(TJanuaFormRecord.Create('Mail Driver Pk ', lAppCarService.Name, 359,
    TfrmVCLFCSDriverMailBuilder1, GUID_NULL));
  lAppSettingsMail.AddForm(TJanuaFormRecord.Create('Mail Driver Rt ', lAppCarService.Name, 353,
    TfrmVCLFCSDriverMailBuilder2, GUID_NULL));
  lAppMessages.AddApplication(lAppSettingsMail);

  // ---- SMS ---------------------------------------------------------------------------------------
  lAppSettingsSMS := TJanuaApplicationRecord.Create('SMS', 'SMS', 1, nil);
  lAppSettingsSMS.AddForm(TJanuaFormRecord.Create('SMS Cliente A/R', lAppCarService.Name, 343,
    TfrmVCLCSCustomerSMSBuilder, GUID_NULL));
  lAppSettingsSMS.AddForm(TJanuaFormRecord.Create('SMS Cliente A', lAppCarService.Name, 349,
    TfrmVCLCSCustomerNRSMSBuilder, GUID_NULL));
  lAppSettingsSMS.AddForm(TJanuaFormRecord.Create('SMS Driver Pk', lAppCarService.Name, 363,
    TfrmVCLCSDriver1SMSBuilder, GUID_NULL));
  lAppSettingsSMS.AddForm(TJanuaFormRecord.Create('SMS Driver Rt', lAppCarService.Name, 364,
    TfrmVCLCSDriver2SMSBuilder, GUID_NULL));
  lAppMessages.AddApplication(lAppSettingsSMS);

  // ---- Confirmation ------------------------------------------------------------------------------

  lAppSettingsConf := TJanuaApplicationRecord.Create('Confirmation', 'Confirmation', 1, nil);
  lAppSettingsConf.AddForm(TJanuaFormRecord.Create('Cliente Conf. A/R', lAppCarService.Name, 366,
    TfrmVCLCSCustConfirmationMsgBuilder, GUID_NULL));
  lAppSettingsConf.AddForm(TJanuaFormRecord.Create('Cliente Conf. A', lAppCarService.Name, 365,
    TfrmVCLCSCustConfirmationNRMsgBuilder, GUID_NULL));
  lAppSettingsConf.AddForm(TJanuaFormRecord.Create('Page Not Found', lAppCarService.Name, 371,
    TfrmVCLCSPageNotFound, GUID_NULL));
  lAppMessages.AddApplication(lAppSettingsConf);

  // ---- Registration app Messages -------------------------------------------------------------------
  TJanuaFormsApplication.RegisterApplication(lAppMessages);



  // ********** Settings ******************************************************************************

  lAppSettings := TJanuaApplicationRecord.Create('Impostazioni', 'Impostazioni', 229, nil);
  lAppSettingsDB := TJanuaApplicationRecord.Create('Impostazioni', 'Impostazioni', 1, nil);
  // ConfirmPreInvoice
  lAppSettingsDB.AddForm(TJanuaFormRecord.Create('ORM Generator', lAppCarService.Name, 103,
    TfrmVCLPgJormGenerator, GUID_NULL));
  // TfrmVCLCarServiceSettings
  lAppSettingsDB.AddForm(TJanuaFormRecord.Create('Messages', lAppCarService.Name, 103,
    TfrmVCLCarServiceSettings, GUID_NULL));
  lAppSettings.AddApplication(lAppSettingsDB);
  TJanuaFormsApplication.RegisterApplication(lAppSettings);

  // ********** Directory ******************************************************************************
  lAppDirectory := TJanuaApplicationRecord.Create('Directory', 'Directory', 29, nil);
  if TJanuaViewModelApplication.Settings.AnagGroups.RecordCount > 0 then
  begin
    TJanuaViewModelApplication.Settings.AnagGroups.First;
    while not TJanuaViewModelApplication.Settings.AnagGroups.Eof do
    begin
      lGroupID := TJanuaViewModelApplication.Settings.AnagGroups.AnagGroup.AnGroupId.AsInteger;
      lTitle := TJanuaViewModelApplication.Settings.AnagGroups.AnagGroup.GroupDes.AsString;
      lIconID := TJanuaViewModelApplication.Settings.AnagGroups.AnagGroup.IconId.AsInteger;
      lAppDirectory.AddForm(TJanuaFormRecord.Create(lTitle, lAppDirectory.Name, lIconID,
        TfrmVCLVMAnagraphNavigator { aClass: TJanuaFormClass } , GUID_NULL { aInterface } ,
        [lGroupID] { aParams } ));
      TJanuaViewModelApplication.Settings.AnagGroups.Next;
    end;
  end;
  TJanuaFormsApplication.RegisterApplication(lAppDirectory);

end;

class procedure TCarServiceProjectApplication.RegisterForms;
begin
  inherited;
  // TdlgVCLTMLogisticLogin = class(TdlgVCLCustomLogin, IJanuaLoginForm)
  TJanuaApplicationFactory.RegisterComponent(IJanuaLoginForm, TdlgVCLCarServiceLogin);
end;

end.
