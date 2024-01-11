unit Janua.CarService.VCLApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TJanuaCarServiceVCLApplication = class(TJanuaVCLCustomApplication)
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
  Janua.CarService.Impl, Janua.CarService.VCL.frmCarBooking;

{ TJanuaCarServiceVCLApplication }
class procedure TJanuaCarServiceVCLApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;
end;

class procedure TJanuaCarServiceVCLApplication.ApplicationTearDown;
begin
  inherited;
end;

class procedure TJanuaCarServiceVCLApplication.ConnectionSetup;
begin
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.DBSchemaID := 33;
  inherited;
end;

class procedure TJanuaCarServiceVCLApplication.LoadMenu;
var
  lAppCarService: TJanuaApplicationRecord; // Warehouse Application Container
  lAppPlanner: TJanuaApplicationRecord; // Planner SubApplication of Warehouse Application
  lAppShipping: TJanuaApplicationRecord; // Shipping SubApplication of Warehouse Application
  // ------ Directory -----------------------------------------------------------------------------------
  lAppDirectory, lAppSettings, lAppSettingsDB: TJanuaApplicationRecord;
  lIconID: Integer;
  lTitle: string;
  lGroupID: Integer;
begin
  inherited;
  // -------------- WareHouse ------------------------------------------------------------------------------------------
  lAppCarService := TJanuaApplicationRecord.Create('Car Service', 'Car Service', 41, nil);

  TJanuaFormsApplication.RegisterApplication(lAppCarService);
  // --------------------------------------------------------------------------------------------------------------------

  lAppPlanner := TJanuaApplicationRecord.Create('Planner', 'Calendar Planner', 61, nil);
  // TJanuaVCLFormAnagraph
  lAppPlanner.AddForm(TJanuaFormRecord.Create('Planner', lAppCarService.Name, 61, TfrmVCLAnagraphPlanner,
    GUID_NULL, [20]));
  lAppCarService.AddApplication(lAppPlanner);
  // TfrmVCLCarServiceBooking
  lAppPlanner.AddForm(TJanuaFormRecord.Create('Prenotazioni', lAppCarService.Name, 61,
    TfrmVCLCarServiceBooking, GUID_NULL, [20]));

  TJanuaFormsApplication.RegisterApplication(lAppCarService);

  // -------- Directory --------------------------------------------------------------------------------
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

class procedure TJanuaCarServiceVCLApplication.RegisterForms;
begin
  inherited;
  // TdlgVCLTMLogisticLogin = class(TdlgVCLCustomLogin, IJanuaLoginForm)
  TJanuaApplicationFactory.RegisterComponent(IJanuaLoginForm, TdlgVCLCarServiceLogin);
end;

end.
