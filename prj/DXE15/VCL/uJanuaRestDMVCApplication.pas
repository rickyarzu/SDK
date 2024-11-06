unit uJanuaRestDMVCApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl, Janua.VCL.Application;

type
  TJanuaRestDMVCApplication = class(TJanuaVCLCustomApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
  end;

implementation

{ TJanuaRestDMVCApplication }

class procedure TJanuaRestDMVCApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

end;

class procedure TJanuaRestDMVCApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaRestDMVCApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TJanuaRestDMVCApplication.LoadMenu;
begin
  inherited;

end;

class procedure TJanuaRestDMVCApplication.RegisterForms;
begin
  inherited;

end;

end.
