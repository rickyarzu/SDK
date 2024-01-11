unit Janua.Reporting.Intf;

interface

uses Spring.Collections, Janua.Core.Classes.Intf;

type
  IJanuaReporter = interface
    ['{BCCFAA45-BB05-4515-823A-266221411345}']
    function GetImageIndex: integer;
    procedure SetImageIndex(const Value: integer);
    property ImageIndex: integer read GetImageIndex write SetImageIndex;
    procedure Execute(const aPreview: boolean = False);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    /// <summary> property Title to be displayed on Screen </Summary>
    property Title: string read GetTitle write SetTitle;
  end;

  IJanuaReportingList = interface(IJanuaInterface)
    ['{AF1F6564-F8B1-4D51-BFED-72EC52D48DD6}']
    function GetItemIndex: integer;
    procedure SetItemIndex(const Value: integer);
    function GetItems: IList<IJanuaReporter>;
    function GetSelectedItem: IJanuaReporter;
    function Add(aGUID: TGUID; const aImgIndex: integer = -1; const aTitle: string = ''): IJanuaReporter;
    function SelectReporter: boolean;
    property ItemIndex: integer read GetItemIndex write SetItemIndex;
    property Items: IList<IJanuaReporter> read GetItems;
    property SelectedItem: IJanuaReporter read GetSelectedItem;
    function GetActionList: IJanuaActionList;
    function GetPreview: boolean;
    procedure SetPreview(const Value: boolean);
    procedure SetActionList(const Value: IJanuaActionList);
    property ActionList: IJanuaActionList read GetActionList write SetActionList;
    property Preview: boolean read GetPreview write SetPreview;
  end;

implementation

end.
