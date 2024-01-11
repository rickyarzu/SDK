unit Janua.CarService.FMX.Application;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.FMX.Application;

type
  TJanuaCarServiceFMXMobileApplication = class(TJanuaFMXApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
  end;

implementation

uses System.Types,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application,
  // Janua VCL
  // Login
  Janua.System.ViewModel.intf, {Janua.CarService.dlgVCLLogin,}
  // Car Service
  Janua.CarService.Impl;

{ TJanuaCarServiceFMXMobileApplication }
class procedure TJanuaCarServiceFMXMobileApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;
end;

class procedure TJanuaCarServiceFMXMobileApplication.ApplicationTearDown;
begin
  inherited;
end;

class procedure TJanuaCarServiceFMXMobileApplication.ConnectionSetup;
begin
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.DBSchemaID := 36;
  inherited;
end;

class procedure TJanuaCarServiceFMXMobileApplication.RegisterForms;
begin
  inherited;
  // TdlgVCLTMLogisticLogin = class(TdlgVCLCustomLogin, IJanuaLoginForm)
  { TJanuaApplicationFactory.RegisterComponent(IJanuaLoginForm, TdlgVCLCarServiceLogin); }
end;

end.
