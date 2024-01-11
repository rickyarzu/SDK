unit Janua.Controls.Forms.Intf;

interface

uses System.Types, System.Classes, System.UITypes, Janua.Forms.Types,
  // Januaproject Framework
  Janua.Core.Types, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Controls.Intf;

type
  IJanuaContainer = interface(IJanuaControl)
    ['{D9B7FBF6-125B-49C2-A7FE-21624664289E}']
    // Getters Setters
    function GetLeft: Integer;
    function GetTop: Integer;
    procedure SetLeft(const Value: Integer);
    procedure SetTop(const Value: Integer);
    procedure SetHeight(const Value: Integer);
    procedure SetWidth(const Value: Integer);
    procedure SetCaption(const Value: string);
    function GetCaption: string;
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
    function GetTransparency: Boolean;
    procedure SetTransparency(const Value: Boolean);
    function GetHeight: Integer;
    function GetWidth: Integer;
    function GetVisible: Boolean;
    procedure SetVisible(const Value: Boolean);
    function GetParams: TJanuaVariantArray;
    procedure SetParams(const Value: TJanuaVariantArray);
    // Properties
    property Top: Integer read GetTop write SetTop;
    property Caption: string read GetCaption write SetCaption;
    property Active: Boolean read GetActive write SetActive;
    property Transparency: Boolean read GetTransparency write SetTransparency;
    property Width: Integer read GetWidth write SetWidth;
    property Height: Integer read GetHeight write SetHeight;
    property Visible: Boolean read GetVisible write SetVisible;
    property Params: TJanuaVariantArray read GetParams write SetParams;
    function Activate: Boolean;
  end;

