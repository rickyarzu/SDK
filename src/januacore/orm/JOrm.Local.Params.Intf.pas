unit JOrm.Local.Params.Intf;

interface

uses Janua.Orm.Intf;

type

  ILocalParam = interface(IJanuaRecord)
    ['{D141025D-EA33-4FF7-B581-AC16790E7D45}']
    function GetKey: IJanuaField;
    procedure SetKey(const Value: IJanuaField);
    property Key: IJanuaField read GetKey write SetKey;
    function GetParam: IJanuaField;
    procedure SetParam(const Value: IJanuaField);
    property Param: IJanuaField read GetParam write SetParam;
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    property Value: IJanuaField read GetValue write SetValue;
  end;

  ILocalParams = interface(IJanuaRecordSet)
    ['{FC728455-047B-4DC8-8074-9A3F1462822E}']
    function GetKey: IJanuaField;
    procedure SetKey(const Value: IJanuaField);
    property Key: IJanuaField read GetKey write SetKey;
    function GetParam: IJanuaField;
    procedure SetParam(const Value: IJanuaField);
    property Param: IJanuaField read GetParam write SetParam;
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    property Value: IJanuaField read GetValue write SetValue;
    function GetHasTranslation: IJanuaField;
    procedure SetHasTranslation(const Value: IJanuaField);
    property HasTranslation: IJanuaField read GetHasTranslation write SetHasTranslation;
    function GetLocalParam: ILocalParam;
    procedure SetDBSchemaParam(const Value: ILocalParam);
    property LocalParam: ILocalParam read GetLocalParam write SetDBSchemaParam;
  end;

implementation

end.
