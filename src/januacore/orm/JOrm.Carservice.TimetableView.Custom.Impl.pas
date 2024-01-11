unit JOrm.Carservice.TimetableView.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Carservice.TimetableView.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomTimetableView = class(TJanuaRecord, ICustomTimetableView)
  private
    FWorkingday: IJanuaField;
    FSlotId: IJanuaField;
    FBookingId: IJanuaField;
    FFromId: IJanuaField;
    FToId: IJanuaField;
    FStateId: IJanuaField;
    // Slot ..................................................................................................
    FSlotDelivery: IJanuaField;
    FSlotDes: IJanuaField;
    FBooked: IJanuaField;
    // From Address ..........................................................................................
    FFromFullAddress: IJanuaField;
    FFromLatitude: IJanuaField;
    FFromLongitude: IJanuaField;
    // To Address ..........................................................................................
    FToFullAddress: IJanuaField;
    FToLatitude: IJanuaField;
    FToLongitude: IJanuaField;
    FImagesDelivery: IJanuaField;
    FImagesPickup: IJanuaField;
    FDriverAnagraphID: IJanuaField;
  private
    function GetWorkingday: IJanuaField;
    procedure SetWorkingday(const Value: IJanuaField);
    function GetSlotId: IJanuaField;
    procedure SetSlotId(const Value: IJanuaField);
    function GetBookingId: IJanuaField;
    procedure SetBookingId(const Value: IJanuaField);
    function GetFromId: IJanuaField;
    procedure SetFromId(const Value: IJanuaField);
    function GetToId: IJanuaField;
    procedure SetToId(const Value: IJanuaField);
    function GetStateId: IJanuaField;
    procedure SetStateId(const Value: IJanuaField);
    function GetSlotDes: IJanuaField;
    procedure SetSlotDes(const Value: IJanuaField);
    function GetBooked: IJanuaField;
    procedure SetBooked(const Value: IJanuaField);
    // From Address ..........................................................................................
    function GetFromFullAddress: IJanuaField;
    function GetFromLatitude: IJanuaField;
    function GetFromLongitude: IJanuaField;
    // To Address ..........................................................................................
    function GetToFullAddress: IJanuaField;
    function GetToLatitude: IJanuaField;
    function GetToLongitude: IJanuaField;
    function GetImagesDelivery: IJanuaField;
    function GetImagesPickup: IJanuaField;
    function GetDriverAnagraphID: IJanuaField;
    function GetSlotDelivery: IJanuaField;
  public
    constructor Create; override;
    property Workingday: IJanuaField read GetWorkingday write SetWorkingday;
    property SlotId: IJanuaField read GetSlotId write SetSlotId;
    property BookingId: IJanuaField read GetBookingId write SetBookingId;
    property FromId: IJanuaField read GetFromId write SetFromId;
    property ToId: IJanuaField read GetToId write SetToId;
    property StateId: IJanuaField read GetStateId write SetStateId;
    property SlotDes: IJanuaField read GetSlotDes write SetSlotDes;
    property Booked: IJanuaField read GetBooked write SetBooked;
    // From To
    property ToLongitude: IJanuaField read GetToLongitude;
    property ToLatitude: IJanuaField read GetToLatitude;
    property ToFullAddress: IJanuaField read GetToFullAddress;
    property FromFullAddress: IJanuaField read GetFromFullAddress;
    property FromLatitude: IJanuaField read GetFromLatitude;
    property FromLongitude: IJanuaField read GetFromLongitude;
    // Driver ID ............................................................................................
    /// <summary> driver_anagraph_id smallint NOT NULL DEFAULT 0 </summary>
    property DriverAnagraphID: IJanuaField read GetDriverAnagraphID;
    /// <summary> images_pickup json,</summary>
    property ImagesPickup: IJanuaField read GetImagesPickup;
    /// <summary> images_delivery json, </summary>
    property ImagesDelivery: IJanuaField read GetImagesDelivery;
    /// <summary> slot_delivery json, </summary>
    property SlotDelivery: IJanuaField read GetSlotDelivery;
  end;

  TCustomTimetableViews = class(TJanuaRecordSet, IJanuaRecordSet, ICustomTimetableViews)
  private
    function GetWorkingday: IJanuaField;
    procedure SetWorkingday(const Value: IJanuaField);
    function GetSlotId: IJanuaField;
    procedure SetSlotId(const Value: IJanuaField);
    function GetBookingId: IJanuaField;
    procedure SetBookingId(const Value: IJanuaField);
    function GetFromId: IJanuaField;
    procedure SetFromId(const Value: IJanuaField);
    function GetToId: IJanuaField;
    procedure SetToId(const Value: IJanuaField);
    function GetStateId: IJanuaField;
    procedure SetStateId(const Value: IJanuaField);
    function GetSlotDes: IJanuaField;
    procedure SetSlotDes(const Value: IJanuaField);
    function GetSlotDelivery: IJanuaField;
    function GetBooked: IJanuaField;
    procedure SetBooked(const Value: IJanuaField);
    function GetCustomTimetableView: ICustomTimetableView;
    procedure SetTimetableView(const Value: ICustomTimetableView);
    // From Address ..........................................................................................
    function GetFromFullAddress: IJanuaField;
    function GetFromLatitude: IJanuaField;
    function GetFromLongitude: IJanuaField;
    // To Address ..........................................................................................
    function GetToFullAddress: IJanuaField;
    function GetToLatitude: IJanuaField;
    function GetToLongitude: IJanuaField;
  public
    constructor Create; override;
    property Workingday: IJanuaField read GetWorkingday write SetWorkingday;
    property SlotId: IJanuaField read GetSlotId write SetSlotId;
    property BookingId: IJanuaField read GetBookingId write SetBookingId;
    property FromId: IJanuaField read GetFromId write SetFromId;
    property ToId: IJanuaField read GetToId write SetToId;
    property StateId: IJanuaField read GetStateId write SetStateId;
    property SlotDes: IJanuaField read GetSlotDes write SetSlotDes;
    property Booked: IJanuaField read GetBooked write SetBooked;
    property SlotDelivery: IJanuaField read GetSlotDelivery;
    property TimetableView: ICustomTimetableView read GetCustomTimetableView write SetTimetableView;
  end;

