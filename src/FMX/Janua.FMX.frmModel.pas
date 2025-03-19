unit Janua.FMX.frmModel;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, Spring.Collections,
  System.Json,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.Bindings.Intf,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf;

type
  TfrmFMXModel = class(TForm, { IJanuaForm, } { IJanuaContainer, } { IJanuaControl, } IJanuaBindable)
  strict protected
    FBindControlsList: IJanuaBindControlsList;
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
    // ------------ IJanuaBindable Object Interface implementation ---------------------------------------------
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  public
    procedure ClearBindings;
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
    // *********************************** Logging Procedures ***************************************************
  private
    FLogError: TJanuaLogRecord;
    FLogToFile: boolean;
    FHasMessage: boolean;
    FLastMessage: string;
    FVerbose: boolean;
    procedure SetLogToFile(const Value: boolean);
    function GetLogText: string;
  strict protected
    FIsSetup: boolean;
    FHasErrors: boolean;
    FLastErrorMessage: string;
    // Profile : TJanuaRecordProfile;
    procedure SetHasErrors(const Value: boolean);
    function GetLocalLog: string;
  public
    procedure ClearMessage;
    procedure ClearErrors;
    procedure AddLog(aLog: string);
    procedure WriteLog(LogMessage: string; isError: boolean = false); overload; virtual;
    procedure WriteLog(ProcedureName, LogMessage: string; isError: boolean = false); overload; virtual;
    procedure WriteError(LogMessage: string; E: Exception; doraise: boolean = true); overload; virtual;
    procedure WriteError(ProcedureName, LogMessage: string; E: Exception; doraise: boolean = true);
      overload; virtual;
    property LocalLog: string read GetLocalLog;
    property LogText: string read GetLogText;
    // *********************************** end Logging Procedures ********************************************
  private
    FParentControl: IJanuaControl;
    FParentJanuaForm: IJanuaForm;
    procedure UnBind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string);
    function GetFormStyleJanua: TJanuaFormStyle;
    function GetOnCloseQueryJanua: TJanuaCloseQueryEvent;
    function GetParentFormJanua: IJanuaForm;
    procedure SetFormStyleJanua(const Value: TJanuaFormStyle);
    procedure SetOnCloseQueryJanua(const Value: TJanuaCloseQueryEvent);
  strict protected
    FParams: TJanuaVariantArray;
  protected
    procedure FormSetup; virtual;
    function GetParams: TJanuaVariantArray;
    procedure SetParams(const Value: TJanuaVariantArray); virtual;
    // IJanuaBindable Component
    function JanuaGetComponent: TComponent;
    procedure JanuaSetComponent(const Value: TComponent);
    /// <summary> Component to be connected to object properties or Fields </summary>
    function GetNameJ: TComponentName;
    procedure SetNameJ(const Value: TComponentName);
    // IJanuaInterface
    function GetLogString: string;
  protected
    procedure Loaded; override;
  strict private
    FInitialized: boolean;
    function GetInitialized: boolean;
    procedure SetInitialized(const Value: boolean);
  strict protected
    FAfterActivate: TProc;
    function GetAfterActivate: TProc;
    procedure SetAfterActivate(const Value: TProc);
    function InternalActivate: boolean; virtual;
  public
    function Initialize: boolean;
    /// <summary> Can be Set to initialize the Object (after creating it or in a IInd time) </summary>
    Property Initialized: boolean read GetInitialized write SetInitialized;
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    function JShowModal: Integer; virtual;
    function Activate: boolean; reintroduce; virtual;
    function GetSelf: TObject;
  public
    // ************************** Janua Properties ********************************************************
    property ParentFormJ: IJanuaForm read GetParentFormJanua;
    property FormStyleJ: TJanuaFormStyle read GetFormStyleJanua write SetFormStyleJanua;
    property OnCloseQueryJ: TJanuaCloseQueryEvent read GetOnCloseQueryJanua write SetOnCloseQueryJanua;
    property Params: TJanuaVariantArray read GetParams write SetParams;
    // ************************** IJanuaContainer *****************************************************
  protected
    function GetCaption: string;
    function GetActive: boolean;
    procedure SetActive(const Value: boolean); override;
    function GetTransparency: boolean;
    // *********************** IJanuaControl ********************************************
  protected
    function GetHint: string;
    procedure SetHint(const Value: string);
    function JanuaGetAlign: TJanuaAlign;
    procedure JanuaSetAlign(const Value: TJanuaAlign);
    procedure SetAlignWM(const Value: boolean);
    function GetAlignWM: boolean;
    function GetChildControls: IList<IJanuaControl>;
    procedure setChildControls(const Value: IList<IJanuaControl>);
    function GetControls(const aIndex: Integer): IJanuaControl;
    property Controls[const aIndex: Integer]: IJanuaControl read GetControls;
    function AddControl: IJanuaControl;
    procedure DelControl(const aControl: IJanuaControl);

    procedure JanuaSetParent(const Value: IJanuaControl);
    function JanuaGetParent: IJanuaControl;
    /// <summary> Defines the container control (parent control). </summary>
    function GetAsComponent: TComponent;
    procedure SetAsComponent(const Value: TComponent);
    function JanuaGetAction: IJanuaAction;
    procedure JanuaSetAction(const Value: IJanuaAction);

    // Janua Events
    function GetJanuaOnKeyDown: TJanuaKeyEvent;
    procedure SetJanuaOnKeyDown(const Value: TJanuaKeyEvent);
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

  public
    property JanuaAction: IJanuaAction read JanuaGetAction Write JanuaSetAction;
    property AsComponent: TComponent read GetAsComponent write SetAsComponent;
    property JanuaParent: IJanuaControl read JanuaGetParent write JanuaSetParent;
    property Hint: string read GetHint write SetHint;
    /// <summary> Determines how the control aligns within its container (parent control). </summary>
    property Align: TJanuaAlign read JanuaGetAlign write JanuaSetAlign;
    property AlignWithMargins: boolean read GetAlignWM write SetAlignWM;
    property ChildControls: IList<IJanuaControl> read GetChildControls write setChildControls;

  end;

