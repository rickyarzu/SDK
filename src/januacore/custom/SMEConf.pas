unit SMEConf;

interface

uses Janua.Core.Types, Janua.Core.Classes;

implementation

initialization

// Selezione Ambiente
TJanuaApplication.IsTestVersion := False;
TJanuaApplication.IsLocal := False;
TJanuaApplication.Release := '1.2.0';
TJanuaApplication.ReleaseDate := '2020-02-06';
TJanuaApplication.AppName := 'SportMediaCms';
TJanuaApplication.AppTitle := 'Sportmedia Magazine';


// Production Configuration
if TJanuaApplication.IsLocal then
begin
  TJanuaApplication.ServerAddress := 'local.januaservers.com';
end
else
begin
  TJanuaApplication.JanuaServerConf.Address := 'pg.januaservers.com';
end;

if TJanuaApplication.IsTestVersion then
begin
  TJanuaApplication.AppName := 'Sportmedia Test Manager';
  TJanuaApplication.JanuaServerConf.DatabaseName := 'januaproject';
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
  TJanuaApplication.AppName := 'Sportmedia Manager';
  TJanuaApplication.JanuaServerConf.DatabaseName := 'januaproject';
  TJanuaApplication.RestServer := 'http://app.januaservers.com';
  TJanuaApplication.WebServer := 'http://liguria.lnd.it';
  TJanuaApplication.ListenPort := 80;
end;

TJanuaApplication.JanuaServerConf.Port := 5432;
TJanuaApplication.JanuaServerConf.Password := '3rg0m3rc4t0r';
TJanuaApplication.JanuaServerConf.Username := 'ergo';
// Database postgres LND (che non è lnd sito web).
TJanuaApplication.JanuaServerConf.Schema := 'public';
TJanuaApplication.JanuaServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
TJanuaApplication.DBSchemaID := 1;
TJanuaApplication.DBUserID := 13;

end.
