unit Janua.Carservice.WebBroker.UniDACApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.WebBroker.UniDACApplication;

type
  TJanuaCarserviceWebBrokerUniDACApplication = class(TJanuaWebBrokerUniDACApplication)
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
  // Test.VCL
  Janua.Test.ViewModel.Intf,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.Orm.Register;

{ TJanuaCarserviceWebBrokerUniDACApplication }

class procedure TJanuaCarserviceWebBrokerUniDACApplication.AfterLogin;
begin
  inherited;

end;

class procedure TJanuaCarserviceWebBrokerUniDACApplication.ApplicationSetup(const aAppname: string);
begin
  inherited ApplicationSetup(aAppname);
  { TGooglePlaces.ApiKey := 'AIzaSyA31qLl7gwlbLbBIQD5l5Tha09XFP9NpDY'; }
end;

class procedure TJanuaCarserviceWebBrokerUniDACApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaCarserviceWebBrokerUniDACApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TJanuaCarserviceWebBrokerUniDACApplication.LoadMenu;
begin
  inherited;

end;

class procedure TJanuaCarserviceWebBrokerUniDACApplication.RegisterForms;
begin
  inherited;

end;

class procedure TJanuaCarserviceWebBrokerUniDACApplication.Terminate;
begin
  inherited;

end;

end.
