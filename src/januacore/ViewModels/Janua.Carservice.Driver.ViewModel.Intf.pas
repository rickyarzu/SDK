unit Janua.Carservice.Driver.ViewModel.Intf;

interface

uses System.SysUtils, Data.DB,  Janua.Core.Types,
  // Janua Core
  Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Janua.ViewModels.Intf,
  // Car Service ORM
  Janua.Carservice.Intf, JOrm.Anagraph.Intf, JOrm.Carservice.Booking.Intf,
  // Car Service ViewModels
  Janua.Search.ViewModels.Engines.Intf, Janua.Anagraph.ViewModel.Intf;

type
  IJanuaCSDriversDataModule = interface(IJanuaDataModuleContainer)
    ['{D4CF631F-9784-45CA-B443-867E6C513F71}']
    function GetjdsCalendar: IJanuaDBDataset;
    property jdsCalendar: IJanuaDBDataset read GetjdsCalendar;

    function GetjdsTimeTable: IJanuaDBDataset;
    property jdsTimeTable: IJanuaDBDataset read GetjdsTimeTable;

    function GetjdsMessages: IJanuaDBDataset;
    property jdsMessages: IJanuaDBDataset read GetjdsMessages;

    function GetjdsTimeTableMessages: IJanuaDBDataset;
    property jdsTimeTableMessages: IJanuaDBDataset read GetjdsTimeTableMessages;

    // IJanuaDBStoredProcedure
    { spUpdateCalendar: TUniStoredProc; }
    function GetjspUpdateCalendar: IJanuaDBStoredProcedure;
    property jspUpdateCalendar: IJanuaDBStoredProcedure read GetjspUpdateCalendar;
    { spChangeBookDriver: TUniStoredProc; }
    function GetjspChangeBookDriver: IJanuaDBStoredProcedure;
    property jspChangeBookDriver: IJanuaDBStoredProcedure read GetjspChangeBookDriver;
    { spConfirmBooking: TUniStoredProc; }
    function GetjspConfirmBooking: IJanuaDBStoredProcedure;
    property jspConfirmBooking: IJanuaDBStoredProcedure read GetjspConfirmBooking;
  end;

  IJanuaCSDriversDBModel = interface(IJanuaDBModel)
    ['{C178DB61-2CCF-4FAC-9DC0-A4585198797B}']
    function GetjdsCalendar: IJanuaDBDataset;
    property jdsCalendar: IJanuaDBDataset read GetjdsCalendar;

    function GetjdsTimeTable: IJanuaDBDataset;
    property jdsTimeTable: IJanuaDBDataset read GetjdsTimeTable;

    function GetjdsMessages: IJanuaDBDataset;
    property jdsMessages: IJanuaDBDataset read GetjdsMessages;

    function GetjdsTimeTableMessages: IJanuaDBDataset;
    property jdsTimeTableMessages: IJanuaDBDataset read GetjdsTimeTableMessages;

    function GetTimetableRecord: IBookingTimetableView;
    property TimetableRecord: IBookingTimetableView read GetTimetableRecord;

    /// <summary> Boolean change_book_driver(:p_day, :p_slot_id, :p_booking_id, :p_driver_id) </summary>
    function ChangeBookDriver(const aDay: TDate; aSlotID: Word; aBookingID: Int64;
      aDriverID: Integer): Boolean;

    function ChangeTimeTableDriver(const aJGUID: TGUID): Boolean;

    /// <summary> Boolean carservice.update_timetable_state(:p_state_id, :p_guid) </summary>
    function UpdateTimeTableState(const aJGUID: TGUID; aStateID: Word): Boolean;

    /// <summary> Boolean ergomercator.carservice.book_confirmation(:p_guid) </summary>
    function ConfirmBooking(const aJGUID: TGUID): Boolean;
  end;

  IJanuaCSDriversRestModel = interface(IJanuaRESTModel)
    ['{825160CA-3E5B-4EA4-A01A-0BBF3C352C5B}']
    function GetjdsCalendar: IJanuaDBDataset;
    property jdsCalendar: IJanuaDBDataset read GetjdsCalendar;

    function GetjdsMessages: IJanuaDBDataset;
    property jdsMessages: IJanuaDBDataset read GetjdsMessages;

    function GetTimetableRecord: IBookingTimetableView;
    property TimetableRecord: IBookingTimetableView read GetTimetableRecord;

    /// <summary> Boolean change_book_driver(:p_day, :p_slot_id, :p_booking_id, :p_driver_id) </summary>
    function ChangeBookDriver(const aDay: TDate; aSlotID: Word; aBookingID: Int64;
      aDriverID: Integer): Boolean;

    function ChangeTimeTableDriver(const aJGUID: TGUID): Boolean;

    /// <summary> Boolean carservice.update_timetable_state(:p_state_id, :p_guid) </summary>
    function UpdateTimeTableState(const aJGUID: TGUID; aStateID: Word): Boolean;

    /// <summary> Boolean ergomercator.carservice.book_confirmation(:p_guid) </summary>
    function ConfirmBooking(const aJGUID: TGUID): Boolean;
  end;

implementation

initialization

RegisterInterface(TypeInfo(IJanuaCSDriversDBModel));
RegisterInterface(TypeInfo(IJanuaCSDriversRestModel));
RegisterInterface(TypeInfo(IJanuaCSDriversDataModule));

end.
