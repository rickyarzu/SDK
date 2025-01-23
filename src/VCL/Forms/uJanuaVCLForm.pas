unit uJanuaVCLForm;

{$I JANUACORE.INC}

interface

uses
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ComCtrls,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.Bindings.Intf,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf;

type
  TJanuaVCLFormModel = class(TForm, IJanuaForm, IJanuaContainer, IJanuaControl, IJanuaBindable)
    StatusBar: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    function GetModalResult: TModalResult;
    procedure SetModalResult(const Value: TModalResult);
    function GetShowHint: boolean;
    procedure SetShowHint(const Value: boolean);
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
    function GetLeft: Integer;
    function GetTop: Integer;
    procedure SetLeft(const Value: Integer);
    procedure SetTop(const Value: Integer);
    procedure SetHeight(const Value: Integer);
    procedure SetWidth(const Value: Integer);
    procedure SetCaption(const Value: string);
    function GetClientHeight: Integer;
    function GetClientWidth: Integer;
    procedure SetBorderIcons(const Value: TBorderIcons);
    function GetVisible: boolean;
    procedure SetVisible(const Value: boolean);
    procedure SetClientHeight(const Value: Integer);
    procedure SetClientWidth(const Value: Integer);
    procedure JanuaSetBiDiMode(const Value: TBiDiMode);
    procedure SetCursor(const Value: TCursor);
    procedure SetWindowState(const Value: TWindowState);
    function GetCaption: string;
    function GetActive: boolean;
    procedure SetActive(const Value: boolean);
    function GetTransparency: boolean;
    procedure SetTransparency(const Value: boolean);
    function GetHeight: Integer;
    function GetWidth: Integer;
    function GetWindowState: TWindowState;
    function GetTabOrder: TTabOrder;
    procedure SetTabOrder(Value: TTabOrder);
    function GetTabStop: boolean;
    procedure SetTabStop(Value: boolean);
    // ************************** Janua Procedures *********************************************************
    function GetFormStyleJanua: TJanuaFormStyle;
    procedure SetFormStyleJanua(Value: TJanuaFormStyle);
    function GetOnCloseQueryJanua: TJanuaCloseQueryEvent;
    procedure SetOnCloseQueryJanua(const Value: TJanuaCloseQueryEvent);
    function GetParentFormJanua: IJanuaForm;
    procedure SetBorderStyleJ(const Value: TJanuaFormBorderStyle);
    procedure SetPositionJ(const Value: TJanuaFormPosition);

    // da IJanuaControl
    function GetHint: string;
    procedure SetHint(const Value: string);
    property Hint: string read GetHint write SetHint;
    function JanuaGetAlign: TJanuaAlign;
    procedure JanuaSetAlign(const Value: TJanuaAlign);
    procedure SetAlignWM(const Value: boolean);
    function GetAlignWM: boolean;
    property AlignWithMargins: boolean read GetAlignWM write SetAlignWM;
    function GetChildControls: IList<IJanuaControl>;
    procedure setChildControls(const Value: IList<IJanuaControl>);
    property ChildControls: IList<IJanuaControl> read GetChildControls write setChildControls;
    function GetControls(const aIndex: Integer): IJanuaControl;
    function AddControl: IJanuaControl;
    procedure DelControl(const aControl: IJanuaControl);

    procedure JanuaSetParent(const Value: IJanuaControl);
    function JanuaGetParent: IJanuaControl;

    function GetAsComponent: TComponent;
    procedure SetAsComponent(const Value: TComponent);
    property AsComponent: TComponent read GetAsComponent write SetAsComponent;

    function JanuaGetAction: IJanuaAction;
    procedure JanuaSetAction(const Value: IJanuaAction);
    property JanuaAction: IJanuaAction read JanuaGetAction Write JanuaSetAction;

    function JanuaOnKeyDown: TJanuaKeyEvent;
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
    function ShowModal: Integer; override;
    function Activate: boolean; reintroduce; virtual;
    function GetSelf: TObject;
  public
    // ************************** Janua Properties ********************************************************
    property ParentFormJ: IJanuaForm read GetParentFormJanua;
    property FormStyleJ: TJanuaFormStyle read GetFormStyleJanua write SetFormStyleJanua;
    property OnCloseQueryJ: TJanuaCloseQueryEvent read GetOnCloseQueryJanua write SetOnCloseQueryJanua;
    property Params: TJanuaVariantArray read GetParams write SetParams;
  end;

