unit uCarServiceBackOfficeProject;

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

  // ---- Registration app Messages -------------------------------------------------------------------
  TJanuaFormsApplication.RegisterApplication(lAppMessages);

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
