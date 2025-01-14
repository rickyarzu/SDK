unit PadelConf;

interface

uses  Janua.Application.Framework,  Janua.Core.Types, Janua.Core.Classes;

implementation

initialization

// Selezione Ambiente
TJanuaApplication.IsTestVersion := False;
TJanuaApplication.IsLocal := False;
TJanuaApplication.Release := '2.0.0';
TJanuaApplication.ReleaseDate := '2024-12-16';
TJanuaApplication.AppName := 'Padel Cnnect';


// Production Configuration
if TJanuaApplication.IsLocal then
begin
  TJanuaApplication.ServerAddress := 'local.januaservers.com';
end
else
begin
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
end;

if TJanuaApplication.IsTestVersion then
begin
  TJanuaApplication.AppName := 'Padel Manager';
  TJanuaApplication.ServerDatabaseName := 'test';
  if TJanuaApplication.IsLocal then
  begin
    TJanuaApplication.RestServer := 'http://ranking.ergomercator.com:8095';
    TJanuaApplication.WebServer := 'http://ranking.ergomercator.com:8095';
  end
  else
  begin
    TJanuaApplication.RestServer := 'http://ranking.ergomercator.com';
    TJanuaApplication.WebServer := 'http://ranking.ergomercator.com';
  end;
  TJanuaApplication.ListenPort := 8095;
end
else
begin
  TJanuaApplication.AppName := 'Padel Manager';
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  TJanuaApplication.RestServer := 'http://ranking.ergomercator.com';
  TJanuaApplication.WebServer := 'http://ranking.ergomercator.com';
  TJanuaApplication.ListenPort := 8095;
end;

TJanuaApplication.ServerPort := 5432;
TJanuaApplication.ServerPassword := '3rg0m3rc4t0r';
TJanuaApplication.ServerUsername := 'ergo';
// Database postgres LND (che non è lnd sito web).
TJanuaApplication.ServerSchema := 'public';
//TJanuaApplication.ServerDBEngine := TJanuaDBEngine.jdbPostgres;
TJanuaApplication.DBSchemaID := 32;
TJanuaApplication.DBUserID := 13;

end.
