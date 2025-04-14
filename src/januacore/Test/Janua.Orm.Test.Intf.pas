/// <summary>
/// Test Model for Interface structure of Janua RecordSets
/// </summary>
unit Janua.Orm.Test.Intf;

interface

uses Janua.Orm.Intf;

type

  /// <summary>
  /// Test Interface for SubRecord(Set) structure. It contains all Fields but their implementation.
  /// </summary>
  IJanuaTestSubRecord = interface(IJanuaRecord)
    ['{7676CB3C-3BED-437A-83CE-C79D26C93567}']
    function GetInteger: IJanuaField;
    procedure SetInteger(const Value: IJanuaField);
    property TestInteger: IJanuaField read GetInteger write SetInteger;
    function GetString: IJanuaField;
    procedure SetString(const Value: IJanuaField);
    property TestString: IJanuaField read GetString write SetString;
  end;

  IJanuaTestSubRecordSet = interface(IJanuaRecordSet)
    ['{4709F4CB-C6F7-4337-A558-3B2B3EBA49A4}']
    function GetInteger: IJanuaField;
    procedure SetInteger(const Value: IJanuaField);
    property TestInteger: IJanuaField read GetInteger write SetInteger;
    function GetString: IJanuaField;
    procedure SetString(const Value: IJanuaField);
    property TestString: IJanuaField read GetString write SetString;
    function GetSubRecord: IJanuaTestSubRecord;
    procedure SetSubRecord(const Value: IJanuaTestSubRecord);
    /// <summary>
    /// Nested Record. Refers to the I..SubRecord Interface that is the recordset's blueprint.
    /// </summary>
    /// <remarks>
    /// This property Access represents the logical link with the record structure from a DB or REST Server
    /// </remarks>
    property TestSubRecord: IJanuaTestSubRecord read GetSubRecord write SetSubRecord;
  end;

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
    function GetBoolean: IJanuaField;
    procedure SetBoolean(const Value: IJanuaField);
    property TestBoolean: IJanuaField read GetBoolean write SetBoolean;
    function GetMemo: IJanuaField;
    procedure SetMemo(const Value: IJanuaField);
    property TestMemo: IJanuaField read GetMemo write SetMemo;
    // Sub RecordSet ..................................................................................................
    function GetSubRecordSet: IJanuaTestSubRecordSet;
    procedure SetSubRecordSet(const Value: IJanuaTestSubRecordSet);
    property SubRecordSet: IJanuaTestSubRecordSet read GetSubRecordSet write SetSubRecordSet;
    function GetSubRecordSet2: IJanuaTestSubRecordSet;
    procedure SetSubRecordSet2(const Value: IJanuaTestSubRecordSet);
    property SubRecordSet2: IJanuaTestSubRecordSet read GetSubRecordSet2 write SetSubRecordSet2;
  end;

  IJanuaTestRecordSet = interface(IJanuaRecordSet)
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
    function GetBoolean: IJanuaField;
    procedure SetBoolean(const Value: IJanuaField);
    property TestBoolean: IJanuaField read GetBoolean write SetBoolean;
    function GetMemo: IJanuaField;
    procedure SetMemo(const Value: IJanuaField);
    property TestMemo: IJanuaField read GetMemo write SetMemo;
    // Nested Record ... This property Access directly to the base Record in the Dataset .......
    function GetNestedRecord: IJanuaTestNestedRecord;
    procedure SetNestedRecord(const Value: IJanuaTestNestedRecord);
    property TestNestedRecord: IJanuaTestNestedRecord read GetNestedRecord write SetNestedRecord;
    // Sub RecordSet ..................................................................................................
    function GetSubRecordSet: IJanuaTestSubRecordSet;
    procedure SetSubRecordSet(const Value: IJanuaTestSubRecordSet);
    property SubRecordSet: IJanuaTestSubRecordSet read GetSubRecordSet write SetSubRecordSet;
  end;

  IJanuaTestNestedSubRecord = interface(IJanuaTestNestedRecord)
    ['{879EF105-9E4A-4603-959D-D3F0CA438CB8}']
    // Sub Records ..................................................................................................
    function GetSubRecordA: IJanuaTestSubRecord;
    procedure SetSubRecordA(const Value: IJanuaTestSubRecord);
    property SubRecordA: IJanuaTestSubRecord read GetSubRecordA write SetSubRecordA;
    // Sub Records ..................................................................................................
    function GetSubRecordB: IJanuaTestSubRecord;
    procedure SetSubRecordB(const Value: IJanuaTestSubRecord);
    property SubRecordB: IJanuaTestSubRecord read GetSubRecordB write SetSubRecordB;
  end;

implementation

end.
