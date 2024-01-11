unit Janua.Template.Server.Intf;

interface

uses Janua.Server.Intf, Janua.Orm.Intf;

type
  IJanuaTemplateStorage = interface(IJanuaStorage)

  end;

type
  IJanuaDBTemplateStorage = interface(IJanuaTemplateStorage)

  end;

  IJanuaServerTemplate = interface;

  IJanuaServerTemplateCache = interface

  end;

  IJanuaServerTemplate = interface(IJanuaServer)

  end;

  IJanuaServerTemplateFactory = interface(IInterface)

    function GetServerTemplate: IJanuaServerTemplate; overload;
    function GetServerTemplate(const aCache: IJanuaServerTemplateCache): IJanuaServerTemplate; overload;
    function GetServerTemplate(const aLocalStorage, aRemoteStorage: IJanuaTemplateStorage): IJanuaServerTemplate; overload;
    function GetTemplateStorage: IJanuaTemplateStorage;
    function GetTemplateCache: IJanuaServerTemplateCache;
  end;

implementation

end.
