unit Janua.Oracle.Design;

interface

uses System.Classes, Janua.Oracle.Web, Janua.Oracle.Functions, Janua.Oracle.SessionSource;

procedure Register;

implementation

procedure Register;
begin
  // TJanuaPostgresServerFunctions
  RegisterComponents('Janua Oracle Components', [TJanuaOracleServerFunctions]);
  { Janua.Postgres.Cloud }
   RegisterComponents('Janua Oracle Components', [Janua.Oracle.Web.TJanuaOraServerLogs]);
  {Janua.Oracle.SessionSource}
  RegisterComponents('Janua Oracle Components', [TJanuaSessionSource]);
end;

end.
