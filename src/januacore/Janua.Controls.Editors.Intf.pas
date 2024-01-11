unit Janua.Controls.Editors.Intf;

interface

uses System.Classes;

Type
  IJanuaRTFEditor = interface
    ['{5BF79133-E9C9-4762-A973-6E5078719C5F}']
    function AsHtml(aUseSelection: boolean; aImgPath: string = ''; aPlainHtml: boolean = False): string;
    function AsHtmlEmbedImages: string;
    function GetOnExit: TNotifyEvent;
    function GetOnChange: TNotifyEvent;
    function GetOnEnter: TNotifyEvent;
    procedure Clear;
    procedure SaveToStream(aStream: TStream);
    procedure LoadFromStream(aStream: TStream);
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnEnter(const Value: TNotifyEvent);
    procedure SetOnExit(const Value: TNotifyEvent);
    procedure DoEnter(Sender: TObject);
    procedure DoExit(Sender: TObject);
    procedure DoChange(Sender: TObject);
    property OnEnter: TNotifyEvent read GetOnEnter write SetOnEnter;
    property OnExit: TNotifyEvent read GetOnExit write SetOnExit;
    property OnChange: TNotifyEvent read GetOnChange write SetOnChange;
    function GetRTFDefaultFontSize: integer;
    function GetRTFDefaultFontName: string;
    procedure SetRTFDefaultFontName(const Value: string);
    procedure SetRTFDefaultFontSize(const Value: integer);
    property RTFDefaultFontName: string read GetRTFDefaultFontName write SetRTFDefaultFontName;
    property RTFDefaultFontSize: integer read GetRTFDefaultFontSize write SetRTFDefaultFontSize;
  end;



implementation

end.
