unit Janua.DMVC.UniDacApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Uni.Application;

type
  TJanuaDMVCUniDACApplication = class(TJanuaUniApplication)
  public
    /// <summary> Interface registration for VCL Forms </summary>
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
    class procedure Terminate; override;
    class procedure AfterLogin; override;
  end;

implementation

uses System.Types, System.StrUtils,
  // Janua Janua.VCL.Anagraph
  Janua.Anagraph.ViewModel.Intf,
  // Test.VCL
  Janua.Test.ViewModel.Intf,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.Orm.Register;

{ TJanuaDMVCUniDACApplication }
class procedure TJanuaDMVCUniDACApplication.AfterLogin;
begin
  // Inizializzo il Core View Model
  inherited;
end;

class procedure TJanuaDMVCUniDACApplication.ApplicationSetup(const aAppname: string);
begin
  TJanuaApplication.CustomServer := True;
  inherited ApplicationSetup(aAppname);
  // This must come after Forms and After VCL MVVM Framework Initialization
  TJanuaCoreViewModelFramework.RegisterInterfaces;
end;

class procedure TJanuaDMVCUniDACApplication.ApplicationTearDown;
begin
  TJanuaFormsApplication.Applications.Clear;
  TJanuaApplication.Terminate;
end;

class procedure TJanuaDMVCUniDACApplication.ConnectionSetup;
begin
  // uncomment this for testing based on UNIGUI environment
  TJanuaApplication.IsTestVersion := False;
  inherited;
end;

class procedure TJanuaDMVCUniDACApplication.LoadMenu;
begin
  { TODO: UniGui Menu Implementation }
end;

class procedure TJanuaDMVCUniDACApplication.RegisterForms;
begin
  // No Forms right now ...........................
end;

class procedure TJanuaDMVCUniDACApplication.Terminate;
begin
  inherited;
  TJanuaDMVCUniDACApplication.ApplicationTearDown;
end;

end.
