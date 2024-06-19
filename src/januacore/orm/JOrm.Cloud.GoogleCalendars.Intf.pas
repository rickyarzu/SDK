unit JOrm.Cloud.GoogleCalendars.Intf;

interface

uses JOrm.Phoenix.GoogleCalendars.Custom.Intf, Janua.Orm.Intf;

type

  IGoogleCalendar = interface(ICustomGoogleCalendar)
  ['{82FCE7E2-111C-4530-911F-C77B0F8E2B95}']
  end;

  IGoogleCalendars = interface(IJanuaRecordSet)
  ['{5BDA0308-C0B8-4114-8228-722D613260D1}']
    function GetGoogleCalendar: IGoogleCalendar;
    property GoogleCalendar: IGoogleCalendar read GetGoogleCalendar;

  end;

implementation

end.