var
  frmFMXModel: TfrmFMXModel;

implementation

{$R *.fmx}
{ TfrmFMXModel }

function TfrmFMXModel.Activate: boolean;
begin

end;

function TfrmFMXModel.AddControl: IJanuaControl;
begin

end;

procedure TfrmFMXModel.AddLog(aLog: string);
begin

end;

procedure TfrmFMXModel.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TfrmFMXModel.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin

end;

procedure TfrmFMXModel.CallObservers;
begin

end;

procedure TfrmFMXModel.ClearBindings;
begin

end;

procedure TfrmFMXModel.ClearErrors;
begin

end;

procedure TfrmFMXModel.ClearMessage;
begin

end;

constructor TfrmFMXModel.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TfrmFMXModel.DelControl(const aControl: IJanuaControl);
begin

end;

destructor TfrmFMXModel.Destroy;
begin

  inherited;
end;

procedure TfrmFMXModel.Detach(const aObserver: TObject);
begin

end;

procedure TfrmFMXModel.DetachObservers;
begin

end;

procedure TfrmFMXModel.FormSetup;
begin

end;

function TfrmFMXModel.GetActive: boolean;
begin

end;

function TfrmFMXModel.GetAfterActivate: TProc;
begin

end;

function TfrmFMXModel.GetAlignWM: boolean;
begin

end;

function TfrmFMXModel.GetAsComponent: TComponent;
begin

end;

function TfrmFMXModel.GetBindManager: IJanuaBindManager;
begin

end;

function TfrmFMXModel.GetCaption: string;
begin

end;

function TfrmFMXModel.GetChildControls: IList<IJanuaControl>;
begin

end;

function TfrmFMXModel.GetControls(const aIndex: Integer): IJanuaControl;
begin

end;

function TfrmFMXModel.GetFormStyleJanua: TJanuaFormStyle;
begin

end;

function TfrmFMXModel.GetHint: string;
begin

end;

function TfrmFMXModel.GetInitialized: boolean;
begin

end;

function TfrmFMXModel.GetJanuaOnKeyDown: TJanuaKeyEvent;
begin

end;

function TfrmFMXModel.GetLocalLog: string;
begin

end;

function TfrmFMXModel.GetLogString: string;
begin

end;

function TfrmFMXModel.GetLogText: string;
begin

end;

function TfrmFMXModel.GetNameJ: TComponentName;
begin

end;

function TfrmFMXModel.GetOnCloseQueryJanua: TJanuaCloseQueryEvent;
begin

end;

function TfrmFMXModel.GetOnKeyUp: TJanuaKeyEvent;
begin

