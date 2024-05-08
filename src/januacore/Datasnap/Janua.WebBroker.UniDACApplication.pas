unit Janua.WebBroker.UniDACApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Uni.Application;

type
  TJanuaWebBrokerUniDACApplication = class(TJanuaUniApplication)
  private
    class var FUniGUIPort: Smallint;
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
  public
  end;

implementation

uses System.Types, System.StrUtils,
  // Janua Janua.VCL.Anagraph
  Janua.Anagraph.ViewModel.Intf,
  // WebBroker
  Janua.WebBroker.Server,
  // Test.VCL
  Janua.Test.ViewModel.Intf,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Controls.Forms.Impl, Janua.Uni.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.Orm.Register;

{ TJanuaWebBrokerUniDACApplication }

class procedure TJanuaWebBrokerUniDACApplication.AfterLogin;
begin
  inherited;

end;

class procedure TJanuaWebBrokerUniDACApplication.ApplicationSetup(const aAppname: string);
begin
  TJanuaApplication.CustomServer := True;
  TJanuaWebServerFactory.WebServerClass := TJanuaWebBrokerServer;
  inherited ApplicationSetup(aAppname);
  // Uso il Framework UniGUI il Framework TMS per la comunicazioni non lo uso ancora
  // Per ultimo viene inizializzato il Model View View Model Framework che si 'appoggia' agli altri.
  // Connects to TApplication.Terminate
  // This must come after Forms and After VCL MVVM Framework Initialization
  TJanuaCoreViewModelFramework.RegisterInterfaces;
end;

class procedure TJanuaWebBrokerUniDACApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaWebBrokerUniDACApplication.ConnectionSetup;
begin
  // uncomment this for testing based on UNIGUI environment
  TJanuaApplication.IsTestVersion := False;
  inherited;

end;

class procedure TJanuaWebBrokerUniDACApplication.LoadMenu;
begin
  // uncomment this for testing based on UNIGUI environment
  // Well should be interesting to Setup
end;

class procedure TJanuaWebBrokerUniDACApplication.RegisterForms;
begin
  inherited;

end;

class procedure TJanuaWebBrokerUniDACApplication.Terminate;
begin
  inherited;
  TJanuaWebBrokerUniDACApplication.ApplicationTearDown;
end;

end.
