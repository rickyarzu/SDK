unit JOrm.Cms.MainArguments.Intf;

interface

uses JOrm.Cms.Arguments.Intf, Janua.Orm.Intf;

// *******************************************************************************************************************

type

  IMainArgument = interface(IJanuaRecord)
    ['{71D8924A-39D0-46B5-B265-06648667D766}']
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    function GetMain_argument_des: IJanuaField;
    procedure SetMain_argument_des(const Value: IJanuaField);
    property Main_argument_des: IJanuaField read GetMain_argument_des write SetMain_argument_des;
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    property Pos: IJanuaField read GetPos write SetPos;
    function GetSelected: IJanuaField;
    procedure SetSelected(const Value: IJanuaField);
    property Selected: IJanuaField read GetSelected write SetSelected;
    // Main Argument Impiegherebbe quindi un sub-Dataset che è poi arguments ....................................
    function GetArguments: IArguments;
    procedure SetArguments(const Value: IArguments);
    property Arguments: IArguments read GetArguments write SetArguments;
    // Calc Fields
    function GetUrl: IJanuaField;
    procedure setUrl(const Value: IJanuaField);
    function GetIcon: IJanuaField;
    procedure setIcon(const Value: IJanuaField);
    property Url: IJanuaField read GetUrl write setUrl;
    property Icon: IJanuaField read GetIcon write setIcon;
  end;

  IMainArguments = interface(IJanuaRecordSet)
    ['{59DD43C5-D522-4C0B-B20B-1AC1B1421B61}']
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    function GetMain_argument_des: IJanuaField;
    procedure SetMain_argument_des(const Value: IJanuaField);
    property Main_argument_des: IJanuaField read GetMain_argument_des write SetMain_argument_des;
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    property Pos: IJanuaField read GetPos write SetPos;
    function GetMainArgument: IMainArgument;
    procedure SetMainArgument(const Value: IMainArgument);
    property MainArgument: IMainArgument read GetMainArgument write SetMainArgument;
    // Main Argument Impiegherebbe quindi un sub-Dataset che è poi arguments ....................................
    function GetArguments: IArguments;
    procedure SetArguments(const Value: IArguments);
    property Arguments: IArguments read GetArguments write SetArguments;
    // Calc Fields
    function GetUrl: IJanuaField;
    procedure setUrl(const Value: IJanuaField);
    function GetIcon: IJanuaField;
    procedure setIcon(const Value: IJanuaField);
    property Url: IJanuaField read GetUrl write setUrl;
    property Icon: IJanuaField read GetIcon write setIcon;
  end;

implementation

end.
