unit Janua.ViewModels.Framework;

interface

uses Janua.ViewModels.Settings.Intf,
  // Spring
  Spring.Collections,
  // Januaproject Core Framework
  Janua.Core.Classes.Intf, Janua.Application.Intf, Janua.Core.Types, Janua.Bindings.Intf;

type
  TJanuaCoreViewModelFramework = class
  private
    class var FInitialized: Boolean;
  public
    class procedure RegisterInterfaces;
    class procedure Initialize;
    class procedure Terminate;
  end;

implementation

uses
  System.Classes, System.SysUtils,

  Janua.Application.Framework, Janua.ViewModels.Settings.Impl, Janua.ViewModels.Application, Janua.Orm.Impl,
  // Search ViewModels
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Impl,
  // Search ViewModels Implementations
  Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Engines.Impl,
  // System
  Janua.System.ViewModel.Impl, Janua.System.Model.Impl, Janua.System.ViewModel.Intf,
  // Anagraph
  Janua.Anagraph.ViewModel.Intf, Janua.Anagraph.Model.Impl, Janua.Anagraph.ViewModel.Impl,
  // Documents
  Janua.Documents.ViewModel.Intf, Janua.Documents.Model.Impl, Janua.Documents.ViewModel.Impl,
  Janua.Documents.Invoices.ViewModel.Intf, Janua.Documents.Invoices.Model.Impl,
  Janua.Documents.Invoices.ViewModel.Impl,
  // Logistics
  Janua.Documents.WarehouseReceipts.ViewModel.Intf, Janua.Documents.WarehouseReceipts.Model.Impl,
  Janua.Documents.WarehouseReceipts.ViewModel.Impl, Janua.Logistic.AWB.ViewModel.Intf,
  Janua.Logistic.AWB.Model.Impl, Janua.Logistic.AWB.ViewModel.Impl, Janua.Logistic.Shipments.Model.Impl,
  Janua.Logistic.Shipments.ViewModel.Intf, Janua.Logistic.Shipments.ViewModel.Impl,
  // Reporting Framework
  Janua.Reporting.Impl, Janua.Reporting.Intf,
  // Test Framework
  Janua.Test.Model.Impl, Janua.Test.ViewModel.Impl, Janua.Test.ViewModel.Intf;

{ TJanuaCoreViewModelFramework }

class procedure TJanuaCoreViewModelFramework.Initialize;
begin
  if not FInitialized then
    TJanuaCoreViewModelFramework.RegisterInterfaces;
end;

