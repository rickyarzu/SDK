unit Janua.Mock.Firedac.Framework;

interface

type
  TJanuaMockFiredacApplication = class
    class procedure RegisterFireDacDataModules;
    class procedure RegisterClasses;
    class procedure Terminate;
  end;

implementation

uses Janua.Application.Framework, Janua.Orm.Intf, Janua.Orm.Types, Janua.ViewModels.Application,
  Janua.Search.ViewModels.Engines.Intf, Janua.Orm.Impl, Janua.Orm.Dataset.Impl,
  // Firedac Classes
  Janua.Orm.Firedac,
  // Shipping
  Janua.Shipping.Vessels.Firedac.Virtual,
  // System
  Janua.System.FDacDM, Janua.System.ViewModel.Intf, Janua.System.Model.Impl,
  // Items
  Janua.Items.Firedac.Virtual, Janua.Items.ViewModel.Intf,
  // Anagraph View Model Framework
  Janua.Anagraph.ViewModel.Intf, udmVirtualAnagraph,
  // Documents View Model Framework
  Janua.Documents.FDacDM.Virtual, Janua.Documents.ViewModel.Intf,
  // WHReceipts
  Janua.WHReceipts.FDacDM.Virtual, Janua.Documents.WarehouseReceipts.ViewModel.Intf,
  // Locistic(AWB FShipments)
  Janua.Logistic.AWB.FDacDM.Virtual, Janua.Logistic.AWB.ViewModel.Intf,
  Janua.Logistic.Shipments.FDacDM.Virtual, Janua.Logistic.Shipments.ViewModel.Intf,
  // TEst Framework
  Janua.Test.FireDac.dmVirtual, Janua.Test.ViewModel.Intf;

{ TJanuaMockFiredacApplication }

class procedure TJanuaMockFiredacApplication.RegisterClasses;
begin
  TJanuaApplicationFactory.RegisterClass(IJanuaVirtualDBDataset, TJanuaVtMemDataset);
  // TJanuaVtDataset
  TOrmDatasetFactory.SetDBDatasetClass(TJanuaVtMemDataset);
end;

class procedure TJanuaMockFiredacApplication.RegisterFireDacDataModules;
begin
  TJanuaApplicationFactory.RegisterClass(IJanuaAnagraphDataModule, TJanuaVirtualAnagraph);
  TJanuaApplicationFactory.RegisterClass(IJanuaTestDataModule, TJanuaVirtualTest);
  // TJanuaVtItemsDataModule = class(TJanuaCustomItemsDataModule, IJanuaItemsDataModule)
  TJanuaApplicationFactory.RegisterClass(IJanuaDocumentsDataModule, TJanuaVirtualDocumentsDataModule);
  TJanuaApplicationFactory.RegisterClass(IJanuaItemsDataModule, TJanuaVtItemsDataModule);
  TJanuaViewModelApplication.RegisterSearchModelClass(ISearchModelItem, TJanuaVtSearchItems);
  // TJanuaFdMockSearchVesselsModel = class(TJanuaSearchVesselsModel, ISearchModelVessels, ISearchModel)
  TJanuaViewModelApplication.RegisterSearchModelClass(ISearchModelVessels, TJanuaFdMockSearchVesselsModel);
  // TdmVirtualWHReceipts = IJanuaWHReceiptsDataModule
  TJanuaApplicationFactory.RegisterClass(IJanuaWHReceiptsDataModule, TJanuaVirtualWHReceiptsDataModule);
  // Search Models based on Postgres Datasets.
  TJanuaViewModelApplication.RegisterSearchModelClass(ISearchModelAnagraph, TJanuaVirtualSearchAnagraph);
  // TJanuaFDacMemAWBsDataModule IJanuaLogisticAWBsDataModule - Air Waybills
  TJanuaApplicationFactory.RegisterClass(IJanuaLogisticAWBsDataModule, TJanuaFDacMemAWBsDataModule);
  // TJanuaFDacMemLogisticShipmentsDataModule = class(TJanuaLogisticShipmentsDataModule, IJanuaShipmentsDataModule)
  TJanuaApplicationFactory.RegisterClass(IJanuaShipmentsDataModule, TJanuaFDacMemLogisticShipmentsDataModule);
  // TJanuaMemSystemDataModule = class(TJanuaCustomSystemDataModule, IJanuaSystemDataModule)
  TJanuaApplicationFactory.RegisterClass(IJanuaSystemDataModule, TJanuaFDacMemSystemDM);
  // TLookupPostgresDocumentTypes = class(TLookupModelDocumentTypes, ISearchModelAnagraph, ILookupModel)
  TJanuaViewModelApplication.RegisterLookupModelClass(ILookupModelDocumentTypes, TLookupFDacMemDocumentTypes);
end;

class procedure TJanuaMockFiredacApplication.Terminate;
begin

end;

end.
