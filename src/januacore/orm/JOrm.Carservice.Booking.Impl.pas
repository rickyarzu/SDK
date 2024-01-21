unit JOrm.Carservice.Booking.Impl;

{ Booking contiene tutti gli oggetti del Booking nel nostro caso semplicemente la Vista Booking ed i due sotto-record
  dei viaggi di a/r presi da TimeTable del Booking }

interface

uses
  Data.DB,
  JOrm.Carservice.BookingHeadView.Custom.Impl, JOrm.Carservice.BookingHeadView.Custom.Intf,
  Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Carservice.Booking.Intf,
  JOrm.Carservice.TimetableView.Custom.Impl, JOrm.Anagraph.Impl, JOrm.Anagraph.Intf,
  JOrm.Carservice.BookingHead.Intf, JOrm.Carservice.BookingHead.Impl;

// ------------------------------------------ Impl object interface ----------------------------------
type
  /// <summary> Anagraph View is here extended by addying a Return Address rigth along with Booking Record </summary>
  TBookingAnagraphView = class(TAnagraphView, IBookingAnagraphView)
  private
    FReturnAddress: IAnAddress;
  protected
    function GetReturnAddress: IAnAddress;
    procedure SetReturnAddress(const Value: IAnAddress);
  public
    // <summary> Return Address is exactly the 'optional' Return Address if <> from ReturnAddress </summary>
    property ReturnAddress: IAnAddress read GetReturnAddress write SetReturnAddress;
  public
    constructor Create; override;
    procedure UpdateAddressList; override;
  end;

  TBookingAddress = class(TAnAddress, IBookingAddress)
  private
    FAdType: IJanuaField;
    FBookingId: IJanuaField;
    FBookingJguid: IJanuaField;
  public
    constructor Create; override;
    function GetAdType: IJanuaField;
    procedure SetAdType(const Value: IJanuaField);
    function GetBookingId: IJanuaField;
    procedure SetBookingId(const Value: IJanuaField);
    function GetBookingJguid: IJanuaField;
    procedure SetBookingJguid(const Value: IJanuaField);
  public
    property BookingJguid: IJanuaField read GetBookingJguid write SetBookingJguid;
    property BookingId: IJanuaField read GetBookingId write SetBookingId;
    property AdType: IJanuaField read GetAdType write SetAdType;
  end;

  TBookingAddresses = class(TAnAddresses, IBookingAddresses)
  private
    FAdType: IJanuaField;
    FBookingId: IJanuaField;
  public
    function GetAdType: IJanuaField;
    procedure SetAdType(const Value: IJanuaField);
    function GetBookingId: IJanuaField;
    procedure SetBookingId(const Value: IJanuaField);
    function GetBookingJguid: IJanuaField;
    procedure SetBookingJguid(const Value: IJanuaField);
    function GetBookingAddress: IBookingAddress;
    procedure SetBookingAddress(const Value: IBookingAddress);
  public
    constructor Create; override;
    property BookingJguid: IJanuaField read GetBookingJguid write SetBookingJguid;
    property BookingId: IJanuaField read GetBookingId write SetBookingId;
    property AdType: IJanuaField read GetAdType write SetAdType;
    property BookingAddress: IBookingAddress read GetBookingAddress write SetBookingAddress;
  end;

  TtimetableView = class(TCustomTimetableView, ItimetableView, IJanuaRecord)
  private
    FDirection: Integer;
    FMasterBooking: IBookingHeadView;
    FDeliveryAddress: IBookingAddress;
    FPickupAddress: IBookingAddress;
  protected
    function GetDirection: Integer;
    procedure SetDirection(const Value: Integer);
    function GetMasterBooking: IBookingHeadView;
    procedure SetMasterBooking(const Value: IBookingHeadView);
    function GePickupAddress: IBookingAddress;
    procedure SetPickupAddress(const Value: IBookingAddress);
    function GeDeliveryAddress: IBookingAddress;
    procedure SetDeliveryAddress(const Value: IBookingAddress);
  public
    constructor Create; override;
    procedure RefreshMasterBooking;
  public
    property PickupAddress: IBookingAddress read GePickupAddress write SetPickupAddress;
    property DeliveryAddress: IBookingAddress read GeDeliveryAddress write SetDeliveryAddress;
    property Direction: Integer read GetDirection write SetDirection;
    property MasterBooking: IBookingHeadView read GetMasterBooking write SetMasterBooking;
  end;

  /// <summary> This is the timetable View for Drivers or Service used in Calendar/Managment </summary>
  TBookingTimetableView = class(TtimetableView, IBookingTimetableView, ItimetableView, IJanuaRecord)
  public
    constructor Create; override;
  private
    FPickupAnagraph: IAnagraph;
    FDeliveryAnagraph: IAnagraph;
    FBookingHead: IBookingHead;
  protected
    function GetPickupAnagraph: IAnagraph;
    function GetDeliveryAnagraph: IAnagraph;
    function GetBookingHead: IBookingHead;
  public
    /// <summary> For the Service a Standard Anagraph is Linked to Anagraph Session Profile </summary>
    property PickupAnagraph: IAnagraph read GetPickupAnagraph;
    /// <summary> For the Client (User or Service Customer) a Booking Anagraph is Used with Vehicle </summary>
    property DeliveryAnagraph: IAnagraph read GetDeliveryAnagraph;
    // <summary>  </summary>
    property BookingHead: IBookingHead read GetBookingHead;
    { TODO : Needed a Table for Attachments and Images or Screeshots to complete the Booking }
    { TODO : Needed a Table for Messages connected to Timetable with annotations }
  end;

  TTimetableSlot = class(TCustomTimetableSlot, ItimetableSlot, IJanuaRecord)
  private
    FDirection: Integer;
  protected
    function GetDirection: Integer;
    procedure SetDirection(const Value: Integer);
  public
    constructor Create; override;
  public
    property Direction: Integer read GetDirection write SetDirection;
  end;

  TtimetableViews = class(TCustomTimetableViews, ItimetableViews)
  public
    constructor Create; override;
    function GetTimeTableView: ItimetableView;
    procedure SetTimeTableView(const Value: ItimetableView);
    /// <summary> TimeTableView is the record inherited from  ICustomTimeTableView related with this RecordSet </summary>
    property TimetableView: ItimetableView read GetTimeTableView write SetTimeTableView;
  end;

  TTimetableSlots = class(TCustomTimetableSlots, ItimetableSlots)
  public
    constructor Create; override;
    function GetTimeTableSlot: ItimetableSlot;
    /// <summary> TimeTableSlot is the record inherited from  ICustomTimeTableSlot related with this RecordSet </summary>
    property TimetableSlot: ItimetableSlot read GetTimeTableSlot;
  end;

  TBookingHeadView = class(TCustomBookingHeadView, IJanuaRecord, IBookingHeadView)
  private
    FPickupDateTime: ItimetableView;
    FDeliveryDateTime: ItimetableView;
    FTimeTable: ItimetableViews;
    FHasReturn: boolean;
    FAnagraphClient: IBookingAnagraphView;
    FServiceAddress: IBookingAddress;
    FServiceAnagraph: IAnagraphView;
    FAddresses: IBookingAddresses;
  protected
    function GetPickupDateTime: ItimetableView;
    function GetDeliveryDateTime: ItimetableView;
    function GetTimeTable: ItimetableViews;
    function GetHasReturn: boolean;
    procedure SetHasReturn(const Value: boolean);
    function GetAnagraphClient: IBookingAnagraphView;
    procedure SetAnagraphClient(const Value: IBookingAnagraphView);
    function GeServiceAddress: IBookingAddress;
    function GetServiceAnagraph: IAnagraphView;
    function GeAddresses: IBookingAddresses;
  public
    constructor Create; override;
    procedure LoadFromDataset(const aRecursively: boolean = True); override;
    procedure ClearCustomer;
    function GetCustCountryCellular: string;
    procedure AssignDeliveryDateTime(const Value: ItimetableView);
    procedure AssignPickupDateTime(const Value: ItimetableView);
    /// <summary> Reads Customer Addresses and Service Selected Address and Populates Addresses List  </summary>
    procedure RefreshAddresses;
    function checkBooking: boolean;
    /// <summary> Populates Vehicle Informations (Model, Color, Numberplace) from a Dataset </summary>
    procedure SetVehicleFromDataset(const aDataset: TDataset);
  public { Public Properties }
    /// <summary> This is the Timetable Recordset that summarize both delivery and pickup travels </summary>
    property TimeTable: ItimetableViews read GetTimeTable;
    /// <summary> PickupDateTime is the record inherited from  ICustomTimeTableView related with this RecordSet </summary>
    property PickupDateTime: ItimetableView read GetPickupDateTime;
    /// <summary> DeliveryDateTime is the record inherited from  ICustomTimeTableView related with this RecordSet </summary>
    property DeliveryDateTime: ItimetableView read GetDeliveryDateTime;
    /// <summary> DeliveryDateTime is the record inherited from  ICustomTimeTableView related with this RecordSet </summary>
    property AnagraphClient: IBookingAnagraphView read GetAnagraphClient write SetAnagraphClient;
    /// <summary> Service Address is the record inherited from  ICustomTimeTableView related with this RecordSet </summary>
    property ServiceAddress: IBookingAddress read GeServiceAddress;
    /// <summary> For the Service a Standard Anagraph is Linked to Anagraph Session Profile </summary>
    property ServiceAnagraph: IAnagraphView read GetServiceAnagraph;
    /// <summary> Booking Addresses is a List of Addresses to define Pickup/Delivery Locations
    /// it contains the selected Service Address and Customer Address(es) </summary>
    property Addresses: IBookingAddresses read GeAddresses;
  end;

  TBookingHeadsView = class(TCustomBookingHeadViews, IJanuaRecordSet, IBookingHeadsView)
  protected
    function GetBookingHeadView: IBookingHeadView;
    procedure SetBookingHeadView(const Value: IBookingHeadView);
  public
    /// <summary> BookingHeadView is the record inherited from  ICustomBookingHeadView related with this RecordSet </summary>
    property BookingHeadView: IBookingHeadView read GetBookingHeadView write SetBookingHeadView;
  end;

