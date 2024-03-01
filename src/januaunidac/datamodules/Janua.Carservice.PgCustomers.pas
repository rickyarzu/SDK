unit Janua.Carservice.PgCustomers;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // JOrm.Documents.Impl Booking
  JOrm.Carservice.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  // Januaproject
  // Lookup Interface
  Janua.Orm.Intf, Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf,
  Janua.Controls.Forms.Intf, Janua.Search.ViewModels.Engines.Impl,
  // Janua Orm unitTest
  JOrm.System.Intf,
  // Januaproject
  udmPgStorage, Janua.Unidac.Connection;

type
  TdmPgCarServiceCustomers = class(TdmPgStorage)
    qryBooking: TUniQuery;
    qryBookingid: TLargeintField;
    qryBookingoffice_id: TIntegerField;
    qryBookingjguid: TGuidField;
    qryBookingdb_schema_id: TIntegerField;
    qryBookinguser_insert: TIntegerField;
    qryBookinginsert_date: TDateTimeField;
    qryBookingcustomer_id: TIntegerField;
    qryBookingstate_id: TSmallintField;
    qryBookingbranch_id: TIntegerField;
    qryBookingan_last_name: TWideStringField;
    qryBookingan_vat_id: TSmallintField;
    qryBookingan_address: TWideStringField;
    qryBookingan_postal_code: TWideStringField;
    qryBookingan_fiscal_code: TWideStringField;
    qryBookingan_town: TWideStringField;
    qryBookingan_phone: TWideStringField;
    qryBookingbranch_address: TWideStringField;
    qryBookingbranch_postal_code: TWideStringField;
    qryBookingbranch_town: TWideStringField;
    qryBookingbranch_phone: TWideStringField;
    qryBookingcust_first_name: TWideStringField;
    qryBookingcust_last_name: TWideStringField;
    qryBookingfull_address: TWideStringField;
    qryBookingcust_cellular: TWideStringField;
    qryBookingcust_email: TWideStringField;
    qryBookingvehicle_model: TWideStringField;
    qryBookingvehicle_color: TWideStringField;
    qryBookingvehicle_numberplate: TWideStringField;
    qryPickup: TUniQuery;
    qryPickupworkingday: TDateField;
    qryPickupslot_id: TSmallintField;
    qryPickupbooking_id: TLargeintField;
    qryPickupfrom_id: TIntegerField;
    qryPickupto_id: TIntegerField;
    qryPickupstate_id: TSmallintField;
    qryPickupbooked: TBooleanField;
    qryPickupslot_des: TWideStringField;
    qryPickupjguid: TGuidField;
    qryDelivery: TUniQuery;
    qryDeliveryworkingday: TDateField;
    qryDeliveryslot_id: TSmallintField;
    qryDeliverybooking_id: TLargeintField;
    qryDeliveryfrom_id: TIntegerField;
    qryDeliveryto_id: TIntegerField;
    qryDeliverystate_id: TSmallintField;
    qryDeliverybooked: TBooleanField;
    qryDeliveryslot_des: TWideStringField;
    qryDeliveryjguid: TGuidField;
    qryTimeTable: TUniQuery;
    DateField1: TDateField;
    SmallintField1: TSmallintField;
    LargeintField1: TLargeintField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SmallintField2: TSmallintField;
    BooleanField1: TBooleanField;
    WideStringField1: TWideStringField;
    GuidField1: TGuidField;
    qryBookingpickup_day: TDateField;
    qryBookingpickup_slot_id: TSmallintField;
    qryBookingreturn_day: TDateField;
    qryBookingreturn_slot_id: TSmallintField;
    qryBookingservice_name: TWideStringField;
    qryBookingservice_address: TWideMemoField;
    qryBookingan_email: TWideStringField;
    qryBookingan_cellular: TWideStringField;
    qryBookingpickup_address: TWideMemoField;
    qryBookingreturn_address: TWideMemoField;
    qryBookingpickup_time: TWideStringField;
    qryBookingreturn_time: TWideStringField;
    qryBookingpickup_date: TDateField;
    qryBookingreturn_date: TDateField;
    qryBookingdriver1_id: TIntegerField;
    qryBookingdriver2_id: TIntegerField;
    qryBookingdriver1_email: TWideStringField;
    qryBookingdriver2_email: TWideStringField;
    qryBookingdriver1_cellular: TWideStringField;
    qryBookingdriver2_cellular: TWideStringField;
    qryBookingpickup_jguid: TGuidField;
    qryBookingreturn_jguid: TGuidField;
    qryBookingpickup2_address: TWideMemoField;
    qryBookingreturn2_address: TWideMemoField;
    qryBookingpickup_slot_delivery: TWideStringField;
    qryBookingreturn_slot_delivery: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FBookingRecord: IBookingHeadView;
    FHasReturn: Boolean;
    procedure SetBookingRecord(const Value: IBookingHeadView);
    { Private declarations }
  public
    { Public declarations }
    function OpenBooking(const aGUID: TGUID): Boolean;
    procedure RefreshDetails; override;
  public
    property BookingRecord: IBookingHeadView read FBookingRecord write SetBookingRecord;
  end;