type
  IJanuaFrame = interface(IJanuaContainer)
    ['{F7498923-5A20-429A-9BF3-9C3181BDE25F}']
  end;

  /// <summary>
  /// This interface represents methods, events and properties of a 'common' form
  /// can be used to represent an LCL, FMX or VCL Form on both Delphi or Lazarus
  /// </summary>
  IJanuaForm = interface(IJanuaContainer)
    ['{BF36D5A9-1C3B-4F77-9B2C-0D8EB8A24CD4}']
    function GetModalResult: TModalResult;
    procedure SetModalResult(const Value: TModalResult);
    function GetShowHint: Boolean;
    procedure SetShowHint(const Value: Boolean);
    // ************************** Standard Procedures *********************************************************
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
    function GetOnVirtualKeyboardShown: TVirtualKeyboardEvent;
    procedure SetOnVirtualKeyboardShown(const Value: TVirtualKeyboardEvent);
    function GetOnVirtualKeyboardHidden: TVirtualKeyboardEvent;
    procedure SetOnVirtualKeyboardHidden(const Value: TVirtualKeyboardEvent);
    function GetClientHeight: Integer;
    function GetClientWidth: Integer;
    procedure SetBorderIcons(const Value: TBorderIcons);
    procedure SetClientHeight(const Value: Integer);
    procedure SetClientWidth(const Value: Integer);
    procedure JanuaSetBiDiMode(const Value: TBiDiMode);
    procedure SetCursor(const Value: TCursor);
    procedure SetWindowState(const Value: TWindowState);
    function GetWindowState: TWindowState;
    function GetTabOrder: TTabOrder;
    procedure SetTabOrder(Value: TTabOrder);
    function GetTabStop: Boolean;
    procedure SetTabStop(Value: Boolean);
    // ************************** Standard Properties ********************************************************
    property ModalResult: TModalResult read GetModalResult write SetModalResult;
    /// <summary>Determines whether Help Hints are enabled or disabled for the entire application.</summary>
    property ShowHint: Boolean read GetShowHint write SetShowHint;
    property OnCreate: TNotifyEvent read GetOnCreate write SetOnCreate;
    property OnDestroy: TNotifyEvent read GetOnDestroy write SetOnDestroy;
    property OnClose: TJanuaCloseEvent read GetOnClose write SetOnClose;
    property OnActivate: TNotifyEvent read GetOnActivate write SetOnActivate;
    property OnDeactivate: TNotifyEvent read GetOnDeactivate write SetOnDeactivate;
    property OnResize: TNotifyEvent read GetOnResize write SetOnResize;
    property OnShow: TNotifyEvent read GetOnShow write SetOnShow;
    property OnHide: TNotifyEvent read GetOnHide write SetOnHide;
    property OnFocusChanged: TNotifyEvent read GetOnFocusChanged write SetOnFocusChanged;
    property OnVirtualKeyboardShown: TVirtualKeyboardEvent read GetOnVirtualKeyboardShown
      write SetOnVirtualKeyboardShown;
    property OnVirtualKeyboardHidden: TVirtualKeyboardEvent read GetOnVirtualKeyboardHidden
      write SetOnVirtualKeyboardHidden;
    property OnSaveState: TNotifyEvent read GetOnSaveState write SetOnSaveState;
    property WindowState: TWindowState read GetWindowState write SetWindowState;
    property TabOrder: TTabOrder read GetTabOrder write SetTabOrder;
    property TabStop: Boolean read GetTabStop write SetTabStop;

    // ************************** Janua Procedures ******************************************************
    function GetFormStyleJanua: TJanuaFormStyle;
    procedure SetFormStyleJanua(Value: TJanuaFormStyle);
    function GetOnCloseQueryJanua: TJanuaCloseQueryEvent;
    procedure SetOnCloseQueryJanua(const Value: TJanuaCloseQueryEvent);
    function GetParentFormJanua: IJanuaForm;
    procedure SetBorderStyleJ(const Value: TJanuaFormBorderStyle);
    procedure SetPositionJ(const Value: TJanuaFormPosition);

    // ************************** Janua Properties ******************************************************
    property ParentFormJ: IJanuaForm read GetParentFormJanua;
    property FormStyleJ: TJanuaFormStyle read GetFormStyleJanua write SetFormStyleJanua;
    property OnCloseQueryJ: TJanuaCloseQueryEvent read GetOnCloseQueryJanua write SetOnCloseQueryJanua;

    // Form Procdures
    function ShowModal: Integer;

    (*
      // Firemonkey Properties ..........................................................................
      property FormState: TFmxFormStates read FFormState;
      property Designer: IDesignerHook read FDesigner write SetDesigner;
      property Captured: IControl read FCaptured;
      property Focused: IControl read FFocused write SetFocused;
      property Hovered: IControl read FHovered;
      property BiDiMode: TBiDiMode read GetBiDiMode write SetBiDiMode default bdLeftToRight;
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

  end;

  IJanuaRecordForm = interface(IJanuaForm)
    function GetJanuaRecord: IJanuaRecord;
    procedure SetJanuaRecord(const Value: IJanuaRecord);
    property JanuaRecord: IJanuaRecord read GetJanuaRecord write SetJanuaRecord;
  end;

type
  /// <summary>Style Manager Interface for any Application Environment</summary>
  IJanuaStyleManager = interface(IJanuaInterface)
    ['{D04F2B94-C94B-44AD-9C72-6284EB7B68B5}']
    function GetScreenFontName: string;
    property ScreenFontName: string read GetScreenFontName;
    function GetScreenFontHeight: Integer;
    property ScreenFontHeight: Integer read GetScreenFontHeight;
    function TrySetStyle(const AStyleName: string): Boolean;
    function GetStyleList: TStrings;
    property StyleList: TStrings read GetStyleList;
    procedure ShowSelectThemStyler;
    function GetStyleName: string;
    procedure SetStyleName(const Value: string);
    property StyleName: string read GetStyleName write SetStyleName;
    function Activate: Boolean;
  end;

  IJanuaWindowsManager = interface
    ['{2D4D6E0B-5867-417A-8A8E-9738ED876F70}']
    procedure ShowOverlay(aAnimations: Boolean = False);
    procedure HideOverlay;
    procedure ShowAnimation;
  end;

  IJanuaDataModule = interface(IJanuaBindableComponent)
    ['{1D5D0599-9071-4E98-8F87-9D4A7CC8BF1B}']
    /// <summary> Expose as public the Refresh Details method to be called in case of a Lazy Loading scenario </summary>
    /// <seealso href="https://ergomercator.atlassian.net/jira/software/projects/JF/boards/1?selectedIssue=JF-71">
    /// Lazy Loading of Remote Dataset (master-detail) for better  control/peformances JF-71 </seealso>
    procedure RefreshDetails;

    procedure SetLazyLoading(const Value: Boolean);
    function GetLazyLoading: Boolean;
    /// <summary>  Boolean: If True then the Details are refreshd on demand when Record Is Loaded</summary>
    /// <seealso href="https://ergomercator.atlassian.net/jira/software/projects/JF/boards/1?selectedIssue=JF-71">
    /// Lazy Loading of Remote Dataset (master-detail) for better  control/peformances JF-71 </seealso>
    property LazyLoading: Boolean read GetLazyLoading write SetLazyLoading;

    function GetSelectedSchema: Integer;
    procedure SetSelectedSchema(const Value: Integer);
    property SelectedSchema: Integer read GetSelectedSchema write SetSelectedSchema;
  end;

implementation

end.
