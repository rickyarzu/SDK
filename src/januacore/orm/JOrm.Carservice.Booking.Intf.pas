unit JOrm.Carservice.Booking.Intf;

interface

uses
  Data.DB,
  JOrm.Anagraph.Intf, Janua.Orm.Intf, JOrm.Carservice.BookingHeadView.Custom.Intf,
  JOrm.Carservice.TimetableView.Custom.Intf, JOrm.Carservice.BookingHead.Intf;

type
  IBookingAnagraphView = interface(IAnagraphView)
    ['{1E2E9677-1688-4D8B-8C8D-6FCC5136A382}']
    function GetReturnAddress: IAnAddress;
    procedure SetReturnAddress(const Value: IAnAddress);
    // <summary> Return Address is exactly the 'optional' Return Address if <> from ReturnAddress </summary>
    property ReturnAddress: IAnAddress read GetReturnAddress write SetReturnAddress;
  end;

  IBookingAddress = interface(IAnAddress)
    ['{6397AD96-528E-44F3-B1AD-9C1B0A4CF69E}']
    function GetAdType: IJanuaField;
    procedure SetAdType(const Value: IJanuaField);
    property AdType: IJanuaField read GetAdType write SetAdType;
    function GetBookingId: IJanuaField;
    procedure SetBookingId(const Value: IJanuaField);
    property BookingId: IJanuaField read GetBookingId write SetBookingId;
    function GetBookingJguid: IJanuaField;
    procedure SetBookingJguid(const Value: IJanuaField);
    property BookingJguid: IJanuaField read GetBookingJguid write SetBookingJguid;
  end;

  IBookingAddresses = interface(IAnAddresses)
    ['{4C33BA83-133F-4E6B-B9E5-ADD7951B75DA}']
    function GetAdType: IJanuaField;
    procedure SetAdType(const Value: IJanuaField);
    property AdType: IJanuaField read GetAdType write SetAdType;
    function GetBookingId: IJanuaField;
    procedure SetBookingId(const Value: IJanuaField);
    property BookingId: IJanuaField read GetBookingId write SetBookingId;
    function GetBookingJguid: IJanuaField;
    procedure SetBookingJguid(const Value: IJanuaField);
    property BookingJguid: IJanuaField read GetBookingJguid write SetBookingJguid;
    function GetBookingAddress: IBookingAddress;
    procedure SetBookingAddress(const Value: IBookingAddress);
    property BookingAddress: IBookingAddress read GetBookingAddress write SetBookingAddress;
  end;

  IBookingHeadView = interface;

  ItimetableView = interface(ICustomTimetableView)
    ['{0B8C0992-2D27-457C-8EA4-DD542B9F9604}']
    function GetDirection: Integer;
    procedure SetDirection(const Value: Integer);
    property Direction: Integer read GetDirection write SetDirection;

    function GetMasterBooking: IBookingHeadView;
    procedure SetMasterBooking(const Value: IBookingHeadView);

    procedure RefreshMasterBooking;

    property MasterBooking: IBookingHeadView read GetMasterBooking write SetMasterBooking;

    function GePickupAddress: IBookingAddress;
    procedure SetPickupAddress(const Value: IBookingAddress);
    property PickupAddress: IBookingAddress read GePickupAddress write SetPickupAddress;

    function GeDeliveryAddress: IBookingAddress;
    procedure SetDeliveryAddress(const Value: IBookingAddress);
    property DeliveryAddress: IBookingAddress read GeDeliveryAddress write SetDeliveryAddress;
  end;

  ItimetableViews = interface(ICustomTimetableViews)
    ['{F588FEAC-4CB5-480A-8DD1-10250C8D0C08}']
    function GetTimeTableView: ItimetableView;
    procedure SetTimeTableView(const Value: ItimetableView);
    /// <summary> TimeTableView is the record inherited from  ICustomTimeTableView related with this RecordSet </summary>
    property TimetableView: ItimetableView read GetTimeTableView write SetTimeTableView;
  end;

  ItimetableSlot = interface(ICustomTimetableSlot)
    ['{3B832EEA-A35F-43AC-9221-B24AEAF596F4}']
    function GetDirection: Integer;
    procedure SetDirection(const Value: Integer);
    property Direction: Integer read GetDirection write SetDirection;
  end;

  ItimetableSlots = interface(ICustomTimetableSlots)
    ['{48B225BC-9805-4F15-9557-B270029230A5}']
    function GetTimeTableSlot: ItimetableSlot;
    /// <summary> TimeTableSlot is the record inherited from  ICustomTimeTableSlot related with this RecordSet </summary>
    property TimetableSlot: ItimetableSlot read GetTimeTableSlot;
  end;

  /// <summary> IBookingHeadView Extends the custom ICustomBookingHeadView with checks and properties </summary>
  IBookingHeadView = interface(ICustomBookingHeadView)
    ['{7BF139E2-4F96-488E-B606-F31B3AE2A14D}']
    function checkBooking: Boolean;

    function GetPickupDateTime: ItimetableView;
    /// <summary> PickupDateTime is the record inherited from  ICustomTimeTableView related with this RecordSet </summary>
    property PickupDateTime: ItimetableView read GetPickupDateTime;

    function GetDeliveryDateTime: ItimetableView;
    /// <summary> DeliveryDateTime is the record inherited from  ICustomTimeTableView related with this RecordSet </summary>
    property DeliveryDateTime: ItimetableView read GetDeliveryDateTime;

    function GetTimeTable: ItimetableViews;
    /// <summary> This is the Timetable Recordset that summarize both delivery and pickup travels </summary>
    property TimeTable: ItimetableViews read GetTimeTable;
    procedure ClearCustomer;
    function GetCustCountryCellular: string;

    function GetHasReturn: Boolean;
    procedure SetHasReturn(const Value: Boolean);
    /// <summary> True if if the travel is Pickup/Return and False if it is only 'one way' </summary>
    property HasReturn: Boolean read GetHasReturn write SetHasReturn;

    /// <summary> For the Client (User or Service Customer) a Booking Anagraph is Used with Vehicle </summary>
    function GetAnagraphClient: IBookingAnagraphView;
    property AnagraphClient: IBookingAnagraphView read GetAnagraphClient;

    /// <summary> For the Service a Standard Anagraph is Linked to Anagraph Session Profile </summary>
    function GetServiceAnagraph: IAnagraphView;
    property ServiceAnagraph: IAnagraphView read GetServiceAnagraph;

    /// <summary> This is the Service Address 'choosen' for the Booking between all service Adresses </summary>
    function GeServiceAddress: IBookingAddress;
    property ServiceAddress: IBookingAddress read GeServiceAddress;

    // IBookingAddresses
    function GeAddresses: IBookingAddresses;
    /// <summary> Booking Addresses is a List of Addresses to define Pickup/Delivery Locations
    /// it contains the selected Service Address and Customer Address(es) </summary>
    property Addresses: IBookingAddresses read GeAddresses;

    /// <summary> Reads Customer Addresses and Service Selected Address and Populates Addresses List  </summary>
    procedure RefreshAddresses;

    /// <summary> Populates Vehicle Informations (Model, Color, Numberplace) from a Dataset </summary>
    procedure SetVehicleFromDataset(const aDataset: TDataset);
  end;

  /// <summary> IBookingHeadsView Extends the custom ICustomBookingHeadsView with checks and properties </summary>
  IBookingHeadsView = interface(ICustomBookingHeadViews)
    ['{A3BD62DD-74CC-4D05-89FC-1847954DB5FC}']
    function GetBookingHeadView: IBookingHeadView;
    procedure SetBookingHeadView(const Value: IBookingHeadView);
    /// <summary> BookingHeadView is the record inherited from  ICustomBookingHeadView related with this RecordSet </summary>
    property BookingHeadView: IBookingHeadView read GetBookingHeadView write SetBookingHeadView;
  end;

  IBookingTimetableView = interface(ICustomTimetableView)
    ['{0A61110C-43F5-4AF2-94BE-3D1CD2BAD139}']
    /// <summary> For the Client (User or Service Customer) a Booking Anagraph is Used with Vehicle </summary>
    function GetPickupAnagraph: IAnagraph;
    property PickupAnagraph: IAnagraph read GetPickupAnagraph;
    /// <summary> For the Service a Standard Anagraph is Linked to Anagraph Session Profile </summary>
    function GetDeliveryAnagraph: IAnagraph;
    property DeliveryAnagraph: IAnagraph read GetDeliveryAnagraph;
    /// <summary>  </summary>
    function GetBookingHead: IBookingHead;
    property BookingHead: IBookingHead read GetBookingHead;
  end;

implementation

end.