var
  dmPgCarServiceCustomers: TdmPgCarServiceCustomers;

implementation

uses JOrm.Carservice.Booking.Impl, Janua.Orm.Impl, Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmPgCarServiceCustomers }

procedure TdmPgCarServiceCustomers.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FBookingRecord := TBookingHeadView.Create('CarBooking');
  // Important both Booking Record and It's Two Records have a recordset Assigned.
  FBookingRecord.DBDataset := qryBooking;
  // Detail is the TimeTable Dataset
  FBookingRecord.TimeTable.CurrentRecord.DBDataset := qryTimeTable;

  FBookingRecord.PickupDateTime.DBDataset := qryPickup;
  FBookingRecord.DeliveryDateTime.DBDataset := qryDelivery;
end;

function TdmPgCarServiceCustomers.OpenBooking(const aGUID: TGUID): Boolean;
  function InternalOpen: Boolean;
  begin
    qryBooking.Close;
    qryBooking.Params[0].AsGuid := aGUID;
    qryBooking.Open;
    Result := qryBooking.RecordCount > 0;
    if Result then
    begin
      RefreshDetails;
      Result := qryPickup.RecordCount > 0;
    end;
  end;

begin
  { select * from carservice.timetable_view v1
    where
    (booked and booking_id = :booking_id and from_id = :from_id)
  }
  Result := not aGUID.IsEmpty and InternalOpen;
  // if A booking is found then the record is loaded instead it should be cleared to clean dirt :)
  if Result then
  begin
    FBookingRecord.LoadFromDataset;
    FBookingRecord.HasReturn := FHasReturn;
  end
  else
    FBookingRecord.Clear;
end;

procedure TdmPgCarServiceCustomers.RefreshDetails;
begin
  inherited;
  qryTimeTable.Close;
  qryTimeTable.Params[0].AsLargeInt := qryBookingid.AsLargeInt;
  qryTimeTable.Open;
  FHasReturn := qryTimeTable.RecordCount > 1;

  qryPickup.Close;
  qryPickup.Params[0].AsLargeInt := qryBookingid.AsLargeInt;
  qryPickup.Open;
{$IFDEF DEBUG}var
  i := qryPickup.RecordCount; {$ENDIF}
  qryDelivery.Close;
  qryDelivery.Params[0].AsLargeInt := qryBookingid.AsLargeInt;
  qryDelivery.Params[1].AsBoolean := FHasReturn;
  qryDelivery.Open;
{$IFDEF DEBUG} i := qryDelivery.RecordCount; {$ENDIF}
end;

procedure TdmPgCarServiceCustomers.SetBookingRecord(const Value: IBookingHeadView);
begin
  FBookingRecord := Value;
end;

end.
