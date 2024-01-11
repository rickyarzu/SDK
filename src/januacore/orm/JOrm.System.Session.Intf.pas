unit JOrm.System.Session.Intf;

interface

uses Janua.Orm.Intf;

type

  ISession = interface(IJanuaRecord)
    ['{C8FD0892-EA1B-4BA6-9AE3-7621360EFA7F}']
    function GetDb_user_id: IJanuaField;
    procedure SetDb_user_id(const Value: IJanuaField);
    property Db_user_id: IJanuaField read GetDb_user_id write SetDb_user_id;
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    function GetDb_session_key: IJanuaField;
    procedure SetDb_session_key(const Value: IJanuaField);
    property Db_session_key: IJanuaField read GetDb_session_key write SetDb_session_key;
    function GetDb_session_id: IJanuaField;
    procedure SetDb_session_id(const Value: IJanuaField);
    property Db_session_id: IJanuaField read GetDb_session_id write SetDb_session_id;
    function GetLanguage_id: IJanuaField;
    procedure SetLanguage_id(const Value: IJanuaField);
    property Language_id: IJanuaField read GetLanguage_id write SetLanguage_id;
    function GetStart_time: IJanuaField;
    procedure SetStart_time(const Value: IJanuaField);
    property Start_time: IJanuaField read GetStart_time write SetStart_time;
    function GetInsert_date: IJanuaField;
    procedure SetInsert_date(const Value: IJanuaField);
    property Insert_date: IJanuaField read GetInsert_date write SetInsert_date;
    function GetIspublic: IJanuaField;
    procedure SetIspublic(const Value: IJanuaField);
    property Ispublic: IJanuaField read GetIspublic write SetIspublic;
  end;

  ISessions = interface(IJanuaRecordSet)
    ['{7AC9D29A-4EF6-4B13-BB17-0722A67A47EE}']
    function GetDb_user_id: IJanuaField;
    procedure SetDb_user_id(const Value: IJanuaField);
    property Db_user_id: IJanuaField read GetDb_user_id write SetDb_user_id;
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    function GetDb_session_key: IJanuaField;
    procedure SetDb_session_key(const Value: IJanuaField);
    property Db_session_key: IJanuaField read GetDb_session_key write SetDb_session_key;
    function GetDb_session_id: IJanuaField;
    procedure SetDb_session_id(const Value: IJanuaField);
    property Db_session_id: IJanuaField read GetDb_session_id write SetDb_session_id;
    function GetLanguage_id: IJanuaField;
    procedure SetLanguage_id(const Value: IJanuaField);
    property Language_id: IJanuaField read GetLanguage_id write SetLanguage_id;
    function GetStart_time: IJanuaField;
    procedure SetStart_time(const Value: IJanuaField);
    property Start_time: IJanuaField read GetStart_time write SetStart_time;
    function GetInsert_date: IJanuaField;
    procedure SetInsert_date(const Value: IJanuaField);
    property Insert_date: IJanuaField read GetInsert_date write SetInsert_date;
    function GetIspublic: IJanuaField;
    procedure SetIspublic(const Value: IJanuaField);
    property Ispublic: IJanuaField read GetIspublic write SetIspublic;
    function GetSession: ISession;
    procedure SetSession(const Value: ISession);
    property Session: ISession read GetSession write SetSession;

  end;

implementation

uses Janua.Core.Types;

initialization

// IJanuaCSBookingURLNotFoundBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(ISession));
Janua.Core.Types.RegisterInterface(TypeInfo(ISessions));

end.
