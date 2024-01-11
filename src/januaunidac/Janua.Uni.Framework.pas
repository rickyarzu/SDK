unit Janua.Uni.Framework;

interface

uses Janua.Uni.Intf;

type
  TUniFramework = class
  private
    class var FUniDatasetFunctions: IJanuaUniDatasetFunctions;
    class var FOraDatasetFunctions: IJanuaOraDatasetFunctions;
    class var FPgDatasetFunctions: IJanuaPgDatasetFunctions;
  protected
    class function GetUniDatasetFunctions: IJanuaUniDatasetFunctions; static;
    class function GetOraDatasetFunctions: IJanuaOraDatasetFunctions; static;
    class function GetPgDatasetFunctions: IJanuaPgDatasetFunctions; static;
  public
    class procedure Terminate;
  public
    class property UniDatasetFunctions: IJanuaUniDatasetFunctions read GetUniDatasetFunctions;
    class property OraDatasetFunctions: IJanuaOraDatasetFunctions read GetOraDatasetFunctions;
    class property PgDatasetFunctions: IJanuaPgDatasetFunctions read GetPgDatasetFunctions;
  end;

type
  TJanuaUniPgApplication = class
    class procedure RegisterDataModules;
    class procedure RegisterInterfaces;
    class procedure RegisterFramework;
    class procedure Terminate;
  end;

implementation

uses
  System.Classes, System.SysUtils,
  Janua.Application.Framework, Janua.Lookups.Unidac.Postgres, Janua.Lookups.Intf, Janua.Orm.UniDac,
  Janua.Orm.Intf, Janua.Uni.Impl, Janua.Postgres.Impl, Janua.Uni.Virtual, Janua.ViewModels.Application,
  // Anagraph View Model Framework
  Janua.Anagraph.ViewModel.Intf, Janua.Anagraph.Postgres.Storage,
  // Items View Model Engine
  Janua.Items.ViewModel.Intf, udmJanuaPgItemsStorage,
  // Documents Framework
  udmJanuaPgDocumentsStorage, Janua.Documents.ViewModel.Intf,
  Janua.Documents.PgInvoices, Janua.Documents.Invoices.ViewModel.Intf,
  // Warehouse Receipts
  Janua.Documents.WarehouseReceipts.ViewModel.Intf, Janua.Documents.PgWHReceipts,
  // Search and Lookup Engines
  Janua.Search.ViewModels.Engines.Intf,
  // System
  Janua.System.Postgres.Storage, Janua.System.ViewModel.Intf,
  // Logistic Framework
  udmPgLogisticStorage, Janua.Workflows.ViewModel.Intf, Janua.Logistic.Shipments.ViewModel.Intf,
  Janua.WorkFlow.Postgres, Janua.Logistic.Shipments.Postgres, Janua.Logistic.PgAWBStorage,
  Janua.Logistic.AWB.ViewModel.Intf,
  // Cloud Framework
  Janua.Postgres.Cloud, Janua.Cloud.Files.Intf,
  // Shipping TestFramework
  Janua.Shipping.Vessels.Postgres,
  // Car Service Framework
  Janua.Carservice.Driver.ViewModel.Intf, Janua.CarService.PgRemoteDrivers,
  // TEst Framework
  Janua.Test.Unidac.Virtual, Janua.Test.ViewModel.Intf;

{ TUniFramework }

class function TUniFramework.GetOraDatasetFunctions: IJanuaOraDatasetFunctions;
begin
  if not Assigned(FOraDatasetFunctions) and not TJanuaApplicationFactory.TryGetInterface
    (IJanuaOraDatasetFunctions, FOraDatasetFunctions) then
    raise Exception.Create('TUniFramework.GetOraDatasetFunctions: IJanuaOraDatasetFunctions not set');
  Result := FOraDatasetFunctions
end;

class function TUniFramework.GetPgDatasetFunctions: IJanuaPgDatasetFunctions;
begin
  if not Assigned(FPgDatasetFunctions) and not TJanuaApplicationFactory.TryGetInterface
    (IJanuaPgDatasetFunctions, FPgDatasetFunctions) then
    raise Exception.Create('TUniFramework.GetOraDatasetFunctions: IJanuaPgDatasetFunctions not set');
  Result := FPgDatasetFunctions
end;

class function TUniFramework.GetUniDatasetFunctions: IJanuaUniDatasetFunctions;
begin
  if not Assigned(FUniDatasetFunctions) and not TJanuaApplicationFactory.TryGetInterface
    (IJanuaUniDatasetFunctions, FUniDatasetFunctions) then
    raise Exception.Create('TUniFramework.GetOraDatasetFunctions: IJanuaUniDatasetFunctions not set');
  Result := FUniDatasetFunctions
end;

class procedure TUniFramework.Terminate;
begin
  FUniDatasetFunctions := nil;
  FOraDatasetFunctions := nil;
  FPgDatasetFunctions := nil;
end;

{ TJanuaUniPgApplication }

