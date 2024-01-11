unit Janua.Forms.Controls;

interface

uses System.Types, System.Classes, System.UITypes;

type
  TJanuaFormStyle = (jfsNormal, jfsPopup, jfsStayOnTop);

  TJanuaCloseEvent = procedure(Sender: TObject; var Action: TCloseAction) of object;
  TJanuaCloseQueryEvent = procedure(Sender: TObject; var CanClose: Boolean) of object;

  TJanuaFormBorderStyle = (jbtNone, jbtSingle, jbtSizeable, jbtToolWindow, jbtSizeToolWin);

  TJanuaTouch = record
    Location: TPointF;
  end;
  TJanuaTouches = array of TJanuaTouch;

  TJanuaTouchAction = (None, Up, Down, Move, Cancel);
  TJanuaTouchActions = set of TJanuaTouchAction;

  TJanuaMouseEvent = procedure(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single) of object;
  TJanuaMouseMoveEvent = procedure(Sender: TObject; Shift: TShiftState; X, Y: Single) of object;
  TJanuaMouseWheelEvent = procedure(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; var Handled: Boolean) of object;
  TJanuaKeyEvent = procedure(Sender: TObject; var Key: Word; var KeyChar: WideChar; Shift: TShiftState) of object;
  TJanuaProcessTickEvent = procedure(Sender: TObject; time, deltaTime: Single) of object;

  // Mobile Specific Events need to be Translated to Janua Intermediate Framework
  TVirtualKeyboardEvent = procedure(Sender: TObject; KeyboardVisible: Boolean; const Bounds : TRect) of object;
  TTapEvent = procedure(Sender: TObject; const Point: TPointF) of object;
  TJanuaTouchEvent = procedure(Sender: TObject; const Touches: TJanuaTouches; const Action: TJanuaTouchAction) of object;

  IJanuaForm = interface
    ['{F6AF2156-9718-4FDE-8611-E894AECAF29E}']
    function GetModalResult: TModalResult;
    procedure SetModalResult(const Value: TModalResult);
    function GetShowHint: Boolean;
    procedure SetShowHint(const Value: Boolean);

    //************************** Janua Custom Events *********************************************************
    function GetOnCreate: TNotifyEvent;
    procedure SetOnCreate(const Value: TNotifyEvent);
    function GetOnDestroy: TNotifyEvent;
    procedure SetOnDestroy(const Value: TNotifyEvent);
    function GetOnClose: TJanuaCloseEvent;
    procedure SetOnClose(const Value: TJanuaCloseEvent);
    function GetOnActivate: TNotifyEvent;
    procedure SetOnActivate(const Value: TNotifyEvent);
    function GetOnDeactivate: TNotifyEvent;
    procedure SetOnDeactivate(const Value: TNotifyEvent);
    function GetOnResize: TNotifyEvent;
    procedure SetOnResize(const Value: TNotifyEvent);
    function GetOnShow: TNotifyEvent;
    procedure SetOnShow(const Value: TNotifyEvent);
    function GetOnHide: TNotifyEvent;
    procedure SetOnHide(const Value: TNotifyEvent);
    function GetOnFocusChanged: TNotifyEvent;
    procedure SetOnFocusChanged(const Value: TNotifyEvent);
    function GetOnSaveState: TNotifyEvent;
    procedure SetOnSaveState(const Value: TNotifyEvent);

    //************************** Janua Procedures *********************************************************
    function GetOnMouseDownJanua: TJanuaMouseEvent;
    procedure SetOnMouseDownJanua(const Value: TJanuaMouseEvent);
    function GetOnMouseMoveJanua: TJanuaMouseMoveEvent;
    procedure SetOnMouseMoveJanua(const Value: TJanuaMouseMoveEvent);
    function GetOnMouseUpJanua: TJanuaMouseEvent;
    procedure SetOnMouseUpJanua(const Value: TJanuaMouseEvent);
    function GetOnMouseWheelJanua: TJanuaMouseWheelEvent;
    procedure SetOnMouseWheelJanua(const Value: TJanuaMouseWheelEvent);
    function GetFormStyleJanua:TJanuaFormStyle;
    procedure SetFormStyleJanua(Value: TJanuaFormStyle);
    function GetOnCloseQueryJanua: TJanuaCloseQueryEvent;
    procedure SetOnCloseQueryJanua(const Value: TJanuaCloseQueryEvent);
    function GetParentFormJanua: IJanuaForm;
    function GetOnKeyDownJanua: TJanuaKeyEvent;
    procedure SetOnKeyDownJanua(const Value: TJanuaKeyEvent);
    function GetOnKeyUpJnau: TJanuaKeyEvent;
    procedure SetOnKeyUpJanua(const Value: TJanuaKeyEvent);

    //************************** Janua Properties ********************************************************
    property ParentFormJ: IJanuaForm read GetParentFormJanua;
    property FormStyleJ: TJanuaFormStyle read GetFormStyleJanua write SetFormStyleJanua default TJanuaFormStyle.jfsNormal;
    property OnKeyUpJ: TJanuaKeyEvent read GetOnKeyUpJnau write SetOnKeyUpJanua;
    property OnMouseDownJ: TJanuaMouseEvent read GetOnMouseDownJanua write SetOnMouseDownJanua;
    property OnMouseMoveJ: TJanuaMouseMoveEvent read GetOnMouseMoveJanua write SetOnMouseMoveJanua;
    property OnMouseUpJ: TJanuaMouseEvent read GetOnMouseUpJanua write SetOnMouseUpJanua;
    property OnCloseQueryJ: TJanuaCloseQueryEvent read GetOnCloseQueryJanua write SetOnCloseQueryJanua;
    property OnMouseWheelJ: TJanuaMouseWheelEvent read GetOnMouseWheelJanua write SetOnMouseWheelJanua;

    //************************** Standard Properties ********************************************************
    property ModalResult: TModalResult read GetModalResult write SetModalResult;
    /// <summary>Determines whether Help Hints are enabled or disabled for the entire application.</summary>
    property ShowHint: Boolean read GetShowHint write SetShowHint default True;
    property OnCreate: TNotifyEvent read GetOnCreate write SetOnCreate;
    property OnDestroy: TNotifyEvent read GetOnDestroy write SetOnDestroy;
    property OnClose: TJanuaCloseEvent read GetOnClose write SetOnClose;
    property OnActivate: TNotifyEvent read GetOnActivate write SetOnActivate;
    property OnDeactivate: TNotifyEvent read GetOnDeactivate write SetOnDeactivate;
    property OnKeyDownJanua: TJanuaKeyEvent read GetOnKeyDownJanua write SetOnKeyDownJanua;
    property OnResize: TNotifyEvent read GetOnResize write SetOnResize;
    property OnShow: TNotifyEvent read GetOnShow write SetOnShow;
    property OnHide: TNotifyEvent read GetOnHide write SetOnHide;
    property OnFocusChanged: TNotifyEvent read GetOnFocusChanged write SetOnFocusChanged;
    property OnVirtualKeyboardShown: TVirtualKeyboardEvent read GetOnVirtualKeyboardShown write SetOnVirtualKeyboardShown;
    property OnVirtualKeyboardHidden: TVirtualKeyboardEvent read GetOnVirtualKeyboardHidden write SetOnVirtualKeyboardHidden;
    property OnSaveState: TNotifyEvent read GetOnSaveState write SetOnSaveState;

    (*
    property FormState: TFmxFormStates read FFormState;
    property Designer: IDesignerHook read FDesigner write SetDesigner;
    property Captured: IControl read FCaptured;
    property Focused: IControl read FFocused write SetFocused;
    property Hovered: IControl read FHovered;
    property Active: Boolean read FActive write SetActive;
    property BiDiMode: TBiDiMode read GetBiDiMode write SetBiDiMode default bdLeftToRight;
    property Caption: string read FCaption write SetCaption stored CaptionStore;
    property Cursor: TCursor read FCursor write SetCursor default crDefault;
    property Border: TFormBorder read FBorder write SetBorder;
    property BorderStyle: TFmxFormBorderStyle read FBorderStyle write SetBorderStyle
      default TFmxFormBorderStyle.Sizeable;
    property BorderIcons: TBorderIcons read FBorderIcons write SetBorderIcons
      default [TBorderIcon.biSystemMenu, TBorderIcon.biMinimize, TBorderIcon.biMaximize];
    /// <summary>Bounds of form - position and size</summary>
    property Bounds: TRect read GetBounds write SetBounds;
    property ClientHeight: Integer read GetClientHeight write SetClientHeight;
    property ClientWidth: Integer read GetClientWidth write SetClientWidth;
    property OriginalContainerSize: TPointF read GetOriginalContainerSize;
    property Padding: TBounds read FPadding write SetPadding;
    property Position: TFormPosition read FPosition write SetPosition default TFormPosition.DefaultPosOnly;
    property StyleBook: TStyleBook read FStyleBook write SetStyleBook;
    /// <summary>Settings of system status bar on mobile platforms</summary>
    property SystemStatusBar: TFormSystemStatusBar read FSystemStatusBar write SetSystemStatusBar;
    property Transparency: Boolean read FTransparency write SetTransparency default False;
    property Width: Integer read FWidth write SetWidth stored False;
    property Height: Integer read FHeight write SetHeight stored False;
    property Visible: Boolean read GetVisible write SetVisible default False;
    property WindowState: TWindowState read FWindowState write SetWindowState default TWindowState.wsNormal;
    property WindowStyle: TWindowStyles read GetWindowStyle;
    property FullScreen : Boolean read GetFullScreen write SetFullScreen default False;
    property ShowFullScreenIcon : Boolean read GetShowFullScreenIcon write SetShowFullScreenIcon default True;
    property FormFactor: TFormFactor read FFormFactor write FFormFactor;
    property FormFamily : string read FFormFamily write SetFormFamily;
    property SaveState: TFormSaveState read GetSaveState;
    property Touch: TTouchManager read GetTouchManager write SetTouchManager;
    property OnGesture: TGestureEvent read FOnGesture write FOnGesture;
    property OnTap: TTapEvent read FOnTap write FOnTap;
    property OnTouch: TTouchEvent read FOnTouch write FOnTouch;
    *)
    // do not move this
    property Left: Integer read GetLeft write SetLeft;
    property Top: Integer read GetTop write SetTop;
  end;

implementation

end.