implementation

uses System.SysUtils, System.StrUtils;

{ TBookingHeadsView }

function TBookingHeadsView.GetBookingHeadView: IBookingHeadView;
begin
  Result := FRecord as IBookingHeadView
end;

procedure TBookingHeadsView.SetBookingHeadView(const Value: IBookingHeadView);
begin
  FRecord := Value as IJanuaRecord
end;

{ TBookingHeadView }

procedure TBookingHeadView.AssignDeliveryDateTime(const Value: ItimetableView);
begin
  if Assigned(Value) then
  begin
    FDeliveryDateTime.Assign(Value);
    if not FDeliveryDateTime.FromId.AsInteger in [OfficeId.AsInteger, CustomerId.AsInteger] then
    begin
      FDeliveryDateTime.FromId.AsInteger := OfficeId.AsInteger;
      FDeliveryDateTime.ToId.AsInteger := CustomerId.AsInteger;
    end;
  end;
end;

procedure TBookingHeadView.AssignPickupDateTime(const Value: ItimetableView);
begin
  if Assigned(Value) then
  begin
    FPickupDateTime.Assign(Value);
    if not FPickupDateTime.FromId.AsInteger in [OfficeId.AsInteger, CustomerId.AsInteger] then
    begin
      FPickupDateTime.FromId.AsInteger := CustomerId.AsInteger;
      FPickupDateTime.ToId.AsInteger := OfficeId.AsInteger;
    end;
  end;