implementation

uses Janua.Core.Classes, Janua.Core.Commons, Janua.Controls.Forms.Impl, System.TypInfo,
  Janua.Application.Framework;

{$R *.dfm}
{ TJanuaVCLFormModel }

function TJanuaVCLFormModel.Activate: boolean;
begin
  // to be implemented in Descendant forms .....
  inherited Activate;
  Result := FInitialized or Initialize;
end;

function TJanuaVCLFormModel.AddControl: IJanuaControl;
begin
  { TODO : Implement or delete method }
  Result := nil;
end;

procedure TJanuaVCLFormModel.AddLog(aLog: string);
begin
  WriteLog('', aLog, false);
end;

procedure TJanuaVCLFormModel.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TJanuaVCLFormModel.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on E: Exception do
      RaiseException('Bind', E, Self);
  end;

end;

procedure TJanuaVCLFormModel.CallObservers;
begin

end;

procedure TJanuaVCLFormModel.ClearBindings;
begin
  FBindManager.ClearBindings;
end;

procedure TJanuaVCLFormModel.ClearErrors;
begin
  // self.HasErrors := false;
  Self.FLastErrorMessage := '';
end;

procedure TJanuaVCLFormModel.ClearMessage;
begin
  Self.FHasMessage := false;
  Self.FLastMessage := '';
end;

constructor TJanuaVCLFormModel.Create(AOwner: TComponent);
begin
{$IFDEF DEBUG}
  var
  vName := Self.ClassName;
{$ENDIF}
  inherited Create(AOwner);
  FBindControlsList := TJanuaApplication.BindEngine.NewBindControlsList;
  FIsSetup := false;
  FBindManager := TJanuaBindManager.Create(Self);
  Self.Font.Name := 'Segoe UI';
  Self.Font.Size := 10;
end;

procedure TJanuaVCLFormModel.DelControl(const aControl: IJanuaControl);
begin

end;

destructor TJanuaVCLFormModel.Destroy;
begin
  if Assigned(FBindManager) then
  begin
    FBindManager.ClearBindings;
    FBindManager := nil;
    FBindControlsList.ClearBindings;
    FBindControlsList.Clear;
    FBindControlsList := nil;
    FObserversList := nil;
  end;
  inherited;
end;

procedure TJanuaVCLFormModel.Detach(const aObserver: TObject);
begin

end;

procedure TJanuaVCLFormModel.DetachObservers;
begin

end;

procedure TJanuaVCLFormModel.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[0].Text := ClassName + ' - ' + Name;
end;

procedure TJanuaVCLFormModel.FormSetup;
begin
  // this should implement the Correct Form caption with translation according to its ClassName or ViewModel or GUID
end;

procedure TJanuaVCLFormModel.FormShow(Sender: TObject);
begin
  if not FIsSetup then
    try
      FormSetup;

    finally
      FIsSetup := true;
    end;
end;

function TJanuaVCLFormModel.GetActive: boolean;
begin
  Result := Self.Active
end;

function TJanuaVCLFormModel.GetAfterActivate: TProc;
begin

end;

function TJanuaVCLFormModel.GetAlignWM: boolean;
begin
  Result := false;
end;

function TJanuaVCLFormModel.GetAsComponent: TComponent;
begin
  Result := Self as TComponent
end;

function TJanuaVCLFormModel.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuaBindManager.Create(self); }
  Result := FBindManager
end;

function TJanuaVCLFormModel.GetCaption: string;
begin

end;

function TJanuaVCLFormModel.GetChildControls: IList<IJanuaControl>;
begin

end;

function TJanuaVCLFormModel.GetClientHeight: Integer;
begin
  Result := Self.ClientHeight
end;

function TJanuaVCLFormModel.GetClientWidth: Integer;
begin
  Result := Self.ClientWidth
end;

function TJanuaVCLFormModel.GetControls(const aIndex: Integer): IJanuaControl;
begin

end;

function TJanuaVCLFormModel.GetFormStyleJanua: TJanuaFormStyle;
begin
  case Self.FormStyle of
    fsNormal:
      Result := TJanuaFormStyle.jfsNormal;
    fsMDIChild:
      Result := TJanuaFormStyle.jfsMDIChild;
    fsMDIForm:
      Result := TJanuaFormStyle.jfsMDIForm;
    fsStayOnTop:
      Result := TJanuaFormStyle.jfsStayOnTop;
  else
    Result := TJanuaFormStyle.jfsNormal
  end;
