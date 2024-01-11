unit Janua.Logistic.Shipments.ViewModel.Intf;

interface

uses
  // Classes Definitions
  Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB, Janua.ViewModels.Intf,
  // JOrm
  JOrm.Items.Intf, JOrm.Anagraph.Intf, JOrm.Logistic.Locations.Intf, JOrm.Logistic.Shipments.Intf,
  JOrm.Shipping.Intf, JOrm.Documents.Types.Intf, Jorm.Documents.Intf,
  // ViewModel
  Janua.Reporting.Intf, Janua.Workflows.ViewModel.Intf, Janua.Search.ViewModels.Engines.Intf;

type
  /// <summary>
  /// ShipmentsData Module
  /// </summary>
  /// <remarks>
  /// This DM contains Master/House AWBs with rows and complement Tables
  /// </remarks>
  IJanuaShipmentsDataModule = interface(IJanuaWorkFlowsDataModule)
    ['{C5EDDD42-1AA7-4D37-8AD9-4ADCB89C0F25}']
    function GetjdsConditions: IJanuaDBDataset;
    procedure SetjdsConditions(Value: IJanuaDBDataset);
    /// <summary>
    /// List of AWB Services Codes (This is to generate a list of expenses and
    /// incomes connected to AWB Services).
    /// </summary>
    property jdsConditions: IJanuaDBDataset read GetjdsConditions write SetjdsConditions;

    function GetjdsShipments: IJanuaDBDataset;
    procedure SetjdsShipments(Value: IJanuaDBDataset);
    /// <summary>
    /// List of Master and Detail Airway Bills
    /// </summary>
    property jdsShipments: IJanuaDBDataset read GetjdsShipments write SetjdsShipments;

    function GetjdsShipmentRows: IJanuaDBDataset;
    procedure SetjdsShipmentRows(Value: IJanuaDBDataset);
    /// <summary>
    /// Airway Bill's Rows. Commodities and description.
    /// </summary>
    property jdsShipmentRows: IJanuaDBDataset read GetjdsShipmentRows write SetjdsShipmentRows;

    function GetjdsLocations: IJanuaDBDataset;
    procedure SetjdsLocations(Value: IJanuaDBDataset);
    /// <summary>
    /// Airway Bill's Rows. Commodities and description.
    /// </summary>
    property jdsLocations: IJanuaDBDataset read GetjdsLocations write SetjdsLocations;

    function GetjdsContainerTypes: IJanuaDBDataset;
    procedure SetjdsContainerTypes(Value: IJanuaDBDataset);
    /// <summary>
    /// Airway Bill's Rows. Commodities and description.
    /// </summary>
    property jdsContainerTypes: IJanuaDBDataset read GetjdsContainerTypes write SetjdsContainerTypes;

    function GetjdsAttachments: IJanuaDBDataset;
    procedure SetjdsAttachments(Value: IJanuaDBDataset);
    property jdsAttachments: IJanuaDBDataset read GetjdsAttachments write SetjdsAttachments;

  end;

  IJanuaShipmentsModel = interface(IJanuaDBModel)
    ['{51EDB301-7D8B-434F-B81C-544A55176A15}']
    function GetjdsConditions: IJanuaDBDataset;
    /// <summary>
    /// List of AWB Services Codes (This is to generate a list of expenses and
    /// incomes connected to AWB Services).
    /// </summary>
    procedure SetjdsConditions(Value: IJanuaDBDataset);
    property jdsConditions: IJanuaDBDataset read GetjdsConditions write SetjdsConditions;

    function GetjdsShipments: IJanuaDBDataset;
    procedure SetjdsShipments(Value: IJanuaDBDataset);
    /// <summary>
    /// List of Master and Detail Airway Bills
    /// </summary>
    property jdsShipments: IJanuaDBDataset read GetjdsShipments write SetjdsShipments;

    function GetjdsAttachments: IJanuaDBDataset;
    procedure SetjdsAttachments(Value: IJanuaDBDataset);
    /// <summary>
    /// List of Master and Detail Airway Bills
    /// </summary>
    property jdsAttachments: IJanuaDBDataset read GetjdsAttachments write SetjdsAttachments;

    function GetjdsShipmentRows: IJanuaDBDataset;
    procedure SetjdsShipmentRows(Value: IJanuaDBDataset);
    /// <summary>
    /// Airway Bill's Rows. Commodities and description.
    /// </summary>
    property jdsShipmentRows: IJanuaDBDataset read GetjdsShipmentRows write SetjdsShipmentRows;

    function GetWorkTypeID: SmallInt;
    procedure SetWorkTypeID(const Value: SmallInt);
    /// <summary>
    /// WorkFlow To Search for a Shipment.
    /// </summary>
    property WorkTypeID: SmallInt read GetWorkTypeID write SetWorkTypeID;

    function GetShipmentRecord: IShipmentView;
    procedure SetShipmentRecord(const Value: IShipmentView);
    /// <summary> Current Record is the shipment (pickup order) with its workflow </summary>
    property ShipmentRecord: IShipmentView read GetShipmentRecord write SetShipmentRecord;

    function GetWorkID: Int64;
    procedure SetWorkID(const Value: Int64);
    /// <summary>  This property is linked with the ID Parameter of the Heads, used to retrieve only one
    /// document at a time </summary>
    property WorkID: Int64 read GetWorkID write SetWorkID;

    // Search Elements for the model
    procedure CallBackShipper(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // shipper
    procedure CallBackConsignee(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Consignee
    procedure CallBackAgent(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Agent
    procedure CallBackCustomer(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Agent
    procedure CallBackCarrier(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
    procedure CAllBackLocation(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
    procedure CAllBackVessel(const aVessel: IVessel; aRecordCount: Integer = 1);
    procedure CallBackWarehouse(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Warehouse
    procedure CallBackAirport(const aLocation: ILogisticLocation; aRecordCount: Integer = 1); // Departure Airport
    procedure CallBackArrivalAirport(const aLocation: ILogisticLocation; aRecordCount: Integer = 1); // Arrival Airport
    procedure CallBackPol(const aLocation: ILogisticLocation; aRecordCount: Integer = 1); // Port of Loading
    procedure CallBackPod(const aLocation: ILogisticLocation; aRecordCount: Integer = 1); // Port of Destination
    procedure CallBackRowItem(const aItemDefinition: IItemDefinition; aRecordCount: Integer = 1); // Commodity
  end;

  IJanuaShipmentsViewModel = interface(IJanuaViewModel)
    ['{15E2851C-B67F-42DB-82C2-3F8C627B7B79}']
    function GetShipmentRecord: IShipmentView;
    procedure SetShipmentRecord(const Value: IShipmentView);
    property ShipmentRecord: IShipmentView read GetShipmentRecord write SetShipmentRecord;
    function GetWorkTypeID: SmallInt;
    procedure SetWorkTypeID(const Value: SmallInt);
    /// <summary> WorkFlow To Search for a Shipment. </summary>
    property WorkTypeID: SmallInt read GetWorkTypeID write SetWorkTypeID;
  end;

  IJanuaDBShipmentsViewModel = interface(IJanuaDBViewModel)
    ['{A1D77FBF-0BE0-4068-BBA6-F71FE453251B}']
    function GetjdsConditions: IJanuaDBDataset;
    function GetjdsShipments: IJanuaDBDataset;
    function GetjdsShipmentRows: IJanuaDBDataset;
    function GetjdsAttachments: IJanuaDBDataset;

    function GetdsShipments: TDataSource;
    function GetdsShipmentRows: TDataSource;
    function GetDBShipmentsModel: IJanuaShipmentsModel;

    function GetShipmentRecord: IShipmentView;
    function GetWorkTypeID: Integer;
    procedure SetWorkTypeID(const Value: Integer);
    property WorkTypeID: Integer read GetWorkTypeID write SetWorkTypeID;

    // ---- Properties ----------------------------------------------------------------------------------
    property jdsShipments: IJanuaDBDataset read GetjdsShipments;
    property jdsAttachments: IJanuaDBDataset read GetjdsAttachments;
    property ShipmentsModel: IJanuaShipmentsModel read GetDBShipmentsModel;
    property dsShipments: TDataSource read GetdsShipments;
    property ShipmentRecord: IShipmentView read GetShipmentRecord;
    property jdsShipmentRows: IJanuaDBDataset read GetjdsShipmentRows;
    property dsShipmentRows: TDataSource read GetdsShipmentRows;

    // ----- Search Engines -----------------------------------------------------------------------------
    function GetSVMCarrier: ISearchViewModelAnagraph;
    function GetSVMShipper: ISearchViewModelAnagraph;
    function GetSVMSupplier: ISearchViewModelAnagraph;
    function GetSVMAgent: ISearchViewModelAnagraph;
    function GetSVMCustomer: ISearchViewModelAnagraph;
    function GetSVMLocation: ISearchViewModelAnagraph;
    function GetSVMVessel: ISearchViewModelVessel;
    function GetSVMWarehouse: ISearchViewModelAnagraph;
    function GetSVMAirport: ISearchViewModelLocation;
    function GetSVMArrivalAirport: ISearchViewModelLocation;
    function GetSVMPol: ISearchViewModelLocation;
    function GetSVMPod: ISearchViewModelLocation;
    function GetSVMConsignee: ISearchViewModelAnagraph; //

    // Search Items Engine ------------------------------------------------------------------------------
    function GetSVMRowItem: ISearchViewModelItem;

    procedure CallBackCarrier(aRecordCount: Integer = 1); // Carrier
    procedure CallBackShipper(aRecordCount: Integer = 1); // shipper
    procedure CallBackonsignee(aRecordCount: Integer = 1); // Consignee
    procedure CallBackAgent(aRecordCount: Integer = 1); // Agent
    procedure CallBackCustomer(aRecordCount: Integer = 1); // Agent
    procedure CAllBackLocation(aRecordCount: Integer = 1); // Warehouse Location (Anagraph)
    procedure CAllBackVessel(aRecordCount: Integer = 1);
    procedure CallBackWarehouse(aRecordCount: Integer = 1); // Warehouse
    procedure CallBackAirport(aRecordCount: Integer = 1); // Departure Airport
    procedure CallBackArrivalAirport(aRecordCount: Integer = 1); // Arrival Airport

    /// <summary> View Model Search for Carrier  </summary>
    property SVMShipper: ISearchViewModelAnagraph read GetSVMShipper;
    property SVMCarrier: ISearchViewModelAnagraph read GetSVMCarrier;
    property SVMAgent: ISearchViewModelAnagraph read GetSVMAgent;
    property SVMCustomer: ISearchViewModelAnagraph read GetSVMCustomer;
    property SVMLocation: ISearchViewModelAnagraph read GetSVMLocation;
    property SVMSupplier: ISearchViewModelAnagraph read GetSVMSupplier;

    property SVMVessel: ISearchViewModelVessel read GetSVMVessel;
    property SVMWarehouse: ISearchViewModelAnagraph read GetSVMWarehouse;
    property SVMAirport: ISearchViewModelLocation read GetSVMAirport;
    property SVMArrivalAirport: ISearchViewModelLocation read GetSVMArrivalAirport;
    property SVMPol: ISearchViewModelLocation read GetSVMPol;
    property SVMPod: ISearchViewModelLocation read GetSVMPod;
    property SVMRowItem: ISearchViewModelItem read GetSVMRowItem;
    property SVMConsignee: ISearchViewModelAnagraph read GetSVMConsignee; // 11 Consignees

  end;

  IJanuaShipmentEditDialog = interface(IJanuaRecordEditDialog)
    ['{B64DC7EE-0D51-414F-A3FA-57B734D5F710}']
    function GetShipmentsViewModel: IJanuaDBShipmentsViewModel;
    procedure SetShipmentsViewModel(const Value: IJanuaDBShipmentsViewModel);
    property ShipmentsViewModel: IJanuaDBShipmentsViewModel read GetShipmentsViewModel write SetShipmentsViewModel;
  end;

  IJanuaShipmentReporter = interface(IJanuaReporter)
    ['{A1F2A20B-0D0F-48A7-A6EC-B45690CE1DAA}']
    function GetShipmentsViewModel: IJanuaDBShipmentsViewModel;
    procedure SetShipmentsViewModel(const Value: IJanuaDBShipmentsViewModel);
    property ShipmentsViewModel: IJanuaDBShipmentsViewModel read GetShipmentsViewModel write SetShipmentsViewModel;
  end;

  ///<summary>IJanuaInventoryListDialog: Dialog to show a list of rows (commodities) in warehouse inventory.
  /// Items can be filtered by supplier, item description, destintion or Vessel reference </summary>
  IJanuaInventoryListDialog = interface(IJanuaForm)
    ['{AD4DF529-E774-49BA-83D0-0419CF39AFDB}']
    function GetInventoryDocRow: IDocRow;
    procedure SetInventoryDocRow(const Value: IDocRow);
    ///<summary> after  an OK modal Result a Record When Row Reference is returned back  </summary>
    property InventoryDocRow: IDocRow read GetInventoryDocRow write SetInventoryDocRow;
  end;

implementation

end.
