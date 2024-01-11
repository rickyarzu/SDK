unit JOrm.Planner.Timetable.Intf;

interface

uses Janua.Orm.Intf, JOrm.Planner.Timetable.Custom.Intf;

type

  ITimetable = interface(ICustomTimetable)
    ['{9282EB08-47BA-4B85-A50E-036712939B60}']
    function GetDateFrom: TDateTime;
    procedure SetDateFrom(const Value: TDateTime);
    property DateFrom: TDateTime read GetDateFrom write SetDateFrom;
    function GetDateTo: TDateTime;
    procedure SetDateTo(const Value: TDateTime);
    function GetHourFrom: Word;
    function GetHourTo: Word;
    function GetMinFrom: Word;
    function GetMinTo: Word;
    procedure SetHourFrom(const Value: Word);
    procedure SetHourTo(const Value: Word);
    procedure SetMinFrom(const Value: Word);
    procedure SetMinTo(const Value: Word);
    property DateTo: TDateTime read GetDateTo write SetDateTo;
    property HourFrom: Word read GetHourFrom write SetHourFrom;
    property HourTo: Word read GetHourTo write SetHourTo;
    property MinFrom: Word read GetMinFrom write SetMinFrom;
    property MinTo: Word read GetMinTo write SetMinTo;

    function GetPeriodMins: Word;
    procedure SetPeriodMins(const Value: Word);
    property PeriodMins: Word read GetPeriodMins write SetPeriodMins;

    function GetPeriodFrom: Word;
    procedure SetPeriodFrom(const Value: Word);
    property PeriodFrom: Word read GetPeriodFrom write SetPeriodFrom;

    function GetPeriodTo: Word;
    procedure SetPeriodTo(const Value: Word);
    property PeriodTo: Word read GetPeriodTo write SetPeriodTo;

  end;

  ITimetables = interface(ICustomTimetables)
    ['{1797C554-3A12-4BAD-AC13-4928AF7EC7DB}']
    function GetTimetable: ITimetable;
    property Timetable: ITimetable read GetTimetable;
  end;

implementation

end.
