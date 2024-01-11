unit Janua.Items.ViewModel.Intf;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, JOrm.Items.Intf, Janua.ViewModels.Intf, Data.DB;

type
  IJanuaItemsDataModule = interface(IJanuaDataModuleContainer)
    ['{58DC53F3-2B3E-4E0D-B564-3616C411AB4D}']
    function GetjdsItems: IJanuaDBDataset;
    procedure SetjdsItems(Value: IJanuaDBDataset);
    property jdsItems: IJanuaDBDataset read GetjdsItems write SetjdsItems;

    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    property jdsGroups: IJanuaDBDataset read GetjdsGroups write SetjdsGroups;
  end;

  IJanuaDBItemsModel = interface(IJanuaDBModel)
    ['{A5A215C8-3BC5-4219-87B4-4221A120C8C1}']
    function GetjdsItems: IJanuaDBDataset;
    procedure SetjdsItems(Value: IJanuaDBDataset);
    property jdsItems: IJanuaDBDataset read GetjdsItems write SetjdsItems;

    function GetItemRecord: IItemDefinition;
    property ItemRecord: IItemDefinition read GetItemRecord;

    function GetItemID: Integer;
    procedure SetItemID(const Value: Integer);
    property ItemID: Integer read GetItemID write SetItemID;


    function GetjdsGroups: IJanuaDBDataset;
    property jdsGroups: IJanuaDBDataset read GetjdsGroups;
  end;

  IJanuaItemsViewModel = interface(IJanuaBindable)
    ['{58F010FD-05F4-43C2-A176-A01BEF3A0F75}']
    function GetCurrentRecord: IItemDefinition;
    procedure SetCurrentRecord(const Value: IItemDefinition);
    property CurrentRecord: IItemDefinition read GetCurrentRecord write SetCurrentRecord;

  end;

  IJanuaDBItemsViewModel = interface(IJanuaDBViewModel)
    ['{D136A73C-B50D-4906-8199-52676726861B}']
    function GetjdsItems: IJanuaDBDataset;
    property jdsItems: IJanuaDBDataset read GetjdsItems;

    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    property jdsGroups: IJanuaDBDataset read GetjdsGroups;

    function GetdsItems: TDataSource;
    property dsItems: TDataSource read GetdsItems;

    function GetdsGroups: TDataSource;
    property dsGroups: TDataSource read GetdsGroups;

    // IAnagraph
    function GetCurrentRecord: IItemDefinition;
    procedure SetCurrentRecord(const Value: IItemDefinition);
    property CurrentRecord: IItemDefinition read GetCurrentRecord write SetCurrentRecord;

  end;

implementation

end.
