unit Janua.Core.Pharmacies;

interface

{$I JANUACORE.INC}

uses Janua.Core.System, Janua.Core.Jpublic, System.SysUtils, System.Classes,
  Janua.Core.Functions, Janua.Core.Classes, DB,
  Janua.Core.Servers,
  Janua.Core.CustomControls, Janua.Core.Users, Janua.Core.Health;

type
  /// <summary>
  /// Classe base del 'server' football inteso come ServerController o meglio
  /// come Model dati del football verrrà poi implementato nei vari database
  /// come motore.
  /// </summary>
  TJanuaCustomServerAnPharmacies = class(TJanuaCustomServer)
  private
  end;

implementation

end.