type
  TCustomTimetableSlot = class(TJanuaRecord, ICustomTimetableSlot)
  private
    FWorkingday: IJanuaField;
    FSlotId: IJanuaField;
    FSlotDes: IJanuaField;
    FBooked: IJanuaField;
    FFreePlaces: IJanuaField;
    FSlotDelivery: IJanuaField;
    FFree: IJanuaField;
    FBookedPlaces: IJanuaField;
  protected
    function GetWorkingday: IJanuaField;
    function GetSlotId: IJanuaField;
    function GetSlotDes: IJanuaField;
    function GetBooked: IJanuaField;
    function GetFreePlaces: IJanuaField;
    function GetFree: IJanuaField;
    function GetBookedPlaces: IJanuaField;
    function GetSlotDelivery: IJanuaField;
  public
    constructor Create; override;
    property Workingday: IJanuaField read GetWorkingday;
    property SlotId: IJanuaField read GetSlotId;
    property SlotDes: IJanuaField read GetSlotDes;
    property Booked: IJanuaField read GetBooked;
    property FreePlaces: IJanuaField read GetFreePlaces;
    property IsFree: IJanuaField read GetFree;
    property BookedPlaces: IJanuaField read GetBookedPlaces;
    property SlotDelivery: IJanuaField read GetSlotDelivery;
  end;

  TCustomTimetableSlots = class(TJanuaRecordSet, IJanuaRecordSet, ICustomTimetableSlots)
  private
    function FCustomTimetableSlot: ICustomTimetableSlot;
  protected
    function GetWorkingday: IJanuaField;
    function GetSlotId: IJanuaField;
    function GetSlotDes: IJanuaField;
    function GetBooked: IJanuaField;
    function GetFreePlaces: IJanuaField;
    function GetFree: IJanuaField;
    function GetBookedPlaces: IJanuaField;
    function GetCustomTimetableSlot: ICustomTimetableSlot;
    function GetSlotDelivery: IJanuaField;
  public
    constructor Create; override;
    property Workingday: IJanuaField read GetWorkingday;
    property SlotId: IJanuaField read GetSlotId;
    property SlotDes: IJanuaField read GetSlotDes;
    property Booked: IJanuaField read GetBooked;
    property FreePlaces: IJanuaField read GetFreePlaces;
    property IsFree: IJanuaField read GetFree;
    property BookedPlaces: IJanuaField read GetBookedPlaces;
    property TimetableSlot: ICustomTimetableSlot read GetCustomTimetableSlot;
    property SlotDelivery: IJanuaField read GetSlotDelivery;
  end;

