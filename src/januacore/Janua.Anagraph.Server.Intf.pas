unit Janua.Anagraph.Server.Intf;

interface

uses Janua.Server.Intf, Janua.Core.DB.Intf, JOrm.Anagraph.Intf, Janua.Orm.Intf,
  JOrm.Anagraph.Group.Intf;

type
  TJanuaAnagraphSettings = record
    anagraph_id: integer;
    group_id: integer;
    searchname: string;
    showdeleted: boolean;
    limit: integer;
    page: integer;
  public
    constructor Create(aSearchName: string);
  end;

type
  IJanuaAnagraphStorage = interface(IJanuaStorage)
    ['{7C68530F-AF61-4C25-A7FA-9BA1B8AE7393}']
    // Anagraph
    function GetAnagraphsStorage: IJanuaRecordSetStorage;
    procedure SetAnagraphsStorage(const Value: IJanuaRecordSetStorage);
    property AnagraphsStorage: IJanuaRecordSetStorage read GetAnagraphsStorage write SetAnagraphsStorage;
    function OpenAnagraphs: integer;
    // Group (should include Anagraph as Sub-Recordset)
    function GetGroupsStorage: IJanuaRecordSetStorage;
    procedure SetGroupsStorage(const Value: IJanuaRecordSetStorage);
    property GroupsStorage: IJanuaRecordSetStorage read GetGroupsStorage write SetGroupsStorage;
    function OpenGroups: integer;
  end;

type
  IJanuaDBAnagraphStorage = interface(IJanuaAnagraphStorage)
    ['{DAA11FE5-2462-46A7-8102-E2DD1602E6E5}']
    function GetjdsAnagraphs: IJanuaDBDataset;
    procedure SetjdsAnagraphs(Value: IJanuaDBDataset);
    property jdsAnagraphs: IJanuaDBDataset read GetjdsAnagraphs write SetjdsAnagraphs;
    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    property jdsGroups: IJanuaDBDataset read GetjdsGroups write SetjdsGroups;
  end;

  IJanuaServerAnagraph = interface;

  IJanuaServerAnagraphCache = interface

  end;

  IJanuaServerAnagraph = interface(IJanuaServer)
    ['{2C18E7E2-1041-4321-B544-420D9D1969CD}']
    function GetAnagraphs: IAnagraphs;
    procedure SetAnagraphs(const Value: IAnagraphs);
    property Anagraphs: IAnagraphs read GetAnagraphs write SetAnagraphs;
    function RestGetAnagraphs(const aParams: IJanuaParams): IJanuaFuncResult;
    // Groups
    function GetGroups: IAnagGroup;
    procedure SetGroups(const Value: IAnagGroup);
    property Groups: IAnagGroup read GetGroups write SetGroups;
    function RestGetGroups(const aParams: IJanuaParams): IJanuaFuncResult;
  end;

  IJanuaServerAnagraphFactory = interface(IInterface)
    ['{22089E36-D1FD-4B20-A278-026CE6C6C72C}']
    // Server
    function GetAnagraphCache: IJanuaServerAnagraphCache;
    // Anagraph
    function GetServerAnagraph: IJanuaServerAnagraph; overload;
    function GetServerAnagraph(const aCache: IJanuaServerAnagraphCache): IJanuaServerAnagraph; overload;
    function GetServerAnagraph(const aLocalStorage, aRemoteStorage: IJanuaAnagraphStorage)
      : IJanuaServerAnagraph; overload;
    function GetAnagraphStorage: IJanuaAnagraphStorage;
  end;

implementation

{ TJanuaAnagraphSettings }

constructor TJanuaAnagraphSettings.Create(aSearchName: string);
begin
  anagraph_id := 0;
  group_id := 0;
  searchname := '%';
  showdeleted := false;
  limit := 20;
  page := 1;
end;

end.
