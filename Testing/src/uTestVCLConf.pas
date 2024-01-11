unit uTestVCLConf;

interface

uses Janua.Core.Types, Janua.Core.Classes;

implementation

uses Janua.Application.Framework;

initialization

// Selezione Ambiente
TJanuaApplication.IsTestVersion := False;
TJanuaApplication.IsLocal := True;
TJanuaApplication.Release := '1.1';
TJanuaApplication.AppName := 'Test Application';

// Production Configuration
if TJanuaApplication.IsLocal then
begin
  TJanuaApplication.ServerAddress := 'local.januaservers.com';
end
else
begin
  TJanuaApplication.ServerAddress := 'lndpg.januaservers.com';
end;

if TJanuaApplication.IsTestVersion then
begin
  TJanuaApplication.AppName := 'LND Test';
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  if TJanuaApplication.IsLocal then
  begin
    TJanuaApplication.RestServer := 'http://testlnd.januaservers.com:8097';
    TJanuaApplication.WebServer := 'http://testlnd.januaservers.com:8097';
  end
  else
  begin
    TJanuaApplication.RestServer := 'http://testlnd.januaservers.com';
    TJanuaApplication.WebServer := 'http://testlnd.januaservers.com';
  end;
  TJanuaApplication.ListenPort := 8097;
end
else
begin
  TJanuaApplication.AppName := 'Test Application';
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  TJanuaApplication.RestServer := 'http://app.januaservers.com';
  TJanuaApplication.WebServer := 'http://liguria.lnd.it';
  TJanuaApplication.ListenPort := 80;
end;

TJanuaApplication.ServerPort := 5432;
TJanuaApplication.ServerPassword := '3rg0m3rc4t0r';
TJanuaApplication.ServerUsername := 'ergo';
// Database postgres LND (che non è lnd sito web).
TJanuaApplication.ServerSchema := 'public';
// TJanuaApplication.ServerEngine := TJanuaDBEngine.jdbPostgres;
TJanuaApplication.DBSchemaID := 1;
TJanuaApplication.DBUserID := 13;

end.