class procedure TJanuaCoreViewModelFramework.RegisterInterfaces;
begin
  // TJanuaViewModelApplication.Initialize;
  // ------------------ View Models -------------------------------------------------------------------

  // Anagraphs
  TJanuaApplicationFactory.RegisterClass(IJanuaDBAnagraphModel, TJanuaDBAnagraphModel);
  // TAnagraphViewModel = class(TJanuaViewModelMDTemplate, IJanuaDBAnagraphViewModel, IJanuaDBViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaDBAnagraphViewModel, TAnagraphViewModel);
  TJanuaViewModelApplication.RegisterViewModelClass(IJanuaDBAnagraphViewModel, TAnagraphViewModel);

  TJanuaApplicationFactory.RegisterClass(IJanuaDBDocumentsModel, TJanuaDBDocumentsModel);
  // TAnagraphViewModel = class(TJanuaViewModelMDTemplate, IJanuaDBAnagraphViewModel, IJanuaDBViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaDBDocumentsViewModel, TJanuaDBDocumentsViewModel);

  // Documents ---------------------------------------------------------------------------------------
  // TJanuaDBInvoicesModel = class(TJanuaDBDocumentsModel, IJanuaInvoicesModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaInvoicesModel, TJanuaDBInvoicesModel);
  // TDocInvoicesViewModel = class(TJanuaDBDocumentsViewModel, IJanuaInvoicesViewModel, IJanuaDBViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaInvoicesViewModel, TDocInvoicesViewModel);

  // Tests -------------------------------------------------------------------------------------------
  // TJanuaDBTestModel = class(TJanuaModelDBTemplate, IJanuaDBTestModel, IJanuaDBModel, IJanuaModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaDBTestModel, TJanuaDBTestModel);
  // TTestViewModel = class(TJanuaViewModelMDTemplate, IJanuaTestViewModel, IJanuaDBViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaTestViewModel, TTestViewModel);

  // Logistic -----------------------------------------------------------------------------------------
  // TJanuaDBWHRModel = class(IJanuaWHReceiptsModel, IJanuaModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaWHReceiptsModel, TJanuaDBWHRModel);
  // TDocWHReceiptsViewModel = class(TJanuaDBDocumentsViewModel, IJanuaWHReceiptsViewModel, IJanuaDBViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaWHReceiptsViewModel, TDocWHReceiptsViewModel);
  // IJanuaDBDocumentsViewModel
  // TJanuaLogisticAWBDBModel = class(TJanuaModelDBTemplate, IJanuaLogisticAWBDBModel, IJanuaModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaLogisticAWBDBModel, TJanuaLogisticAWBDBModel);
  // TAWBDBViewModel = class(TJanuaViewModelDBTemplate, IJanuaLogisticAWBDBViewModel, IJanuaDBViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaLogisticAWBDBViewModel, TAWBDBViewModel);
  // TJanuaShipmentModel = class( IJanuaShipmentsModel, IJanuaModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaShipmentsModel, TJanuaShipmentModel);
  // TJanuaDBShipmentsViewModel = class(IJanuaDBShipmentsViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaDBShipmentsViewModel, TJanuaDBShipmentsViewModel);

  // System
  TJanuaApplicationFactory.RegisterClass(IJanuaDBSystemUsersModel, TJanuaDBSystemUsersModel);
  // TAnagraphViewModel = class(TJanuaViewModelMDTemplate, IJanuaDBAnagraphViewModel, IJanuaDBViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaDBSystemUserSessionModel, TJanuaDBSystemUserSessionModel);
  // TJanuaDBSystemUserSessionViewModel = class( IJanuaSystemUserSessionViewModel)
  TJanuaApplicationFactory.RegisterClass(IJanuaSystemUserSessionViewModel,
    TJanuaDBSystemUserSessionViewModel);
  // IJanuaDBSystemUserSessionViewModel
  TJanuaApplicationFactory.RegisterClass(IJanuaDBSystemUserSessionViewModel,
    TJanuaDBSystemUserSessionViewModel);
  // ------------------- Search Models ----------------------------------------------------------------
  TJanuaViewModelApplication.Initialize;
  // Search Anagraph -> ISearchViewModelAnagraph
  TJanuaViewModelApplication.RegisterSearchViewModelClass(ISearchViewModelAnagraph,
    TJanuaSearchAnagraphViewModel);
  // Search Items -> ISearchViewModelItem
  TJanuaViewModelApplication.RegisterSearchViewModelClass(ISearchViewModelItem, TJanuaSearchItemsViewModel);
  // Search Locations -> ISearchViewModelLocation
  TJanuaViewModelApplication.RegisterSearchViewModelClass(ISearchViewModelLocation,
    TJanuaSearchLocationsViewModel);
  // Search Locations -> ISearchViewModelVessel
  TJanuaViewModelApplication.RegisterSearchViewModelClass(ISearchViewModelVessel,
    TJanuaSearchVesselsViewModel);

  // Search Shipments ->  TJanuaSearchShipmentsViewModel = class(ISearchViewModelShipments)
  TJanuaViewModelApplication.RegisterSearchViewModelClass(ISearchViewModelShipments,
    TJanuaSearchShipmentsViewModel);

  // -------------------- Reporting Framework ---------------------------------------------------------
  // TJanuaReportingList = Class(IJanuaReportingList)
  TJanuaApplicationFactory.RegisterClass(IJanuaReportingList, TJanuaReportingList);

  // -------------------- Search Containers -----------------------------------------------------------
  // TJanuaSearchAnagraphContainer = class(TJanuaSearchVMContainer,  IJanuaSearchAnagraphContainer)
  TJanuaOrmFactory.RegisterContainer(IJanuaSearchAnagraphContainer, TJanuaSearchAnagraphContainer);

  FInitialized := True;
end;

class procedure TJanuaCoreViewModelFramework.Terminate;
begin
  TJanuaViewModelApplication.Terminate
end;

initialization

TJanuaCoreViewModelFramework.FInitialized := False;
TJanuaCoreViewModelFramework.Initialize;

end.
