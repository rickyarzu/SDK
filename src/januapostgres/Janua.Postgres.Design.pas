unit Janua.Postgres.Design;

interface

uses System.Classes, Janua.Postgres.Cloud, Janua.Postgres.Anagraph, Janua.Postgres.Cms, Janua.Postgres.Servers,
  Janua.Postgres.Functions, Janua.Postgres.JPublic, Janua.Postgres.Health, Janua.Postgres.Social,
  Janua.Postgres.System, Janua.Postgres.Users, Janua.Postgres.Football, Janua.Postgres.Ads,
  Janua.Postgres.Univeristy, Janua.Postgres.Forms, Janua.Postgres.Swap, Janua.Postgres.Statistics;

procedure Register;

implementation

procedure Register;
begin
  {Janua.Postgres.Servers}
  RegisterComponents('Janua Postgres Components', [Janua.Postgres.Servers.TJanuaPgConnection]);
  { Janua.Postgres.Cloud }
  RegisterComponents('Janua Postgres Components', [TJanuaPostgresCloud]);
  { Janua.Server.Cms }
  RegisterComponents('Janua Postgres Components', [TJanuaServerPgCms]);
  { Janua.Server.Anagraph }
  // TJanuaPostgresServerFunctions
  RegisterComponents('Janua Postgres Components', [TJanuaPostgresServerFunctions]);
  { Janua.Server.Health }
  RegisterComponents('Janua Postgres Components', [TJanuaServerHealth]);
  { Janua.Server.JPublic }
  RegisterComponents('Janua Postgres Components', [TJanuaServerJPublic]);
  { Janua.Server.Social }
  RegisterComponents('Janua Postgres Components', [TJanuaServerSocial]);
  { Janua.Server.System }
  RegisterComponents('Janua Postgres Components', [TJanuaPostgresSystem]);
  {Janua.Server.Users}
  RegisterComponents('Janua Postgres Components', [TJanuaServerUsers]);

  {Janua.Postgres.Ads}
  RegisterComponents('Janua Postgres Components', [TJanuaServerPgAds]);
  // TJanuaServerPgUniversity Janua.Postgres.Univeristy
  RegisterComponents('Janua Postgres Components', [TJanuaServerPgUniversity]);
  RegisterComponents('Janua Postgres Components', [TJanuaServerPgUniBooks]);
  // TJanuaPgServerForms Janua.Postgres.Forms
  RegisterComponents('Janua Postgres Components', [TJanuaPgServerForms]);
  // TJanuaPgServerSwap Janua.Postgres.Swap
  RegisterComponents('Janua Postgres Components', [TJanuaPgServerSwap]);
  // Web and Controllers
  // RegisterComponents('Janua Postgres Components', [Janua.Postgres.Functions.TJanuaPostgresTemplateRepository]);

  //  Janua.Postgres.Health
  RegisterComponents('Janua Postgres Components', [TJanuaPgTemplateHealth]);
  RegisterComponents('Janua Postgres Components', [TJanuaServerHealthBooking]);   //
  RegisterComponents('Janua Postgres Components', [TJanuaHealthPgWebController]);
  RegisterComponents('Janua Postgres Components', [TJanuaHealthPgWebSession]);

  // Football
  {Janua.Postgres.Football}
  RegisterComponents('Janua Postgres Components', [TJanuaServerPgFootball]);
  RegisterComponents('Janua Postgres Components', [TJanuaPgTemplateFootball]);   //
  RegisterComponents('Janua Postgres Components', [TJanuaPgFootballWebController]);
  RegisterComponents('Janua Postgres Components', [TJanuaPgWebSessionFootball]);
  RegisterComponents('Janua Postgres Components', [TJanuaPgStatisticsServer]);

end;

end.