implementation

// ------------------------------------------ Impl TTimetableView -------------------------------

{ TCustomTimetableView }

constructor TCustomTimetableView.Create;
begin
  inherited;
  FPrefix := 'tmt';
  FImagesDelivery := AddCreateField(TJanuaFieldType.jptInteger, 'images_delivery', 'images_delivery');
  FImagesPickup := AddCreateField(TJanuaFieldType.jptJson, 'images_pickup', 'images_pickup');
  FDriverAnagraphID := AddCreateField(TJanuaFieldType.jptJson, 'driver_anagraph_id', 'driver_anagraph_id');

  FWorkingday := AddCreateField(TJanuaFieldType.jptDate, 'workingday', 'workingday');
  FSlotId := AddCreateField(TJanuaFieldType.jptSmallint, 'slot_id', 'slot_id');
  FBookingId := AddCreateField(TJanuaFieldType.jptLargeint, 'booking_id', 'booking_id');
  FFromId := AddCreateField(TJanuaFieldType.jptInteger, 'from_id', 'from_id');
  FToId := AddCreateField(TJanuaFieldType.jptInteger, 'to_id', 'to_id');
  FStateId := AddCreateField(TJanuaFieldType.jptSmallint, 'state_id', 'state_id');
  FSlotDes := AddCreateField(TJanuaFieldType.jptString, 'slot_des', 'slot_des');
  // FSlotDelivery: IJanuaField;  slot_delivery character varying(12)
  FSlotDelivery := AddCreateField(TJanuaFieldType.jptString, 'slot_delivery', 'slot_delivery');
  FBooked := AddCreateField(TJanuaFieldType.jptBoolean, 'booked', 'booked');
  // From Address ..........................................................................................
  // FFromFullAddress: IJanuaField;
  FFromFullAddress := AddCreateField(TJanuaFieldType.jptString, 'from_full_address', 'from_full_address');
  // FFromLatitude: IJanuaField;
  FFromLatitude := AddCreateField(TJanuaFieldType.jptFloat, 'from_latitude', 'from_latitude');
  // FFromLongitude: IJanuaField;
  FFromLatitude := AddCreateField(TJanuaFieldType.jptFloat, 'from_longitude', 'from_longitude');
  // To Address ..........................................................................................
  // FToFullAddress: IJanuaField;
  FToFullAddress := AddCreateField(TJanuaFieldType.jptString, 'to_full_address', 'to_full_address');
  // FToLatitude: IJanuaField;
  FToLatitude := AddCreateField(TJanuaFieldType.jptFloat, 'to_latitude', 'to_latitude');
  // FToLongitude: IJanuaField;
  FToLongitude := AddCreateField(TJanuaFieldType.jptFloat, 'to_longitude', 'to_longitude');
end;

function TCustomTimetableView.GetWorkingday: IJanuaField;
begin
  Result := FWorkingday;
end;

procedure TCustomTimetableView.SetWorkingday(const Value: IJanuaField);
begin
  FWorkingday := Value;
end;

function TCustomTimetableView.GetSlotId: IJanuaField;
begin
  Result := FSlotId;
end;

procedure TCustomTimetableView.SetSlotId(const Value: IJanuaField);
begin
  FSlotId := Value;
end;

function TCustomTimetableView.GetBookingId: IJanuaField;
begin
  Result := FBookingId;
end;

function TCustomTimetableView.GetDriverAnagraphID: IJanuaField;
begin
  Result := FDriverAnagraphID
end;

procedure TCustomTimetableView.SetBookingId(const Value: IJanuaField);
begin
  FBookingId := Value;
end;

function TCustomTimetableView.GetFromFullAddress: IJanuaField;
begin
  Result := FFromFullAddress
end;

function TCustomTimetableView.GetFromId: IJanuaField;
begin
  Result := FFromId;
end;

function TCustomTimetableView.GetFromLatitude: IJanuaField;
begin
  Result := FFromLatitude
end;

function TCustomTimetableView.GetFromLongitude: IJanuaField;
begin
  Result := FFromLongitude
end;

function TCustomTimetableView.GetImagesDelivery: IJanuaField;
begin
  Result := FImagesDelivery
end;

function TCustomTimetableView.GetImagesPickup: IJanuaField;
begin
  Result := FImagesPickup
