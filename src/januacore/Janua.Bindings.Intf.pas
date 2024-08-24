unit Janua.Bindings.Intf;

interface

uses System.Classes, System.SysUtils;

type
  TJanuaBindCreateOption = (jbcNotifyOutput, jbcEvaluate);
  TJanuaBindCreateOptions = set of TJanuaBindCreateOption;

type
  IJanuaBindManager = interface
    ['{31AD4D50-3BA9-4B1F-AE7F-68C8338CC3AC}']
    /// <summary>
    /// Janua Binding Framework. This procedure binds a Field from the record to a property of 'any' Object.
    /// </summary>
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput, jbcEvaluate]);
    /// <summary> Clears all Bindings to all properties of the object </summary>
    procedure ClearBindings;
    procedure UnBind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string);
    procedure Notify(const AProperty: string);
    function GetHasBindings: boolean;
    function GetBindCount: Integer;
    procedure IncBindCount;
    procedure DecBindCount;
    property HasBindings: boolean read GetHasBindings;
    property BindCount: Integer read GetBindCount;
    /// <summary> Calls Notify for each binded proprerty in a Class</summary>
    procedure NotifyAll;
  end;

type
  IJanuaBindable = interface
    ['{E7EDFF21-C3E8-4700-ABE0-410B3ACA6052}']
    /// <summary> ClearBindings can be called externally when the object is no longer needed </summary>
    procedure ClearBindings;

    function GetBindManager: IJanuaBindManager;
    property BindManager: IJanuaBindManager read GetBindManager;

    function GetSelf: TObject;
    property AsObject: TObject read GetSelf;

    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput, jbcEvaluate]);
  end;


  IJanuaBindableControl = interface(IJanuaBindable)
    ['{B5473E6B-F97C-4D2C-B2EE-7B241F461524}']
    function AsComponent: TComponent;
  end;

  IJanuaBindControlsList = interface
    procedure AddControl(aControl: TComponent);
    procedure ClearBindings;
    procedure Clear;
  end;

  IJanuaBindableEditControl = interface(IJanuaBindableControl)
    ['{BF293CF9-26F1-4572-BE63-5543BDEA7174}']
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    property Text: string read GetJanuaText write SetJanuaText;

    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
    property OnExit: TNotifyEvent read GetJanuaOnExit write SetJanuaOnExit;
  end;

  IJanuaBindableComboControl = interface(IJanuaBindableControl)
    ['{A14BE8DF-B1DF-4D7E-BCC6-9854CC796505}']
    function GetItemsText: string;
    function GetJanuaItemIndex: Integer;
    procedure SetItemsText(const Value: string);
    procedure SetJanuaItemIndex(const Value: Integer);
    property Text: string read GetItemsText write SetItemsText;
  end;

  IJanuaBindableFloatControl = interface(IJanuaBindableControl)
    ['{FA03DE09-7BA4-479D-8A16-8ABCB5C278F2}']
    function GetJanuaDouble: Double;
    procedure SetJanuaDouble(const Value: Double);
    property Double: Double read GetJanuaDouble write SetJanuaDouble;
  end;

  IJanuaBindableLabelControl = interface(IJanuaBindableControl)
    ['{DA356474-4731-4998-B39B-C0715926E866}']
    function GetJanuaCaption: string;
    procedure SetJanuaCaption(const Value: string);
    property Caption: string read GetJanuaCaption write SetJanuaCaption;
  end;

  IJanuaBindableDateControl = interface(IJanuaBindableEditControl)
    ['{BE036604-8017-4010-9100-31FD0E0451F8}']
    function GetJanuaDate: TDate;
    procedure SetJanuaDate(const Value: TDate);
    property Date: TDate read GetJanuaDate write SetJanuaDate;
  end;

type
  IJanuaBindRecord = interface
    ['{D84C450C-90D1-461E-BFF1-63CA69F2BE2C}']
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      { const AReadOnly: Boolean = false; } const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure ClearBindings;
    procedure RemoveBindings(const aObject: TObject);
    function GetBindCount: Integer;
    property BindCount: Integer read GetBindCount;
  end;

type
  IJanuaBindEngine = interface
    ['{CEB1A9D4-B3C3-42EB-8C9D-EE6B72CDB207}']
    /// <summary>
    /// Janua Binding Framework. This procedure binds a Field from the record to a property of 'any' Object.
    /// </summary>
    procedure Bind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
      const ABindToProperty: string; { const aBidiRectional: Boolean = false; } const AReadOnly: boolean = false;
      const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput, jbcEvaluate]);
    /// <summary> Clears all Bindings to all properties of the object </summary>
    procedure ClearBindings(const aObject: TObject);
    procedure UnBind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
      const ABindToProperty: string);
    procedure Notify(const aObject: TObject; const AProperty: string);
    function Activate: Boolean;
    /// <summary> called on Destroy or terminate event clears all bindings </summary>
    procedure ClearAllBindings;
    function NewBindControlsList: IJanuaBindControlsList;
  end;

implementation

end.