end;

function TBookingHeadView.checkBooking: boolean;
begin
  if (CustFirstName.asString = '') then
    CustFirstName.asString := FAnagraphClient.AnName.asString;
  if (CustLastName.asString = '') then
    CustLastName.asString := FAnagraphClient.AnLastName.asString;
  if (CustEmail.asString = '') then
    CustEmail.asString := FAnagraphClient.AnEmail.asString;
  if (CustCellular.asString = '') then
    CustCellular.asString := FAnagraphClient.AnCellular.asString;

  Result := (CustFirstName.asString <> '') and (CustLastName.asString <> '') and (CustCellular.asString <> '')
    and (CustEmail.asString <> '') and (VehicleModel.asString <> '') and (VehicleNumberplate.asString <> '')
    and (VehicleColor.asString <> '');
end;

procedure TBookingHeadView.ClearCustomer;
begin
  CustFirstName.Clear;
  CustomerId.Clear;
  CustLastName.Clear;
  CustCellular.Clear;
  CustEmail.Clear;
end;

constructor TBookingHeadView.Create;
begin
  inherited;
  FServiceAddress := TBookingAddress.Create;
  FPickupDateTime := TtimetableView.Create;
  FPickupDateTime.Workingday.AsDateTime := Date();
  Records.Add(FPickupDateTime);
  FDeliveryDateTime := TtimetableView.Create;
  Records.Add(FDeliveryDateTime);
  FTimeTable := TtimetableViews.Create;
  Recordsets.Add(FTimeTable);
  FHasReturn := True;
  FAnagraphClient := TBookingAnagraphView.Create;
  FServiceAnagraph := TAnagraphView.Create;
  FAddresses := TBookingAddresses.Create;
  Recordsets.Add(FAddresses);
