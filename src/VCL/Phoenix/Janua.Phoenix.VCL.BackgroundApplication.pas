unit Janua.Phoenix.VCL.BackgroundApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TPhoenixVCLBackgroundApplication = class(TJanuaVCLCustomApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
  end;

implementation

uses Janua.Application.Framework;

{ TPhoenixVCLBackgroundApplication }

class procedure TPhoenixVCLBackgroundApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;
  TJanuaApplication.CloudConf.GoogleAppKey := TJanuaCoreOS.ReadParam('Google', 'AppKey',
    '236693880296-rm39939mbtpabvkfdiqsolvkdogn334a.apps.googleusercontent.com');
  TJanuaApplication.CloudConf.GoogleAppSecret := TJanuaCoreOS.ReadParam('Google', 'AppSecret',
    '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');
end;

class procedure TPhoenixVCLBackgroundApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TPhoenixVCLBackgroundApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TPhoenixVCLBackgroundApplication.LoadMenu;
begin
  inherited;

end;

class procedure TPhoenixVCLBackgroundApplication.RegisterForms;
begin
  inherited;

end;

end.
