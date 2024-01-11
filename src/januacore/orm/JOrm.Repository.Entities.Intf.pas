unit JOrm.Repository.Entities.Intf;

interface

uses Janua.Orm.Intf;

type

  IEntity = interface(IJanuaRecord)
    ['{370DD95C-7C54-4799-892B-5432E3A60CF4}']
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetSchema: IJanuaField;
    procedure SetSchema(const Value: IJanuaField);
    property Schema: IJanuaField read GetSchema write SetSchema;
    function GetName: IJanuaField;
    procedure SetName(const Value: IJanuaField);
    property Name: IJanuaField read GetName write SetName;
    function GetSingular: IJanuaField;
    procedure SetSingular(const Value: IJanuaField);
    property Singular: IJanuaField read GetSingular write SetSingular;
    function GetPlural: IJanuaField;
    procedure SetPlural(const Value: IJanuaField);
    property Plural: IJanuaField read GetPlural write SetPlural;
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    property Title: IJanuaField read GetTitle write SetTitle;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetIsvirtual: IJanuaField;
    procedure SetIsvirtual(const Value: IJanuaField);
    property Isvirtual: IJanuaField read GetIsvirtual write SetIsvirtual;
    function GetModelUid: IJanuaField;
    procedure SetModelUid(const Value: IJanuaField);
    property ModelUid: IJanuaField read GetModelUid write SetModelUid;
    function GetQueryText: IJanuaField;
    procedure SetQueryText(const Value: IJanuaField);
    property QueryText: IJanuaField read GetQueryText write SetQueryText;
  end;

  IEntities = interface(IJanuaRecordSet)
    ['{009C9095-C440-48DA-967F-0ACA83E7A8AE}']
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetSchema: IJanuaField;
    procedure SetSchema(const Value: IJanuaField);
    property Schema: IJanuaField read GetSchema write SetSchema;
    function GetName: IJanuaField;
    procedure SetName(const Value: IJanuaField);
    property Name: IJanuaField read GetName write SetName;
    function GetSingular: IJanuaField;
    procedure SetSingular(const Value: IJanuaField);
    property Singular: IJanuaField read GetSingular write SetSingular;
    function GetPlural: IJanuaField;
    procedure SetPlural(const Value: IJanuaField);
    property Plural: IJanuaField read GetPlural write SetPlural;
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    property Title: IJanuaField read GetTitle write SetTitle;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetIsvirtual: IJanuaField;
    procedure SetIsvirtual(const Value: IJanuaField);
    property Isvirtual: IJanuaField read GetIsvirtual write SetIsvirtual;
    function GetModelUid: IJanuaField;
    procedure SetModelUid(const Value: IJanuaField);
    property ModelUid: IJanuaField read GetModelUid write SetModelUid;
    function GetQueryText: IJanuaField;
    procedure SetQueryText(const Value: IJanuaField);
    property QueryText: IJanuaField read GetQueryText write SetQueryText;
    function GetEntity: IEntity;
    procedure SetEntity(const Value: IEntity);
    property Entity: IEntity read GetEntity write SetEntity;

  end;

implementation

end.
