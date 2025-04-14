unit uJanuaVCLMegaDemoConfig;

interface

uses
  Janua.VCL.Application;

type
  TJanuaMegaDemoVCLApplication = class(TJanuaVCLCustomApplication)
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
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.Legacy.Application
  // Settings
  // Janua.TMS.frmPgJormGenerator,
  // Janua TMS
  // Janua.TMS.NavBar,
  // Test
  // ,Janua.Test.VCL.frmTestFilters, ufrmGridsTestings, ufrmVCLOutlookOLEAutomation, ufrmTMMigrationMain
  ;

{ TJanuaMegaDemoVCLApplication }

class procedure TJanuaMegaDemoVCLApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

end;

class procedure TJanuaMegaDemoVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaMegaDemoVCLApplication.ConnectionSetup;
begin
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  TJanuaApplication.ServerPort := 5432;
  inherited;
end;

class procedure TJanuaMegaDemoVCLApplication.LoadMenu;
begin
  inherited;
end;

class procedure TJanuaMegaDemoVCLApplication.RegisterForms;
begin
  inherited;

end;

end.
