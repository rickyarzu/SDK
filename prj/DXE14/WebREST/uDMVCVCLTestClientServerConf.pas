unit uDMVCVCLTestClientServerConf;

interface

uses Janua.VCL.Application, System.Classes, System.SysUtils, Janua.Core.Types, Janua.Bindings.Impl;

type
  TDMVCVCLTestClientServerApplication = class(TJanuaVCLCustomApplication)
  public
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
  end;

implementation

{ TDMVCVCLTestClientServerApplication }

class procedure TDMVCVCLTestClientServerApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

end;

class procedure TDMVCVCLTestClientServerApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TDMVCVCLTestClientServerApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TDMVCVCLTestClientServerApplication.LoadMenu;
begin
  inherited;

end;

class procedure TDMVCVCLTestClientServerApplication.RegisterForms;
begin
  inherited;

end;

end.
