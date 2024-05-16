unit JOrm.Planner.Timetable.Custom.Intf;
{ Orm.Planner.Timetable.Intf; }

interface

uses Janua.Orm.Intf;

type

  ICustomTimetable = interface(IJanuaRecord)
    ['{A8F3C614-5EBE-4E73-9FAD-5BB54BB5CEED}']
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    function GetStarttime: IJanuaField;
    procedure SetStarttime(const Value: IJanuaField);
    property Starttime: IJanuaField read GetStarttime write SetStarttime;
    function GetEndtime: IJanuaField;
    procedure SetEndtime(const Value: IJanuaField);
    property Endtime: IJanuaField read GetEndtime write SetEndtime;
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    property Notes: IJanuaField read GetNotes write SetNotes;
    function GetSubject: IJanuaField;
    procedure SetSubject(const Value: IJanuaField);
    property Subject: IJanuaField read GetSubject write SetSubject;
    function GetCaption: IJanuaField;
    procedure SetCaption(const Value: IJanuaField);
    property Caption: IJanuaField read GetCaption write SetCaption;
    function GetImage: IJanuaField;
    procedure SetImage(const Value: IJanuaField);
    property Image: IJanuaField read GetImage write SetImage;
    function GetColor: IJanuaField;
    procedure SetColor(const Value: IJanuaField);
    property Color: IJanuaField read GetColor write SetColor;
    function GetActivityGroupJguid: IJanuaField;
    procedure SetActivityGroupJguid(const Value: IJanuaField);
    property ActivityGroupJguid: IJanuaField read GetActivityGroupJguid write SetActivityGroupJguid;
    function GetActivityJguid: IJanuaField;
    procedure SetActivityJguid(const Value: IJanuaField);
    property ActivityJguid: IJanuaField read GetActivityJguid write SetActivityJguid;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
  end;

  ICustomTimetables = interface(IJanuaRecordSet)
    ['{FECFE559-2F50-48CD-835C-ED24CA97C41E}']
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    function GetStarttime: IJanuaField;
    procedure SetStarttime(const Value: IJanuaField);
    property Starttime: IJanuaField read GetStarttime write SetStarttime;
    function GetEndtime: IJanuaField;
    procedure SetEndtime(const Value: IJanuaField);
    property Endtime: IJanuaField read GetEndtime write SetEndtime;
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    property Notes: IJanuaField read GetNotes write SetNotes;
    function GetSubject: IJanuaField;
    procedure SetSubject(const Value: IJanuaField);
    property Subject: IJanuaField read GetSubject write SetSubject;
    function GetCaption: IJanuaField;
    procedure SetCaption(const Value: IJanuaField);
    property Caption: IJanuaField read GetCaption write SetCaption;
    function GetImage: IJanuaField;
    procedure SetImage(const Value: IJanuaField);
    property Image: IJanuaField read GetImage write SetImage;
    function GetColor: IJanuaField;
    procedure SetColor(const Value: IJanuaField);
    property Color: IJanuaField read GetColor write SetColor;
    function GetActivityGroupJguid: IJanuaField;
    procedure SetActivityGroupJguid(const Value: IJanuaField);
    property ActivityGroupJguid: IJanuaField read GetActivityGroupJguid write SetActivityGroupJguid;
    function GetActivityJguid: IJanuaField;
    procedure SetActivityJguid(const Value: IJanuaField);
    property ActivityJguid: IJanuaField read GetActivityJguid write SetActivityJguid;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
  end;

implementation

end.
