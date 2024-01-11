unit JOrm.Cms.Arguments.Intf;

interface

uses Janua.Orm.Intf;

type

  IArgument = interface(IJanuaRecord)
    ['{F365F3F7-18CB-41B0-9B2A-3DE072F69A86}']
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    function GetArgument_des: IJanuaField;
    procedure SetArgument_des(const Value: IJanuaField);
    property Argument_des: IJanuaField read GetArgument_des write SetArgument_des;
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    property Code: IJanuaField read GetCode write SetCode;
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    property Pos: IJanuaField read GetPos write SetPos;
    function GetIcon: IJanuaField;
    procedure SetIcon(const Value: IJanuaField);
    property Icon: IJanuaField read GetIcon write SetIcon;
    function GetUrl: IJanuaField;
    procedure SetUrl(const Value: IJanuaField);
    property Url: IJanuaField read GetUrl write SetUrl;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    // Selected
    function GetSelected: IJanuaField;
    procedure SetSelected(const Value: IJanuaField);
    property Selected: IJanuaField read GetSelected write SetSelected;
  end;

  IArguments = interface(IJanuaRecordSet)
    ['{6A43B131-AC5D-44F4-AC25-4498936CFDBD}']
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    function GetArgument_des: IJanuaField;
    procedure SetArgument_des(const Value: IJanuaField);
    property Argument_des: IJanuaField read GetArgument_des write SetArgument_des;
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    property Code: IJanuaField read GetCode write SetCode;
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    property Pos: IJanuaField read GetPos write SetPos;
    function GetIcon: IJanuaField;
    procedure SetIcon(const Value: IJanuaField);
    property Icon: IJanuaField read GetIcon write SetIcon;
    function GetUrl: IJanuaField;
    procedure SetUrl(const Value: IJanuaField);
    property Url: IJanuaField read GetUrl write SetUrl;
    function GetArgument: IArgument;
    procedure SetArgument(const Value: IArgument);
    property Argument: IArgument read GetArgument write SetArgument;
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
  end;

implementation

end.
