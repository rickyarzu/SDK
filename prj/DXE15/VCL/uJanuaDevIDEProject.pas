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
  lAppExtras, lAppTest, lAppDemos: TJanuaApplicationRecord;
  lAppSettings: TJanuaApplicationRecord; // Settings Applications
  lAppSettingsDB: TJanuaApplicationRecord; // Settings DB Migration Application
begin
  inherited;

end;

class procedure TJanuaDevIDEVCLApplication.RegisterForms;
begin
  inherited;

end;

end.