end;

function TfrmFMXModel.GetOnMouseDown: TJanuaMouseEvent;
begin

end;

function TfrmFMXModel.GetOnMouseMove: TJanuaMouseMoveEvent;
begin

end;

function TfrmFMXModel.GetOnMouseUp: TJanuaMouseEvent;
begin

end;

function TfrmFMXModel.GetOnMouseWheel: TJanuaMouseWheelEvent;
begin

end;

function TfrmFMXModel.GetParams: TJanuaVariantArray;
begin

end;

function TfrmFMXModel.GetParentFormJanua: IJanuaForm;
begin

end;

function TfrmFMXModel.GetSelf: TObject;
begin

end;

function TfrmFMXModel.GetTransparency: boolean;
begin

end;

function TfrmFMXModel.Initialize: boolean;
begin

end;

function TfrmFMXModel.InternalActivate: boolean;
begin

end;

function TfrmFMXModel.JanuaGetAction: IJanuaAction;
begin

end;

function TfrmFMXModel.JanuaGetAlign: TJanuaAlign;
begin

end;

function TfrmFMXModel.JanuaGetComponent: TComponent;
begin

end;

function TfrmFMXModel.JanuaGetParent: IJanuaControl;
begin

end;

procedure TfrmFMXModel.JanuaSetAction(const Value: IJanuaAction);
begin

end;

procedure TfrmFMXModel.JanuaSetAlign(const Value: TJanuaAlign);
begin

end;

procedure TfrmFMXModel.JanuaSetComponent(const Value: TComponent);
begin

end;

procedure TfrmFMXModel.JanuaSetParent(const Value: IJanuaControl);
begin

end;

procedure TfrmFMXModel.Loaded;
begin
  inherited;

end;

procedure TfrmFMXModel.SetActive(const Value: boolean);
begin

end;

procedure TfrmFMXModel.SetAfterActivate(const Value: TProc);
begin

end;

procedure TfrmFMXModel.SetAlignWM(const Value: boolean);
begin

end;

procedure TfrmFMXModel.SetAsComponent(const Value: TComponent);
begin

end;

procedure TfrmFMXModel.setChildControls(const Value: IList<IJanuaControl>);
begin

end;

procedure TfrmFMXModel.SetFormStyleJanua(const Value: TJanuaFormStyle);
begin

end;

procedure TfrmFMXModel.SetHasErrors(const Value: boolean);
begin

end;

procedure TfrmFMXModel.SetHint(const Value: string);
begin

end;

procedure TfrmFMXModel.SetInitialized(const Value: boolean);
begin

end;

procedure TfrmFMXModel.SetJanuaOnKeyDown(const Value: TJanuaKeyEvent);
begin

end;

procedure TfrmFMXModel.SetLogToFile(const Value: boolean);
begin

end;

procedure TfrmFMXModel.SetNameJ(const Value: TComponentName);
begin

end;

procedure TfrmFMXModel.SetOnCloseQueryJanua(const Value: TJanuaCloseQueryEvent);
begin

end;

procedure TfrmFMXModel.SetOnKeyUp(const Value: TJanuaKeyEvent);
begin

end;

procedure TfrmFMXModel.SetOnMouseDown(const Value: TJanuaMouseEvent);
begin

end;

procedure TfrmFMXModel.SetOnMouseMove(const Value: TJanuaMouseMoveEvent);
begin

end;

procedure TfrmFMXModel.SetOnMouseUp(const Value: TJanuaMouseEvent);
begin

end;

procedure TfrmFMXModel.SetOnMouseWheel(const Value: TJanuaMouseWheelEvent);
begin

end;

procedure TfrmFMXModel.SetParams(const Value: TJanuaVariantArray);
begin

end;

function TfrmFMXModel.JShowModal: Integer;
begin

end;

procedure TfrmFMXModel.UnBind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string);
begin

end;

procedure TfrmFMXModel.WriteError(LogMessage: string; E: Exception; doraise: boolean);
begin

end;

procedure TfrmFMXModel.WriteError(ProcedureName, LogMessage: string; E: Exception; doraise: boolean);
begin

end;

procedure TfrmFMXModel.WriteLog(ProcedureName, LogMessage: string; isError: boolean);
begin

end;

procedure TfrmFMXModel.WriteLog(LogMessage: string; isError: boolean);
begin

end;

end.
