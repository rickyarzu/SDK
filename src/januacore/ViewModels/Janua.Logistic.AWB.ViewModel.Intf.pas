unit Janua.Logistic.AWB.ViewModel.Intf;

interface

uses Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB, JOrm.Logistic.AWBs.Intf,
  Janua.ViewModels.Intf, JOrm.Anagraph.Intf, JOrm.Items.Intf, Janua.Reporting.Intf,
  Janua.Bindings.Intf, Janua.Search.ViewModels.Engines.Intf, JOrm.Logistic.Locations.Intf;

type
  /// <summary>
  /// Airway Bill Data Module
  /// </summary>
  /// <remarks>
  /// This DM contains Master/House AWBs with rows and complement Tables
  /// </remarks>
  IJanuaLogisticAWBsDataModule = interface(IJanuaDataModuleContainer)
    ['{45BFDFB3-6139-445E-8259-AD51AE69B11F}']

    function GetjdsAWBCodes: IJanuaDBDataset;
    /// <summary>
    /// List of AWB Services Codes (This is to generate a list of expenses and
    /// incomes connected to AWB Services).
    /// </summary>
    procedure SetjdsAWBCodes(Value: IJanuaDBDataset);
    property jdsAWBCodes: IJanuaDBDataset read GetjdsAWBCodes write SetjdsAWBCodes;

    function GetjdsAWBs: IJanuaDBDataset;
    procedure SetjdsAWBs(Value: IJanuaDBDataset);
    /// <summary>
    /// List of Master and Detail Airway Bills
    /// </summary>
    property jdsAWBs: IJanuaDBDataset read GetjdsAWBs write SetjdsAWBs;

    function GetjdsAWBRows: IJanuaDBDataset;
    procedure SetjdsAWBRows(Value: IJanuaDBDataset);
    /// <summary>
    /// Airway Bill's Rows. Commodities and description.
    /// </summary>
    property jdsAWBRows: IJanuaDBDataset read GetjdsAWBRows write SetjdsAWBRows;

    function GetjdsAWBSurcharges: IJanuaDBDataset;
    procedure SetjdsAWBSurcharges(Value: IJanuaDBDataset);
    /// <summary>
    /// Airway Bill's Surcharges will be paid by the Customer, Shipper or Holder. FK to Items
    /// </summary>
    property jdsAWBSurcharges: IJanuaDBDataset read GetjdsAWBSurcharges write SetjdsAWBSurcharges;

    { function GetjdsDocAttachments: IJanuaDBDataset;
      procedure SetjdsDocAttachments(Value: IJanuaDBDataset);
      property jdsDocAttachments: IJanuaDBDataset read GetjdsDocAttachments write SetjdsDocAttachments; }
  end;

  /// <summary>Database independent Model (based on IJanuaDataset) for Logistic Airway Bill </summary>
  /// <remarks> Contains Master/House Airway Bill Dataset. With Commodities and  Expenses.
  /// Is connected to Shipments through the WorkID property Parameter </remarks>
  IJanuaLogisticAWBDBModel = interface(IJanuaDBModel)
    ['{5A89CC33-DA0F-4708-AFBD-6AC08A7E4980}']
    function GetjdsAWBCodes: IJanuaDBDataset;
    /// <summary> List of AWB Services Codes (This is to generate a list of expenses and
    /// incomes connected to AWB Services). </summary>
    procedure SetjdsAWBCodes(Value: IJanuaDBDataset);
    property jdsAWBCodes: IJanuaDBDataset read GetjdsAWBCodes write SetjdsAWBCodes;

    function GetjdsAWBs: IJanuaDBDataset;
    procedure SetjdsAWBs(Value: IJanuaDBDataset);
    /// <summary>List of Master and Detail Airway Bills</summary>
    property jdsAWBs: IJanuaDBDataset read GetjdsAWBs write SetjdsAWBs;

    function GetjdsAWBRows: IJanuaDBDataset;
    procedure SetjdsAWBRows(Value: IJanuaDBDataset);
    /// <summary>Airway Bill's Rows. Commodities and description. </summary>
    property jdsAWBRows: IJanuaDBDataset read GetjdsAWBRows write SetjdsAWBRows;

    function GetWorkID: Integer;
    procedure SetWorkID(const Value: Integer);
    /// <summary> WorkFlow To Search for an AirWayBill </summary>
    property WorkID: Integer read GetWorkID write SetWorkID;

    function GetLogisticAWBRecord: ILogisticAWB;
    /// <summary> Selected Record of the Airway Bill Interface ILogisticAWB </summary>
    property LogisticAWBRecord: ILogisticAWB read GetLogisticAWBRecord;
    /// <summary> Call Back for Shipper (Holder) on Search Anagraph </summary>
    procedure CallBackShipper(const aAnagraph: IAnagraph); // shipper
    /// <summary> Call Back for Carrier (Airplane Company). on Search Anagraph </summary>
    procedure CallBackCarrier(const aAnagraph: IAnagraph); //
    /// <summary> Call Back for Departure Airport. on Search Logistic Locations (IATA) </summary>
    procedure CAllBackAirportDeparture(const aLocation: ILogisticLocation);
    /// <summary> Call Back for Arrival Airport. on Search Logistic Locations (IATA) </summary>
    procedure CAllBackAirportArrival(const aLocation: ILogisticLocation);
    /// <summary> Call Back for Consignee. on Search Anagraph </summary>
    procedure CallBackConsignee(const aAnagraph: IAnagraph); //
    /// <summary> Call Back for IATA Agent. on Search Anagraph </summary>
    procedure CAllBackIATAAgent(const aAnagraph: IAnagraph); // Row Item
  end;

  IJanuaLogisticAWBViewModel = interface(IJanuaBindable)
    ['{E46716E7-3552-488A-97B9-172B9C9B5DD6}']
    function GetCurrentRecord: ILogisticAWB;
    procedure SetCurrentRecord(const Value: ILogisticAWB);
    property CurrentRecord: ILogisticAWB read GetCurrentRecord write SetCurrentRecord;

    function GetWorkID: Integer;
    procedure SetWorkID(const Value: Integer);
    property WorkID: Integer read GetWorkID write SetWorkID;
  end;

  IJanuaLogisticAWBDBViewModel = interface(IJanuaDBViewModel)
    ['{EC75763A-2EAD-4448-B28F-64158695B95D}']
    function GetjdsAWBs: IJanuaDBDataset;
    function GetjdsAWBRows: IJanuaDBDataset;
    function GetjdsAWBCodes: IJanuaDBDataset;
    function GetdsAWBs: TDataSource;
    function GetdsAWBRows: TDataSource;

    function GetLogisticAWBModel: IJanuaLogisticAWBDBModel;
    // ILogisticAWB
    function GetAWBRecord: ILogisticAWB;

    function GetWorkID: Integer;
    procedure SetWorkID(const Value: Integer);
    property WorkID: Integer read GetWorkID write SetWorkID;

    // ---- Properties ----------------------------------------------------------------------------------
    property jdsAWBs: IJanuaDBDataset read GetjdsAWBs;
    property jdsAWBCodes: IJanuaDBDataset read GetjdsAWBCodes;
    property LogisticAWBModel: IJanuaLogisticAWBDBModel read GetLogisticAWBModel;
    property dsAWBs: TDataSource read GetdsAWBs;
    property AWBRecord: ILogisticAWB read GetAWBRecord;
    property jdsAWBRows: IJanuaDBDataset read GetjdsAWBRows;
    property dsAWBRows: TDataSource read GetdsAWBRows;

    // ----- Search Anagraph Engine ---------------------------------------------------------------------
    function GetSVMCarrier: ISearchViewModelAnagraph;
    function GetSVMShipper: ISearchViewModelAnagraph;
    function GetSVMAirportDeparture: ISearchViewModelLocation;
    function GetSVMConsignee: ISearchViewModelAnagraph;
    procedure SetSVMCarrier(const Value: ISearchViewModelAnagraph);
    procedure SetSVMShipper(const Value: ISearchViewModelAnagraph);
    procedure SetSVMAirportDeparture(const Value: ISearchViewModelLocation);
    procedure SetSVMConsignee(const Value: ISearchViewModelAnagraph);
    function GetSVMAirportArrival: ISearchViewModelLocation;
    procedure SetSVMAirportArrival(const Value: ISearchViewModelLocation);

    procedure CallBackShipper(aRecordCount: Integer); // shipper
    procedure CallBackCarrier(aRecordCount: Integer); // Carrier (Airplane Company).
    procedure CAllBackAirportDeparture(aRecordCount: Integer); // Departure Airport
    procedure CAllBackAirportArrival(aRecordCount: Integer); // Arrival Airport
    procedure CallBackConsignee(aRecordCount: Integer); // Consignee
    procedure CAllBackIATAAgent(aRecordCount: Integer); // Row Item

    // Anagraphs
    /// <summary> View Model Search for Carrier  </summary>
    property SVMCarrier: ISearchViewModelAnagraph read GetSVMCarrier write SetSVMCarrier;
    property SVMShipper: ISearchViewModelAnagraph read GetSVMShipper write SetSVMShipper;
    property SVMConsignee: ISearchViewModelAnagraph read GetSVMConsignee write SetSVMConsignee;
    // Loctions
    property SVMAirportArrival: ISearchViewModelLocation read GetSVMAirportArrival write SetSVMAirportArrival;
    property SVMAirportDeparture: ISearchViewModelLocation read GetSVMAirportDeparture write SetSVMAirportDeparture;

  end;

  IJanuaLogisticAWBDialog = interface(IJanuaRecordEditDialog)
    ['{41705769-A7BF-4C6B-AD0A-A404790312C9}']
    function GetLogisticAWBViewModel: IJanuaLogisticAWBDBViewModel;
    procedure SetLogisticAWBViewModel(const Value: IJanuaLogisticAWBDBViewModel);
    property LogisticAWBViewModel: IJanuaLogisticAWBDBViewModel read GetLogisticAWBViewModel
      write SetLogisticAWBViewModel;
  end;

  IJanuaLogisticAWBReporter = interface(IJanuaReporter)
    ['{D1764418-67CD-4DC4-86D3-F600B0BDC49A}']
    function GetLogisticAWBViewModel: IJanuaLogisticAWBDBViewModel;
    procedure SetLogisticAWBViewModel(const Value: IJanuaLogisticAWBDBViewModel);
    property LogisticAWBViewModel: IJanuaLogisticAWBDBViewModel read GetLogisticAWBViewModel
      write SetLogisticAWBViewModel;
  end;

  IJanuaLogisticAWBMasterLabel = interface(IJanuaLogisticAWBReporter)
    ['{D94249F0-973E-44BA-9C70-5D3332424F2E}']
  end;

  IJanuaLogisticAWBHouseLabel = interface(IJanuaLogisticAWBReporter)
    ['{3C0803B1-A6FE-41E6-BA39-08A06603C780}']
  end;

implementation

end.