end;

function TBookingHeadView.GeAddresses: IBookingAddresses;
begin
  Result := FAddresses
end;

function TBookingHeadView.GeServiceAddress: IBookingAddress;
begin
  Result := FServiceAddress;
end;

function TBookingHeadView.GetAnagraphClient: IBookingAnagraphView;
begin
  Result := FAnagraphClient
end;

function TBookingHeadView.GetCustCountryCellular: string;
begin
  Result := CustCellular.asString;
  Result := IfThen(CustCellular.IsNull or (Result[Low(Result)] = '+'), Result, '+39' + Trim(Result));
end;

function TBookingHeadView.GetDeliveryDateTime: ItimetableView;
begin
  Result := FDeliveryDateTime
end;

function TBookingHeadView.GetHasReturn: boolean;
begin
  Result := FHasReturn;
end;

function TBookingHeadView.GetPickupDateTime: ItimetableView;
begin
  Result := FPickupDateTime
end;

function TBookingHeadView.GetServiceAnagraph: IAnagraphView;
begin
  Result := FServiceAnagraph;
end;

function TBookingHeadView.GetTimeTable: ItimetableViews;
begin
  Result := FTimeTable;
end;

procedure TBookingHeadView.LoadFromDataset(const aRecursively: boolean = True);
begin
  inherited;
  if (FTimeTable.RecordCount > 0) and not Assigned(FPickupDateTime.DBDataset) then
  begin
    FTimeTable.First;
    FPickupDateTime.Assign(FTimeTable.CurrentRecord);
    if not FTimeTable.EOF then
    begin
      FTimeTable.Next;
      FDeliveryDateTime.Assign(FTimeTable.CurrentRecord);
    end;
  end;
end;

procedure TBookingHeadView.RefreshAddresses;
begin
  { TODO : Apply Refresh Addresses combining Service and User Addresses }
end;

procedure TBookingHeadView.SetAnagraphClient(const Value: IBookingAnagraphView);
begin
  FAnagraphClient := Value
end;

procedure TBookingHeadView.SetHasReturn(const Value: boolean);
begin
  if FHasReturn <> Value then
  begin
    FHasReturn := Value;
    if FHasReturn then
    begin
      if FTimeTable.RecordCount = 1 then
        FTimeTable.Append(FDeliveryDateTime);
    end
    else
    begin
      if FTimeTable.RecordCount = 2 then
      begin
        FTimeTable.Last;
        FTimeTable.Delete;
      end;
      FDeliveryDateTime.Workingday.Clear;
      FDeliveryDateTime.Booked.AsBoolean := False;
      FDeliveryDateTime.SlotId.Clear;
    end;
    Notify('HasReturn');
  end;
end;

procedure TBookingHeadView.SetVehicleFromDataset(const aDataset: TDataset);
begin
  if Assigned(aDataset) then
  begin
    VehicleModel.ReadFromDataset(aDataset);
    VehicleNumberplate.ReadFromDataset(aDataset);
    VehicleColor.ReadFromDataset(aDataset);
  end;
end;

constructor TtimetableViews.Create;
begin
  inherited;
  FRecord := TtimetableView.Create('TimetableView') // TTimetableViewFactory.CreateRecord();
end;

function TtimetableViews.GetTimeTableView: ItimetableView;
begin
  Result := CurrentRecord as ItimetableView
end;

procedure TtimetableViews.SetTimeTableView(const Value: ItimetableView);
begin
  CurrentRecord := Value;
end;

{ TtimetableView }

constructor TtimetableView.Create;
begin
  inherited;
  Workingday.IsMonitored := False;
  SlotId.IsMonitored := False;
  BookingId.IsMonitored := False;
  FromId.IsMonitored := False;
  ToId.IsMonitored := False;
  Booked.IsMonitored := True;
end;

function TtimetableView.GeDeliveryAddress: IBookingAddress;
begin
  Result := DeliveryAddress;
end;

function TtimetableView.GePickupAddress: IBookingAddress;
begin
  Result := PickupAddress;
end;

function TtimetableView.GetDirection: Integer;
begin
  Result := FDirection;
end;

function TtimetableView.GetMasterBooking: IBookingHeadView;
begin
  Result := FMasterBooking
end;

procedure TtimetableView.RefreshMasterBooking;
begin

end;

