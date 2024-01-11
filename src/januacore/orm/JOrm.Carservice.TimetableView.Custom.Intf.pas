unit JOrm.Carservice.TimetableView.Custom.Intf;

interface

uses Janua.Orm.Intf;

type
  ICustomTimetableSlot = interface(IJanuaRecord)
    ['{35574EA7-7B65-4D73-BAF5-FA965AE702A1}']
    function GetWorkingday: IJanuaField;
    property Workingday: IJanuaField read GetWorkingday;
    function GetSlotId: IJanuaField;
    property SlotId: IJanuaField read GetSlotId;
    function GetSlotDes: IJanuaField;
    property SlotDes: IJanuaField read GetSlotDes;
    function GetBooked: IJanuaField;
    property Booked: IJanuaField read GetBooked;
    function GetBookedPlaces: IJanuaField;
    property BookedPlaces: IJanuaField read GetBookedPlaces;
    function GetFreePlaces: IJanuaField;
    property FreePlaces: IJanuaField read GetFreePlaces;
    function GetFree: IJanuaField;
    property IsFree: IJanuaField read GetFree;
    function GetSlotDelivery: IJanuaField;
  end;

  ICustomTimetableSlots = interface(IJanuaRecordSet)
    ['{D8841033-01B2-4CBA-9588-C2045D9671EB}']
    function GetWorkingday: IJanuaField;
    property Workingday: IJanuaField read GetWorkingday;
    function GetSlotId: IJanuaField;
    property SlotId: IJanuaField read GetSlotId;
    function GetSlotDes: IJanuaField;
    property SlotDes: IJanuaField read GetSlotDes;
    function GetBooked: IJanuaField;
    property Booked: IJanuaField read GetBooked;
    function GetFreePlaces: IJanuaField;
    property FreePlaces: IJanuaField read GetFreePlaces;
    function GetFree: IJanuaField;
    property IsFree: IJanuaField read GetFree;
    function GetCustomTimetableSlot: ICustomTimetableSlot;
    function GetBookedPlaces: IJanuaField;
    property BookedPlaces: IJanuaField read GetBookedPlaces;
    function GetSlotDelivery: IJanuaField;
  end;

  ICustomTimetableView = interface(IJanuaRecord)
    ['{ADA380C8-9C26-4E60-953B-6F22B1BC7FBD}']
    function GetWorkingday: IJanuaField;
    procedure SetWorkingday(const Value: IJanuaField);
    property Workingday: IJanuaField read GetWorkingday write SetWorkingday;
    function GetSlotId: IJanuaField;
    procedure SetSlotId(const Value: IJanuaField);
    property SlotId: IJanuaField read GetSlotId write SetSlotId;
    function GetBookingId: IJanuaField;
    procedure SetBookingId(const Value: IJanuaField);
    property BookingId: IJanuaField read GetBookingId write SetBookingId;
    function GetFromId: IJanuaField;
    procedure SetFromId(const Value: IJanuaField);
    property FromId: IJanuaField read GetFromId write SetFromId;
    function GetToId: IJanuaField;
    procedure SetToId(const Value: IJanuaField);
    property ToId: IJanuaField read GetToId write SetToId;
    function GetStateId: IJanuaField;
    procedure SetStateId(const Value: IJanuaField);
    property StateId: IJanuaField read GetStateId write SetStateId;
    function GetSlotDes: IJanuaField;
    procedure SetSlotDes(const Value: IJanuaField);
    property SlotDes: IJanuaField read GetSlotDes write SetSlotDes;
    function GetBooked: IJanuaField;
    procedure SetBooked(const Value: IJanuaField);
    property Booked: IJanuaField read GetBooked write SetBooked;
    // From Address ..........................................................................................
    function GetFromFullAddress: IJanuaField;
    property FromFullAddress: IJanuaField read GetFromFullAddress;
    function GetFromLatitude: IJanuaField;
    property FromLatitude: IJanuaField read GetFromLatitude;
    function GetFromLongitude: IJanuaField;
    property FromLongitude: IJanuaField read GetFromLongitude;
    // To Address ..........................................................................................
    function GetToFullAddress: IJanuaField;
    property ToFullAddress: IJanuaField read GetToFullAddress;
    function GetToLatitude: IJanuaField;
    property ToLatitude: IJanuaField read GetToLatitude;
    function GetToLongitude: IJanuaField;
    property ToLongitude: IJanuaField read GetToLongitude;
    // Driver ID ............................................................................................
    function GetDriverAnagraphID: IJanuaField;
    /// <summary> driver_anagraph_id smallint NOT NULL DEFAULT 0 </summary>
    property DriverAnagraphID: IJanuaField read GetDriverAnagraphID;
    function GetImagesPickup: IJanuaField;
    /// <summary> images_pickup json,</summary>
    property ImagesPickup: IJanuaField read GetImagesPickup;
    function GetImagesDelivery: IJanuaField;
    /// <summary> images_delivery json, </summary>
    property ImagesDelivery: IJanuaField read GetImagesDelivery;
    function GetSlotDelivery: IJanuaField;

  end;

  ICustomTimetableViews = interface(IJanuaRecordSet)
    ['{38417503-5CD3-42CB-95FB-E715008C72C2}']
    function GetWorkingday: IJanuaField;
    procedure SetWorkingday(const Value: IJanuaField);
    property Workingday: IJanuaField read GetWorkingday write SetWorkingday;
    function GetSlotId: IJanuaField;
    procedure SetSlotId(const Value: IJanuaField);
    property SlotId: IJanuaField read GetSlotId write SetSlotId;
    function GetBookingId: IJanuaField;
    procedure SetBookingId(const Value: IJanuaField);
    property BookingId: IJanuaField read GetBookingId write SetBookingId;
    function GetFromId: IJanuaField;
    procedure SetFromId(const Value: IJanuaField);
    property FromId: IJanuaField read GetFromId write SetFromId;
    function GetToId: IJanuaField;
    procedure SetToId(const Value: IJanuaField);
    property ToId: IJanuaField read GetToId write SetToId;
    function GetStateId: IJanuaField;
    procedure SetStateId(const Value: IJanuaField);
    property StateId: IJanuaField read GetStateId write SetStateId;
    function GetSlotDes: IJanuaField;
    procedure SetSlotDes(const Value: IJanuaField);
    property SlotDes: IJanuaField read GetSlotDes write SetSlotDes;
    function GetSlotDelivery: IJanuaField;

    function GetBooked: IJanuaField;
    procedure SetBooked(const Value: IJanuaField);
    property Booked: IJanuaField read GetBooked write SetBooked;
    function GetCustomTimetableView: ICustomTimetableView;
    procedure SetTimetableView(const Value: ICustomTimetableView);
    // From Address ..........................................................................................
    function GetFromFullAddress: IJanuaField;
    property IsFromFullAddress: IJanuaField read GetFromFullAddress;
    function GetFromLatitude: IJanuaField;
    property IsFromLatitude: IJanuaField read GetFromLatitude;
    function GetFromLongitude: IJanuaField;
    property IsFromLongitude: IJanuaField read GetFromLongitude;
    // To Address ..........................................................................................
    function GetToFullAddress: IJanuaField;
    property IsToFullAddress: IJanuaField read GetToFullAddress;
    function GetToLatitude: IJanuaField;
    property IsToLatitude: IJanuaField read GetToLatitude;
    function GetToLongitude: IJanuaField;
    property IsToLongitude: IJanuaField read GetToLongitude;
  end;

implementation

end.
