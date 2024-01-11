unit JOrm.Cms.SubArguments.Intf;

interface

uses Janua.Orm.Intf;

type

  ISubArgument = interface(IJanuaRecord)
    ['{A5C287A7-4636-4A3C-B4BE-8A0A2EB573AC}']
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    function GetSub_argument_des: IJanuaField;
    procedure SetSub_argument_des(const Value: IJanuaField);
    property Sub_argument_des: IJanuaField read GetSub_argument_des write SetSub_argument_des;
  end;

  ISubArguments = interface(IJanuaRecordSet)
    ['{9D4CFB5B-DA6C-4D5D-9903-1D8D4BEBFE24}']
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    function GetSub_argument_des: IJanuaField;
    procedure SetSub_argument_des(const Value: IJanuaField);
    property Sub_argument_des: IJanuaField read GetSub_argument_des write SetSub_argument_des;
    function GetSubArgument: ISubArgument;
    procedure SetSubArgument(const Value: ISubArgument);
    property SubArgument: ISubArgument read GetSubArgument write SetSubArgument;

  end;

implementation

end.
