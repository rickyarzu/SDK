unit JOrm.Cloud.GoogleCalendarEvents.Intf;

interface

uses JOrm.Cloud.GoogleCalendarEvents.Custom.Intf, Janua.Orm.Intf;

type

  IGoogleCalendarEvent = interface(ICustomGoogleCalendarEvent)
  ['{FAFAC460-DF44-4078-8374-82F87A40D8C2}']
  end;

  IGoogleCalendarEvents = interface(IJanuaRecordSet)
  ['{462AE809-1C86-46EC-BB9E-C55D5B6A6E70}']
    function GetGoogleCalendarEvent: IGoogleCalendarEvent;
    property GoogleCalendarEvent: IGoogleCalendarEvent read GetGoogleCalendarEvent;

  end;

implementation

end.


