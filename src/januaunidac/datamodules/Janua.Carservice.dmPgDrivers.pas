unit Janua.Carservice.dmPgDrivers;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS, DAScript, UniScript,
  // JOrm.Documents.Impl Booking
  JOrm.Carservice.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  // Januaproject
  // Lookup Interface
  Janua.Orm.Intf,
  // Janua Orm unitTest
  JOrm.System.Intf,
  // Januaproject
  Janua.Carservice.Commons, udmPgStorage, Janua.Unidac.Connection;

type
  TdmPgCarServiceBookingDrivers = class(TdmPgStorage)
    qryBooking: TUniQuery;
    qryBookingpickup_an_id: TIntegerField;
    qryBookingpickup_first_name: TWideStringField;
    qryBookingpickup_vat_id: TSmallintField;
    qryBookingpickup_address: TWideStringField;
    qryBookingpickup_postal_code: TWideStringField;
    qryBookingpickup_fiscal_code: TWideStringField;
    qryBookingpickup_town: TWideStringField;
    qryBookingpickup_last_name: TWideStringField;
    qryBookingpickup_full_address: TWideMemoField;
    qryBookingpickup_phone: TWideStringField;
    qryBookingpickup_email: TWideStringField;
    qryBookingpickup_cellular: TWideStringField;
    qryBookingdelivery_an_id: TIntegerField;
    qryBookingdelivery_first_name: TWideStringField;
    qryBookingdelivery_vat_id: TSmallintField;
    qryBookingdelivery_address: TWideStringField;
    qryBookingdelivery_postal_code: TWideStringField;
    qryBookingdelivery_fiscal_code: TWideStringField;
    qryBookingdelivery_town: TWideStringField;
    qryBookingdelivery_last_name: TWideStringField;
    qryBookingdelivery_full_address: TWideMemoField;
    qryBookingdelivery_phone: TWideStringField;
    qryBookingdelivery_email: TWideStringField;
    qryBookingdelivery_cellular: TWideStringField;
    qryBookingjguid: TGuidField;
    qryBookingpickup_time: TWideStringField;
    qryBookingpickup_date: TDateField;
    qryBookingdriver_id: TIntegerField;
    qryBookingbooking_id: TLargeintField;
    qryBookingdriver_email: TWideStringField;
    qryBookingdriver1_cellular: TWideStringField;
    qryBookingdriver_jguid: TGuidField;
    qryBookingslot_id: TSmallintField;
    qryBookingvehicle_numberplate: TWideStringField;
    qryBookingvehicle_model: TWideStringField;
    qryBookingvehicle_color: TWideStringField;
    qryBookingpickup_day: TDateField;
    qryBookingpickup_slot_id: TSmallintField;
    qryBookingreturn_day: TDateField;
    qryMessages: TUniQuery;
    qryAlternativeTimeTablepickup_an_id: TIntegerField;
    qryAlternativeTimeTablepickup_first_name: TWideStringField;
    qryAlternativeTimeTablepickup_vat_id: TSmallintField;
    qryAlternativeTimeTablepickup_address: TWideStringField;
    qryAlternativeTimeTablepickup_postal_code: TWideStringField;
    qryAlternativeTimeTablepickup_fiscal_code: TWideStringField;
    qryAlternativeTimeTablepickup_town: TWideStringField;
    qryAlternativeTimeTablepickup_last_name: TWideStringField;
    qryAlternativeTimeTablepickup_full_address: TWideMemoField;
    qryAlternativeTimeTablepickup_phone: TWideStringField;
    qryAlternativeTimeTablepickup_email: TWideStringField;
    qryAlternativeTimeTablepickup_cellular: TWideStringField;
    qryAlternativeTimeTabledelivery_an_id: TIntegerField;
    qryAlternativeTimeTabledelivery_first_name: TWideStringField;
    qryAlternativeTimeTabledelivery_vat_id: TSmallintField;
    qryAlternativeTimeTabledelivery_address: TWideStringField;
    qryAlternativeTimeTabledelivery_postal_code: TWideStringField;
    qryAlternativeTimeTabledelivery_fiscal_code: TWideStringField;
    qryAlternativeTimeTabledelivery_town: TWideStringField;
    qryAlternativeTimeTabledelivery_last_name: TWideStringField;
    qryAlternativeTimeTabledelivery_full_address: TWideMemoField;
    qryAlternativeTimeTabledelivery_phone: TWideStringField;
    qryAlternativeTimeTabledelivery_email: TWideStringField;
    qryAlternativeTimeTabledelivery_cellular: TWideStringField;
    qryAlternativeTimeTablejguid: TGuidField;
    qryAlternativeTimeTablepickup_time: TWideStringField;
    qryAlternativeTimeTablepickup_date: TDateField;
    qryAlternativeTimeTabledriver_id: TIntegerField;
    qryAlternativeTimeTablebooking_id: TLargeintField;
    qryAlternativeTimeTabledriver_email: TWideStringField;
    qryAlternativeTimeTabledriver1_cellular: TWideStringField;
    qryAlternativeTimeTabledriver_jguid: TGuidField;
    qryAlternativeTimeTableslot_id: TSmallintField;
    qryAlternativeTimeTablevehicle_numberplate: TWideStringField;
    qryAlternativeTimeTablevehicle_model: TWideStringField;
    qryAlternativeTimeTablevehicle_color: TWideStringField;
    qryAlternativeTimeTablepickup_day: TDateField;
    qryAlternativeTimeTablepickup_slot_id: TSmallintField;
    qryAlternativeTimeTablereturn_day: TDateField;
    spUpdateCalendar: TUniStoredProc;
    spChangeBookDriver: TUniStoredProc;
    qryAlternativeTimeTable: TUniQuery;
    spConfirmBooking: TUniStoredProc;
    qryDriverCalendar: TUniQuery;
    qryMessagesrownum: TLargeintField;
    qryMessagestitle: TWideStringField;
    qryMessagessubtitle: TWideStringField;
    qryMessagesid: TIntegerField;
    qryMessagesdb_schema_id: TIntegerField;
    qryMessagesjguid: TGuidField;
    qryMessagesdeleted: TBooleanField;
    qryMessagesinsert_date: TDateTimeField;
    qryMessagesupdate_date: TDateTimeField;
    qryMessagesuser_insert: TWideStringField;
    qryMessagesuser_update: TWideStringField;
    qryMessagesanagraph_id: TIntegerField;
    qryMessagesdb_user_id: TIntegerField;
    qryMessagesmsgtype: TIntegerField;
    qryMessagesmsgtext: TWideMemoField;
    qryMessagesjson: TWideMemoField;
    qryMessagesbooking_jguid: TGuidField;
    qryMessagestimetable_jguid: TGuidField;
    qryDriverCalendartitle: TWideStringField;
    qryDriverCalendarrownum: TLargeintField;
    qryDriverCalendarjguid: TGuidField;
    qryDriverCalendarworkingday: TDateField;
    qryDriverCalendarslot_id: TSmallintField;
    qryDriverCalendarbooking_id: TLargeintField;
    qryDriverCalendarfrom_id: TIntegerField;
    qryDriverCalendarto_id: TIntegerField;
    qryDriverCalendarstate_id: TSmallintField;
    qryDriverCalendarslot_des: TWideStringField;
    qryDriverCalendarbooked: TBooleanField;
    qryDriverCalendardriver_anagraph_id: TIntegerField;
    qryDriverCalendaran_cellular: TWideStringField;
    qryDriverCalendardriver_name: TWideStringField;
    qryDriverCalendaran_email: TWideStringField;
    qryDriverCalendarfrom_latitude: TFloatField;
    qryDriverCalendarfrom_longitude: TFloatField;
    qryDriverCalendarfrom_full_address: TWideStringField;
    qryDriverCalendarto_latitude: TFloatField;
    qryDriverCalendarto_longitude: TFloatField;
    qryDriverCalendarto_full_address: TWideStringField;
    qryDriverCalendarfrom_cellular: TWideStringField;
    qryDriverCalendarfrom_email: TWideStringField;
    qryDriverCalendarfrom_name: TWideStringField;
    qryDriverCalendarto_cellular: TWideStringField;
    qryDriverCalendarto_email: TWideStringField;
    qryDriverCalendarto_name: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function OpenBooking(const aGUID: TGUID): Boolean;
    function ConfirmBooking: Boolean;
    function OpenList: Integer;
    function GetRecordCount: Integer;
    function LocateCalendar(const aGUID: TGUID): Boolean;
  public
    property RecordCount: Integer read GetRecordCount;
  end;

