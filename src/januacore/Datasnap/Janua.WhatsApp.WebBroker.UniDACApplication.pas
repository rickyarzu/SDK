unit Janua.WhatsApp.WebBroker.UniDACApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.WebBroker.UniDACApplication;

type
  TJanuaWhatsAppWebBrokerUniDACApplication = class(TJanuaWebBrokerUniDACApplication)
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

{ TJanuaWhatsAppWebBrokerUniDACApplication }

class procedure TJanuaWhatsAppWebBrokerUniDACApplication.AfterLogin;
begin
  inherited;

end;

class procedure TJanuaWhatsAppWebBrokerUniDACApplication.ApplicationSetup(const aAppname: string);
begin
  inherited ApplicationSetup(aAppname);
  { TGooglePlaces.ApiKey := 'AIzaSyA31qLl7gwlbLbBIQD5l5Tha09XFP9NpDY'; }
end;

class procedure TJanuaWhatsAppWebBrokerUniDACApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaWhatsAppWebBrokerUniDACApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TJanuaWhatsAppWebBrokerUniDACApplication.LoadMenu;
begin
  inherited;

end;

class procedure TJanuaWhatsAppWebBrokerUniDACApplication.RegisterForms;
begin
  inherited;

end;

class procedure TJanuaWhatsAppWebBrokerUniDACApplication.Terminate;
begin
  inherited;

end;

end.
