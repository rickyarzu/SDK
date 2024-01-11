unit Januuuuua.Orm.Test.Intf;

interface

  IJanuaTestNestedRecord = interface(IJanuaRecord)
    ['{821DCEBD-AF72-4709-8028-FBF1D81589BA}']
    function GetInteger: IJanuaField;
    procedure SetInteger(const Value: IJanuaField);
    property TestInteger: IJanuaField read GetInteger write SetInteger;
    function GetString: IJanuaField;
    procedure SetString(const Value: IJanuaField);
    property TestString: IJanuaField read GetString write SetString;
    function GetDateTime: IJanuaField;
    procedure SetDateTime(const Value: IJanuaField);
    property TestDateTime: IJanuaField read GetDateTime write SetDateTime;
    function GetDouble: IJanuaField;
    procedure SetDouble(const Value: IJanuaField);
    property TestDouble: IJanuaField read GetDouble write SetDouble;
  end;

  IJanuaTestRecordSet = interface(IInterface)
    ['{3EC2BBFD-72F9-4112-9AED-A0B4641210FA}']
    function GetInteger: IJanuaField;
    procedure SetInteger(const Value: IJanuaField);
    property TestInteger: IJanuaField read GetInteger write SetInteger;
    function GetString: IJanuaField;
    procedure SetString(const Value: IJanuaField);
    property TestString: IJanuaField read GetString write SetString;
    function GetDateTime: IJanuaField;
    procedure SetDateTime(const Value: IJanuaField);
    property TestDateTime: IJanuaField read GetDateTime write SetDateTime;
    function GetDouble: IJanuaField;
    procedure SetDouble(const Value: IJanuaField);
    property TestDouble: IJanuaField read GetDouble write SetDouble;
    // Nested Record
    function GetNestedRecord: IJanuaTestNestedRecord;
    procedure SetNestedRecord(const Value: IJanuaTestNestedRecord);
    property TestNestedRecord: IJanuaTestNestedRecord read GetDouble write SetDouble;
  end;

implementation

end.