end;

function TJanuaVCLFormModel.GetHeight: Integer;
begin
  Result := Self.Height
end;

function TJanuaVCLFormModel.GetHint: string;
begin
  Result := Self.Hint
end;

function TJanuaVCLFormModel.GetInitialized: boolean;
begin
  Result := FInitialized;
end;

function TJanuaVCLFormModel.GetLeft: Integer;
begin
  Result := Self.Left
end;

function TJanuaVCLFormModel.GetLocalLog: string;
begin
  Result := TJanuaLogger.LogString(Self);
end;

function TJanuaVCLFormModel.GetLogString: string;
begin
  Result := TJanuaLogger.LogString(Self);
end;

function TJanuaVCLFormModel.GetLogText: string;
begin
  Result := TJanuaLogger.LogString(Self)
end;

function TJanuaVCLFormModel.GetModalResult: TModalResult;
begin
  Result := Self.ModalResult
end;

function TJanuaVCLFormModel.GetNameJ: TComponentName;
begin
  Result := Self.Name
end;

function TJanuaVCLFormModel.GetOnActivate: TNotifyEvent;
begin

end;

function TJanuaVCLFormModel.GetOnClose: TJanuaCloseEvent;
begin

end;

function TJanuaVCLFormModel.GetOnCloseQueryJanua: TJanuaCloseQueryEvent;
begin

end;

function TJanuaVCLFormModel.GetOnCreate: TNotifyEvent;
begin
  Result := OnCreate;
end;

function TJanuaVCLFormModel.GetOnDeactivate: TNotifyEvent;
begin

end;

function TJanuaVCLFormModel.GetOnDestroy: TNotifyEvent;
begin

end;

function TJanuaVCLFormModel.GetOnFocusChanged: TNotifyEvent;
begin

end;

function TJanuaVCLFormModel.GetOnHide: TNotifyEvent;
begin

end;

function TJanuaVCLFormModel.JanuaOnKeyDown: TJanuaKeyEvent;
begin

end;

function TJanuaVCLFormModel.GetOnKeyUp: TJanuaKeyEvent;
begin

end;

function TJanuaVCLFormModel.GetOnMouseDown: TJanuaMouseEvent;
begin

end;

function TJanuaVCLFormModel.GetOnMouseMove: TJanuaMouseMoveEvent;
begin

end;

function TJanuaVCLFormModel.GetOnMouseUp: TJanuaMouseEvent;
begin

end;

function TJanuaVCLFormModel.GetOnMouseWheel: TJanuaMouseWheelEvent;
begin

end;

function TJanuaVCLFormModel.GetOnResize: TNotifyEvent;
begin

end;

function TJanuaVCLFormModel.GetOnSaveState: TNotifyEvent;
begin

end;

function TJanuaVCLFormModel.GetOnShow: TNotifyEvent;
begin

end;

function TJanuaVCLFormModel.GetOnVirtualKeyboardHidden: TVirtualKeyboardEvent;
begin

end;

function TJanuaVCLFormModel.GetOnVirtualKeyboardShown: TVirtualKeyboardEvent;
begin

end;

function TJanuaVCLFormModel.GetParams: TJanuaVariantArray;
begin
  Result := FParams;
end;

function TJanuaVCLFormModel.GetParentFormJanua: IJanuaForm;
begin
  Result := Self.FParentJanuaForm
end;

function TJanuaVCLFormModel.GetSelf: TObject;
begin
  Result := Self as TObject;
end;

function TJanuaVCLFormModel.GetShowHint: boolean;
begin
  Result := Self.ShowHint
end;

function TJanuaVCLFormModel.GetTabOrder: TTabOrder;
begin
  Result := Self.TabOrder
end;

function TJanuaVCLFormModel.GetTabStop: boolean;
begin
  Result := Self.TabStop
end;

function TJanuaVCLFormModel.GetTop: Integer;
begin
  Result := Self.Top
end;

function TJanuaVCLFormModel.GetTransparency: boolean;
begin
  Result := false
end;

function TJanuaVCLFormModel.GetVisible: boolean;
begin
  Result := Self.Visible
end;

function TJanuaVCLFormModel.GetWidth: Integer;
begin
  Result := Self.Width
end;

function TJanuaVCLFormModel.GetWindowState: TWindowState;
begin
  Result := Self.WindowState
end;

