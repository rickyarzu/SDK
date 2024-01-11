unit Janua.Carservice.DMVC.Application;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.DMVC.UniDacApplication;

type
  TJanuaCarserviceDMVCServerApplication = class(TJanuaDMVCUniDACApplication)
  protected
    class var FPgConf: TJanuaServerRecordConf;
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
  // Sms/Mail Framework
  Janua.TMS.Cloud.Mail.VCL, Janua.Carservice.impl, Janua.TMS.SMS,
  // Test.VCL
  Janua.Test.ViewModel.Intf,
  // Janua Core & DB
  Janua.Legacy.Application, Janua.Cloud.GoogleAPIs,
  Janua.Application.Framework, Janua.Controls.Forms.impl, Janua.Uni.Framework, Janua.Mock.Firedac.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.Orm.Register;

{ TJanuaUniGUIApplication }
class procedure TJanuaCarserviceDMVCServerApplication.AfterLogin;
begin
  inherited;
end;

class procedure TJanuaCarserviceDMVCServerApplication.ApplicationSetup(const aAppname: string);
begin
  inherited ApplicationSetup(aAppname);
  TGooglePlaces.ApiKey := 'AIzaSyA31qLl7gwlbLbBIQD5l5Tha09XFP9NpDY';
end;

class procedure TJanuaCarserviceDMVCServerApplication.ApplicationTearDown;
begin
  inherited;
end;

class procedure TJanuaCarserviceDMVCServerApplication.ConnectionSetup;
begin
  // uncomment this for testing based on UNIGUI environment
  inherited;

end;

class procedure TJanuaCarserviceDMVCServerApplication.LoadMenu;
begin
  inherited;
end;

class procedure TJanuaCarserviceDMVCServerApplication.RegisterForms;
begin
  // No Forms right now ...........................
end;

class procedure TJanuaCarserviceDMVCServerApplication.Terminate;
begin
  inherited;
end;

end.
