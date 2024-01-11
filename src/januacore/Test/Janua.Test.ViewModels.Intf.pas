unit Janua.Test.ViewModels.Intf;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, JOrm.Items.Intf, Janua.ViewModels.Intf, Data.DB;

type
  IJanuaTestDataModule = interface(IJanuaDataModuleContainer)
    ['{36E762B5-2AD2-414F-AAE8-4619CBC1CA3C}']
    function GetjdsItems: IJanuaDBDataset;
    procedure SetjdsItems(Value: IJanuaDBDataset);
    property jdsItems: IJanuaDBDataset read GetjdsItems write SetjdsItems;

    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    property jdsGroups: IJanuaDBDataset read GetjdsGroups write SetjdsGroups;
  end;

implementation

end.
