unit JanuaAllDemosConf;

interface

uses Janua.VCL.Application, System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl;

type
  TJanuaAllDemosApplication = class(TJanuaVCLCustomApplication)
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
  Janua.TMS.frmPgJormGenerator,
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
  // Contracts
  // Car Service Confirmation
  // Car Service Maiil
  // SMS
  // NotFound
  // Test
  Janua.Test.VCL.frmTestFilters, ufrmGridsTestings, ufrmVCLOutlookOLEAutomation, ufrmTMMigrationMain;

{ TJanuaAllDemosApplication }

class procedure TJanuaAllDemosApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

end;

class procedure TJanuaAllDemosApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaAllDemosApplication.ConnectionSetup;
begin
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.DBSchemaID := 36;
  inherited;
end;

class procedure TJanuaAllDemosApplication.LoadMenu;
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
  lAppAllDemos: TJanuaApplicationRecord; // Warehouse Application Container
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
  // -------------- Car Service ------------------------------------------------------------------------------------------
  lAppAllDemos := TJanuaApplicationRecord.Create('Janua Demos', 'Demos', 266, nil);

  // --------------------------------------------------------------------------------------------------------------------

  lAppPlanner := TJanuaApplicationRecord.Create('Planner', 'Calendar Planner', 61, nil);

  lAppAllDemos.AddApplication(lAppPlanner);

  TJanuaFormsApplication.RegisterApplication(lAppAllDemos);

  // -------------- Contracts ------------------------------------------------------------------------------------------

  lAppSettingsContract := TJanuaApplicationRecord.Create('Contratti', 'Contratti', 310, nil);

  TJanuaFormsApplication.RegisterApplication(lAppSettingsContract);

  // ********** Messages ********************************************************************************
  lAppMessages := TJanuaApplicationRecord.Create('Messaggi', 'Messaggi', 272, nil);

  // ---- Registration app Messages -------------------------------------------------------------------
  TJanuaFormsApplication.RegisterApplication(lAppMessages);

  // ********** Settings ******************************************************************************

  lAppSettings := TJanuaApplicationRecord.Create('Impostazioni', 'Impostazioni', 229, nil);
  lAppSettingsDB := TJanuaApplicationRecord.Create('Impostazioni', 'Impostazioni', 1, nil);
  // ConfirmPreInvoice
  lAppSettingsDB.AddForm(TJanuaFormRecord.Create('ORM Generator', lAppAllDemos.Name, 103,
    TfrmVCLPgJormGenerator, GUID_NULL));
  // TfrmVCLCarServiceSettings
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

class procedure TJanuaAllDemosApplication.RegisterForms;
begin
  inherited;
  // TdlgVCLTMLogisticLogin = class(TdlgVCLCustomLogin, IJanuaLoginForm)
  TJanuaApplicationFactory.RegisterComponent(IJanuaLoginForm, TdlgVCLCarServiceLogin);
end;

end.
