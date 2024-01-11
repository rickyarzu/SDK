unit Janua.Controls.Intf;

{$I JANUACORE.INC}

interface

uses
{$IFDEF delphixe}
  System.Classes, Spring.Collections, System.Json, System.Types, System.UITypes,
{$ENDIF}
{$IFDEF fpc} Classes, Generics.Collections, fpcjson, {$ENDIF}
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf;

type
  TJanuaDBButton = (jdbPrior, jdbFirst, jdbNext, jdbLast, jdbInsert, jdbDelete, jdbPost, jdbUndo, jdbApplyUpdates);

type
  TJanuaAlign = (jalNone, jalTop, jalBottom, jalLeft, jalRight, jalClient, jalCustom);

const
  JanuaAlign: array [TJanuaAlign] of string = ('', 'top', 'bottom', 'left', 'right', 'clent', 'custom');

type
  TJanuaMouseEvent = procedure(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single) of object;
  TJanuaMouseMoveEvent = procedure(Sender: TObject; Shift: TShiftState; X, Y: Single) of object;
  TJanuaMouseWheelEvent = procedure(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; var Handled: Boolean)
    of object;
  TJanuaKeyEvent = procedure(Sender: TObject; var Key: Word; var KeyChar: WideChar; Shift: TShiftState) of object;

