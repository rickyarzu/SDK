unit Janua.Oracle.Register;

interface

uses System.Classes, Janua.Oracle.Web,
  /// / Janua.Oracle.Functions, Janua.Oracle.SessionSource,
  Janua.Legacy.EndPeriod, Janua.Oracle.System, Janua.Legacy.RegisterCards, Janua.Oracle.Dataset,
  Janua.Oracle.StoredProcedure, Janua.Oracle.Repository;

procedure Register;

implementation

procedure Register;
begin
    RegisterComponents('Janua Oracle Components', [TJanuaOraDataset]);
    RegisterComponents('Janua Oracle Components', [TJanuaRegisterCards]);
    RegisterComponents('Janua Oracle Components', [TJanuaOracleSystem]);
    RegisterComponents('Janua Oracle Components', [TJanuaOracleRepository]);
    RegisterComponents('Janua Oracle Components', [TJanuaOraStoredProcedure]); // TJanuaOraStoredProcedure
    RegisterComponents('Janua Accounting', [TJanuaEndPeriod]);
    RegisterComponents('Janua Oracle Components', [Janua.Oracle.Web.TJanuaOraServerLogs]);
  // TJanuaPostgresServerFunctions
  // RegisterComponents('Janua Oracle Components', [TJanuaOracleServerFunctions]);
  { Janua.Postgres.Cloud }

  { Janua.Oracle.SessionSource }
  // RegisterComponents('Janua Oracle Components', [TJanuaSessionSource]);
  { Janua.Oracle.SessionSource }
  // RegisterComponents('Janua Legacy Oracle', [TJanuaConnectionSource]);
end;

end.
