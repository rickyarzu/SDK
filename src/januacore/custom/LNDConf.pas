unit LNDConf;

interface

uses Janua.Application.Framework, Janua.Core.Types, Janua.Core.Classes;

implementation

initialization

// Selezione Ambiente
TJanuaApplication.IsTestVersion := False;
TJanuaApplication.IsLocal := False;
TJanuaApplication.Release := '1.2.10';
TJanuaApplication.ReleaseDate := '2019-02-07';
TJanuaApplication.AppName := 'LNDCms';
TJanuaApplication.AppTitle := 'LND Liguria';


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
  TJanuaApplication.AppName := 'LND Test Manager';
  TJanuaApplication.ServerDatabaseName := 'lndtest';
  if TJanuaApplication.IsLocal then
  begin
    TJanuaApplication.RestServer := 'http://local.januaservers.com:8097';
    TJanuaApplication.WebServer := 'http://local.januaservers.com:8097';
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
  TJanuaApplication.AppName := 'LND Liguria Manager';
  TJanuaApplication.ServerDatabaseName := 'lnd';
  TJanuaApplication.RestServer := 'http://app.januaservers.com';
  TJanuaApplication.WebServer := 'http://liguria.lnd.it';
  TJanuaApplication.ListenPort := 80;
end;

TJanuaApplication.ServerPort := 5432;
TJanuaApplication.ServerPassword := '3rg0m3rc4t0r';
TJanuaApplication.ServerUsername := 'ergo';
// Database postgres LND (che non è lnd sito web).
TJanuaApplication.ServerSchema := 'public';
// TJanuaApplication.JanuaServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
TJanuaApplication.DBSchemaID := 1;
TJanuaApplication.DBUserID := 13;

end.
