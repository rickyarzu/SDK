unit JOrm.Phoenix.Amministratori.Intf;

interface

uses JOrm.Phoenix.Amministratori.Custom.Intf, Janua.Orm.Intf;

type

  IAmministratore = interface(ICustomAmministratore)
  ['{39A33C85-3E32-4F02-A3F9-B138CC518D49}']
  end;

  IAmministratori = interface(IJanuaRecordSet)
  ['{C71DBCAD-D15E-40C4-AED3-3876DE1697EB}']
    function GetAmministratore: IAmministratore;
    property Amministratore: IAmministratore read GetAmministratore;

  end;

implementation

end.


