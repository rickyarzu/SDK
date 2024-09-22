unit uJanuaDevIDEProject;

interface

uses
  Janua.VCL.Application;

type
  TJanuaDevIDEVCLApplication = class(TJanuaVCLCustomApplication)
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
  // Settings
  Janua.TMS.frmPgJormGenerator,
  // Janua TMS
  Janua.TMS.NavBar,
  // Test
  Janua.Test.VCL.frmTestFilters, ufrmGridsTestings, ufrmVCLOutlookOLEAutomation, ufrmTMMigrationMain;

{ TJanuaDevIDEVCLApplication }

class procedure TJanuaDevIDEVCLApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

end;

class procedure TJanuaDevIDEVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaDevIDEVCLApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TJanuaDevIDEVCLApplication.LoadMenu;
var
  // Tests 104 // Extras 102 // Demos 103
  lMainMenu, lSubMenu: TJanuaApplicationRecord;
begin
  lMainMenu := TJanuaApplicationRecord.Create('Extras', 'Extra Applications', 102, nil);
  // -------------- Demos --------------------------------------------------------------------------
  lSubMenu := TJanuaApplicationRecord.Create('Demos', 'Demos Applications', 103, nil);
  lSubMenu.AddForm(TJanuaFormRecord.Create('Test MVVM', lSubMenu.Name, 33, TfrmTMMigrationMain,
    GUID_NULL));
  lMainMenu.AddApplication(lSubMenu);

  // -------------- Test ---------------------------------------------------------------------------
  lSubMenu := TJanuaApplicationRecord.Create('Test', 'Test Applications', 104, nil);
  lSubMenu.AddForm(TJanuaFormRecord.Create('Test Outlook', lSubMenu.Name, 75, TfrmVCLOutlookOLEAutomation,
    GUID_NULL));
  lSubMenu.AddForm(TJanuaFormRecord.Create('Test Filters', lSubMenu.Name, 95, TfrmVCLTestFilters, GUID_NULL));
  // TfrmVCLTestGrids
  lSubMenu.AddForm(TJanuaFormRecord.Create('Test Grids', lSubMenu.Name, 98, TfrmVCLTestGrids, GUID_NULL));
  lMainMenu.AddApplication(lSubMenu);
  TJanuaFormsApplication.RegisterApplication(lMainMenu);


  // -------------- Settings ---------------------------------------------------------------------------
  lMainMenu := TJanuaApplicationRecord.Create('Settings', 'Settings', 210, nil);
  lSubMenu := TJanuaApplicationRecord.Create('Janua Dev', 'Janua Dev', 1, nil);
  // ConfirmPreInvoice
  lSubMenu.AddForm(TJanuaFormRecord.Create('ORM Generator', lSubMenu.Name, 103,
    TfrmVCLPgJormGenerator, GUID_NULL));
  // TfrmVCLCarServiceSettings
  lMainMenu.AddApplication(lSubMenu);
  TJanuaFormsApplication.RegisterApplication(lMainMenu);

end;

class procedure TJanuaDevIDEVCLApplication.RegisterForms;
begin
  inherited;

end;

end.
