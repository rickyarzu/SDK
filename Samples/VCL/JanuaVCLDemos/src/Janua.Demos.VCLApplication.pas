unit Janua.Demos.VCLApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TJanuaDemosVCLApplication = class(TJanuaVCLApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup; override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
  end;

implementation

uses System.Types,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application,
  // Forms
  // Testing
  ufrmGridsTestings,
  // Planner
  ufrmVCLAnagraphPlanner,
  // Login
  Janua.System.ViewModel.intf, Janua.Demos.VCLLogin;

{ TJanuaDemosVCLApplication }

class procedure TJanuaDemosVCLApplication.ApplicationSetup;
begin
  inherited;
  TJanuaApplication.AppName := ('demos.ergomercator.com');
  TJanuaApplication.StyleManager.Activate;
end;

class procedure TJanuaDemosVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaDemosVCLApplication.ConnectionSetup;
begin
  inherited;
  TJanuaApplication.ServerPort := 5444;
  TJanuaApplication.ServerAddress := 'localhost';
  TJanuaApplication.ServerDatabaseName := 'ergoedb';
  TJanuaApplication.DBSchemaID := 35 { JanuaDemoSchema };
end;

class procedure TJanuaDemosVCLApplication.LoadMenu;
var
  lAppDemo: TJanuaApplicationRecord; // Demo Application Container
  lAppDetail: TJanuaApplicationRecord; // SubApplication of Warehouse Application
begin
  inherited;
  // -------------- Demo Application ------------------------------------------------------------------------
  // TJanuaVCLApplication.Initialize;
  lAppDemo := TJanuaApplicationRecord.Create('App Demo', 'Application Demo', 115, nil);
  lAppDetail := TJanuaApplicationRecord.Create('Planner', 'Calendar Planner', 112, nil);
  // TJanuaVCLFormAnagraph
  lAppDetail.AddForm(TJanuaFormRecord.Create('Planner', lAppDetail.Name, 112, TfrmVCLAnagraphPlanner, GUID_NULL, [20]));
  lAppDemo.AddApplication(lAppDetail);
  TJanuaFormsApplication.RegisterApplication(lAppDemo);
  lAppDetail := TJanuaApplicationRecord.Create('Test Builders', 'Test Builders', 119, nil);
  // TJanuaVCLFormAnagraph
  lAppDetail.AddForm(TJanuaFormRecord.Create('Grids Builder', lAppDetail.Name, 109, TfrmVCLTestGrids, GUID_NULL));
  lAppDemo.AddApplication(lAppDetail);

end;

class procedure TJanuaDemosVCLApplication.RegisterForms;
begin
  inherited;
  TJanuaApplicationFactory.RegisterComponent(IJanuaLoginForm, TdlgJanuaDemosVCLLogin);
end;

end.
