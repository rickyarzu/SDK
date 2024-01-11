unit uCarServiceProject;

interface

uses Janua.CarService.VCLApplication, System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl;

type
  TCarServiceProjectApplication = class(TJanuaCarServiceVCLApplication)
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
  Janua.TMS.NavBar,
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
  inherited;

end;

class procedure TCarServiceProjectApplication.LoadMenu;
var
  // Tests 104 // Extras 102 // Demos 103
  lAppExtras, lAppTest, lAppDemos: TJanuaApplicationRecord;
begin
  inherited;
  lAppExtras := TJanuaApplicationRecord.Create('Extras', 'Extra Applications', 102, nil);
  // -------------- Demos --------------------------------------------------------------------------
  lAppDemos := TJanuaApplicationRecord.Create('Demos', 'Demos Applications', 103, nil);
  lAppExtras.AddForm(TJanuaFormRecord.Create('Test MVVM', lAppDemos.Name, 33, TfrmTMMigrationMain,
    GUID_NULL));
  // -------------- Test ---------------------------------------------------------------------------
  lAppTest := TJanuaApplicationRecord.Create('Test', 'Test Applications', 104, nil);
  // ufrmVCLVMTestNavigator.pas
  lAppTest.AddForm(TJanuaFormRecord.Create('Test Outlook', lAppTest.Name, 75,
    TfrmVCLOutlookOLEAutomation, GUID_NULL));
  lAppTest.AddForm(TJanuaFormRecord.Create('Test Filters', lAppTest.Name, 95, TfrmVCLTestFilters,
    GUID_NULL));
  // TfrmVCLTestGrids
  lAppTest.AddForm(TJanuaFormRecord.Create('Test Grids', lAppTest.Name, 98, TfrmVCLTestGrids,
    GUID_NULL));

  lAppExtras.AddApplication(lAppTest);
  lAppExtras.AddApplication(lAppDemos);
  TJanuaFormsApplication.RegisterApplication(lAppExtras);
end;

class procedure TCarServiceProjectApplication.RegisterForms;
begin
  inherited;

end;

end.