var
  dmPgCarServiceBookingDrivers: TdmPgCarServiceBookingDrivers;

implementation

uses JOrm.Carservice.Booking.Impl, Janua.Orm.Impl, Janua.Application.Framework;
{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

{ TdmPgCarServiceCustomers }
function TdmPgCarServiceBookingDrivers.ConfirmBooking: Boolean;
begin
  // qryBookingjguid p_jguid
  spConfirmBooking.ParamByName('p_jguid').AsString := qryBookingjguid.AsString;
  spConfirmBooking.Execute;
  Result := spConfirmBooking.ParamByName('Result').AsBoolean;
end;

function TdmPgCarServiceBookingDrivers.GetRecordCount: Integer;
begin
  Result := qryDriverCalendar.RecordCount;
end;

function TdmPgCarServiceBookingDrivers.LocateCalendar(const aGUID: TGUID): Boolean;
begin
  qryDriverCalendar.First;
  Result := False;
  while not(qryDriverCalendar.Eof or Result) do
  begin
    Result := qryDriverCalendarjguid.AsGuid = aGUID;
    if not Result then
      qryDriverCalendar.Next;
  end;
end;

function TdmPgCarServiceBookingDrivers.OpenBooking(const aGUID: TGUID): Boolean;
  function InternalOpen: Boolean;
  begin
    qryBooking.Close;
    qryBooking.Params[0].AsGuid := aGUID;
    qryBooking.Open;
    Result := qryBooking.RecordCount > 0;
  end;

begin
  Result := not aGUID.IsEmpty and InternalOpen;
  // if A booking is found then the record is loaded instead it should be cleared to clean dirt :)
  {
    if Result then
    FBookingRecord.LoadFromDataset
    else
    FBookingRecord.Clear;
  }
end;

function TdmPgCarServiceBookingDrivers.OpenList: Integer;
begin
  qryDriverCalendar.Close;
  qryDriverCalendar.Params[0].AsInteger := TJanuaApplication.UserSessionVM.CurrentRecord.UserProfile.AnagraphID.AsInteger;
  qryDriverCalendar.Open;
  Result := qryDriverCalendar.RecordCount
end;

end.
