unit JOrm.Football.Json_calendar.Intf;

interface

uses Janua.Orm.Intf;

type

  IJson_calendar = interface(IJanuaRecord)
  ['{896C8219-6786-4DCF-8DDA-7EBCFA5AB91F}']
    function GetLeague_id: IJanuaField;
    procedure SetLeague_id(const Value: IJanuaField);
    property League_id: IJanuaField read GetLeague_id write SetLeague_id;
    function GetSeason_id: IJanuaField;
    procedure SetSeason_id(const Value: IJanuaField);
    property Season_id: IJanuaField read GetSeason_id write SetSeason_id;
    function GetMatch_day: IJanuaField;
    procedure SetMatch_day(const Value: IJanuaField);
    property Match_day: IJanuaField read GetMatch_day write SetMatch_day;
    function GetCalendar_json: IJanuaField;
    procedure SetCalendar_json(const Value: IJanuaField);
    property Calendar_json: IJanuaField read GetCalendar_json write SetCalendar_json;
    function GetCalendar_array: IJanuaField;
    procedure SetCalendar_array(const Value: IJanuaField);
    property Calendar_array: IJanuaField read GetCalendar_array write SetCalendar_array;
    function GetMatch_id: IJanuaField;
    procedure SetMatch_id(const Value: IJanuaField);
    property Match_id: IJanuaField read GetMatch_id write SetMatch_id;
    function GetFsnc_jguid: IJanuaField;
    procedure SetFsnc_jguid(const Value: IJanuaField);
    property Fsnc_jguid: IJanuaField read GetFsnc_jguid write SetFsnc_jguid;
    function GetFsnc_deleted: IJanuaField;
    procedure SetFsnc_deleted(const Value: IJanuaField);
    property Fsnc_deleted: IJanuaField read GetFsnc_deleted write SetFsnc_deleted;
  end;

  IJson_calendars = interface(IJanuaRecordSet)
  ['{E05D2E57-E1D4-4E3A-9E31-5A8F7BC866DD}']
    function GetLeague_id: IJanuaField;
    procedure SetLeague_id(const Value: IJanuaField);
    property League_id: IJanuaField read GetLeague_id write SetLeague_id;
    function GetSeason_id: IJanuaField;
    procedure SetSeason_id(const Value: IJanuaField);
    property Season_id: IJanuaField read GetSeason_id write SetSeason_id;
    function GetMatch_day: IJanuaField;
    procedure SetMatch_day(const Value: IJanuaField);
    property Match_day: IJanuaField read GetMatch_day write SetMatch_day;
    function GetCalendar_json: IJanuaField;
    procedure SetCalendar_json(const Value: IJanuaField);
    property Calendar_json: IJanuaField read GetCalendar_json write SetCalendar_json;
    function GetCalendar_array: IJanuaField;
    procedure SetCalendar_array(const Value: IJanuaField);
    property Calendar_array: IJanuaField read GetCalendar_array write SetCalendar_array;
    function GetMatch_id: IJanuaField;
    procedure SetMatch_id(const Value: IJanuaField);
    property Match_id: IJanuaField read GetMatch_id write SetMatch_id;
    function GetFsnc_jguid: IJanuaField;
    procedure SetFsnc_jguid(const Value: IJanuaField);
    property Fsnc_jguid: IJanuaField read GetFsnc_jguid write SetFsnc_jguid;
    function GetFsnc_deleted: IJanuaField;
    procedure SetFsnc_deleted(const Value: IJanuaField);
    property Fsnc_deleted: IJanuaField read GetFsnc_deleted write SetFsnc_deleted;
    function GetJson_calendar: IJson_calendar;
    procedure SetJson_calendar(const Value: IJson_calendar);
    property Json_calendar:IJson_calendar read GetJson_calendar write SetJson_calendar;

  end;

implementation

end.