procedure TtimetableView.SetDeliveryAddress(const Value: IBookingAddress);
begin
  DeliveryAddress := Value;
end;

procedure TtimetableView.SetDirection(const Value: Integer);
begin
  if Value <> FDirection then
  begin
    FDirection := Value;
    case FDirection of
      0:
        begin
          FromId.AsInteger := FMasterBooking.OfficeId.AsInteger;
          ToId.AsInteger := FMasterBooking.CustomerId.AsInteger;
        end;
      1:
        begin
          FromId.AsInteger := FMasterBooking.CustomerId.AsInteger;
          ToId.AsInteger := FMasterBooking.OfficeId.AsInteger;
        end;
    end;
  end;
end;

procedure TtimetableView.SetMasterBooking(const Value: IBookingHeadView);
begin
  FMasterBooking := Value;
  if Assigned(FMasterBooking) then
    RefreshMasterBooking;
end;

procedure TtimetableView.SetPickupAddress(const Value: IBookingAddress);
begin

end;

{ TTimetableSlot }

constructor TTimetableSlot.Create;
begin
  inherited;
  Workingday.IsMonitored := False;
  SlotId.IsMonitored := False;
  Booked.IsMonitored := True;
  FreePlaces.IsMonitored := False;
  IsFree.IsMonitored := False;
  BookedPlaces.IsMonitored := True;
end;

function TTimetableSlot.GetDirection: Integer;
begin
  Result := FDirection
end;

procedure TTimetableSlot.SetDirection(const Value: Integer);
begin
  FDirection := Value;
end;

{ TTimetableSlots }

constructor TTimetableSlots.Create;
begin
  inherited;
  FRecord := TTimetableSlot.Create('TimetableSlot') // TTimetableViewFactory.CreateRecord();
end;

function TTimetableSlots.GetTimeTableSlot: ItimetableSlot;
begin
  Result := FRecord as TTimetableSlot
end;

{ TBookingAddress }

constructor TBookingAddress.Create;
begin
  inherited;
  FAdType := AddCreateField(TJanuaFieldType.jptString, 'ad_type', 'ad_type');
  FBookingId := AddCreateField(TJanuaFieldType.jptLargeInt, 'booking_id', 'booking_id');
  FBookingJguid := AddCreateField(TJanuaFieldType.jptGUID, 'booking_jguid', 'booking_jguid');
end;

function TBookingAddress.GetAdType: IJanuaField;
begin
  Result := FAdType
end;

function TBookingAddress.GetBookingId: IJanuaField;
begin
  Result := FBookingId
end;

function TBookingAddress.GetBookingJguid: IJanuaField;
begin
  Result := FBookingJguid
end;

procedure TBookingAddress.SetAdType(const Value: IJanuaField);
begin
  FAdType := Value;
end;

procedure TBookingAddress.SetBookingId(const Value: IJanuaField);
begin
  FBookingId := Value
end;

procedure TBookingAddress.SetBookingJguid(const Value: IJanuaField);
begin
  FBookingJguid := Value;
end;

{ TBookingAnagraphView }

constructor TBookingAnagraphView.Create;
begin
  inherited;
  FReturnAddress := TAnAddress.Create;
end;

function TBookingAnagraphView.GetReturnAddress: IAnAddress;
begin
  Result := FReturnAddress
end;

procedure TBookingAnagraphView.SetReturnAddress(const Value: IAnAddress);
begin
  FReturnAddress := Value
end;

procedure TBookingAnagraphView.UpdateAddressList;
begin
  inherited;

end;

{ TBookingAddresses }

constructor TBookingAddresses.Create;
begin
  inherited;
  FRecord := TBookingAddress.Create('bookingaddress');
end;

function TBookingAddresses.GetAdType: IJanuaField;
begin
  Result := GetBookingAddress.AdType
end;

function TBookingAddresses.GetBookingAddress: IBookingAddress;
begin
  Result := FRecord as IBookingAddress
end;

function TBookingAddresses.GetBookingId: IJanuaField;
begin
  Result := GetBookingAddress.BookingId
end;

function TBookingAddresses.GetBookingJguid: IJanuaField;
begin
  Result := GetBookingAddress.BookingJguid
end;

procedure TBookingAddresses.SetAdType(const Value: IJanuaField);
begin

end;

procedure TBookingAddresses.SetBookingAddress(const Value: IBookingAddress);
begin
  FRecord := Value;
end;