end;

procedure TCustomTimetableView.SetFromId(const Value: IJanuaField);
begin
  FFromId := Value;
end;

function TCustomTimetableView.GetToFullAddress: IJanuaField;
begin
  Result := FToFullAddress
end;

function TCustomTimetableView.GetToId: IJanuaField;
begin
  Result := FToId;
end;

function TCustomTimetableView.GetToLatitude: IJanuaField;
begin
  Result := FToLatitude
end;

function TCustomTimetableView.GetToLongitude: IJanuaField;
begin
  Result := FToLongitude
end;

procedure TCustomTimetableView.SetToId(const Value: IJanuaField);
begin
  FToId := Value;
end;

function TCustomTimetableView.GetStateId: IJanuaField;
begin
  Result := FStateId;
end;

procedure TCustomTimetableView.SetStateId(const Value: IJanuaField);
begin
  FStateId := Value;
end;

function TCustomTimetableView.GetSlotDelivery: IJanuaField;
begin
  Result := FSlotDelivery
end;

function TCustomTimetableView.GetSlotDes: IJanuaField;
begin
  Result := FSlotDes;
end;

procedure TCustomTimetableView.SetSlotDes(const Value: IJanuaField);
begin
  FSlotDes := Value;
end;

function TCustomTimetableView.GetBooked: IJanuaField;
begin
  Result := FBooked;
end;

procedure TCustomTimetableView.SetBooked(const Value: IJanuaField);
begin
  FBooked := Value;
end;

{ TCustomTimetableViews }
constructor TCustomTimetableViews.Create;
begin
  inherited;

end;

function TCustomTimetableViews.GetWorkingday: IJanuaField;
begin
  Result := self.TimetableView.Workingday;
end;

procedure TCustomTimetableViews.SetWorkingday(const Value: IJanuaField);
begin
  self.TimetableView.Workingday := Value;
end;

function TCustomTimetableViews.GetSlotId: IJanuaField;
begin
  Result := self.TimetableView.SlotId;
end;

procedure TCustomTimetableViews.SetSlotId(const Value: IJanuaField);
begin
  self.TimetableView.SlotId := Value;
end;

function TCustomTimetableViews.GetBookingId: IJanuaField;
begin
  Result := self.TimetableView.BookingId;
end;

procedure TCustomTimetableViews.SetBookingId(const Value: IJanuaField);
begin
  self.TimetableView.BookingId := Value;
end;

function TCustomTimetableViews.GetFromFullAddress: IJanuaField;
begin
  Result := self.TimetableView.FromFullAddress;
end;

function TCustomTimetableViews.GetFromId: IJanuaField;
begin
  Result := self.TimetableView.FromId;
end;

function TCustomTimetableViews.GetFromLatitude: IJanuaField;
begin
  Result := self.TimetableView.FromLatitude;
end;

function TCustomTimetableViews.GetFromLongitude: IJanuaField;
begin
  Result := self.TimetableView.FromLongitude;
end;

procedure TCustomTimetableViews.SetFromId(const Value: IJanuaField);
begin
  self.TimetableView.FromId := Value;
end;

function TCustomTimetableViews.GetToFullAddress: IJanuaField;
begin
  Result := self.TimetableView.ToFullAddress;
end;

function TCustomTimetableViews.GetToId: IJanuaField;
begin
  Result := self.TimetableView.ToId;
end;

function TCustomTimetableViews.GetToLatitude: IJanuaField;
begin
  Result := self.TimetableView.ToLatitude;
end;

function TCustomTimetableViews.GetToLongitude: IJanuaField;
begin
  Result := self.TimetableView.ToLongitude;
end;

procedure TCustomTimetableViews.SetToId(const Value: IJanuaField);
begin
  self.TimetableView.ToId := Value;
end;

function TCustomTimetableViews.GetStateId: IJanuaField;
begin
  Result := self.TimetableView.StateId;
end;

procedure TCustomTimetableViews.SetStateId(const Value: IJanuaField);
begin
  self.TimetableView.StateId := Value;
end;

function TCustomTimetableViews.GetSlotDelivery: IJanuaField;
begin
  Result := self.TimetableView.GetSlotDelivery
end;

function TCustomTimetableViews.GetSlotDes: IJanuaField;
begin
  Result := self.TimetableView.SlotDes;
end;