class procedure TJanuaUniPgApplication.RegisterDataModules;
begin
  TJanuaApplicationFactory.RegisterClass(IJanuaAnagraphDataModule, TJanuaPgAnagraphModel);
  // TJanuaSystemDataModule = TJanuaCustomSystemDataModule
  TJanuaApplicationFactory.RegisterClass(IJanuaSystemDataModule, TJanuaSystemDataModule);

  TJanuaApplicationFactory.RegisterClass(IJanuaTestDataModule, TJanuaVirtualTest);
  // IJanuaDocumentsDataModule TJanuaPgDocumentsDataModule
  TJanuaApplicationFactory.RegisterClass(IJanuaDocumentsDataModule, TJanuaPgDocumentsDataModule);

  // Wharehouse receipts
  // TJanuaVirtualWHReceiptsDataModule  IJanuaWHReceiptsDataModule
  TJanuaApplicationFactory.RegisterClass(IJanuaWHReceiptsDataModule, TJanuaPgWHReceiptsDataModule);

  // Invoices
  // TJanuaPgInvoicesDataModule = IJanuaInvoicesDataModule
  TJanuaApplicationFactory.RegisterClass(IJanuaInvoicesDataModule, TJanuaPgInvoicesDataModule);

  // TJanuaPgLogisticShipmentsDataModule = class(TJanuaLogisticShipmentsDataModule, IJanuaShipmentsDataModule)
  TJanuaApplicationFactory.RegisterClass(IJanuaShipmentsDataModule, TJanuaPgLogisticShipmentsDataModule);

  // TJanuaPgItemsModel = IJanuaItemsDataModule
  TJanuaApplicationFactory.RegisterClass(IJanuaItemsDataModule, TJanuaPgItemsDataModule);
  // Search Models based on Postgres Datasets.
  TJanuaViewModelApplication.RegisterSearchModelClass(ISearchModelAnagraph, TJanuaPgSearchAnagraph);
  TJanuaViewModelApplication.RegisterSearchModelClass(ISearchModelItem, TJanuaPgSearchItems);
  // TJanuaPgSearchLocationsModel = class( ISearchModelLocation,)
  TJanuaViewModelApplication.RegisterSearchModelClass(ISearchModelLocation, TJanuaPgSearchLocationsModel);
  // TJanuaPgJanuaSearchShipmentsModel = class(ISearchModelShipments)    - Work Shipments
  TJanuaViewModelApplication.RegisterSearchModelClass(ISearchModelShipments,
    TJanuaPgJanuaSearchShipmentsModel);

  // TLookupPostgresDocumentTypes = class(TLookupModelDocumentTypes, ISearchModelAnagraph, ILookupModel)
  TJanuaViewModelApplication.RegisterLookupModelClass(ILookupModelDocumentTypes,
    TLookupPostgresDocumentTypes);
  // TJanuaPgWorkflowsDataModule = class(TJanuaWorkflowsDataModule, IJanuaWorkFlowsDataModule)
  TJanuaApplicationFactory.RegisterClass(IJanuaWorkFlowsDataModule, TJanuaPgWorkflowsDataModule);
  // TJanuaPgSearchVesselsModel = class(TJanuaSearchLocationsModel, ISearchModelVessels, ISearchModel)
  TJanuaViewModelApplication.RegisterSearchModelClass(ISearchModelVessels, TJanuaPgSearchVesselsModel);
  // TJanuaPgAWBsDataModule = class(IJanuaLogisticAWBsDataModule) - Air Waybills
  TJanuaApplicationFactory.RegisterClass(IJanuaLogisticAWBsDataModule, TJanuaPgAWBsDataModule);

  //TJanuaPgDriversDataModule = class(IJanuaCSDriversDataModule)
  TJanuaApplicationFactory.RegisterClass(IJanuaCSDriversDataModule, TJanuaPgDriversDataModule);

end;

class procedure TJanuaUniPgApplication.RegisterFramework;
begin
  RegisterDataModules;
  RegisterInterfaces;
end;

class procedure TJanuaUniPgApplication.RegisterInterfaces;
begin
  // TJanuaUniVirtualDatasetFactory = class(TJanuaInterfacedObject, IJanuaDBDatasetFactory)
  TJanuaApplicationFactory.RegisterClass(IJanuaDBDatasetFactory, TJanuaUniVirtualDatasetFactory);
  // TJanuaUniPgLookups = class(TJanuaCustomLookups, IJanuaLookupFactory)
  TJanuaApplicationFactory.RegisterClass(IJanuaLookupFactory, TJanuaUniPgLookups);
  // TJanuaPgCloudStorage = class(TJanuaStorage, IJanuaCloudFileStorage)
  TJanuaApplicationFactory.RegisterClass(IJanuaCloudFileStorage, TJanuaPgCloudStorage);
end;

class procedure TJanuaUniPgApplication.Terminate;
begin
  TUniFramework.Terminate;
end;

end.