procedure TBookingAddresses.SetBookingId(const Value: IJanuaField);
begin

end;

procedure TBookingAddresses.SetBookingJguid(const Value: IJanuaField);
begin

end;

{ TBookingTimetableView }

constructor TBookingTimetableView.Create;
begin
  inherited;
  DriverAnagraphID.DBField := 'driver_id';

  FPickupAnagraph := TAnagraph.Create;
  FPickupAnagraph.Name := 'pickup_anagraph';
  self.AddRecordDef(FPickupAnagraph);
  FPickupAnagraph.NotStored := True;
  { pickup_an_id: TIntegerField; }
  FPickupAnagraph.AnagraphId.DBField := 'pickup_an_id';
  { pickup_first_name: TWideStringField; }
  FPickupAnagraph.AnName.DBField := 'pickup_first_name';
  { pickup_vat_id: TSmallintField; }
  FPickupAnagraph.AnVatId.DBField := 'pickup_vat_id';
  { pickup_address: TWideStringField; }
  FPickupAnagraph.AnAddress.DBField := 'pickup_address';
  { pickup_postal_code: TWideStringField; }
  FPickupAnagraph.AnPostalCode.DBField := 'pickup_postal_code';
  { pickup_fiscal_code: TWideStringField; }
  FPickupAnagraph.AnFiscalCode.DBField := 'pickup_fiscal_code';
  { pickup_town: TWideStringField; }
  FPickupAnagraph.AnTown.DBField := 'pickup_town';
  { pickup_last_name: TWideStringField; }
  FPickupAnagraph.AnLastName.DBField := 'pickup_last_name';
  { pickup_full_address: TWideMemoField; }
  FPickupAnagraph.AnFullAddress.DBField := 'pickup_full_address';
  { pickup_phone: TWideStringField; }
  FPickupAnagraph.AnPhone.DBField := 'pickup_phone';
  { pickup_email: TWideStringField; }
  FPickupAnagraph.AnEmail.DBField := 'pickup_email';
  { pickup_cellular: TWideStringField; }
  FPickupAnagraph.AnCellular.DBField := 'pickup_cellular';
  FDeliveryAnagraph := TAnagraph.Create;
  FDeliveryAnagraph.Name := 'delivery_anagraph';
  self.AddRecordDef(FDeliveryAnagraph);
  FDeliveryAnagraph.NotStored := True;
  { delivery_an_id: TIntegerField; }
  FDeliveryAnagraph.AnagraphId.DBField := 'delivery_an_id';
  { delivery_first_name: TWideStringField; }
  FDeliveryAnagraph.AnName.DBField := 'delivery_first_name';
  { delivery_vat_id: TSmallintField; }
  FDeliveryAnagraph.AnVatId.DBField := 'delivery_vat_id';
  { delivery_address: TWideStringField; }
  FDeliveryAnagraph.AnAddress.DBField := 'delivery_address';
  { delivery_postal_code: TWideStringField; }
  FDeliveryAnagraph.AnPostalCode.DBField := 'delivery_postal_code';
  { delivery_fiscal_code: TWideStringField; }
  FDeliveryAnagraph.AnFiscalCode.DBField := 'delivery_fiscal_code';
  { delivery_town: TWideStringField; }
  FDeliveryAnagraph.AnTown.DBField := 'delivery_town';
  { delivery_last_name: TWideStringField; }
  FDeliveryAnagraph.AnLastName.DBField := 'delivery_last_name';
  { delivery_full_address: TWideMemoField; }
  FDeliveryAnagraph.AnFullAddress.DBField := 'delivery_full_address';
  { delivery_phone: TWideStringField; }
  FDeliveryAnagraph.AnPhone.DBField := 'delivery_phone';
  { delivery_email: TWideStringField; }
  FDeliveryAnagraph.AnEmail.DBField := 'delivery_email';
  { delivery_cellular: TWideStringField; }
  FDeliveryAnagraph.AnCellular.DBField := 'delivery_cellular';
  FBookingHead := TBookingHead.Create;
  FBookingHead.Name := 'booking_head';

  self.AddRecordDef(FBookingHead);

end;

function TBookingTimetableView.GetPickupAnagraph: IAnagraph;
begin
  Result := FPickupAnagraph
end;

function TBookingTimetableView.GetBookingHead: IBookingHead;
begin
  Result := FBookingHead
end;

function TBookingTimetableView.GetDeliveryAnagraph: IAnagraph;
begin
  Result := FDeliveryAnagraph
end;

end.
