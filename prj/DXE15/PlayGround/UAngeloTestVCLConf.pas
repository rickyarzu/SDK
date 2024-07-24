unit UAngeloTestVCLConf;

interface

uses
  Janua.VCL.Application;

type
  TAngelotestVCLApplication = class(TJanuaVCLCustomApplication)
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
  // Interfaces
  Janua.Orm.Intf, Janua.Forms.Types, Janua.Controls.Intf, Janua.System.ViewModel.Intf,
  Janua.Controls.Forms.Intf,
  // Settings
  Janua.TMS.frmPgJormGenerator,
  // Forms
  udlgVCLAngeloLogin, uFormHelloWorld,
  // Janua TMS
  Janua.TMS.NavBar,
  // Test
  Janua.Test.VCL.frmTestFilters, ufrmGridsTestings, ufrmVCLOutlookOLEAutomation, ufrmTMMigrationMain;

{ TAngelotestVCLApplication }

class procedure TAngelotestVCLApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

end;

class procedure TAngelotestVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TAngelotestVCLApplication.ConnectionSetup;
begin
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.DBSchemaID := 36;
  inherited;
end;

class procedure TAngelotestVCLApplication.LoadMenu;
var
  lMenu, lSubMenu: TJanuaApplicationRecord;
begin
  inherited;
  // -------------- Menu Test ------------------------------------------------------------------------------------------
  lMenu := TJanuaApplicationRecord.Create('Main Menu', 'Main Menu', 266, nil);

  // --------------------------------------------------------------------------------------------------------------------

  lSubMenu := TJanuaApplicationRecord.Create('Sub Menu', 'Sub Menu', 61, nil);
  // TJanuaVCLFormAnagraph
  lSubMenu.AddForm(TJanuaFormRecord.Create('Hello ', lSubMenu.Name, 61, TfrmHelloWorld, GUID_NULL, []));

  lMenu.AddApplication(lSubMenu);

  TJanuaFormsApplication.RegisterApplication(lMenu);

end;

class procedure TAngelotestVCLApplication.RegisterForms;
begin
  inherited;
  TJanuaApplicationFactory.RegisterComponent(IJanuaLoginForm, TdlgVCLAngeloLogin);
end;

end.
