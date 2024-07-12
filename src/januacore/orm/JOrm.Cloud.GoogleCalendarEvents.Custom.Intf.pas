unit JOrm.Cloud.GoogleCalendarEvents.Custom.Intf;

interface

uses Janua.Orm.Intf;

type

  ICustomGoogleCalendarEvent = interface(IJanuaRecord)
  ['{4A45091B-CB18-412F-A0FD-9AFC596C9CA2}']
    function GetId: IJanuaField;
    property Id: IJanuaField read GetId;
    function GetEtag: IJanuaField;
    property Etag: IJanuaField read GetEtag;
    function GetSummary: IJanuaField;
    property Summary: IJanuaField read GetSummary;
    function GetDescription: IJanuaField;
    property Description: IJanuaField read GetDescription;
    function GetStarttime: IJanuaField;
    property Starttime: IJanuaField read GetStarttime;
    function GetEndtime: IJanuaField;
    property Endtime: IJanuaField read GetEndtime;
    function GetCreated: IJanuaField;
    property Created: IJanuaField read GetCreated;
    function GetUpdated: IJanuaField;
    property Updated: IJanuaField read GetUpdated;
    function GetLocation: IJanuaField;
    property Location: IJanuaField read GetLocation;
    function GetStatus: IJanuaField;
    property Status: IJanuaField read GetStatus;
    function GetVisibility: IJanuaField;
    property Visibility: IJanuaField read GetVisibility;
    function GetRecurrence: IJanuaField;
    property Recurrence: IJanuaField read GetRecurrence;
    function GetRecurringid: IJanuaField;
    property Recurringid: IJanuaField read GetRecurringid;
    function GetSequence: IJanuaField;
    property Sequence: IJanuaField read GetSequence;
    function GetColor: IJanuaField;
    property Color: IJanuaField read GetColor;
    function GetCalendarid: IJanuaField;
    property Calendarid: IJanuaField read GetCalendarid;
    function GetUsedefaultreminders: IJanuaField;
    property Usedefaultreminders: IJanuaField read GetUsedefaultreminders;
    function GetSendnotifications: IJanuaField;
    property Sendnotifications: IJanuaField read GetSendnotifications;
    function GetIsallday: IJanuaField;
    property Isallday: IJanuaField read GetIsallday;
    function GetAttendees: IJanuaField;
    property Attendees: IJanuaField read GetAttendees;
    function GetReminders: IJanuaField;
    property Reminders: IJanuaField read GetReminders;
  end;

  ICustomGoogleCalendarEvents = interface(IJanuaRecordSet)
  ['{676F45AF-3B2D-4079-AB33-611162C77AA8}']
    function GetId: IJanuaField;
    property Id: IJanuaField read GetId;
    function GetEtag: IJanuaField;
    property Etag: IJanuaField read GetEtag;
    function GetSummary: IJanuaField;
    property Summary: IJanuaField read GetSummary;
    function GetDescription: IJanuaField;
    property Description: IJanuaField read GetDescription;
    function GetStarttime: IJanuaField;
    property Starttime: IJanuaField read GetStarttime;
    function GetEndtime: IJanuaField;
    property Endtime: IJanuaField read GetEndtime;
    function GetCreated: IJanuaField;
    property Created: IJanuaField read GetCreated;
    function GetUpdated: IJanuaField;
    property Updated: IJanuaField read GetUpdated;
    function GetLocation: IJanuaField;
    property Location: IJanuaField read GetLocation;
    function GetStatus: IJanuaField;
    property Status: IJanuaField read GetStatus;
    function GetVisibility: IJanuaField;
    property Visibility: IJanuaField read GetVisibility;
    function GetRecurrence: IJanuaField;
    property Recurrence: IJanuaField read GetRecurrence;
    function GetRecurringid: IJanuaField;
    property Recurringid: IJanuaField read GetRecurringid;
    function GetSequence: IJanuaField;
    property Sequence: IJanuaField read GetSequence;
    function GetColor: IJanuaField;
    property Color: IJanuaField read GetColor;
    function GetCalendarid: IJanuaField;
    property Calendarid: IJanuaField read GetCalendarid;
    function GetUsedefaultreminders: IJanuaField;
    property Usedefaultreminders: IJanuaField read GetUsedefaultreminders;
    function GetSendnotifications: IJanuaField;
    property Sendnotifications: IJanuaField read GetSendnotifications;
    function GetIsallday: IJanuaField;
    property Isallday: IJanuaField read GetIsallday;
    function GetAttendees: IJanuaField;
    property Attendees: IJanuaField read GetAttendees;
    function GetReminders: IJanuaField;
    property Reminders: IJanuaField read GetReminders;

  end;

implementation

end.


