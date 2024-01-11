unit Janua.Sports.UniGUIApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.UniGUI.UniDacApplication;

type
  TJanuaSportsUniGUIApplication = class(TJanuaUniGUIApplication)
  protected
    class var FPgConf: TJanuaServerRecordConf;
  public
    /// <summary> Interface registration for VCL Forms </summary>
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
    class procedure Terminate;
    class procedure AfterLogin; override;
  end;

implementation

uses System.Types, System.StrUtils,
  // Janua Janua.VCL.Anagraph
  Janua.Anagraph.ViewModel.Intf,
  // Test.VCL
  Janua.Test.ViewModel.Intf,
  // Janua Core & DB
  Janua.Application.Framework, Janua.Uni.Framework,
  Janua.Mock.Firedac.Framework,
  Janua.ViewModels.Framework, Janua.ViewModels.Application, Janua.Orm.Register;

{ TJanuaUniGUIApplication }
class procedure TJanuaSportsUniGUIApplication.AfterLogin;
begin
  inherited;
end;

class procedure TJanuaSportsUniGUIApplication.ApplicationSetup(const aAppname: string);
begin
  inherited ApplicationSetup(aAppname);
end;

class procedure TJanuaSportsUniGUIApplication.ApplicationTearDown;
begin
  inherited;
end;

class procedure TJanuaSportsUniGUIApplication.ConnectionSetup;
begin
  // uncomment this for testing based on UNIGUI environment
  inherited;
end;

class procedure TJanuaSportsUniGUIApplication.LoadMenu;
begin
  inherited;
end;

class procedure TJanuaSportsUniGUIApplication.RegisterForms;
begin
  // No Forms right now ...........................
end;

class procedure TJanuaSportsUniGUIApplication.Terminate;
begin
  inherited;
end;

end.