function TJanuaVCLFormModel.Initialize: boolean;
begin
  Result := InternalActivate;
  FInitialized := Result;
end;

function TJanuaVCLFormModel.InternalActivate: boolean;
begin
  Result := true;
end;

function TJanuaVCLFormModel.JanuaGetAction: IJanuaAction;
begin

end;

function TJanuaVCLFormModel.JanuaGetAlign: TJanuaAlign;
begin
  case Align of
    alNone:
      Result := TJanuaAlign.jalNone;
    alTop:
      Result := TJanuaAlign.jalTop;
    alBottom:
      Result := TJanuaAlign.jalBottom;
    alLeft:
      Result := TJanuaAlign.jalLeft;
    alRight:
      Result := TJanuaAlign.jalRight;
    alClient:
      Result := TJanuaAlign.jalClient;
    alCustom:
      Result := TJanuaAlign.jalCustom;
  else
    Result := TJanuaAlign.jalNone;
  end;
end;

function TJanuaVCLFormModel.JanuaGetComponent: TComponent;
begin
  Result := Self as TComponent
end;

function TJanuaVCLFormModel.JanuaGetParent: IJanuaControl;
begin
  Result := Self.FParentControl
end;

procedure TJanuaVCLFormModel.JanuaSetAction(const Value: IJanuaAction);
begin

end;

procedure TJanuaVCLFormModel.JanuaSetAlign(const Value: TJanuaAlign);
begin
  case Value of
    jalNone:
      Align := alNone;
    jalTop:
      Align := alTop;
    jalBottom:
      Align := alBottom;
    jalLeft:
      Align := alLeft;
    jalRight:
      Align := alRight;
    jalClient:
      Align := alClient;
    jalCustom:
      Align := alCustom;
  end;
end;

procedure TJanuaVCLFormModel.JanuaSetBiDiMode(const Value: TBiDiMode);
begin
  BiDiMode := Value;
end;

procedure TJanuaVCLFormModel.JanuaSetComponent(const Value: TComponent);
begin

end;

procedure TJanuaVCLFormModel.JanuaSetParent(const Value: IJanuaControl);
begin

end;

procedure TJanuaVCLFormModel.Loaded;
var
  Ctrl: TControl;
  I: Integer;
  (*
    ctx: TRttiContext;
    objType: TRttiType;
    Prop: TRttiProperty;
  *)
begin
  Font.Name := TJanuaApplication.StyleManager.ScreenFontName;
  Font.Height := TJanuaApplication.StyleManager.ScreenFontHeight;
  // fa qualcosa con i controlli ... ad esempio controlla i loro Fonts
  // self.Font.Name := 'Segoe UI';
  // self.Font.Size := 10;
  (* ctx := TRttiContext.Create; *)
  for I := 0 to Self.ControlCount - 1 do
  begin
    Ctrl := Self.Controls[I];
    if IsPublishedProp(Ctrl, 'Font') then
    begin
      TFont(GetObjectProp(Ctrl, 'Font', TFont)).Height := Self.Font.Height;
      TFont(GetObjectProp(Ctrl, 'Font', TFont)).Name := Self.Font.Name;
    end;
  end;
  inherited;
end;

procedure TJanuaVCLFormModel.SetActive(const Value: boolean);
begin

end;

procedure TJanuaVCLFormModel.SetAfterActivate(const Value: TProc);
begin

end;

procedure TJanuaVCLFormModel.SetAlignWM(const Value: boolean);
begin

end;

procedure TJanuaVCLFormModel.SetAsComponent(const Value: TComponent);
begin

end;

procedure TJanuaVCLFormModel.SetBorderIcons(const Value: TBorderIcons);
begin

end;

procedure TJanuaVCLFormModel.SetBorderStyleJ(const Value: TJanuaFormBorderStyle);
begin

end;

procedure TJanuaVCLFormModel.SetCaption(const Value: string);
begin

end;

procedure TJanuaVCLFormModel.setChildControls(const Value: IList<IJanuaControl>);
begin

end;

procedure TJanuaVCLFormModel.SetClientHeight(const Value: Integer);
begin

end;

procedure TJanuaVCLFormModel.SetClientWidth(const Value: Integer);
begin

end;

procedure TJanuaVCLFormModel.SetCursor(const Value: TCursor);
begin

end;

procedure TJanuaVCLFormModel.SetFormStyleJanua(Value: TJanuaFormStyle);
begin

end;

