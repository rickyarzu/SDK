unit Janua.Orm.Specifications.Intf;

interface

uses Janua.Orm.Intf;

type

  ISpecification = interface(IJanuaRecord)
  ['{5380D8EF-6060-44C8-AB0B-0F59D91BAF7B}']
    function GetSpecification_id: IJanuaField;
    procedure SetSpecification_id(const Value: IJanuaField);
    property Specification_id: IJanuaField read GetSpecification_id write SetSpecification_id;
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    function GetSpecification_des: IJanuaField;
    procedure SetSpecification_des(const Value: IJanuaField);
    property Specification_des: IJanuaField read GetSpecification_des write SetSpecification_des;
  end;

  ISpecifications = interface(IJanuaRecordSet)
  ['{FA7EF75D-C76E-41BD-9C4F-2CE90169097D}']
    function GetSpecification_id: IJanuaField;
    procedure SetSpecification_id(const Value: IJanuaField);
    property Specification_id: IJanuaField read GetSpecification_id write SetSpecification_id;
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    function GetSpecification_des: IJanuaField;
    procedure SetSpecification_des(const Value: IJanuaField);
    property Specification_des: IJanuaField read GetSpecification_des write SetSpecification_des;
    function GetSpecification: ISpecification;
    procedure SetSpecification(const Value: ISpecification);
    property Specification:ISpecification read GetSpecification write SetSpecification;

  end;

implementation

end.