type
  IJanuaControlBuilder = interface; // Forward Declaration

  IJanuaComponent = interface(IJanuaBindableComponent)
  end;

  /// <summary> Base Interface for Control wrappers </summary>
  IJanuaControl = interface(IJanuaBindableComponent)
    ['{4A2B17F9-8A75-4242-A523-3B7D9A02C498}']
    function GetHint: string;
    procedure SetHint(const Value: string);
    property Hint: string read GetHint write SetHint;
    function JanuaGetAlign: TJanuaAlign;
    procedure JanuaSetAlign(const Value: TJanuaAlign);
    /// <summary> Determines how the control aligns within its container (parent control). </summary>
    /// <summary> Determines how the control aligns within its container (parent control). </summary>
    property Align: TJanuaAlign read JanuaGetAlign write JanuaSetAlign;
    procedure SetAlignWM(const Value: Boolean);
    function GetAlignWM: Boolean;
    property AlignWithMargins: Boolean read GetAlignWM write SetAlignWM;
{$IFDEF delphixe}
    function GetChildControls: IList<IJanuaControl>;
    procedure setChildControls(const Value: IList<IJanuaControl>);
    property ChildControls: IList<IJanuaControl> read GetChildControls write setChildControls;
{$ENDIF delphixe}
{$IFDEF fpc}
    function GetChildControls: TList<IJanuaControl>;
    procedure setChildControls(const Value: TList<IJanuaControl>);
    property ChildControls: TList<IJanuaControl> read GetChildControls write setChildControls;
{$ENDIF fpc}
    function GetControls(const aIndex: Integer): IJanuaControl;
    property Controls[const aIndex: Integer]: IJanuaControl read GetControls;
    function AddControl: IJanuaControl;
    procedure DelControl(const aControl: IJanuaControl);

    procedure JanuaSetParent(const Value: IJanuaControl);
    function JanuaGetParent: IJanuaControl;
    /// <summary> Defines the container control (parent control). </summary>
    property JanuaParent: IJanuaControl read JanuaGetParent write JanuaSetParent;

    function GetAsComponent: TComponent;
    procedure SetAsComponent(const Value: TComponent);
    property AsComponent: TComponent read GetAsComponent write SetAsComponent;

    function JanuaGetAction: IJanuaAction;
    procedure JanuaSetAction(const Value: IJanuaAction);
    property JanuaAction: IJanuaAction read JanuaGetAction Write JanuaSetAction;

    function GetOnKeyDown: TJanuaKeyEvent;
    procedure SetOnKeyDown(const Value: TJanuaKeyEvent);
    function GetOnKeyUp: TJanuaKeyEvent;
    procedure SetOnKeyUp(const Value: TJanuaKeyEvent);
    function GetOnMouseDown: TJanuaMouseEvent;
    procedure SetOnMouseDown(const Value: TJanuaMouseEvent);
    function GetOnMouseMove: TJanuaMouseMoveEvent;
    procedure SetOnMouseMove(const Value: TJanuaMouseMoveEvent);
    function GetOnMouseUp: TJanuaMouseEvent;
    procedure SetOnMouseUp(const Value: TJanuaMouseEvent);
    function GetOnMouseWheel: TJanuaMouseWheelEvent;
    procedure SetOnMouseWheel(const Value: TJanuaMouseWheelEvent);

    property OnKeyUp: TJanuaKeyEvent read GetOnKeyUp write SetOnKeyUp;
    property OnMouseDown: TJanuaMouseEvent read GetOnMouseDown write SetOnMouseDown;
    property OnMouseMove: TJanuaMouseMoveEvent read GetOnMouseMove write SetOnMouseMove;
    property OnMouseUp: TJanuaMouseEvent read GetOnMouseUp write SetOnMouseUp;
    property OnMouseWheel: TJanuaMouseWheelEvent read GetOnMouseWheel write SetOnMouseWheel;
    property OnKeyDownJanua: TJanuaKeyEvent read GetOnKeyDown write SetOnKeyDown;

  end;

  /// <summary> Base Interface for JanuaRecordset Bindable Controls </summary>
  IJanuaRSControl = interface(IJanuaControl)
    ['{619F8EA7-713F-4A78-8B50-C6844A3EF6DC}']
    /// <summary> Specific procedure to Bind a default property to a Field. </summary>
    procedure BindField(const aField: IJanuaField);
    procedure SetBoundField(const Value: IJanuaField);
    function GetBoundField: IJanuaField;
    /// <summary> Any Janua RS Control interface can be directly bound to a Field. </summary>
    property BoundField: IJanuaField read GetBoundField write SetBoundField;
  end;

  IJanuaCaptionControl = interface(IJanuaRSControl)
    ['{35370A79-742E-471F-9243-8AE918D42312}']
    procedure SetCaption(const Value: string);
    function GetCaption: string;
    property Caption: string read GetCaption write SetCaption;
  end;

  IJanuaCustomEdit = interface(IJanuaCaptionControl)
    ['{8D7CCB76-6391-46A2-8E34-DB68643CB698}']
    function GetText: string;
    procedure SetText(const Value: string);
    /// <summary>
    /// Questa proprietà legge e scrive il valore di Text direttamente nel
    /// controllo grafico a schermo generalmente penso sia usata in sola lettura
    /// </summary>;
    property Text: string read GetText write SetText;
  end;

  IJanuaIntegerEdit = interface(IJanuaCaptionControl)
    ['{B16D899F-CFDE-4E17-A5A2-2321F06D8BC5}']
    function GetNumber: string;
    procedure SetNumber(const Value: string);
    /// <summary>
    /// Questa proprietà legge e scrive il valore di Number direttamente nel
    /// controllo grafico a schermo generalmente penso sia usata in sola lettura
    /// </summary>;
    property Number: string read GetNumber write SetNumber;
  end;

  IJanuaEdit = interface(IJanuaCustomEdit)
    ['{D61E3C45-A7FA-4B82-B27E-17C0E247397C}']
    procedure SetPasswordChar(const Value: string);
    procedure SetTextHint(const Value: string);
    procedure SetHasPassword(const Value: Boolean);
    function GetTextHint: string;
    property TextHint: string read GetTextHint write SetTextHint;
    function GetHasPassword: Boolean;
    property HasPassword: Boolean read GetHasPassword write SetHasPassword;
    function GetPasswordChar: string;
    property PasswordChar: string read GetPasswordChar write SetPasswordChar;
  end;

  IJanuaDateEdit = interface(IJanuaCustomEdit)
    ['{CB23FA44-D66F-465F-98EF-4EC152FA285E}']
    function GetDateTime: TDateTime;
    procedure SetDateTime(const Value: TDateTime);
    property DateTime: TDateTime read GetDateTime write SetDateTime;
  end;

  IJanuaLabel = interface(IJanuaCaptionControl)
    ['{3D8391C7-0541-4D8F-9540-2D8E4DF46CEC}']

  end;

  IJanuaButton = interface(IJanuaCaptionControl)
    ['{9845391A-D737-4C24-9C62-C57FF1DDB044}']
    procedure ButtonClick(Sender: TObject);
    function GetOnButtonClick: TNotifyEvent;
    procedure SetOnButtonClick(const Value: TNotifyEvent);
    property OnButtonClick: TNotifyEvent read GetOnButtonClick write SetOnButtonClick;

  end;

  IJanuaDBButton = interface(IJanuaButton)
    ['{9845391A-D737-4C24-9C62-C57FF1DDB044}']
    procedure BindRecordset(const aRecordSet: IJanuaRecordSet);
  end;

  IJanuaCombo = interface(IJanuaCaptionControl)
    ['{F4BD6AA0-E1E5-4540-8BAE-9A818A774018}']
    procedure SetStringList(const Value: TStrings);
    function GetText: string;
    procedure SetText(Value: string);
    // SetComboBox E' la funzione della libreria Target che deve 'conoscere' la combo Box Target
    function GetComboSelectedText(aCombo: TComponent): string;
    procedure SetComboSelectedText(aCombo: TComponent; aText: string);
    function SetComboList(aCombo: TComponent; aList: TStrings): string;
    procedure ComboChange(Sender: TObject);
    property Text: string read GetText write SetText;
    function GetStringList: TStrings;
    property StringList: TStrings read GetStringList write SetStringList;
    function GetTargetIndexField: IJanuaField;
    procedure SetTargetIndexField(const Value: IJanuaField);
    property TargetIndexField: IJanuaField read GetTargetIndexField write SetTargetIndexField;
  end;

  IJanuaSelect = interface(IJanuaCaptionControl)
    ['{C2F66E39-1009-4057-AC6E-8AF31CFB925A}']

  end;

  IJanuaGroupBox = interface(IJanuaCaptionControl)
    ['{8E0CE641-6FD0-4D99-95F3-384E664BAB80}']
    function GetSelected: Integer;
    procedure SetSelected(const Value: Integer);
    property Selected: Integer read GetSelected write SetSelected;

  end;

  IJanuaFrameworkFactory = interface
    ['{53D33B77-2AE0-463A-99F8-D92D7D8D65BB}']
    /// <summary>Creates an edit Interfaced Object connnected to an existing component </summary>
    function CreateEdit(aComponent: TComponent): IJanuaEdit; overload;
    /// <summary>Creates an edit Interfaced Object and its  </summary>
    function CreateEdit(aComponent: TJsonObject): IJanuaEdit; overload;
    /// <summary></summary>
    function CreateDateEdit(aComponent: TComponent): IJanuaDateEdit;
    /// <summary></summary>
    function CreateCombo(aComponent: TComponent): IJanuaCombo;
    /// <summary></summary>
    function CreateLabel(aComponent: TComponent): IJanuaLabel;
    /// <summary></summary>
    function CreateButton(aComponent: TComponent): IJanuaButton;
    /// <summary></summary>
    function CreateJanuaDateEdit(aComponent: TComponent): IJanuaDateEdit;
    /// <summary></summary>
    function CreateGroupBox(aComponent: TComponent): IJanuaGroupBox;
  end;

  IJanuaControlBuilder = interface
    ['{9DBF39B1-2A7F-4906-8925-969F105C780D}']
    function SetEditControl(aJanuaEdit: IJanuaEdit; const aComponent: TComponent; aName: string = '';
      aTextHint: string = ''; aCaption: string = ''): IJanuaEdit;
    function SetComboControl(aJanuaCombo: IJanuaCombo; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaCombo;
    function SetLabelControl(aJanuaLabel: IJanuaLabel; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaLabel;
    function SetDateControl(aJanuaDate: IJanuaDateEdit; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaDateEdit;
    // GroupBox
    function SetGroupBoxControl(const aJanuaGroupBox: IJanuaGroupBox; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaGroupBox;
    // IJanuaButton
    function SetButtonControl(const aJanuaGroupBox: IJanuaButton; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaButton;
    // IJanuaIntegerEdit
    function SetIntegerEdit(const aJanuaGroupBox: IJanuaIntegerEdit; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaIntegerEdit;
    // IJanuaSelect
    function SetSelectControl(const aJanuaSelect: IJanuaSelect; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaSelect;
  end;

implementation

end.