procedure TCustomTimetableViews.SetSlotDes(const Value: IJanuaField);
begin
  self.TimetableView.SlotDes := Value;
end;

function TCustomTimetableViews.GetBooked: IJanuaField;
begin
  Result := self.TimetableView.Booked;
end;

procedure TCustomTimetableViews.SetBooked(const Value: IJanuaField);
begin
  self.TimetableView.Booked := Value;
end;

function TCustomTimetableViews.GetCustomTimetableView: ICustomTimetableView;
begin
  Result := self.FRecord as ICustomTimetableView;
end;

procedure TCustomTimetableViews.SetTimetableView(const Value: ICustomTimetableView);
begin
  self.FRecord := Value;
end;

{ TCustomTimetableSlot }

constructor TCustomTimetableSlot.Create;
begin
  inherited;
  FPrefix := 'tmt';
  FWorkingday := AddCreateField(TJanuaFieldType.jptDate, 'workingday', 'workingday');
  FSlotId := AddCreateField(TJanuaFieldType.jptSmallint, 'slot_id', 'slot_id');
  FSlotDes := AddCreateField(TJanuaFieldType.jptString, 'slot_des', 'slot_des');
  FBooked := AddCreateField(TJanuaFieldType.jptBoolean, 'booked', 'isbooked');
  FFree := AddCreateField(TJanuaFieldType.jptBoolean, 'free', 'free');
  FFreePlaces := AddCreateField(TJanuaFieldType.jptSmallint, 'free_places', 'free_places');
  FBookedPlaces := AddCreateField(TJanuaFieldType.jptSmallint, 'booked_places', 'booked');
  // FSlotDelivery: IJanuaField;  slot_delivery character varying(12)
  FSlotDelivery := AddCreateField(TJanuaFieldType.jptString, 'slot_delivery', 'slot_delivery');
end;

function TCustomTimetableSlot.GetBooked: IJanuaField;
begin
  Result := FBooked;
end;

function TCustomTimetableSlot.GetBookedPlaces: IJanuaField;
begin
  Result := FBookedPlaces
end;

function TCustomTimetableSlot.GetFree: IJanuaField;
begin
  Result := FFree;
end;

function TCustomTimetableSlot.GetFreePlaces: IJanuaField;
begin
  Result := FFreePlaces;
end;

function TCustomTimetableSlot.GetSlotDelivery: IJanuaField;
begin
  Result := FSlotDelivery
end;

function TCustomTimetableSlot.GetSlotDes: IJanuaField;
begin
  Result := FSlotDes;
end;

function TCustomTimetableSlot.GetSlotId: IJanuaField;
begin
  Result := FSlotId;
end;

function TCustomTimetableSlot.GetWorkingday: IJanuaField;
begin
  Result := FWorkingday;
end;

{ TCustomTimetableSlots }

constructor TCustomTimetableSlots.Create;
begin
  inherited;

end;

function TCustomTimetableSlots.FCustomTimetableSlot: ICustomTimetableSlot;
begin
  Result := FRecord as ICustomTimetableSlot
end;

function TCustomTimetableSlots.GetBooked: IJanuaField;
begin
  Result := FCustomTimetableSlot.Booked
end;

function TCustomTimetableSlots.GetBookedPlaces: IJanuaField;
begin
  Result := FCustomTimetableSlot.BookedPlaces;
end;

function TCustomTimetableSlots.GetCustomTimetableSlot: ICustomTimetableSlot;
begin
  Result := FCustomTimetableSlot
end;

function TCustomTimetableSlots.GetFree: IJanuaField;
begin
  Result := FCustomTimetableSlot.IsFree;
end;

function TCustomTimetableSlots.GetFreePlaces: IJanuaField;
begin
  Result := FCustomTimetableSlot.FreePlaces;
end;

function TCustomTimetableSlots.GetSlotDelivery: IJanuaField;
begin
  Result := FCustomTimetableSlot.GetSlotDelivery
end;

function TCustomTimetableSlots.GetSlotDes: IJanuaField;
begin
  Result := FCustomTimetableSlot.SlotDes;
end;

function TCustomTimetableSlots.GetSlotId: IJanuaField;
begin
  Result := FCustomTimetableSlot.SlotId;
end;

function TCustomTimetableSlots.GetWorkingday: IJanuaField;
begin
  Result := FCustomTimetableSlot.Workingday;
end;

end.