procedure TJanuaVCLFormModel.SetHasErrors(const Value: boolean);
begin
  Self.FHasErrors := Value;
end;

procedure TJanuaVCLFormModel.SetHeight(const Value: Integer);
begin

end;

procedure TJanuaVCLFormModel.SetHint(const Value: string);
begin

end;

procedure TJanuaVCLFormModel.SetInitialized(const Value: boolean);
begin
  if Value <> FInitialized then
  begin
    if Value then
      Self.Initialize
    else
      FInitialized := false;
  end;
end;

procedure TJanuaVCLFormModel.SetLeft(const Value: Integer);
begin

end;

procedure TJanuaVCLFormModel.SetLogToFile(const Value: boolean);
begin
  FLogToFile := Value;
end;

procedure TJanuaVCLFormModel.SetModalResult(const Value: TModalResult);
begin

end;

procedure TJanuaVCLFormModel.SetNameJ(const Value: TComponentName);
begin
  Name := Value;
end;

procedure TJanuaVCLFormModel.SetOnActivate(const Value: TNotifyEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnClose(const Value: TJanuaCloseEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnCloseQueryJanua(const Value: TJanuaCloseQueryEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnCreate(const Value: TNotifyEvent);
begin
  Self.OnCreate := Value;
end;

procedure TJanuaVCLFormModel.SetOnDeactivate(const Value: TNotifyEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnDestroy(const Value: TNotifyEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnFocusChanged(const Value: TNotifyEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnHide(const Value: TNotifyEvent);
begin

end;

procedure TJanuaVCLFormModel.SetJanuaOnKeyDown(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnKeyUp(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnMouseDown(const Value: TJanuaMouseEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnMouseMove(const Value: TJanuaMouseMoveEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnMouseUp(const Value: TJanuaMouseEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnMouseWheel(const Value: TJanuaMouseWheelEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnResize(const Value: TNotifyEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnSaveState(const Value: TNotifyEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnShow(const Value: TNotifyEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnVirtualKeyboardHidden(const Value: TVirtualKeyboardEvent);
begin

end;

procedure TJanuaVCLFormModel.SetOnVirtualKeyboardShown(const Value: TVirtualKeyboardEvent);
begin

end;

procedure TJanuaVCLFormModel.SetParams(const Value: TJanuaVariantArray);
begin
  FParams := Value;
end;

procedure TJanuaVCLFormModel.SetPositionJ(const Value: TJanuaFormPosition);
begin

end;

procedure TJanuaVCLFormModel.SetShowHint(const Value: boolean);
begin

end;

procedure TJanuaVCLFormModel.SetTabOrder(Value: TTabOrder);
begin

end;

procedure TJanuaVCLFormModel.SetTabStop(Value: boolean);
begin

end;

procedure TJanuaVCLFormModel.SetTop(const Value: Integer);
begin

end;

procedure TJanuaVCLFormModel.SetTransparency(const Value: boolean);
begin

end;

procedure TJanuaVCLFormModel.SetVisible(const Value: boolean);
begin

end;

procedure TJanuaVCLFormModel.SetWidth(const Value: Integer);
begin

end;

procedure TJanuaVCLFormModel.SetWindowState(const Value: TWindowState);
begin
  WindowState := Value;
end;

function TJanuaVCLFormModel.ShowModal: Integer;
begin
  Result := inherited
end;

procedure TJanuaVCLFormModel.UnBind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string);
begin

end;

procedure TJanuaVCLFormModel.WriteError(LogMessage: string; E: Exception; doraise: boolean);
begin
  if not PublicRaised and Assigned(E) then
    WriteError(E.ClassName + '.' + Self.Name, LogMessage, E, doraise)
  else
    PublicRaised := false;
end;

procedure TJanuaVCLFormModel.WriteError(ProcedureName, LogMessage: string; E: Exception; doraise: boolean);
begin
  if not PublicRaised then
    TJanuaCoreOS.PublicWriteError(Self, ProcedureName, LogMessage, E, doraise);
end;

procedure TJanuaVCLFormModel.WriteLog(LogMessage: string; isError: boolean);
begin
  WriteLog('', LogMessage, isError);
end;

procedure TJanuaVCLFormModel.WriteLog(ProcedureName, LogMessage: string; isError: boolean);
begin
  if not(csDesigning in Self.ComponentState) then
    TJanuaCoreOS.PublicWriteLog(Self, ProcedureName, LogMessage, isError);
end;

initialization

finalization

end.
