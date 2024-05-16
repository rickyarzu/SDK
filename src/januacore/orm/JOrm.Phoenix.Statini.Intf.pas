unit JOrm.Phoenix.Statini.Intf;

interface

uses JOrm.Phoenix.Statini.Custom.Intf, Janua.Orm.Intf;

type

  IStatino = interface(ICustomStatino)
  ['{0CB1749C-EB22-4452-9433-CD75C9FE9CA8}']
  end;

  IStatini = interface(IJanuaRecordSet)
  ['{8DE32259-6C7E-4670-9153-8DEDACDB4509}']
    function GetStatino: IStatino;
    property Statino: IStatino read GetStatino;

  end;

implementation

end.


