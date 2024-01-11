unit Janua.VCL.TestApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TJanuaTestVCLApplication = class(TJanuaVCLCustomApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
  end;

implementation

uses
  // Janua Core & DB
  Janua.Legacy.Application,
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework, Janua.Mock.Firedac.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.VCL.Framework, Janua.Orm.Register,
  // Login
  Janua.System.ViewModel.intf, Janua.VCL.dlgCustomLogin;

{ TJanuaTestVCLApplication }


class procedure TJanuaTestVCLApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

end;

class procedure TJanuaTestVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaTestVCLApplication.ConnectionSetup;
begin
  inherited;
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.DBSchemaID := 33;
  TJanuaApplication.ServerUserName := 'ergo';
  TJanuaApplication.ServerSchema := 'public';
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  TJanuaApplication.ServerDirect := True;
  TJanuaApplication.ServerPassword := '3rg0m3rc4t0r';
end;

class procedure TJanuaTestVCLApplication.LoadMenu;
begin
  inherited;

end;

class procedure TJanuaTestVCLApplication.RegisterForms;
begin
  inherited;
  // TdlgVCLTMLogisticLogin = class(TdlgVCLCustomLogin, IJanuaLoginForm)
  TJanuaApplicationFactory.RegisterComponent(IJanuaLoginForm, TdlgVCLCustomLogin);
end;

end.
