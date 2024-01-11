unit JOrm.System.Settings.Intf;

interface

uses Janua.Orm.Intf;

type

  IKeyValue = interface(IJanuaRecord)
    ['{8A68A754-E2B7-407D-989E-0108849FC528}']
    function GetKey: IJanuaField;
    procedure SetKey(const aValue: IJanuaField);
    function GetParamType: IJanuaField;
    procedure SetParamType(const aValue: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const aValue: IJanuaField);
    function GetHasTranslation: IJanuaField;
    procedure SetHasTranslation(const aValue: IJanuaField);
    // Public ...............................................................................................
    property Key: IJanuaField read GetKey write SetKey;
    property ParamType: IJanuaField read GetParamType write SetParamType;
    property Value: IJanuaField read GetValue write SetValue;
    property HasTranslation: IJanuaField read GetHasTranslation write SetHasTranslation;
  end;

  IKeyValues = interface(IJanuaRecordSet)
    ['{6D41BC4E-033F-494B-806C-BFFECCE25AFC}']
    function GetKey: IJanuaField;
    procedure SetKey(const aValue: IJanuaField);
    function GetParamType: IJanuaField;
    procedure SetParamType(const aValue: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const aValue: IJanuaField);
    function GetHasTranslation: IJanuaField;
    procedure SetHasTranslation(const aValue: IJanuaField);
    function GetKeyValue: IKeyValue;
    procedure SetDBSchemaKeyValue(const aValue: IKeyValue);
    // Public
    property Key: IJanuaField read GetKey write SetKey;
    property ParamType: IJanuaField read GetParamType write SetParamType;
    property Value: IJanuaField read GetValue write SetValue;
    property HasTranslation: IJanuaField read GetHasTranslation write SetHasTranslation;
    property KeyValue: IKeyValue read GetKeyValue write SetDBSchemaKeyValue;
  end;

  ISetting = interface(IJanuaRecord)
    ['{0E55997D-E310-4F78-B401-F30141B6E509}']
    function GetSection: IJanuaField;
    procedure SetSection(const aValue: IJanuaField);
    property Section: IJanuaField read GetSection write SetSection;
    function GetKeyValues: IKeyValues;
    procedure SetKeyValues(const aValue: IKeyValues);
    property KeyValues: IKeyValues read GetKeyValues write SetKeyValues;
  end;

  ISettings = interface(IJanuaRecordSet)
    ['{3C56786D-D44F-41BF-B007-4847817DA630}']
    function GetSection: IJanuaField;
    procedure SetSection(const aValue: IJanuaField);

    property Section: IJanuaField read GetSection write SetSection;
    function GetKeyValues: IKeyValues;
    procedure SetKeyValues(const aValue: IKeyValues);
    property KeyValues: IKeyValues read GetKeyValues write SetKeyValues;

    function GetSetting: ISetting;
    procedure SetSetting(const aValue: ISetting);
    property Setting: ISetting read GetSetting write SetSetting;
  end;

implementation

end.
