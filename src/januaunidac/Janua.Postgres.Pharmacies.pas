unit Janua.Postgres.Pharmacies;

interface

uses Janua.Core.Classes, Janua.Core.System, Datasnap.DBClient, Data.DB,
  Data.DBXJSON,
  System.SysUtils, System.Classes, Janua.Core.Pharmacies, Janua.Core.Functions,
  udmPgAnagraphPharmacies;

type
  /// <summary>
  /// Classe base del 'server' football inteso come ServerController o meglio
  /// come Model dati del football verrrà poi implementato nei vari database
  /// come motore.
  /// </summary>
  TJanuaServerPgAnPharmacies = class(TJanuaCustomServerAnPharmacies)
  private
  end;

implementation

end.
