unit JOrm.Phoenix.GoogleCalendars.Custom.Intf;

interface

uses Janua.Orm.Intf;

type

  ICustomGoogleCalendar = interface(IJanuaRecord)
  ['{46B8AF53-48DF-45DF-9789-99704845F6E9}']
    function GetId: IJanuaField;
    property Id: IJanuaField read GetId;
    function GetDescription: IJanuaField;
    property Description: IJanuaField read GetDescription;
    function GetLocation: IJanuaField;
    property Location: IJanuaField read GetLocation;
    function GetSummary: IJanuaField;
    property Summary: IJanuaField read GetSummary;
    function GetPrimary: IJanuaField;
    property Primary: IJanuaField read GetPrimary;
    function GetTimezone: IJanuaField;
    property Timezone: IJanuaField read GetTimezone;
    function GetColor: IJanuaField;
    property Color: IJanuaField read GetColor;
    function GetBackColor: IJanuaField;
    property BackColor: IJanuaField read GetBackColor;
    function GetForeColor: IJanuaField;
    property ForeColor: IJanuaField read GetForeColor;
  end;

  ICustomGoogleCalendars = interface(IJanuaRecordSet)
  ['{4FBD4F28-90A5-46F1-A059-4CF963337645}']
    function GetId: IJanuaField;
    property Id: IJanuaField read GetId;
    function GetDescription: IJanuaField;
    property Description: IJanuaField read GetDescription;
    function GetLocation: IJanuaField;
    property Location: IJanuaField read GetLocation;
    function GetSummary: IJanuaField;
    property Summary: IJanuaField read GetSummary;
    function GetPrimary: IJanuaField;
    property Primary: IJanuaField read GetPrimary;
    function GetTimezone: IJanuaField;
    property Timezone: IJanuaField read GetTimezone;
    function GetColor: IJanuaField;
    property Color: IJanuaField read GetColor;
    function GetBackColor: IJanuaField;
    property BackColor: IJanuaField read GetBackColor;
    function GetForeColor: IJanuaField;
    property ForeColor: IJanuaField read GetForeColor;

  end;

implementation

end.


