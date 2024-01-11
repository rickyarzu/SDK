unit JOrm.Carservice.BookingHead.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Carservice.BookingHead.Intf;

//------------------------------------------ Impl object interface ----------------------------------

type
  TBookingHead = class(TJanuaRecord, IBookingHead)
  private
    FId: IJanuaField;
    FOfficeId: IJanuaField;
    FJguid: IJanuaField;
    FDbSchemaId: IJanuaField;
    FUserInsert: IJanuaField;
    FCustomerId: IJanuaField;
    FStateId: IJanuaField;                             
    FBranchId: IJanuaField;
    FInsertDate: IJanuaField;
    FVehicleNumberplate: IJanuaField;
    FVehicleModel: IJanuaField;
    FVehicleColor: IJanuaField;
    FDriverId: IJanuaField;
    FPickupDay: IJanuaField;
    FPickupSlotId: IJanuaField;
    FReturnDay: IJanuaField;
    FReturnSlotId: IJanuaField;
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetCustomerId: IJanuaField;
    procedure SetCustomerId(const Value: IJanuaField);
    function GetStateId: IJanuaField;
    procedure SetStateId(const Value: IJanuaField);
    function GetBranchId: IJanuaField;
    procedure SetBranchId(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetVehicleNumberplate: IJanuaField;
    procedure SetVehicleNumberplate(const Value: IJanuaField);
    function GetVehicleModel: IJanuaField;
    procedure SetVehicleModel(const Value: IJanuaField);
    function GetVehicleColor: IJanuaField;
    procedure SetVehicleColor(const Value: IJanuaField);
    function GetDriverId: IJanuaField;
    procedure SetDriverId(const Value: IJanuaField);
    function GetPickupDay: IJanuaField;
    procedure SetPickupDay(const Value: IJanuaField);
    function GetPickupSlotId: IJanuaField;
    procedure SetPickupSlotId(const Value: IJanuaField);
    function GetReturnDay: IJanuaField;
    procedure SetReturnDay(const Value: IJanuaField);
    function GetReturnSlotId: IJanuaField;
    procedure SetReturnSlotId(const Value: IJanuaField);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property CustomerId: IJanuaField read GetCustomerId write SetCustomerId;
    property StateId: IJanuaField read GetStateId write SetStateId;
    property BranchId: IJanuaField read GetBranchId write SetBranchId;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property VehicleNumberplate: IJanuaField read GetVehicleNumberplate write SetVehicleNumberplate;
    property VehicleModel: IJanuaField read GetVehicleModel write SetVehicleModel;
    property VehicleColor: IJanuaField read GetVehicleColor write SetVehicleColor;
    property DriverId: IJanuaField read GetDriverId write SetDriverId;
    property PickupDay: IJanuaField read GetPickupDay write SetPickupDay;
    property PickupSlotId: IJanuaField read GetPickupSlotId write SetPickupSlotId;
    property ReturnDay: IJanuaField read GetReturnDay write SetReturnDay;
    property ReturnSlotId: IJanuaField read GetReturnSlotId write SetReturnSlotId;

  end;

  TBookingHeads = class(TJanuaRecordSet, IJanuaRecordSet, IBookingHeads)
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetCustomerId: IJanuaField;
    procedure SetCustomerId(const Value: IJanuaField);
    function GetStateId: IJanuaField;
    procedure SetStateId(const Value: IJanuaField);
    function GetBranchId: IJanuaField;
    procedure SetBranchId(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetVehicleNumberplate: IJanuaField;
    procedure SetVehicleNumberplate(const Value: IJanuaField);
    function GetVehicleModel: IJanuaField;
    procedure SetVehicleModel(const Value: IJanuaField);
    function GetVehicleColor: IJanuaField;
    procedure SetVehicleColor(const Value: IJanuaField);
    function GetDriverId: IJanuaField;
    procedure SetDriverId(const Value: IJanuaField);
    function GetPickupDay: IJanuaField;
    procedure SetPickupDay(const Value: IJanuaField);
    function GetPickupSlotId: IJanuaField;
    procedure SetPickupSlotId(const Value: IJanuaField);
    function GetReturnDay: IJanuaField;
    procedure SetReturnDay(const Value: IJanuaField);
    function GetReturnSlotId: IJanuaField;
    procedure SetReturnSlotId(const Value: IJanuaField);
    function GetBookingHead: IBookingHead;
    procedure SetBookingHead(const Value: IBookingHead);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property CustomerId: IJanuaField read GetCustomerId write SetCustomerId;
    property StateId: IJanuaField read GetStateId write SetStateId;
    property BranchId: IJanuaField read GetBranchId write SetBranchId;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property VehicleNumberplate: IJanuaField read GetVehicleNumberplate write SetVehicleNumberplate;
    property VehicleModel: IJanuaField read GetVehicleModel write SetVehicleModel;
    property VehicleColor: IJanuaField read GetVehicleColor write SetVehicleColor;
    property DriverId: IJanuaField read GetDriverId write SetDriverId;
    property PickupDay: IJanuaField read GetPickupDay write SetPickupDay;
    property PickupSlotId: IJanuaField read GetPickupSlotId write SetPickupSlotId;
    property ReturnDay: IJanuaField read GetReturnDay write SetReturnDay;
    property ReturnSlotId: IJanuaField read GetReturnSlotId write SetReturnSlotId;
    property BookingHead:IBookingHead read GetBookingHead write SetBookingHead;
  end;

  TBookingHeadFactory = class
    class function CreateRecord(const aKey: string): IBookingHead; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IBookingHeads; overload;
  end;

implementation

//------------------------------------------ Impl TBookingHead -------------------------------

{TBookingHead}

  constructor TBookingHead.Create;
  begin
    inherited;
    FPrefix := 'bkn';
    FId:= AddCreateField(TJanuaFieldType.jptLargeint, 'id', 'id');
    FOfficeId:= AddCreateField(TJanuaFieldType.jptInteger, 'office_id', 'office_id');
    FDbSchemaId:= AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
    FUserInsert:= AddCreateField(TJanuaFieldType.jptInteger, 'user_insert', 'user_insert');
    FCustomerId:= AddCreateField(TJanuaFieldType.jptInteger, 'customer_id', 'customer_id');
    FStateId:= AddCreateField(TJanuaFieldType.jptSmallint, 'state_id', 'state_id');
    FBranchId:= AddCreateField(TJanuaFieldType.jptInteger, 'branch_id', 'branch_id');
    FInsertDate:= AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
    FVehicleNumberplate:= AddCreateField(TJanuaFieldType.jptString, 'vehicle_numberplate', 'vehicle_numberplate');
    FVehicleModel:= AddCreateField(TJanuaFieldType.jptString, 'vehicle_model', 'vehicle_model');
    FVehicleColor:= AddCreateField(TJanuaFieldType.jptString, 'vehicle_color', 'vehicle_color');
    FDriverId:= AddCreateField(TJanuaFieldType.jptInteger, 'driver_id', 'driver_id');
    FPickupDay:= AddCreateField(TJanuaFieldType.jptDate, 'pickup_day', 'pickup_day');
    FPickupSlotId:= AddCreateField(TJanuaFieldType.jptSmallint, 'pickup_slot_id', 'pickup_slot_id');
    FReturnDay:= AddCreateField(TJanuaFieldType.jptDate, 'return_day', 'return_day');
    FReturnSlotId:= AddCreateField(TJanuaFieldType.jptSmallint, 'return_slot_id', 'return_slot_id');
  end;

  function TBookingHead.GetId: IJanuaField;
  begin
    Result := FId;
  end;

  procedure TBookingHead.SetId(const Value: IJanuaField);
  begin
    FId := Value;
  end;

  function TBookingHead.GetOfficeId: IJanuaField;
  begin
    Result := FOfficeId;
  end;

  procedure TBookingHead.SetOfficeId(const Value: IJanuaField);
  begin
    FOfficeId := Value;
  end;

  function TBookingHead.GetJguid: IJanuaField;
  begin
    Result := FJguid;
  end;

  procedure TBookingHead.SetJguid(const Value: IJanuaField);
  begin
    FJguid := Value;
  end;

  function TBookingHead.GetDbSchemaId: IJanuaField;
  begin
    Result := FDbSchemaId;
  end;

  procedure TBookingHead.SetDbSchemaId(const Value: IJanuaField);
  begin
    FDbSchemaId := Value;
  end;

  function TBookingHead.GetUserInsert: IJanuaField;
  begin
    Result := FUserInsert;
  end;

  procedure TBookingHead.SetUserInsert(const Value: IJanuaField);
  begin
    FUserInsert := Value;
  end;

  function TBookingHead.GetCustomerId: IJanuaField;
  begin
    Result := FCustomerId;
  end;

  procedure TBookingHead.SetCustomerId(const Value: IJanuaField);
  begin
    FCustomerId := Value;
  end;

  function TBookingHead.GetStateId: IJanuaField;
  begin
    Result := FStateId;
  end;

  procedure TBookingHead.SetStateId(const Value: IJanuaField);
  begin
    FStateId := Value;
  end;

  function TBookingHead.GetBranchId: IJanuaField;
  begin
    Result := FBranchId;
  end;

  procedure TBookingHead.SetBranchId(const Value: IJanuaField);
  begin
    FBranchId := Value;
  end;

  function TBookingHead.GetInsertDate: IJanuaField;
  begin
    Result := FInsertDate;
  end;

  procedure TBookingHead.SetInsertDate(const Value: IJanuaField);
  begin
    FInsertDate := Value;
  end;

  function TBookingHead.GetVehicleNumberplate: IJanuaField;
  begin
    Result := FVehicleNumberplate;
  end;

  procedure TBookingHead.SetVehicleNumberplate(const Value: IJanuaField);
  begin
    FVehicleNumberplate := Value;
  end;

  function TBookingHead.GetVehicleModel: IJanuaField;
  begin
    Result := FVehicleModel;
  end;

  procedure TBookingHead.SetVehicleModel(const Value: IJanuaField);
  begin
    FVehicleModel := Value;
  end;

  function TBookingHead.GetVehicleColor: IJanuaField;
  begin
    Result := FVehicleColor;
  end;

  procedure TBookingHead.SetVehicleColor(const Value: IJanuaField);
  begin
    FVehicleColor := Value;
  end;

  function TBookingHead.GetDriverId: IJanuaField;
  begin
    Result := FDriverId;
  end;

  procedure TBookingHead.SetDriverId(const Value: IJanuaField);
  begin
    FDriverId := Value;
  end;

  function TBookingHead.GetPickupDay: IJanuaField;
  begin
    Result := FPickupDay;
  end;

  procedure TBookingHead.SetPickupDay(const Value: IJanuaField);
  begin
    FPickupDay := Value;
  end;

  function TBookingHead.GetPickupSlotId: IJanuaField;
  begin
    Result := FPickupSlotId;
  end;

  procedure TBookingHead.SetPickupSlotId(const Value: IJanuaField);
  begin
    FPickupSlotId := Value;
  end;

  function TBookingHead.GetReturnDay: IJanuaField;
  begin
    Result := FReturnDay;
  end;

  procedure TBookingHead.SetReturnDay(const Value: IJanuaField);
  begin
    FReturnDay := Value;
  end;

  function TBookingHead.GetReturnSlotId: IJanuaField;
  begin
    Result := FReturnSlotId;
  end;

  procedure TBookingHead.SetReturnSlotId(const Value: IJanuaField);
  begin
    FReturnSlotId := Value;
  end;

  { TBookingHeads }
  constructor TBookingHeads.Create;
  begin
    inherited;
    self.FRecord := TBookingHeadFactory.CreateRecord('BookingHead');
  end;

  function TBookingHeads.GetId: IJanuaField;
  begin
    Result := self.BookingHead.Id;
  end;

  procedure TBookingHeads.SetId(const Value: IJanuaField);
  begin
    self.BookingHead.Id := Value;
  end;

  function TBookingHeads.GetOfficeId: IJanuaField;
  begin
    Result := self.BookingHead.OfficeId;
  end;

  procedure TBookingHeads.SetOfficeId(const Value: IJanuaField);
  begin
    self.BookingHead.OfficeId := Value;
  end;

  function TBookingHeads.GetJguid: IJanuaField;
  begin
    Result := self.BookingHead.Jguid;
  end;

  procedure TBookingHeads.SetJguid(const Value: IJanuaField);
  begin
    self.BookingHead.Jguid := Value;
  end;

  function TBookingHeads.GetDbSchemaId: IJanuaField;
  begin
    Result := self.BookingHead.DbSchemaId;
  end;

  procedure TBookingHeads.SetDbSchemaId(const Value: IJanuaField);
  begin
    self.BookingHead.DbSchemaId := Value;
  end;

  function TBookingHeads.GetUserInsert: IJanuaField;
  begin
    Result := self.BookingHead.UserInsert;
  end;

  procedure TBookingHeads.SetUserInsert(const Value: IJanuaField);
  begin
    self.BookingHead.UserInsert := Value;
  end;

  function TBookingHeads.GetCustomerId: IJanuaField;
  begin
    Result := self.BookingHead.CustomerId;
  end;

  procedure TBookingHeads.SetCustomerId(const Value: IJanuaField);
  begin
    self.BookingHead.CustomerId := Value;
  end;

  function TBookingHeads.GetStateId: IJanuaField;
  begin
    Result := self.BookingHead.StateId;
  end;

  procedure TBookingHeads.SetStateId(const Value: IJanuaField);
  begin
    self.BookingHead.StateId := Value;
  end;

  function TBookingHeads.GetBranchId: IJanuaField;
  begin
    Result := self.BookingHead.BranchId;
  end;

  procedure TBookingHeads.SetBranchId(const Value: IJanuaField);
  begin
    self.BookingHead.BranchId := Value;
  end;

  function TBookingHeads.GetInsertDate: IJanuaField;
  begin
    Result := self.BookingHead.InsertDate;
  end;

  procedure TBookingHeads.SetInsertDate(const Value: IJanuaField);
  begin
    self.BookingHead.InsertDate := Value;
  end;

  function TBookingHeads.GetVehicleNumberplate: IJanuaField;
  begin
    Result := self.BookingHead.VehicleNumberplate;
  end;

  procedure TBookingHeads.SetVehicleNumberplate(const Value: IJanuaField);
  begin
    self.BookingHead.VehicleNumberplate := Value;
  end;

  function TBookingHeads.GetVehicleModel: IJanuaField;
  begin
    Result := self.BookingHead.VehicleModel;
  end;

  procedure TBookingHeads.SetVehicleModel(const Value: IJanuaField);
  begin
    self.BookingHead.VehicleModel := Value;
  end;

  function TBookingHeads.GetVehicleColor: IJanuaField;
  begin
    Result := self.BookingHead.VehicleColor;
  end;

  procedure TBookingHeads.SetVehicleColor(const Value: IJanuaField);
  begin
    self.BookingHead.VehicleColor := Value;
  end;

  function TBookingHeads.GetDriverId: IJanuaField;
  begin
    Result := self.BookingHead.DriverId;
  end;

  procedure TBookingHeads.SetDriverId(const Value: IJanuaField);
  begin
    self.BookingHead.DriverId := Value;
  end;

  function TBookingHeads.GetPickupDay: IJanuaField;
  begin
    Result := self.BookingHead.PickupDay;
  end;

  procedure TBookingHeads.SetPickupDay(const Value: IJanuaField);
  begin
    self.BookingHead.PickupDay := Value;
  end;

  function TBookingHeads.GetPickupSlotId: IJanuaField;
  begin
    Result := self.BookingHead.PickupSlotId;
  end;

  procedure TBookingHeads.SetPickupSlotId(const Value: IJanuaField);
  begin
    self.BookingHead.PickupSlotId := Value;
  end;

  function TBookingHeads.GetReturnDay: IJanuaField;
  begin
    Result := self.BookingHead.ReturnDay;
  end;

  procedure TBookingHeads.SetReturnDay(const Value: IJanuaField);
  begin
    self.BookingHead.ReturnDay := Value;
  end;

  function TBookingHeads.GetReturnSlotId: IJanuaField;
  begin
    Result := self.BookingHead.ReturnSlotId;
  end;

  procedure TBookingHeads.SetReturnSlotId(const Value: IJanuaField);
  begin
    self.BookingHead.ReturnSlotId := Value;
  end;

  function TBookingHeads.GetBookingHead: IBookingHead;
  begin
    Result := self.FRecord as IBookingHead;
  end;

  procedure TBookingHeads.SetBookingHead(const Value: IBookingHead);
  begin
    self.FRecord := Value;
  end;

  { TBookingHeadFactory }

  class function TBookingHeadFactory.CreateRecord(const aKey: string): IBookingHead;
  begin
    Result := TBookingHead.Create;
  end;

  class function TBookingHeadFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IBookingHeads;
  begin
    Result := TBookingHeads.Create(aName, aLocalStorage, aRemoteStorage);
  end;

end.