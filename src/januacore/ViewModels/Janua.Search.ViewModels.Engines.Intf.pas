unit Janua.Search.ViewModels.Engines.Intf;

interface

uses
  Janua.Core.Types,
  Janua.Search.ViewModels.Intf,
  // JOrm
  Janua.Orm.Intf,
  // Anagraph
  JOrm.Anagraph.Intf,
  // Items
  JOrm.Items.Intf,
  // Logistic
  JOrm.Shipping.Intf, JOrm.Logistic.Shipments.Intf, JOrm.Logistic.Locations.Intf,
  // Sytem
  JOrm.System.Intf,
  // Documents
  JOrm.Documents.Types.Intf;

// Document Types
type
  ILookupModelDocumentTypes = interface(ILookupModel)
    ['{5B12003A-D8AB-4B22-BF11-C4502C3E49EB}']
    function GetDocType: IDocType;
    property DocType: IDocType read GetDocType;
    function GetDocTypes: IDocTypes;
    property DocTypes: IDocTypes read GetDocTypes;
  end;

  // Anagraph
type
  ISearchModelAnagraph = interface(ISearchModel)
    ['{FF9BD373-A721-4CF4-A7E9-EFBCBCEB1AE9}']
    function GetAnagraph: IAnagraph;
    procedure SetAnagraph(const Value: IAnagraph);
    property Anagraph: IAnagraph read GetAnagraph write SetAnagraph;
  end;

type
  ISearchModelUsers = interface(ISearchModel)
    ['{F9F94F98-AA72-4A55-989A-630A0BE6CE3A}']
    function GetUserProfile: IUserProfile;
    procedure SetUserProfile(const Value: IUserProfile);
    property UserProfile: IUserProfile read GetUserProfile write SetUserProfile;
  end;

  ISearchViewModelAnagraph = interface(ISearchViewModel)
    ['{226F9F54-8C54-495D-97F6-D2100F4324EB}']
    function GetAnagraph: IAnagraph;
    procedure SetAnagraph(const Value: IAnagraph);
    property Anagraph: IAnagraph read GetAnagraph write SetAnagraph;
  end;

  IJanuaSearchAnagraphContainer = interface(IJanuaSearchVMContainer)
    ['{EFFE51AB-B2CC-487F-8EC8-7F5A2430F993}']
    function GetSerchViewModelAnagraph: ISearchViewModelAnagraph;
    /// <summary>   The final class shoudl call the search view model just on the Create Event. </summary>
    property SerchViewModelAnagraph: ISearchViewModelAnagraph read GetSerchViewModelAnagraph;
  end;

  // Items
type
  ISearchModelItem = interface(ISearchModel)
    ['{7181637E-94F0-4691-A795-D849FFA90CEC}']
    function GetItem: IItemDefinition;
    procedure SetItem(const Value: IItemDefinition);
    property Item: IItemDefinition read GetItem write SetItem;
  end;

  ISearchViewModelItem = interface(ISearchViewModel)
    ['{B1682140-ECAB-4D9B-BD1C-F507DD1D40C3}']
    function GetItem: IItemDefinition;
    procedure SetItem(const Value: IItemDefinition);
    property Item: IItemDefinition read GetItem write SetItem;
  end;

  IJanuaSearchItemContainer = interface(IJanuaSearchVMContainer)
    ['{7A610A13-BA21-4FA2-969B-82C703B7A11B}']
    function GetSerchViewModelItem: ISearchViewModelItem;
    /// <summary>   The final class should call the search view model just on the Create Event. </summary>
    property SerchViewModelItem: ISearchViewModelItem read GetSerchViewModelItem;
  end;

  // Locations
