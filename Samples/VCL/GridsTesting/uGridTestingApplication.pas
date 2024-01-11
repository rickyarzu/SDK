unit uGridTestingApplication;


interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TJanuaGridsVCLApplication = class(TJanuaVCLCustomApplication)
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
  // Janua TMS
  Janua.TMS.NavBar;


{ TJanuaGridsVCLApplication }

class procedure TJanuaGridsVCLApplication.ApplicationSetup;
begin
  inherited;

end;

class procedure TJanuaGridsVCLApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaGridsVCLApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TJanuaGridsVCLApplication.LoadMenu;
begin
  inherited;

end;

class procedure TJanuaGridsVCLApplication.RegisterForms;
begin
  inherited;

end;

end.
