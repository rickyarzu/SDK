unit Janua.Core.CustomApplication;

interface

uses System.Classes, System.SysUtils, Janua.Core.Types;

type
  TJanuaCustomApplication = class
  private
    class var FDBEngine: TJanuaDBEngine;
    class procedure SetDBEngine(const Value: TJanuaDBEngine); static;
  protected
    class var FPgConf: TJanuaServerRecordConf;
  public
    class constructor Create;
  public
    /// <summary> Interface registration for VCL Forms </summary>
    class procedure RegisterForms; virtual;
    class procedure ApplicationSetup(const aAppname: string); virtual;
    class procedure ApplicationTearDown; virtual;
    class procedure ConnectionSetup; virtual;
    class procedure LoadMenu; virtual; abstract;
    class procedure Terminate;
    class procedure AfterLogin; virtual;
    class property DBEngine: TJanuaDBEngine read FDBEngine write SetDBEngine;
  end;

implementation

uses System.StrUtils,
  // Janua Framework
  Janua.Orm.Register, Janua.ViewModels.Framework, Janua.Application.Framework,
  // Janua Cloud Framework
  Janua.Cloud.Mail.Indy,
  // Janua Controls Templates
  Janua.Controls.Forms.Impl;

{ TJanuaCustomApplication }

class procedure TJanuaCustomApplication.AfterLogin;
begin
  // Inizializzazione Framework
end;

class procedure TJanuaCustomApplication.ApplicationSetup(const aAppname: string);
begin
  TJanuaApplication.AppName := IfThen(TJanuaApplication.TestMode, StringReplace(aAppname.ToLower, 'app',
    'test', [rfIgnoreCase]), aAppname.ToLower);
  TJanuaApplication.Initialize;
  ConnectionSetup;
  // Inizializzo la Registrazione del Framework Orm
  Janua.Orm.Register.TJanuaOrmFramework.Initialize;
  // These are the basic interfaces for View and Models (all DB and Platform independant)
  TJanuaCoreViewModelFramework.RegisterInterfaces;

  TJanuaApplication.CloudConf.GoogleAppKey := TJanuaCoreOS.ReadRegistry(False, 'GoogleAppKey', 'Google',
    '236693880296-rm39939mbtpabvkfdiqsolvkdogn334a.apps.googleusercontent.com');
  TJanuaApplication.CloudConf.GoogleAppSecret := TJanuaCoreOS.ReadRegistry(False, 'GoogleAppKey', 'Google',
    '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');

  RegisterForms;
end;

class procedure TJanuaCustomApplication.ApplicationTearDown;
begin
  TJanuaFormsApplication.Applications.Clear;
  TJanuaApplication.Terminate;
end;

class procedure TJanuaCustomApplication.ConnectionSetup;
var
  sDBEngine: string;
begin
  { aConnection.Username := TJanuaApplication.ServerUserName;
    aConnection.Password := TJanuaApplication.ServerPassword; }

  TJanuaApplication.ServerSchema := 'public';
  TJanuaApplication.ServerUsername := 'ergo';
  TJanuaApplication.ServerPassword := '3rg0m3rc4t0r';
  TJanuaApplication.DBSchemaID := 0;
  sDBEngine := JanuaDBEngineCode[FDBEngine];

  TJanuaApplication.ServerAddress := TJanuaCoreOS.ReadRegistry(False, 'address', sDBEngine,
    TJanuaApplication.ServerAddress);
  TJanuaApplication.ServerPort := TJanuaCoreOS.ReadIntRegistry(False, 'port', sDBEngine,
    TJanuaApplication.ServerPort);
  TJanuaApplication.ServerDatabaseName := TJanuaCoreOS.ReadRegistry(False, 'database', sDBEngine,
    TJanuaApplication.ServerDatabaseName);
  TJanuaApplication.DBSchemaID := TJanuaCoreOS.ReadIntRegistry(False, 'schema_id', sDBEngine,
    TJanuaApplication.DBSchemaID);
end;

class constructor TJanuaCustomApplication.Create;
begin
  try
    FDBEngine := jdbPostgres;
  except
    on e: exception do
      raise exception.Create('TJanuaCustomApplication.Create ' + e.Message);
  end;
end;

class procedure TJanuaCustomApplication.RegisterForms;
begin

end;

class procedure TJanuaCustomApplication.SetDBEngine(const Value: TJanuaDBEngine);
begin
  FDBEngine := Value;
end;

class procedure TJanuaCustomApplication.Terminate;
begin

end;

end.