type
  ISearchModelLocation = interface(ISearchModel)
    ['{3CEEB82C-15D9-4D59-AE8F-CBB473E31E2A}']
    function GetLocation: ILogisticLocation;
    procedure SetLocation(const Value: ILogisticLocation);
    property Location: ILogisticLocation read GetLocation write SetLocation;
  end;

  ISearchViewModelLocation = interface(ISearchViewModel)
    ['{849FFFD3-18FE-4C56-99A1-10C7E2A3A7EE}']
    function GetLocation: ILogisticLocation;
    procedure SetLocation(const Value: ILogisticLocation);
    property Location: ILogisticLocation read GetLocation write SetLocation;
  end;

  IJanuaSearchLocationContainer = interface(IJanuaSearchVMContainer)
    ['{D3A85D9E-8A49-4E0F-A78F-0DEC9141C3CC}']
    function GetSerchViewModelLocation: ISearchViewModelLocation;
    /// <summary>   The final class shoudl call the search view model just on the Create Event. </summary>
    property SerchViewModelLocation: ISearchViewModelLocation read GetSerchViewModelLocation;
  end;

  // Vessels -----------------------------------------------------------------------------------------------------------
type
  ISearchModelVessels = interface(ISearchModel)
    ['{D065D0E1-7189-4A60-AD20-1CC48869F4E6}']
    function GetVessel: IVessel;
    procedure SetVessel(const Value: IVessel);
    property Vessel: IVessel read GetVessel write SetVessel;
  end;

type

  ISearchViewModelVessel = interface(ISearchViewModel)
    ['{69065E89-9CD8-4A33-B20E-65BA319B7B9E}']
    function GetVessel: IVessel;
    procedure SetVessel(const Value: IVessel);
    property Vessel: IVessel read GetVessel write SetVessel;
  end;

  IJanuaSearchVesselContainer = interface(IJanuaSearchVMContainer)
    ['{D3A85D9E-8A49-4E0F-A78F-0DEC9141C3CC}']
    function GetSerchViewModelVessel: ISearchViewModelVessel;
    /// <summary>   The final class shoudl call the search view model just on the Create Event. </summary>
    property SerchViewModelVessel: ISearchViewModelVessel read GetSerchViewModelVessel;
  end;

  ISearchModelShipments = interface(ISearchModel)
    ['{B70FCA0C-39F5-4A3A-B0B5-1334A70039DB}']
    function GetShipment: IShipmentView;
    procedure SetShipment(const Value: IShipmentView);
    property Shipment: IShipmentView read GetShipment write SetShipment;
  end;

  ISearchViewModelShipments = interface(ISearchViewModel)
    ['{E97604CF-D338-48EB-B893-75415181B95B}']
    function GetShipments: IShipmentView;
    procedure SetShipments(const Value: IShipmentView);
    property Shipments: IShipmentView read GetShipments write SetShipments;
  end;

  IJanuaSearchShipmentsContainer = interface(IJanuaSearchVMContainer)
    ['{263D906F-C31F-4C19-B5E3-62DE84A58EEA}']
    function GetSerchViewModelShipments: ISearchViewModelShipments;
    /// <summary>   The final class shoudl call the search view model just on the Create Event. </summary>
    property SerchViewModelShipments: ISearchViewModelShipments read GetSerchViewModelShipments;
  end;

implementation

initialization

// ILookupModelDocumentTypes
RegisterInterface(TypeInfo(ILookupModelDocumentTypes));
// ISearchModelUsers
RegisterInterface(TypeInfo(ISearchModelUsers));
// ISearchModelAnagraph
RegisterInterface(TypeInfo(ISearchModelAnagraph));
// ISearchViewModelAnagraph
RegisterInterface(TypeInfo(ISearchViewModelAnagraph));
RegisterInterface(TypeInfo(IJanuaSearchShipmentsContainer));
RegisterInterface(TypeInfo(ISearchViewModelShipments));
RegisterInterface(TypeInfo(ISearchModelShipments));
// IJanuaSearchVesselContainer
RegisterInterface(TypeInfo(IJanuaSearchVesselContainer));
// ISearchViewModelVessel
RegisterInterface(TypeInfo(ISearchViewModelVessel));
// ISearchModelVessels
RegisterInterface(TypeInfo(ISearchModelVessels));
// IJanuaSearchLocationContainer
RegisterInterface(TypeInfo(IJanuaSearchLocationContainer));
// ISearchViewModelLocation
RegisterInterface(TypeInfo(ISearchViewModelLocation));
// ISearchModelLocation
RegisterInterface(TypeInfo(ISearchModelLocation));

end.
