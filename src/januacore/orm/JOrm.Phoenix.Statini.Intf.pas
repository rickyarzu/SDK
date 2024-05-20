unit JOrm.Phoenix.Statini.Intf;

interface

uses JOrm.Phoenix.Statini.Custom.Intf, Janua.Orm.Intf;

type

  IStatino = interface(ICustomStatino)
  ['{937F530F-B526-4B8F-836C-E3F103387040}']
  end;

  IStatini = interface(IJanuaRecordSet)
  ['{6543A2CC-35DC-4AF8-A249-986A85438EAE}']
    function GetStatino: IStatino;
    property Statino: IStatino read GetStatino;

  end;

implementation

end.


