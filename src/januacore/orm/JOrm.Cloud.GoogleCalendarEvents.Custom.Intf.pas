unit JOrm.Cloud.GoogleCalendarEvents.Custom.Intf;

interface

uses Janua.Orm.Intf;

type

  ICustomGoogleCalendarEvent = interface(IJanuaRecord)
  ['{B9568EB8-7916-4C75-89B4-5E4C889C6397}']
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
    function GetIsallday: IJanuaField;
    property Isallday: IJanuaField read GetIsallday;
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
    function GetUsedefaultreminders: IJanuaField;
    property Usedefaultreminders: IJanuaField read GetUsedefaultreminders;
    function GetSendnotifications: IJanuaField;
    property Sendnotifications: IJanuaField read GetSendnotifications;
    function GetCalendarid: IJanuaField;
    property Calendarid: IJanuaField read GetCalendarid;
  end;

  ICustomGoogleCalendarEvents = interface(IJanuaRecordSet)
  ['{0EE66200-E182-4997-BDB2-FC0262B12152}']
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
    function GetIsallday: IJanuaField;
    property Isallday: IJanuaField read GetIsallday;
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
    function GetUsedefaultreminders: IJanuaField;
    property Usedefaultreminders: IJanuaField read GetUsedefaultreminders;
    function GetSendnotifications: IJanuaField;
    property Sendnotifications: IJanuaField read GetSendnotifications;
    function GetCalendarid: IJanuaField;
    property Calendarid: IJanuaField read GetCalendarid;

  end;

implementation

end.


