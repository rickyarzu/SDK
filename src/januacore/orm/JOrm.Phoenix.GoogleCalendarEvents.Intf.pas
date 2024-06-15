unit JOrm.Phoenix.GoogleCalendarEvents.Intf;

interface

uses JOrm.Phoenix.GoogleCalendarEvents.Custom.Intf, Janua.Orm.Intf;

type

  IGoogleCalendarEvent = interface(ICustomGoogleCalendarEvent)
  ['{537FBDEC-CB82-4D88-B96C-A6E0CA6D15AA}']
  end;

  IGoogleCalendarEvents = interface(IJanuaRecordSet)
  ['{69E288C0-636B-409D-B526-8CC11A5E1A46}']
    function GetGoogleCalendarEvent: IGoogleCalendarEvent;
    property GoogleCalendarEvent: IGoogleCalendarEvent read GetGoogleCalendarEvent;

  end;

implementation

end.


