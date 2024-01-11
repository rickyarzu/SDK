unit Janua.Test.CoreApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Core.CustomApplication;


type
  TJanuaTestCoreApplication = class(TJanuaCustomApplication)
  public
    /// <summary> Interface registration for VCL Forms </summary>
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure Terminate;
    class procedure AfterLogin; override;
  end;

implementation

{ TJanuaTestCoreApplication }

class procedure TJanuaTestCoreApplication.AfterLogin;
begin
  inherited;

end;

class procedure TJanuaTestCoreApplication.ApplicationSetup(const aAppname: string);
begin
  inherited;

end;

class procedure TJanuaTestCoreApplication.ApplicationTearDown;
begin
  inherited;

end;

class procedure TJanuaTestCoreApplication.ConnectionSetup;
begin
  inherited;

end;

class procedure TJanuaTestCoreApplication.RegisterForms;
begin
  inherited;

end;

class procedure TJanuaTestCoreApplication.Terminate;
begin

end;

end.
