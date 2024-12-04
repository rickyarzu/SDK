unit uPhoenixBackgroundServiceConf;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types, Janua.Core.CustomApplication;

type
  TPhoenixBackgroundServiceApp = class(TJanuaCustomApplication)
  public
    /// <summary> Interface registration for VCL Forms </summary>
    class procedure RegisterForms; override;
    class procedure ApplicationSetup(const aAppname: string); override;
    class procedure ApplicationTearDown; override;
    class procedure ConnectionSetup; override;
    class procedure LoadMenu; override;
    class procedure AfterLogin; override;
  end;

implementation

uses Janua.Application.Framework;

class procedure TPhoenixBackgroundServiceApp.RegisterForms;
begin
  inherited;
end;

class procedure TPhoenixBackgroundServiceApp.ApplicationSetup(const aAppname: string);
begin
  inherited;
end;

class procedure TPhoenixBackgroundServiceApp.ApplicationTearDown;
begin
  inherited;
end;

class procedure TPhoenixBackgroundServiceApp.ConnectionSetup;
begin
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.ServerPort := 5432;
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  TJanuaApplication.DBSchemaID := 33;
  inherited;
end;

class procedure TPhoenixBackgroundServiceApp.LoadMenu;
begin
  inherited;
end;

class procedure TPhoenixBackgroundServiceApp.AfterLogin;
begin
  inherited;
end;

end.
